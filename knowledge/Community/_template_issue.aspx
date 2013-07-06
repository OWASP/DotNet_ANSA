<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

<%
	Dim GotDotNet_Link, asp_net_link, google_link 
	
	GotDotNet_Link = "" 
	asp_net_link = ""
	google_link = ""

%>   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body onload="window.focus();">

 <a name="top"></a><H2>'' (Security problems with:)</H2>
 
 <blockquote>
   <p><b>Message posted:</b></p>
	<table border><tr><td>
<!-- Beggining of posted text -->

<P>&nbsp;</P>

</P>
</p>
	

<!-- End of posted text -->
</td></tr></table>

 </blockquote>

<br><hr>
<ul>   <b>in Google Groups</b><b> (<a href="<%= Google_Link%>">open google thread in a new window</a>)
  <a href="<%= request.servervariables("PATH_INFO") %>#top">top</a></ul>
</b></b>
<% Create_Iframe_relative("760", "200", "IFrame",Google_Link)%> <br>  
   
<br><hr>
<ul>   <b>in GotDotNet.com</b> (<a href="<%= GotDotNet_Link%>">open GotDotNet.com thread in a new window</a>)<b>
  <a href="<%= request.servervariables("PATH_INFO") %>#top">top</a></b></ul>
<% Create_Iframe_relative("760", "200", "IFrame",GotDotNet_Link)%><br>

<br><hr>
<ul>   <b>in www.Asp.Net</b> (<a href="<%= Asp_Net_Link%>">open www.Asp.Net thread in a new window</a>) <b>
  <a href="<%= request.servervariables("PATH_INFO") %>#top">top</a></b></ul>
<% Create_Iframe_relative("760", "200", "IFrame",asp_net_Link)%>   


  </body>
</html>