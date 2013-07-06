<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Internal Port Scan</H2>	
 
 <blockquote>
   <p><b>Description:<br>
   </b><br>
   Since ASP.NET exposes the TcpClient class, it is possible to create a server 
   based port scan. See “Multithreading in Web Applications: Part II - Port 
   Scanner” technical article in ‘C# corner’ <br>
   <br>
   <b>Potential Impact:</b></p>
   <ul>
     <li>Allow the discovery (from the inside) of available services for 
     exploitation</li>
     <li>Launch internal attacks against other servers</li>
   </ul>
   <p><b>Possible solutions</b><br>
   <br>
   <i>{more research is needed, this information will be included in the next 
   version of this document} </i><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>