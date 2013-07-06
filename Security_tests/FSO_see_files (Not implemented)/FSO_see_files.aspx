<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
<% 
	Set_session_variables
	
	if request("mode")="test" then
		rw(Session("http_signature")+";")	
		rw(".,.;.,.;Test not implemented")
	else
	
%>	<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>FSO See Files</H2>	
 
 <blockquote>
   <p><b>Description:</b> write description here</p>
 </blockquote>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
  </body>
</html>
<%
	end if
%>