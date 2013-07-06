<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

<%
	Dim GotDotNet_Link, asp_net_link, google_link 
	
	GotDotNet_Link = "http://www.gotdotnet.com/community/messageboard/messageboard.aspx?id=5990" 
	asp_net_link = "http://www.asp.net/Forums/ShowPost.aspx?tabindex=1&PostID=249624"
	google_link = "http://groups.google.co.uk/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&threadm=701fd6b6.0310072039.5820b34c%40posting.google.com&rnum=3&prev=/&frame=on"

%>   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body onload="window.focus();">

 <a name="top"></a><H2>'Full Trust' (Security problems with:)</H2>
 
 <blockquote>
   <p><b>Message posted:</b></p>
	<table border><tr><td>
<!-- Beggining of posted text -->

   <p><b>Asp.Net.Vulnerability: Full Trust (current security problems and 
   possible solutions)</b><br>
   <br>
   At the moment the only method available to disable direct Win32 calls from 
   Asp.Net pages (using for example: &quot;	Declare Function WinExec Lib &quot;kernel32&quot; 
   Alias &quot;WinExec&quot; (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long&quot;) 
   is to reduce the website's trust level from 'Full trust' to 'Medium trust'.</p>
   <p>Although in some scenarios this is a valid solution, for 
   ISPs this is not acceptable because in the current (V1.1) release of the .Net 
   Framework the following objects don't support partially trusted code (i.e. 
   only work with 'Full trust')</p>
   <ul>
     <li>UI</li>
     <li>OleDb</li>
     <li>EventLog</li>
     <li>ODBC</li>
     <li>Oracle</li>
     <li>MessageQueue</li>
     <li>ServiceController</li>
     <li>DirectoryService</li>
     <li>Performance Counter</li>
     <li>Win32 calls required for User Impersonation</li>
   </ul>
   <p>and, although some of this restrictions would even be welcomed (for 
   example MessageQueue or EventLog), today it 
   is unthinkable to offer .Net web hosting services without support for ODBC or OleDB 
   . </p>
   <p>Most database accesses are programmed using ODBC calls and one of the main 
   reasons for the use the .Net (and previously the .asp) platform was the ease 
   of use and rapid development features of Access and SQL server databases.</p>
   <p>So, until Microsoft releases the next version of&nbsp; .Net (V2.0) or 
    
   a patch for this problem, the ISPs and anybody responsible for .Net 
   shared hosting environments, will have to execute their 
   client's website code with 'Full trust'.</p>
   <p>Given the dangers and risks created by situation (remote command execution, 
   disclosure of usernames and system information, etc... ), 
    
   the only  solution is prevention and detection.</p>
   <p>After some online research we couldn't find any relevant discussions about 
   this issues, so we would like to propose the following ideas and see if one 
   of them does produce a valid and acceptable solution for this problem:</p>
   <ul>
     <li><b>Code Validation - <br>
&nbsp;</b><ul>
       <li>Create a tool that executes after all compilation is done (i.e. when IL code is 
       created)<b> </b>but before the IL code is converted to machine code and executed by the OS<b>. </b>This toll would 
       validate the DLLs / EXEs and approve or disapprove its execution based on the 
       calls that are made. For example if a DLL contains a call to the Win32's &quot;winExec&quot;&nbsp; 
       function<b> </b>then  (unless the DLL has a special permission) its 
       execution will be denied.</li>
       <li>This tool could be used on 'live' websites or could be used offline 
       (some of this might have to be developed by Microsoft). The offline mode 
       could be part of an 'Approval Mechanism'</li>
       <li>This concept is the same as the one applied by the Anti-Virus 
       software that check for 'dangerous code' (i.e. virus signatures) on files 
       (downloaded from the web, attached to an email or copied to disk) before they are 
       executed by the system. The AV companies should develop such products 
       because they already have the core system, the automatic updates, 
       the report engine, the 24/7 security response teams and the brands.<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Improved security infrastructure</b>:<br>
&nbsp;<ul>
       <li>Full daily backups on all data stores</li>
       <li>Monthly re-Builds of all servers (automated procedure)</li>
       <li>ability to rebuild a server in 1h:<ul>
         <li>Install OS and applications</li>
         <li>Install security policies and settings</li>
         <li>Import databases from backup (or live servers)</li>
         <li>Add users (if required)</li>
         <li>Assign IPs</li>
         <li>decommission old server (if still live) and publish rebuilt server 
         without any loss of service<br>
&nbsp;</li>
       </ul>
       </li>
       <li>the ideal situation would be to have the servers in a cluster 
       environment where when one server is rebuilt (due to normal rebuild 
       practices or it was compromised), it can be removed from the network 
       without any loss of service<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Have one website per virtual server (both running in a main server)</b> 
     - the idea would be to have the equivalent of VMware where a server would 
     host each website in its own 'virtual' server (like mainframes). This would 
     require a much lighter version of windows 2003 which would have to be 
     designed for such scenario. Another possibility would be to use Linux which 
     will be possible once the porting of the .Net platform is fully completed.<br>
&nbsp;</li>
     <li><b>Audit Website Folders and Files:</b><br>
&nbsp;<ul>
       <li>monitor and audit at OS level (using NTFS) all files that belong to 
       each user by analysing the logs stored in the Event Viewer</li>
       <li>create custom reports per site / per user with details of whom (from 
       the inside) accessed those files<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Only execute signed and approved code</b> - <br>
&nbsp;<ul>
       <li>Two server scenario:<br>
&nbsp;<ul>
         <li>Development server (insecure)</li>
         <li>Live server (secure)<br>
&nbsp;</li>
       </ul>
       </li>
     </ul>
     </li>
     <li><b>Reduce customer anonymousity</b> - <br>
&nbsp;<ul>
       <li>Require authorized IPs to edit site</li>
       <li>Require IPSec key to edit site</li>
       <li>Validate identity using Credit Card system and other identity schemes<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Improve protection of&nbsp; important information </b>&nbsp;(Such as 
     usernames, passwords, database connection strings, database data, etc...)<br>
&nbsp;<ul>
       <li>Never strore these information in clear text (always stored them 
       encrypted)</li>
       <li>Etc....</li>
     </ul>
     </li>
   </ul>
   <p>Although Asp.Net is a giant leap forward on the technological frameworks 
   required to build more robust and secure web services, unless these 
   applications can be securely hosted, they will never gain public acceptance 
   and wide usage.</p>
<p>And unless a solution is found for this 'Full Trust' issue, nobody will be 
able to provide secure hosting of Asp.Net code. </p>
<p>We believe in shared knowledge and the power of peer-review, that is why we 
published our Asp.Net Security Analyser (see
<a href="http://www.gotdotnet.com/Community/Workspaces/Workspace.aspx?id=36ae9a2c-8740-4b52-924e-320edf64fba5">
http://www.gotdotnet.com/Community/Workspaces/Workspace.aspx?id=36ae9a2c-8740-4b52-924e-320edf64fba5</a>) 
as an open source web application, and why we are posting this information 
online and asking for your ideas and suggestions.</p>
<p>Best regards</p>
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