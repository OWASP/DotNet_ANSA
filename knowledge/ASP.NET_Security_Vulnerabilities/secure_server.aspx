<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Definition of a secure server</H2>	
 
 <blockquote>
   <p>In order to provide this discussion with clear and focused goals, a 
   security framework should be established that defines what the objectives are 
   and, what is a secure shared hosting server.<br>
   <br>
   In our view, a server considered secure to provide shared hosting services, 
   is a server that:</p>
   <ol>
     <li><b>is securely built and:<br>
&nbsp;</b><ul>
       <li>only exposes to the Internet’s Anonymous users the WWW, FTP and HTTPS 
       ports </li>
       <li>don’t have any software installed apart from the necessary to run the 
       WWW, FTP and HTTPS services (i.e. most of the ‘system32’ directory should 
       not be there)</li>
       <li>&nbsp;the server is only able to respond to inbound connections (for 
       example web requests or terminal service sessions) and NOT be able to 
       initiate any un-solicited outbound connections</li>
       <li>only accepts administrative access from pre-defined sub-nets and via 
       secure channels (for ex: VPN or SSL)<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>doesn’t allow authenticated users (i.e. clients) to:</b><br>
&nbsp;<ul>
       <li>see secure sensitive information about the server such as:<ul>
         <li>user accounts or security groups</li>
         <li>services running</li>
         <li>current connections</li>
         <li>system information (operating system, disk space available)</li>
         <li>the IIS Metabase (which provides details about the other websites 
         hosted in the same server)</li>
       </ul>
       </li>
       <li>execute commands on the server / create processes on the server</li>
       <li>browse on directories outside the assigned web space (i.e. from 
       another website)</li>
       <li>see files outside the assigned web space (i.e. from another website)</li>
       <li>create TCP connections to unauthorized IPs / Ports<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>has daily backups and a clear defined (and regularly tested) 
     disaster recovery strategy</b><ol>
       <li>The clients should be made aware of the occurrence of this tests and 
       of its result</li>
       <li>&nbsp;is regularly tested by independent security consultants </li>
       <li>the reports should be made available to the clients<br>
&nbsp;</li>
     </ol>
     </li>
     <li><b>has a clearly defined and accountable SSLA (Security Service Level 
     Agreement)<br>
     </b><br>
   <br>
&nbsp;</li>
   </ol>
 </blockquote>
 <p>&nbsp;</p>
  </body>
</html>