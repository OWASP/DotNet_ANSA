<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Authentication and impersonation</H2>	
 
 <blockquote>
   <p><b>Description:<br>
   </b>ASP.NET provides several methods to change the account used to execute 
   commands on the server (via account impersonation or via direct login to 
   windows / Active Directory). <br>
   <br>
   Although this allows for a more selective use of administrative rights and 
   account management, this also introduces a new security problem: Possibility 
   to attempt logins and know (based on the result) if the username and password 
   used where correct.<br>
   <br>
   The following two scenarios assume that the attacker was able to discover the 
   usernames that exist in that server or in the main Active Directory (see the 
   ADSI and WMI exploits to see how this information is easy to find).<br>
   <br>
   With the list of usernames and an authentication method, a brute force 
   password cracking attack can be implemented. Depending on the Domain’s 
   security policy two things might occur:</p>
   <ul>
     <li><b>DoS Attack on the server</b>, where all user and administrative 
     accounts are locked out – this happens if the current security policy locks 
     the accounts after a certain amount of attempts. The attacker’s continuous 
     and multi-threaded authentication attempts (thousand per second) on all 
     users will ensure that the accounts are always locked out. This includes 
     the accounts used for the anonymous access which means that after the 
     attack:<br>
&nbsp;<ul>
       <li>No users can login into the system</li>
       <li>All websites are not working because the account they need to access 
       the requested resources (the ‘Anonymous Account’) is locked out</li>
       <li>No Accounts with administrative rights can login (note that the 
       account ‘Administrator’ will not be locked out, because it is the only 
       one that (by default) it is not possible to configure this lockout 
       setting)<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>The passwords will be discovered </b>– depending on the quality of 
     the passwords, given enough time the attacked will discover them on all 
     accounts that don’t lock-out (for example the ‘Administrator’ account)<br>
&nbsp;</li>
   </ul>
   <p><b>This is a major problem since both scenarios are un-acceptable.<br>
   </b><br>
   During our initial research we also noticed that the log entries in the 
   security logs regarding the failed logon attempts, don’t provide details of 
   which process is trying to authenticate (i.e. who is trying to login). If 
   detailed authentication logs cannot be produced, it will be almost impossible 
   in a situation of a server hosting hundred of websites to discover which 
   website is hosting the ASP.NET page that is attacking the server</p>
   <p><b>Potential Impact:</b></p>
   <ul>
     <li>DoS (Denial of Service) – Accounts locked out</li>
     <li>Discovery of valid username and passwords (including ones with 
     administrative rights)</li>
   </ul>
   <p><b>Possible solutions<br>
   <br>
   </b>Apart from disabling all .NET authentication methods (which in most ISPs 
   will not be an option), the other solution would be for ASP.NET to detect 
   such attacks and immediately stop the web page containing the malicious 
   script.<br>
   <br>
   This solution is basically asking for the implementation of an IDS (Intrusion 
   Detection System), native to the .NET framework that would be responsible for 
   detecting and stop such attacks. This tool could be developed by Microsoft or 
   by a third party security company specialized in IDS.<br>
&nbsp;</p>
 </blockquote>
  </body>
</html>