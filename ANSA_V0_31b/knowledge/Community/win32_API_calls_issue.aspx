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

 <a name="top"></a><H2>'Win32 API calls' (Potential Security problems)</H2>
 
 <blockquote>
   <p><b>Message posted:</b></p>
	<table border><tr><td>
<!-- Beggining of posted text -->

<b>Asp.Net.Vulnerability: Win32 API calls (potential security problems)<br>
<br>
</b>Since win32 calls are supported in Asp.Net and cannot be disabled when the 
website is running with 'Full trust', it is imperative to identify all 
potentially dangerous Win32 DLLs. Here is a short list of the ones we have 
identified whose risk needs to validated and (if required) write test scripts 
for:<ul>
  <li><b>New:</b> CopyMemory, GetCurrentProcess, GetCurrentThread, 
  GetTokenInformation, GetWindowsInformation, isNTAdmin, OpenProcessToken, 
  OpenTheadToken, SendMessage </li>
  <li><b>Compress: </b>CopyLZFile, LZCopy </li>
  <li><b>Crypto</b>: CryptGetUserKey, CryptDestroyKey </li>
  <li><b>Drives</b>: GetLogicalDrives, GetVolumeInformation </li>
  <li><b>EnvironmentVariables</b>: GetEnvironmentString, GetEnvironmentVariable
  </li>
  <li><b>Error</b>: RaiseExeption, ReportFault, SetLastError </li>
  <li><b>EventLog</b>: OpenEventLog, ClearEventLog, ReportEvent </li>
  <li><b>Exit</b>: ExitWindowsEx, FatalAppExit, InitiateSystemShutdown, 
  LockWorkstation </li>
  <li><b>Files</b>: CopyFile, CreateFile, GetFileAttributes, MoveFile, OpenFile, 
  ReadFile, SetFileAttributes, SetFilePointers, SHGetFileInfo, TouchFileTimes, 
  Writefile </li>
  <li><b>FindFile</b>: FindClose, FindFirstFile, FindNextFile </li>
  <li><b>Heap</b>: GetProcessHeap, HeapAlloc, HeapFree </li>
  <li><b>Hook</b>: CallNextHookEx, SetWindowsHookEx </li>
  <li><b>ICMP</b>: IcmpCreateFile, IcmpSendEcho </li>
  <li><b>INI-Files</b>: GetPrivateProfileSection , GetPrivateProfileString</li>
  <li><b>Internet</b>: FtpGetFile, InternetAttemptConnect, InternetConnect, 
  InternetOpen, InternetOpenURL, InternetaReadFile, IsDestinationReachable, 
  IsNetworkAlive, IsValidURL, URLdownloadtoFile<br>
  &nbsp; </li>
  <li><i>{List Not completed}</i> </li>
</ul>
<p>Since we are not Win32 API experts (although we did manage to write a test 
script for the Kernel32 'WinExec' - see bellow) we would like ask for help to 
the more serious win32 developers which will be able to provide us with much 
more detailed and accurate information regarding the 'security risk' posed by 
each API call.</p>
<p>The following is the code that we use in ANSA to test if a server is 
vulnerable.</p>
<p>'****************************************************************<br>
' ANSA:W32_execute_cmd - This test checks if it is possible to execute commands&nbsp;&nbsp;
<br>
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
on&nbsp; the server using a direct Win32 API call to the kernel32 'winExec' <br>
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
function . For this test to work a&nbsp; copy of 'cmd.exe' must be copied to the<br>
'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
same directory containing this script<br>
'****************************************************************</p>
<p>&lt;script runat=server&gt;<br>
<br>
&nbsp; Declare Function WinExec Lib &quot;kernel32&quot; Alias &quot;WinExec&quot; (ByVal lpCmdLine 
As String, ByVal nCmdShow As Long) As Long<br>
&nbsp; Declare Function CopyFile Lib &quot;kernel32&quot; Alias &quot;CopyFileA&quot; (ByVal 
lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists 
As Long) As Long<br>
<br>
&nbsp; public Function Run_test(mode)<br>
<br>
&nbsp;&nbsp;&nbsp; try <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim winObj, objProcessInfo, item, local_dir, 
local_copy_of_cmd, Target_copy_of_cmd<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim objStartup, objConfig, objProcess, 
errReturn, intProcessID, temp_name<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim FailIfExists<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dim Cmd_to_execute = &quot;dir&quot;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local_dir = 
left(request.servervariables(&quot;PATH_TRANSLATED&quot;), _ <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
inStrRev(request.servervariables(&quot;PATH_TRANSLATED&quot;),&quot;\&quot;))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; local_copy_of_cmd = Local_dir+&quot;cmd.exe&quot;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Target_copy_of_cmd = 
Environment.GetEnvironmentVariable(&quot;Temp&quot;)+&quot;\_test.exe&quot;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ' Copy CMD.EXE to temp directory<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CopyFile(local_copy_of_cmd, 
Target_copy_of_cmd,FailIfExists)<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ' Execute Command and save results in temp 
file <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; errReturn = WinExec(Target_copy_of_cmd + &quot; 
/c &quot; + cmd_to_execute, 10)<br>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Run_test = OK + Critical +&quot; The server 
allows the remote execution of commands using a direct call to WinExec API!&quot; <br>
&nbsp;&nbsp;&nbsp; catch <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Run_test = OK + low + &quot;It was not possible to 
execute commands using cmd.exe&quot; <br>
&nbsp;&nbsp;&nbsp; end try <br>
<br>
&nbsp; end function<br>
<br>
&lt;/script&gt;</p>
<p>'****************************************************************</p>

<P>Thanks for the help</P>

<P>Best regards</P>

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