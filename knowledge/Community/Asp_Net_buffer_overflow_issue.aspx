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

 <a name="top"></a><H2>'Asp.Net buffer overflows' (Potential Security problems)</H2>
 
 <blockquote>
   <p><b>Message posted:</b></p>
	<table border><tr><td>
<!-- Beggining of posted text -->

<P><b>Asp.Net.Vulnerability: Asp.Net buffer overflows (potential security problems)</b></P>

<P>Have anybody tested if the latest RPC vulnerabilities can be executed from an 
Asp.Net page running in an un-patched server? Since it is possible to make 
direct Win32 API calls from Asp.Net there is a high change that these 
vulnerabilities will work. <br>
<br>
If that is possible, please provide the test code in order for me to add it to 
our ANSA (Asp.Net Security Analyser, see
<a href="http://www.gotdotnet.com/Community/Workspaces/Workspace.aspx?id=36ae9a2c-8740-4b52-924e-320edf64fba5">
http://www.gotdotnet.com/Community/Workspaces/Workspace.aspx?id=36ae9a2c-8740-4b52-924e-320edf64fba5</a>) 
so that system administrators can quickly identify the vulnerable servers and 
patch them&nbsp; </P>

<P>Note that at the moment there is no 'real' solution to disabling Win32 API 
calls in IIS 5.0 and IIS 6.0. Which means that if these vulnerabilities exist, 
then it would be a&nbsp; critical problem, because everybody that hosts .Net websites 
in shared hosting environments would be affected.<br>
<br>
Best regards<br>
&nbsp;</P>

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