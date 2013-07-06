<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>WSH and FSO</H2>	
 
 <blockquote>
   <p><b>Description: <br>
   </b>WSH (Windows Script Host) and FSO (File System Object) are two components 
   that if not securely managed enable authorized users to execute commands on 
   the server and browse folders outside its work environment.<br>
   <br>
   These problems are very well documented in the security guide “Secure Shared 
   Hosting with IIS 5.0” so please refer to it for more details<br>
   <br>
   Note that ‘by default’ IIS 6.0 is also vulnerable to these problem if the 
   same Anonymous Account is used in several websites or if websites share the 
   same Application Pool.<br>
   <br>
   <b>Potential Impact:</b></p>
   <ul>
     <li>Execute commands on the server via cmd.exe</li>
     <li>Copy Executables to directories with ‘Execute’ rights</li>
     <li>Run Executables on the servers</li>
     <li>Browse and view file contents from other websites hosted in the same 
     server</li>
   </ul>
   <p><b>Possible solutions<br>
   </b><br>
   The solutions presented in the IIS 5.0 Security guide also work in IIS 6.0, 
   but our limited research as found that the best solution for isolating each 
   website is via the use of unique application pools per website and unique 
   anonymous Users on the Application Pool and the IIS’s Anonymous Account. <br>
   <br>
   Microsoft as just published a white pager (on the 1st of July) with 
   information on how to configure application isolation: “Configuring 
   Application Isolation on Windows Server 2003 and Internet Information 
   Services (IIS) 6.0” </p>
 </blockquote>
  </body>
</html>