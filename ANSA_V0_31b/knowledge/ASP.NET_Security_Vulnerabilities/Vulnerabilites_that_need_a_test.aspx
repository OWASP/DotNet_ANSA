<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Known Vulnerabilities that need a ANSA test</H2>	
 
 <blockquote>
   <p>This list contains vulnerabilities that we have discovered and identified but 
   haven't had the time to write a ANSA test for it. </p>
   <ul>
     <li><b>Access Assembly data</b> - Due to the fact that the worker accounts 
     (used by the application pools) need to have read/write to the folder 
     holding the temporary .Net files,&nbsp; it is possible to access the files 
     created (compiled DLLs and web pages). Since it is trivial to disassembly 
     these IL DLLs into VB or C# this means that any secret stored in this files 
     can be easily discovered. Refection also allows the late binding of these 
     objects (which is also very dangerous)<br>
&nbsp;</li>
     <li><b>Win32 DLLs </b>- Since win32 calls are supported and cannot be 
     disabled when the website is running with 'Full trust', it is imperative to 
     identify all potentially dangerous Win32 DLLs. Here is a list of the ones 
     we have identified and need to write test scripts<br>
&nbsp;<ul>
       <li><b>New:</b> CopyMemory, GetCurrentProcess, GetCurrentThread, 
       GetTokenInformation, GetWindowsInformation, isNTAdmin, OpenProcessToken, 
       OpenTheadToken, SendMessage</li>
       <li><b>Compress: </b>CopyLZFile, LZCopy</li>
       <li><b>Crypto</b>: CryptGetUserKey, CryptDestroyKey</li>
       <li><b>Drives</b>: GetLogicalDrives, GetVolumeInformation</li>
       <li><b>EnvironmentVariables</b>: GetEnvironmentString, 
       GetEnvironmentVariable</li>
       <li><b>Error</b>: RaiseExeption, ReportFault, SetLastError</li>
       <li><b>EventLog</b>: OpenEventLog, ClearEventLog, ReportEvent</li>
       <li><b>Exit</b>: ExitWindowsEx, FatalAppExit, InitiateSystemShutdown, 
       LockWorkstation</li>
       <li><b>Files</b>: CopyFile, CreateFile, GetFileAttributes, MoveFile, 
       OpenFile, ReadFile, SetFileAttributes, SetFilePointers, SHGetFileInfo, 
       TouchFileTimes, Writefile</li>
       <li><b>FindFile</b>: FindClose, FindFirstFile, FindNextFile</li>
       <li><b>Heap</b>: GetProcessHeap, HeapAlloc, HeapFree</li>
       <li><b>Hook</b>: CallNextHookEx, SetWindowsHookEx</li>
       <li><b>ICMP</b>: IcmpCreateFile, IcmpSendEcho</li>
       <li><b>INI-Files</b>: GetPrivateProfileSection , GetPrivateProfileString </li>
       <li>b: BlockInput</li>
       <li><b>Internet</b>: FtpGetFile, InternetAttemptConnect, InternetConnect, 
       InternetOpen, InternetOpenURL, InternetaReadFile, IsDestinationReachable, 
       IsNetworkAlive, IsValidURL, URLdownloadtoFile<br>
&nbsp;</li>
       <li><i>{List Not completed}</i></li>
       <li><i>Winexec</i><br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Read and download files that contain security information </b>such 
     as 'Global.asa' or 'web.config'. This is possible when the Application 
     pools are not used, or web folders ACLs are not properly managed<br>
&nbsp;</li>
     <li><b>&nbsp;More IIS metabase access methods </b>- At the moment the IIS 
     metabase test is only testing one of the several ways the Metabase 
     information (such as usernames and passwords) can be disclosed. All methods 
     must also be testing in conjunction with the the RevertToSelf() 
     vulnerability, because sometimes by default this account has more accesses 
     to&nbsp; IIS Metabase than the Anonymous user<br>
&nbsp;</li>
     <li><b>ADSI WinNT provider vulnerabilites - </b>
     <a href="ADSI-WinNT_provider.aspx">see more details here</a><br>
&nbsp;</li>
     <li><b>LDAP WinNT provider vulnerabilites</b>&nbsp; -
     <a href="ADSI–LDAP_Provider.aspx">see more details here</a><br>
&nbsp;</li>
     <li><b>Port Scanner - </b>.Net exposes very powerful TCP connection 
     objects that allow the easy fetch of web pages and the creation of Port 
     Scanners.<b> </b>That power can also be used in malicious ways, namely:<br>
&nbsp;<ul>
       <li><b>Use the server to scan the local network, find vulnerable host and attack other servers (internal and external)</b><br>
     Given the range of tools available to the attacker (.NET Framework, WMI and 
     Win32 Dlls) an attacker can write scripts that attempt to 
     gain access to resources from other surrounding servers.<br>
&nbsp;</li>
       <li><b>Use the server to scan the clients accessing the hosted websites 
       for vulnerabilities in their internet connection and attack their 
       computers
     </b><br>
     With information about who is currently accessing the web server (‘netstat 
     -na’) and the ability to create new TCPclient connections, the attacker 
     could try to gain access to the desktops or proxy servers used by the 
     visitors of the websites hosted. <br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Windows login methods - </b>There are several ways a windows 
     identity can be validated (i.e. test username and password) in .Net (<a href="authentication_and_impersonation.aspx">see 
     here for a couple of examples on how dangerous this could be</a>)<br>
&nbsp;<ul>
       <li>Direct Win32 dll calls</li>
       <li>WMI</li>
       <li>ADSI WinNT &amp; LDAP (attempt to change password)<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Anonymous access Settings -</b> The only safe way to manage 
     Anonymous accesses is to have individual IUSER accounts,&nbsp; individual 
     application pools (in 2003) and have each website directory securely locked 
     down<br>
&nbsp;</li>
     <li><b>Use email or FTP to send</b> <b>out of the server - </b>Once 
     sensitive files are discovered on the server, one possible way to send them 
     to the 'outside' is to use .Net build it email capabilities (or other mail 
     component provided by the ISP) or FTP (if firewall is not blocking external 
     ftp accesses)<br>
&nbsp;</li>
   </ul>
   &nbsp;<p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>