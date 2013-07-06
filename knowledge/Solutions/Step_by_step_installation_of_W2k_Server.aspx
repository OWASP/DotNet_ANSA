<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
    <style>
<!--
table.MsoTableGrid
	{border:1.0pt solid windowtext;
	font-size:10.0pt;
	font-family:"Times New Roman"}
table.MsoTableClassic3
	{border:1.5pt solid black;
	font-size:10.0pt;
	font-family:"Times New Roman";
	color:navy}
-->
    </style>
</head>
<body>

 <H2>STEP BY STEP INSTALLATION OF THE W2K SERVER</H2>	
 
 <p><a href="ASP_Security_Tests_files/IIS_5_security_files.zip">Download .asp 
 scripts and security templates from here</a></p>	
 
 <blockquote>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">1-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Start windows 2000 installation: </span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Boot the computer from the CD</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create 2 partitions </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>C: Drive 4,000Mb</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>D: Drive 5,773Mb</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Install Windows 2000 in 1<sup>st</sup> partition (C: Drive) using the 
   NTFS format<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">2-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>On windows 2000 server setup (after the reboot)</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose the system locale - in our case English (United Kingdom)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Type your name and Organization – in our case: Dinis Cruz , DDPlus</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Enter you Product Key and Licensing Mode</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Enter Computer Name (in our case: 2k-IIS) and Administrative Password 
   (in our case: 1qaz2WSX)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose the components to install</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Deselect the following components:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Accessories and Utilities</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Internet Information Services (IIS)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Documentation</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>FrontPage 2000 Server Extensions</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Select the following components</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Terminal Services (when prompt chose the “Remote administration” mode)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">f.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Enter correct Time, Date and Time Zone<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">3-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>On Network Settings </span></b><span lang="EN-GB">chose Custom 
   Settings:</span></p>
   <p class="MsoNormal" style="text-indent: .75in; margin-left: 0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Uninstall “File and Print Sharing for Microsoft Networks”</span></p>
   <p class="MsoNormal" style="text-indent: .75in; margin-left: 0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Uninstall “Network Load Balancing” (only in Windows 2000 Advanced 
   Server)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Uncheck (not Uninstall!)&nbsp; “Client for Microsoft Networks”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Go to Internet Protocol (TCP/IP) properties and:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Configure the IP and DNS according to Network’s configuration. In our 
   case:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>IP address”: 192.168.20.100</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Network Mask: 255.255.255.0</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Default gateway: 192.168.20.1 </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">4.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Preferred DNS Server: 213.120.62.103</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click on Advanced…</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in IP settings add additional 5 IPs (for tests) : 192.168.20.101, 
   192.168.20.102, 192.168.20.103, 192.168.20.104, 192.168.20.105</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in the Wins tab chose the option “Disable NetBIOS over TCP/IP”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>(ignore the WINS alert and click OK)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in our tests the server was not part of a Domain, it belonged to the 
   Workgroup “IIS-SERVERS”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Relax and wait, if all went well the OS will be installed now and the 
   next thing that you should see is the windows login prompt (Ctrl Alt Delete)<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">4-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Login and Install Service Packs</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Login as administrator</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Resize screen to some thing more comfortable </span>
   <span lang="EN-GB" style="font-family: Wingdings">J</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>On “Windows 2000 Configure your Server” pop-up chose the option “I 
   will Configure this server later’ (Next), un-tick the box “Show this screen 
   at startup” and close</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Quick Format the D: drive with NTFS File System calling it (Volume 
   Label)&nbsp; “Web_Data”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Copy Files to the (new) directory: D:\Security_Files</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>DDPlus Security Templates (DDPlus_NSA_W2k_Server.inf and 
   DDPlus_Mft_HiSecWeb.inf) – included in this guide</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>DDPLus_IPSec_Policy.ipsec – included in this guide</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>IIS Lockdown (iislockd.exe) – download from:
   <a href="http://www.microsoft.com/downloads/details.aspx?displaylang=en&FamilyID=DDE9EFC0-BB30-47EB-9A61-FD755D23CDEC" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/downloads/details.aspx?displaylang=en&amp;FamilyID=DDE9EFC0-BB30-47EB-9A61-FD755D23CDEC</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Office XP service Packs (oxpsp1.exe oxpsp2.exe) – download from
   <a href="http://office.microsoft.com/downloads/2002/oxpsp2.aspx" style="color: blue; text-decoration: underline; text-underline: single">
   http://office.microsoft.com/downloads/2002/oxpsp2.aspx</a> and
   <a href="http://office.microsoft.com/downloads/2002/oxpsp1.aspx" style="color: blue; text-decoration: underline; text-underline: single">
   http://office.microsoft.com/downloads/2002/oxpsp1.aspx</a> </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>v.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Sharepoint Team Services and FrontPage Extensions 2002 setup – located 
   in the “SHAREPT” folder from the “Office XP with FrontPage” CD</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">f.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Install SP3</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">g.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Go to windows Update (configure web access, don’t set up an email 
   account, set explorer to check for newer versions of stored pages “Every 
   visit to the page” (in Internet options -&gt; General-&gt; Temporary Internet files 
   Settings) and, set the IE home page to “about:blank”)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Install the “windows update V4 control” </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Scan you computer for updates</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Install IE6 SP1</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Reboot and return to windows update</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Install “all Critical Patches” </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">4.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Reboot<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">5-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create a Security Group called “IIS_Anonymous_Accounts” </span></b>
   </p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative Tools -&gt; Computer Management -&gt; Local Users and 
   Groups -&gt; Groups<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">6-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In MMC -&gt; “Security Template” Snap In:</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Add “New Template Search Path” &nbsp;D:\Security_Files</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In “DDplus_Msf_HiSecWeb.inf” -&gt; File System</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Make the following changes (editing an existing object or via “Add 
   File…”)<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="margin-left: 99.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB"><br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <table class="MsoTableClassic3" border="1" cellspacing="0" cellpadding="0" style="border-collapse: collapse; border: medium none; margin-left: .2in">
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: 1.5pt solid black; border-bottom: 1.0pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: navy">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b><i>
       <span lang="EN-GB" style="color: white">File / Directory</span></i></b></p>
       <p class="MsoNormal" style="margin-right: 5.4pt"><b><i>
       <span lang="EN-GB" style="color: white">Name</span></i></b></td>
       <td width="120" valign="top" style="width: 1.25in; border-left: medium none; border-right: medium none; border-top: 1.5pt solid black; border-bottom: 1.0pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: navy">
       <p class="MsoNormal"><b><i><span lang="EN-GB" style="color: white">
       Accounts to remove</span></i></b></td>
       <td width="216" valign="top" style="width: 2.25in; border-left: medium none; border-right: medium none; border-top: 1.5pt solid black; border-bottom: 1.0pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: navy">
       <p class="MsoNormal"><b><i><span lang="EN-GB" style="color: white">
       Accounts to </span></i></b></p>
       <p class="MsoNormal" style="margin-right: 45.0pt"><b><i>
       <span lang="EN-GB" style="color: white">add</span></i></b></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: 1.5pt solid black; border-bottom: 1.0pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: navy">
       <p class="MsoNormal"><b><i><span lang="EN-GB" style="color: white">Mode</span></i></b></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">C:\Winnt</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">Everyone</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IWAN_2K-IIS<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Propagate</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">C:\Winnt\system32</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">Everyone</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IWAN_2K-IIS </span></b></p>
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">(Default 
       Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Propagate</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">%SystemRoot%\system32\inetsrv*</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">&nbsp;</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IWAN_2K-IIS<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></p>
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IIS_Anonymous_Accounts<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Replace</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">C:\winnt\system32\scrrun.dll</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">Everyone</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IIS_Anonymous_Accounts<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Propagate</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">%SystemDrive%\Program 
       Files\Common Files*</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">&nbsp;</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IWAN_2K-IIS </span></b><span lang="EN-GB" style="color: navy">(Default 
       Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Replace</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">C:\Program Files\Common 
       Files\Microsoft Shared\web server extensions</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">Everyone</span></td>
       <td width="216" valign="top" style="width: 2.25in; border: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IIS_Anonymous_Accounts<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: medium none; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Propagate</span></td>
     </tr>
     <tr>
       <td width="300" valign="top" style="width: 225.0pt; border-left: 1.5pt solid black; border-right: medium none; border-top: medium none; border-bottom: 1.5pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: 5.4pt"><b>
       <span lang="EN-GB" style="color: black">C:\Program Files\Common 
       Files\System</span></b></td>
       <td width="120" valign="top" style="width: 1.25in; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.5pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><span lang="EN-GB" style="color: navy">Everyone</span></td>
       <td width="216" valign="top" style="width: 2.25in; border-left: medium none; border-right: medium none; border-top: medium none; border-bottom: 1.5pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal"><b><span lang="EN-GB" style="color: navy">
       IIS_Anonymous_Accounts<br>
       </span></b><span lang="EN-GB" style="color: navy">(Default Permissions)</span></td>
       <td width="87" valign="top" style="width: 65.15pt; border-left: medium none; border-right: 1.5pt solid black; border-top: medium none; border-bottom: 1.5pt solid black; padding-left: 5.4pt; padding-right: 5.4pt; padding-top: 0in; padding-bottom: 0in; background: silver">
       <p class="MsoNormal" style="margin-right: .05in">
       <span lang="EN-GB" style="color: navy">Propagate</span></td>
     </tr>
   </table>
   <p class="MsoNormal" style="margin-left: .25in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">* Already in Template (just add the local accounts that 
   are missing (IWAM_2K-IIS or IIS_Anonymous_Accounts))<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Save Security Template “DDplus_Msf_HiSecWeb.inf”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Close “Security Template” Snap In<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">7-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In MMC -&gt; Security Configuration and Analysis Snap in:</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Open database called “DDPlus_NSA_W2k_Server.sbd” (this will created a 
   new database)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose the Security template D:\Security_files\DDPlus_NSA_W2k_server.inf</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose “Analyse computer now” -&gt; OK</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Review the results (i.e. the changes that will be made to the Server)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose “Configure Computer Now” -&gt; OK (this will apply the policy)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Open database called “DDPlus_Mft_HiSecWeb.jbd” (this will created a 
   new database)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose the Security template D:\Security_files\ DDPlus_Mft_HiSecWeb.inf</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose “Analyse computer now” -&gt; OK</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Review the results (i.e. the changes that will be made to the Server)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose “Configure Computer Now” -&gt; OK (this will apply the policy)<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">8-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Test Accounts and Web Site configuration</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create an account called “test” with the password “1q2w3e4R” (note 
   that the R is in CAPS). </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Un-Tick the option “User must change password next logon” -&gt; Create -&gt; 
   Close</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove user from “Users” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Add user to the “IIS_Anonymous_Accounts” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create Folder “D:\Web_Data”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create Folder “D:\Web_Data\Test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In “D:\Web_Data\Test” add user “2K-IIS\Test” and accept the default 
   permissions </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative tools -&gt; Internet Services Manager:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Stop “Default Web website”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Stop “Administration website”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create a new website with the following options:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Description: “Test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>IP: “192.168.20.100”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Path: “D:\Web_Data\Test”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In the Properties of the “Test” website</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in Directory Security Tab</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in “Anonymous Users and Authentication Control” (Click Edit)</span></p>
   <p class="MsoNormal" style="text-indent: -3.0in; margin-left: 3.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In “Anonymous Users” (Click Edit)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 3.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Change the “IUSR_2K-IIS” account to “2K-IIS\Test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 3.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click on “Allow IIS to control password” (say Yes &nbsp;to the warning)<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="margin-right: 45.0pt"><span lang="EN-GB">&nbsp;</span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">9-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Reboot</span></b></p>
   <p class="MsoNormal" style="margin-left: .25in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">&nbsp;</span></b></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">10-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Test website: HTM and ASP</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Copy “Hello_world.htm” and “Hello_world.asp” to “D:\Web_Data\test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In another computer on the same network browse to:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>
   <a href="http://192.168.20.100/Hello_world.html" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.100/Hello_world.html</a> </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>
   <a href="http://192.168.20.100/Hello_world.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.100/Hello_world.asp</a></span></p>
   <p class="MsoNormal" style="margin-right: 45.0pt"><span lang="EN-GB">&nbsp;</span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">11-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Install SharePoint Team Services and FrontPage Extensions 2002</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In start -&gt; run -&gt; cmd.exe</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Type “D:\Security_Files\Sharept\setupse /ND” (the “/ND” option 
   disables the automatic installation of the MSDE)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click “Yes” on the SQL server warning </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Go to Administrative tools -&gt; Services</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Change the Startup Type of the “Sharepoint Timer Services” from Manual 
   to Automatic<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">12-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Install IIS Lockdown</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Run D:\Security_Files\iislockd.exe</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose the option “Sharepoint Team Services”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Tick on “View Template Settings” + Next</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click &nbsp;“Email Services (SMTP)” + Next + Next + Next + Next +Next</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>When requested click on Yes to install the Software Package<br>
   <br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">13-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Install Office XP Service packs</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>run D:\Security_files\Oxpsp1.exe</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>run D:\Security_files\Oxpsp2.exe<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">14-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Last Security tweaks</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in D:\Web_Data -&gt; Properties -&gt; Security -&gt; Advanced</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove “List Folder / Read Data” permission from the NETWORK account</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administration tools -&gt; Local Security Policy</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Local Policy<br>
   &nbsp;&nbsp; -&gt; Security Options<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; “Lan Manager Authentication Level” chose the option <br>
   ”Send LM &amp; NTLM – use NTLM v2 session security if negotiated”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create and ODBC connection to the SQL server in order to configure the 
   ODBC connection to use TCP/IP instead of the default “Named Pipes”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administration Tools -&gt; Data Sources (ODBC)<br>
   &nbsp;&nbsp;&nbsp;&nbsp; -&gt; System DSN<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&gt; add SQL server Connection (configure “Client Configuration” to 
   use TCP/IP)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">15-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Configure IPSEC</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In MMC “IP Security Policy Management” snap In</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Import Policy</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Chose “D:\Security_files\DDPLus_IPSec_Policy.ipsec”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Assign “Close all un-necessary ports”<br>
   <br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">16-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Clean up</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative tools -&gt; Internet Services Manager:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Delete website “test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Delete folder (D:\web_data\test)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Administrative tools -&gt; Computer Management -&gt; Users and Groups -&gt; 
   Users</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Delete user “test”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>This last step solves a bug that we discovered in the IIS MMC where 
   the first two websites didn’t had the option to configure the FPSE2002 (this 
   must be a site effect of the permissions applied)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative tools -&gt; Internet Services Manager:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create website (description “Dummy_1”, IP: “All assigned”, Path: “D:\Website_Data”)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Stop “Dummy_1” website</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create website (description “Dummy_2”, IP: “All assigned”, Path: “D:\Website_Data”)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">4.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Stop “Dummy_2” website<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">17-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Test website: FrontPage Extensions 2002 </span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create user “IUSR_FP2002” with the password “1q2w3e4R” (note that the 
   R is in CAPS). </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Un-Tick the option “User must change password”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove user from “Users” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Add user to the “IIS_Anonymous_Accounts” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create user “Client_FP2002” with the password “1q2w3e4R” (note that 
   the R is in CAPS). </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Un-Tick the option “User must change password”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remote user from “Users” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create Folder “D:\Web_Data\Client_FP2002”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In “D:\Web_Data\Client_FP2002” add user “IUSR_FP2002” and accept the 
   default permissions</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative tools -&gt; Internet Services Manager:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create a new website with the following options:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Description: Client_FP2002</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>IP: 192.168.20.101</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Path: D:\Web_Data\Client_FP2002</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In the Properties of the “Client_FP2002” website</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in Directory Security Tab</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Edit the “Anonymous User” settings</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Change the account to “IUSR_FP2002”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click on “Allow IIS to control password” (say yes to the warning)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In test -&gt; All Tasks -&gt; Configure Server Extensions 2002</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>(IE opens the FP2002 admin page)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Site Type is “Blank website”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>(install FrontPage Extensions)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in the Security Permissions of the d:\website_data\client_FP2002 
   folder, add the “Client_FP2002” user account with the default and WRITE 
   permissions.</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>v.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Open FrontPage
   <a href="http://192.168.20.101/" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.101</a> (login as “Client_FP2002”)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create a new page. Put some text on it and save it on the root of the 
   website (call it “test_webpage.htm”)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>vi.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In another computer on the same network browse to:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>
   <a href="http://192.168.20.101/test_webpage.htm" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.101/test_webpage.htm</a></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">f.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in D:\Web_Data -&gt; Properties -&gt; Security -&gt; Advanced</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove “List Folder / Read Data” permission from the NETWORK account</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">g.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in D:\Web_Data\client_FP2002 -&gt; Properties -&gt; Security -&gt; Advanced</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>if the NETWORK account has permissions over files, remove those rights 
   (it is ok to have permissions over folders and subfolders)<br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></p>
   <p class="MsoNormal" style="text-indent: -21.0pt; margin-left: 39.0pt; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <b><span lang="EN-GB">18-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;
   </span>Test website: Sharepoint Team Services </span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create user “IUSR_SHAREPOINT” with the password “1q2w3e4R” (note that 
   the R is in CAPS). </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Un-Tick the option “User must change password”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove user from “Users” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Add user to the “IIS_Anonymous_Accounts” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create user “Client_SHAREPOINT” with the password “1q2w3e4R” (note 
   that the R is in CAPS). </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Un-Tick the option “User must change password”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remote user from “Users” Security Group</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create Folder “D:\Web_Data\Client_SHAREPOINT”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">d.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In “D:\Web_Data\Client_SHAREPOINT” add user “IUSR_SHAREPOINT” and 
   accept the default permissions</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">e.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In Administrative tools -&gt; Internet Services Manager:</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Create a new website with the following options:</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Description: Client_SHAREPOINT</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>IP: 192.168.20.102</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Path: D:\Web_Data\Client_SHAREPOINT</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In the Properties of the “Client_SHAREPOINT” website</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in Directory Security Tab</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Edit the “Anonymous User” settings</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Change the account to “IUSR_SHAREPOINT”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click on “Allow IIS to control password” (say Yes to the warning)</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>In test -&gt; All Tasks -&gt; Configure Server Extensions 2002</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>(IE opens the SHAREPOINT admin page)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">2.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in Database put SQL server details (IP, Username and Password)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">3.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Site Type is “Sharepoint-based Web site”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">4.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>(install Sharepoint Team Server Extensions)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">5.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Open the page
   <a href="http://192.168.20.102/" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.102</a> (the default SharePoint site should appear) </span>
   </p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">f.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in D:\Web_Data -&gt; Properties -&gt; Security -&gt; Advanced</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Remove “List Folder / Read Data” permission from the NETWORK account</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">g.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>in D:\Web_Data\Client_SHAREPOINT -&gt; Properties -&gt; Security -&gt; Advanced</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>if the NETWORK account has permissions over files, remove those rights 
   (it is ok to have permissions over folders and subfolders)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">h.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Open the web administration page:<a href="http://192.168.20.102/_layouts/settings.htm" style="color: blue; text-decoration: underline; text-underline: single">http://192.168.20.102/_layouts/settings.htm</a></span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Go to “Manage Users” (<a href="http://192.168.20.102/_vti_bin/_vti_adm/fpadmdll.dll?Page=user.htm" style="color: blue; text-decoration: underline; text-underline: single">http://192.168.20.102/_vti_bin/_vti_adm/fpadmdll.dll?Page=user.htm</a>)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">1.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>go to “add a user” (<a href="http://192.168.20.102/_vti_bin/_vti_adm/fpadmdll.dll?page=adduser.htm" style="color: blue; text-decoration: underline; text-underline: single">http://192.168.20.102/_vti_bin/_vti_adm/fpadmdll.dll?page=adduser.htm</a>)</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">a.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>insert “Client_sharepoint” in the “Add user or group name” field</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">b.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>chose the Administrator role</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 2.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">c.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>click on “Add User”</span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: 1.0in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Test the new account and SharePoint functionality </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>i.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>On a new browser window, go to the home page of the Sharepoint site:
   <a href="http://192.168.20.102/" style="color: blue; text-decoration: underline; text-underline: single">
   http://192.168.20.102</a> , click on “add new announcement” and enter some 
   test text. </span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Click on “Save and Close”</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iii.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>Enter the username “Client_Sharepoint” and its password</span></p>
   <p class="MsoNormal" style="text-indent: -1.5in; margin-left: 1.5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB">
   <span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv.<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span>If all went is ok, you should now see your announcement in the home 
   page of your SharePoint website</span></p>
   <p class="MsoNormal" style="margin-right: 45.0pt"><span lang="EN-GB">&nbsp;</span><b><span style="font-size: 10.0pt; font-family: Verdana">Finally 
   test</span><span lang="EN-GB" style="font-size: 10.0pt; font-family: Verdana"> 
   the security using the .asp scripts provided </span>
   <span style="font-size: 10.0pt; font-family: Verdana">(see here)</span></b></p>
   <p>&nbsp;</p>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>