<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Proposed Solution for IIS 5.0</H2>	
 
 <blockquote>
   <p>This section explains the steps taken by us to securely configure several 
   servers in our research labs that were vulnerable to the problems identified 
   previously.<br>
   <br>
   This doesn’t mean that a server configured this way would be 100% secure 
   against known or unknown exploits. But we know that it would be very hard to 
   compromise (and more importantly) to use in any malicious way.<br>
   <br>
   <b>DON’T APPLY THE PROPOSED CHANGES TO YOUR LIVE SERVERS! This document only 
   describes an implementation from scratch (full machine rebuild) on the 
   presented server architecture. You will need to adapt this to your 
   environment and network infrastructure.</b><br>
   <br>
   How we configure the server:<br>
&nbsp;</p>
   <ol>
     <li><b>Secure by Design: (objectives)<br>
&nbsp;</b><ul>
       <li>Layered Security Defence</li>
       <li>Reduced attack perimeter</li>
       <li>Harden the server and remove all un-necessary permissions services 
       and application.</li>
       <li>Only allow well formatted traffic to arrive at the web server<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>II. Secure by Default: </b>
     <ul>
       <li>Windows 2000 Server with Service Pack 3 and all Critical Security 
       Patches</li>
       <li>Security Policies to harden the server</li>
       <li>Sharepoint Team Services + FrontPage Extensions 2002 (with Office XP 
       service Packs 1 and 2)</li>
       <li>IIS Lockdown + URL Scan</li>
       <li>IPSec<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>III. Secure in Deployment:</b><br>
&nbsp;<ul>
       <li>Groups and User management</li>
       <li>Secure Folder management</li>
       <li>Website configuration</li>
     </ul>
     </li>
   </ol>
 </blockquote>
  </body>
</html>