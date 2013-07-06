<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>W32 DLL calls</H2>	
 
 <blockquote>
   <p><b>Description:</b></p>
   <p>ASP.NET allow the initialization and execution of Window’s API methods. </p>
   <p>For example it is possible to attempt to login using the following script</p>
   <blockquote>
   <p>&lt;DllImport(&quot;advapi32.dll&quot;)&gt; _<br>
   Private Function LogonUser(lpszUsername As String, _<br>
   lpszDomain As String, lpszPassword As String, _<br>
   dwLogonType As Integer, dwLogonProvider As Integer, _ <br>
   ByRef phToken As Integer) As Boolean<br>
   <br>
   Success = LogonUser(“UserName”,” Domain”, “Password”, _<br>
   Logon.Network, Provider.UseDefault, SecurityToken)</p>
   </blockquote>
   <p>This is a very good example of functionality versus security. As with the 
   WMI vulnerabilities, access to the Win 32 functions gives an attacker a huge 
   number of tools. <br>
   <br>
   <i>{more research is needed on how to exploit Win32 API vulnerabilities. This 
   information will be included in the next version of this document} </i> <br>
   <br>
   <b>Possible solutions</b><br>
   <br>
   <a target="_parent" href="http://127.0.0.1/ANsA_V0_31b/knowledge/Solutions/default.aspx?page=Win32_possible_solutions.aspx">
   See 'Win32 - (Possible solutions)'</a><br>
&nbsp;</p>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>