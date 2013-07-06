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

 <a name="top"></a><H2>'Temporary Assembly Files' (Security problems with:)</H2>
 
 <blockquote>
   <p><b>Message posted:</b></p>
	<table border><tr><td>
<!-- Beggining of posted text -->

<P>

<b>Asp.Net.Vulnerability: Temporary Assembly Files (potential security problems)<br>
<br>
</b>When an website is executing Asp.Net code with 'Full trust', it is possible 
to access the 'Asp.Net temporary files' 'via FSO, native .Net methods (System.IO.Stream), 
WMI or Win32 calls.</P>

<P>As far as we understand it, </P>

<P>1) IIS only has one 'Temporary Asp.Net files' folder (in 2000 server located 
in 'C:\WINNT\Microsoft.NET\Framework\v1.1.4322\Temporary ASP.NET Files' and in 
2003 server located in C:\Windows\Microsoft.NET\Framework\v1.1.4322\Temporary 
ASP.NET Files - note that this can be changed on the 'machine.config' file). </P>

<P>2) This unique folder contains all temporary files (assembly DLLs, and .Aspx 
compilations) from ALL HOSTED websites </P>

<P>3) All worker accounts (the ones used by the application pools) need to have, 
&quot;By Default&quot;, Full Control over this folder. </P>

<P>{from page 578 of the 'Securing your Asp.Net Application and Web Services''}:</P>

<P>-&nbsp; Required NTFS Permissions for Asp.Net Process Accounts:</P>

<P>&nbsp; *&nbsp; Directory: %windir%/Microsoft.Net/Framework/{version}/ 
Temporary Asp.Net Files<br>
&nbsp;&nbsp; * Required Permissions: Process account and impersonation 
identities: Full Control</P>

<P>4) all compiled Exes and DLLs available are easily decompiled into C# or 
Vb.Net using publicly available tools such as the 'Reflector'.</P>

<P>5) Most compiled Exes and DLLs will contain sensitive information such as:</P>

<P>&nbsp;&nbsp;&nbsp;&nbsp; - Database access codes<br>
&nbsp;&nbsp;&nbsp;&nbsp; - Business logic<br>
&nbsp;&nbsp;&nbsp;&nbsp; - Patented Intellectual property</P>

<P>If this is true (as our research seems to suggest), then this means that in a 
shared hosting environment (such as an ISP), any user can see the compiled code 
of every website hosted in their server..</P>

<P>I hope that you agree with me that this is not an acceptable practice and a 
solution must be found.</P>

<P>As before, we will propose some ideas to start a discussion, in the hope that 
we can find a solution that works, is scalable and is practical to implement.</P>

<P>Possible solutions for the Asp.Net vulnerability: &quot;All users have access to 
the Temporary Assembly files&quot;</P>

<P>&nbsp;1) each application pool has its own 'Asp.Net Temporary files' folder 
and only the 'System' account and the relevant Application Pool account would 
have full control over it. Note than even 'read rights' are too dangerous. 
Access must be denied to all other accounts. The problem with this solution is 
that it would require Microsoft to make changes on the code currently managing 
Asp.Net (maybe this will be resolved&nbsp; in version 2.0 of the .NET 
framework). </P>

<P>&nbsp;2) Create a mini-server-based application that 'automatically' changes 
the DACLs of each assembly folder so that only the required user accounts have 
access to it. This script would remove the IWAM account and replace it with the 
required user accounts (the ones used on the application pools). Before this 
tool can be developed, the following questions must be answered:</P>

<P>&nbsp;&nbsp; * what are the side effected of changing the 'Asp.Net Temporary 
files' permissions in such a way<br>
<br>
&nbsp;&nbsp; * will the permissions (just like in the case of the FrontPage 
Extensions 2002 Network/Interactive issue) be 'restored'? That is, once they are 
securely configured (with the reduced set of DACLs), will Asp.Net (within 
minutes, days or weeks)&nbsp; revert them to their (insecure) default state.</P>

<P>&nbsp; * can this be done in 'real time'? i.e. immediately after the 'Asp.Net 
Temporary' folder and files are created (with the 'insecure' permission set) and 
before the code is executed. </P>

<P>&nbsp; * how much time would the files be in an 'insecure' state, i.e. what 
would be the 'window of opportunity'? </P>

<P>3) Encrypt the DLLs /EXEs so that they cannot be decompiled in reflector 
(this could be done by using the Application User's EFS private key). Another 
option would be to use obfuscation tools, but they need to do a better job 
(although security by obfuscation is not good security practices).</P>

<P>4) delete all files from the 'Asp.Net. temporary files' folder as soon as 
they are not required. Theoretically they need to exist in the 'bin' directory. </P>

<P>&nbsp; * again, what would be the window of opportunity?</P>

<P>5) detect and block (in real time) accesses to Assembly 'X' files from any 
user apart from the one used in Assembly 'X' application pool</P>

<p>Thanks for your comments and time.</p>
<p>Best regards</p>
<p>Dinis Cruz<br>
.Net Security Consultant<br>
DDPlus (www.ddplus.net)</p>

<P>Note: The fact that the user from website 'A' can have full control over the 
files from assembly 'B' could also be a potential liability. More research is 
needed to find out if this could be exploited by a malicious user.</P>

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