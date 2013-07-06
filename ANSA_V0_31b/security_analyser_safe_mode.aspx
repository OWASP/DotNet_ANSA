<%@ Page Language="VB" autoeventwireup="false" Src="scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

    
<html>
<head>
	<% Link_to_style_sheet%>
	
</head>
<body>

    <%
    	output_top_page_Banner
    	
       	dim Page_title = "Security Analyser"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
	%>

	<h3>This site is running in 'Safe Mode' which means that the security tests are not performed.</h3>
	
	note: to change this site from 'Safe mode' edit the variable 'Session("Safe_Mode")' - located in the beginning of the 'scripts_archive.vb' file - and give it the value of 'False'
	
	<h3>Asp.Net Security Analyser Screenshoots</h3>
	<ul>
	<li><b>in a 'default installation' windows 2000 running iis 5.0</b><br>
	   <img src='kjh' width=200 height=200></li>
	<li><b>in a 'default installation' windows 2003 running iis 6.0</b><br>
	   <img src='kjh' width=200 height=200></li>
	<li><b>in a 'securely configured' windows 2003 running iis 5.0</b><br>
	   <img src='kjh' width=200 height=200></li>
	   
    
  </body>
</html>

<script runat="server">

    </script></h3>