<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>More details about the proposed security solutions</H2>	
 
 <blockquote>
   <p><b>I) Windows 2000 and service packs: <br>
   </b><br>
   We start by installing the windows 2000 Advanced Server with SP3 on our test 
   machine (this guide is also applicable to the standard version of Windows 
   2000 Server).<br>
   <br>
   The security starts here and there are several important steps that need to 
   be performed already at this stage.<br>
   <br>
   Note that until the secure configuration of the server is completed, this 
   server must be considered UNSECURE and must be located in a private network 
   (i.e. isolated from the internet and your LAN)<br>
   <br>
   In this scenario we go to the Microsoft website to download the latest 
   Service Packs and Security patches. Note that this is a huge security problem 
   because (at this stage) the server could easily be compromised by an IE 
   exploit of a Cross Site Scripting attack. <br>
   <br>
   So make sure that you disable the default home page directory (make it blank) 
   and that the only website that you go is the Microsoft Update site (do this 
   via the link on the Start Menu)</p>
   <p><br>
   <b>II) Security Policies: <br>
   </b><br>
   To securely configure the server’s services, registry and default 
   permissions, we apply two different security templates that where based on 
   the NSA’s W2k_Server.inf (http://www.nsa.gov/snac/win2k/download.htm) and 
   Microsoft’s HiSecWeb.inf (http://support.microsoft.com/default.aspx?scid=kb;en-us;316347) 
   Security Templates<br>
   <br>
   Changes made to the templates</p>
   <ul>
     <li>NSA’s W2k_Server.inf (Applied first)<br>
     o We removed the User group from all folders. After applying this security 
     template the only users that should have rights in all folders in both the 
     C: and the D: drive are the administrator and SYSTEM accounts<br>
&nbsp;</li>
     <li>Microsoft’s HiSecWeb.inf<ul>
       <li>Enable Terminal Services (it was disabled)</li>
       <li>Disable the DFS service (it is not needed and it will fail to start 
       after both security policies are applied)</li>
       <li>Account Lock Period was set to 15 minutes (originally is was 0 
       minutes)</li>
       <li>Failed Login counter reset was set to 15 minutes</li>
       <li>Several file and directory permissions for the NETWORK and the 
       INTERACTIVE groups (required by IIS and FPSE). Further changes will be 
       added manually when following the step by step guide.</li>
     </ul>
     </li>
   </ul>
   <p>See http://www.sans.org/rr/win2000/hisecweb.php for a detailed analysis of 
   the Microsoft HiSecWeb.inf security policy<br>
   <br>
   In future versions of this guide we will try to combine these two policies.<br>
   <br>
   Important Note: The W2k_server.inf security policy activates the Security Log 
   “CrashOnAuditFull” flag. This means that the server will crash (shows a nice 
   Blue Screen of Death) if the security log file is full. Since the 
   HiSecWeb.inf changes the security log to 10Mb, you will need to have a system 
   in place to regularly save/export the security logs. You will also need to 
   increase the maximum log size to a value relevant to your set-up<br>
   <br>
   <br>
   <b>III) IIS Lockdown + URLScan </b><br>
   <br>
   IIS Lockdown will further harden the server although the security policies 
   have already gone a long way in securing your server.<br>
   <br>
   The most valuable item here is the installation of the URLSCAN ISAPI filter 
   that allows the filtering of the requests processed by the IIS web server. 
   This ensures that only only CORRECTLY FORMATTED AND VALIDATED REQUESTS are 
   accepted. In other words, if there’s any funny business, it will be rejected 
   here…<br>
   <br>
   <br>
   <b>IV) Office XP Service Pack 1 and 2</b><br>
   <br>
   These service packs will upgrade the Sharepoint TS Server Extensions (and by 
   default FrontPage Server extensions). <br>
   <br>
   This pages http://support.microsoft.com/default.aspx?scid=kb;EN-US;312543 and 
   http://support.microsoft.com/default.aspx?scid=kb;EN-US;323549 contain the 
   list of the issues fixed in Sharepoint TS by each Service Pack.<br>
   <br>
   What we found very interesting (although we couldn’t find an official 
   explanation for it) is that after we installed the Office XP Service Pack 1, 
   the FPSE2002 NETWORK vulnerability problem was minimized and (in a weird way) 
   fixed!<br>
   <br>
   Normally the FPSE2002 adds the NETWORK account to the website‘s root folder 
   and to the folder just above it (for example the “D:\Web_Data\Client_FP2002” 
   folder and the “D:\Web_Data” folder)<br>
   <br>
   The permissions added are read and execute to all folders, subfolders and 
   files. FrontPage and IIS will not work properly if these permissions are not 
   there, and if removed IIS and FPSE2002 will eventually add them.<br>
   <br>
   This is where the original problem is. Once those permissions are there all 
   authenticated users can also read these folders and files.<br>
   <br>
   What we found, after the installation of the Office XP Service Pack 1, is 
   that suddenly (on the webs that where already created and on new ones) the 
   file permission is not there! The NETWORK group only has read and execute 
   rights over the website folders and subfolders, and the FrontPage and 
   SharePoint websites work perfectly<br>
   <br>
   This solved the problem of users being able to read the source code of files 
   outside their website area, but the NETWORK group still allow the browsing of 
   all folders (which for example, would allow an attacker to discover where 
   Access database where stored). To solve this problem we added the steps 
   14(a), 17(f), 18(f) and 18(g) to remove the “list folder” permissions from 
   the NETWORK group.<br>
   <br>
   Our tests and the live implementation of these changes in live Web Servers 
   (hosting hundred of websites), have shown no side effects to the server’s 
   availability, reliability and resilience.<br>
   <br>
   The problem is that every time a new website is created or the server health 
   is executed the “List Folder” permissions are added back (we are sure that 
   there are more scenarios). <br>
   <br>
   Although these steps can be implemented manually, the best solution for this 
   problem is to create a GPO (enforced by Active Directory) that removes these 
   rights every 30 minutes from the folders hosting live websites.<br>
   <br>
   <br>
   <b>V) IPSec</b><br>
   <br>
   We used IPSec to further lock down the server and only allow authorized 
   traffic to occur.<br>
   <br>
   Note that after the IPSec policy is “Assigned”, the server will still work 
   perfectly as a web server but will not be able to:</p>
   <ul>
     <li>browse the web, </li>
     <li>access the Local Network </li>
     <li>ping another machine</li>
     <li>do anything apart from responding to web requests, contacting the SQL 
     server and accepting Terminal Services Sessions from local computers</li>
   </ul>
   <p>The IPSec template provided has the following filters:</p>
   <ul>
     <li>Allow anybody to make anonymous TCP/IP requests on the port 80 (i.e. 
     HTTP traffic)</li>
     <li>Allow the IIS server to connect to the SQL server on the TCP/IP port 
     1433</li>
     <li>Allow computers from the Local Network that belong to the subnet 
     192.168.20.0/24 (sub-net mask 255.255.255.0) to create a Terminal Services 
     Client connection to the server using the TCP/IP port 3389</li>
     <li>Block all other traffic (inbound and outbound)</li>
   </ul>
   <p>If you do a vulnerability scan after the IPSec template is assigned, you 
   should only be able to see the port 80 open. Of course that if the computer 
   running the scan is inside the 192.168.20.0/24 subnet, the 3389 port will 
   also appear <br>
   <br>
   <br>
   <b>VI Best practices in user / group management</b><br>
   <br>
   All the recommended security steps that allow the creation of a very secure 
   IIS build are worth nothing if all websites run under the same anonymous 
   account, or if the folder Access Control Lists (i.e. permissions) are not 
   properly managed</p>
 </blockquote>
  </body>
</html>