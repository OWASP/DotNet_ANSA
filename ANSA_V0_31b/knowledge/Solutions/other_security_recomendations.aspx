<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Other Security Recommendations</H2>	
 
 <blockquote>
   <ul>
     <li>Access to the Terminal Service must be limited to IPs (or DNS entries) 
     belonging to System administrators<br>
&nbsp;</li>
     <li>The SQL server can also be a huge liability and needs to securely 
     configured<br>
&nbsp;</li>
     <li>Sensitive details (such as database access codes) should never be 
     stored in clear text format (i.e. in script files). All database accesses 
     should be controlled and managed by Windows Authentication (or COM+ 
     objects) that validate all communications between the web server and the 
     relevant SQL database.<br>
&nbsp;</li>
     <li>All email exchanges that, contain sensitive information (for example a 
     username and password combination) that occur between system administrators 
     or between the ISP and the client, must be ENCRYPTED (for example using PGP 
     or a VeriSign Digital ID)<br>
&nbsp;</li>
     <li>The users and Groups management of IIS as presented in this document is 
     not scalable. The best method to implement such solution is to use Active 
     Directory to manage all available resources <br>
&nbsp;</li>
     <li>The Security Patch management should be done from a central point, and 
     the server should never be allowed to browse the web<br>
&nbsp;</li>
     <li>Administrative passwords must be stored in an encrypted and secure 
     format <br>
&nbsp;</li>
     <li>Auditing is very important because it allows the user to know who was 
     on their website and the system administrator to know who was on his/hers 
     network<br>
&nbsp;</li>
   </ul>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>