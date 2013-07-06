<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Problems associated with using Windows 2000 server and IIS 5.0 for Shared Hosting</H2>	
 
 <blockquote>
   <p><b>I) Windows 2000 is insecure by Design</b></p>
   <blockquote>
   <p><b>a. FPSE2002 allows users to browse anonymously after authentication </b></p>
   <p>In FrontPage Server Extensions 2002 (FPSE2002) when a Web site is set to 
   allow anonymous users to browse the site content, and a user authenticates to 
   perform some other tasks (such as modifying a file) they can no longer browse 
   any sites on that server anonymously. This is problematic when the user goes 
   to browse a different Web site on the same virtual server. Because they have 
   authenticated, they are no longer anonymous, and because their own 
   credentials are not used by the new Web site, they may be blocked from 
   browsing the new site. <br>
   <br>
   For example, your server, SERVER1, hosts both http://www.example.com (a site 
   that allows anonymous browsing) and http://www.example.com/subweb (a site 
   that does not allow anonymous browsing) on the same virtual server. User1 is 
   an author for www.example.com/subweb. Previously, when User1 accessed a file 
   from the file system to make a change in www.example.com/subweb, and then 
   browsed to www.example.com, the user was already authenticated. So, rather 
   than browsing the site as an anonymous user, the user's credentials were 
   checked and the user saw an access denied error.<br>
   <br>
   To get around this issue, the FrontPage Server Extensions 2002 use the 
   NETWORK/INTERACTIVE access control entries (ACE) to allow users with user 
   accounts to browse content, even after they have authenticated. <br>
   <br>
   However, these general groups may allow more permissive behaviour than is 
   desired. For example, if a user is accessing the files by way of the FTP 
   protocol, or by running server-side scripts, the NETWORK/INTERACTIVE ACEs 
   will potentially allow users of other virtual servers on the same machine to 
   view not only the HTML files, but potentially ASP source files or other 
   scripting files. The content is safe when browsing with the HTTP protocol; it 
   is only when a user is directly accessing the file system (through an .asp 
   page) that there is a security issue.<br>
   <br>
   <br>
   <b>b. Windows Script Host allows the remote execution of commands (i.e. Remote 
   Shell)</b><br>
   By default all authenticated users (including the default anonymous account 
   IUSR_xxxxx) can (through an .asp page) create an instance of the Windows 
   Script Host Object (&quot;WSCRIPT.SHELL&quot;) which can be used to execute commands on 
   the server.<br>
   <br>
   This means that a script page (.asp or .aspx) can be designed to execute the 
   following commands on the server: </p>
     <ul>
       <li>Dir: Displays a list of files and subdirectories in a directory.</li>
       <li>Net users : List users</li>
       <li>Net Localgroup administrators : list the users that have administrator 
   rights</li>
       <li>Net Account : List security policies</li>
       <li>Net View : List computers on the surrounding network</li>
       <li>Cacls : Displays or modifies access control lists (ACLs) of files</li>
       <li>ARP : Displays and modifies the IP-to-Physical address translation tables 
   used by address resolution protocol (ARP)</li>
       <li>NetStat: Displays protocol statistics and current TCP/IP network 
   connections.</li>
       <li>TFTP : Transfers files to and from a remote computer running the TFTP 
   service</li>
       <li>Etc….<br>
   &nbsp;</li>
     </ul>
   <p>If the website is configured to run the application in the “Medium (Pooled)” 
   or High (“Isolated”) protection mode, then the commands executed on the 
   server will run with the security rights of either the account defined to 
   handle the anonymous connections (usually IUSR_xxxx) or the account the user 
   used to log in (via web authentication). This already is a very serious 
   security vulnerability because the information disclosed by the commands 
   mentioned previously is enough to mount a successful attack.<br>
   <br>
   <b>BUT, if the server is configured to run the Application in the “Low (IIS 
   Process)” protection mode, then the commands will be executed under the 
   account that runs the IIS service which, in Windows 2000, is always the 
   “SYSTEM” account, having administrative rights over the whole system.<br>
   </b>
   <br>
   In this situation the attacker can use the windows script host to create an 
   administrative account (or add his account to the administrators security 
   group) and gain total control over the system, and maybe the network.<br>
   <br>
   <br>
   <b>c. With a. and b. combined, an attacker can upload and run exploits to the 
   server.</b><br>
   <br>
   The attacker can upload executables that exploit known Windows 
   vulnerabilities (most in services completely unrelated to web hosting) 
   through his FrontPage account or using scripts such as “upload.asp” <br>
   <br>
   Once an attacker can upload and run files (with exploits), total compromise 
   of the server and network is not very far away<br>
   &nbsp;</p>
   </blockquote>
   <p><b>II) Windows 2000 is insecure by Default</b></p>
   <blockquote>
   <p>Without being securely configured, Windows 2000 is very insecure. Examples of 
   vulnerabilities that affect ISP with shared hosting<br>
   <br>
   <b>a. SNMP or NetBIOS (via Null Sessions or known account details) disclose 
   sensitive information such as:</b></p>
     <ul>
       <li>Usernames</li>
       <li>Services running (i.e. programs)</li>
       <li>Shares</li>
       <li>Domain Trusts</li>
       <li>Networks (TCP/IP mappings)</li>
       <li>Password policies</li>
       <li>Open Ports</li>
       <li>Registry information</li>
       <li>Security Patched and Service Packs installed</li>
     </ul>
   <p>And much, much more …..<br>
   <br>
   <b>b. Easily exploitable Services (via buffer overflows, bugs, etc…). </b></p>
   <p>Note that 
   most vulnerable services are not required in a shared hosting environment and 
   should not be there in the first place<br>
   <br>
   <b>c. Brute force password attacks are possible and simple, because:</b></p>
     <ul>
       <li>The usernames are known (via SNMP or NetBIOS)</li>
       <li>there are several authentication methods (i.e. where to try the passwords) 
   available: FTP, POP3, Web Page (HTTP basic), Web Page (HTML form), Telnet and SMB (NetBIOS)</li>
       <li>the accounts don’t lock after multiple password failures caused by a brute 
   force attack.</li>
       <li>Most users have simple passwords (including users with administrator 
   rights!)</li>
       <li>The failed logon attempts are not logged in the security log because, by 
   default the security auditing is disabled</li>
     </ul>
   <p><b>d. Very poor implementation of NTFS permissions (in directories and files).</b></p>
   <p>&nbsp;For example the EVERYONE account (which contains all user accounts that 
   access the computer, including anonymous users and users who have not 
   specifically logged on) has (by default) access to 95% of the data stored in 
   all available hard drives. <br>
   &nbsp;</p>
   </blockquote>
   <p><b>III) Windows 2000 is insecure in Deployment UNLESS best practices are 
   followed and very tight user/group permissions management are implemented.</b></p>
   <blockquote>
   <p>Our experience shows us that ISPs don’t implement the best practices 
   recommend by Microsoft as presented in the various Windows 2000 and IIS 
   security guides available from Microsoft and others (the www.NSA.gov 
   (National Security Agency, USA) has published some of the best guides we have 
   come across).<br>
   <br>
   For example, ISPs will use the same Anonymous account in several websites 
   hosted in the same server. This would allow any account holder to see other 
   user’s data. It would not matter if that server had the best Firewall, 
   Intrusion Detection and Anti Virus system in the world. That server would 
   still be vulnerable and easy to compromise.<br>
   <br>
   This lack of security implementation creates (or doesn’t disable existing) 
   vulnerabilities and helps hackers enormously in their quest to deface sites, 
   steal information or install backdoor Trojans. <br>
   <br>
   DDPlus, by publishing this security analyser, wants to contribute to the 
   resolution of the current security problems faced by ISPs that provide Shared 
   Hosting Services<br>
   <br>
   PLEASE NOTE THAT THIS GUIDE HAS NOT BEEN VALIDATED BY MICROSOFT AND IS NOT 
   ENDORSED IN ANY WAY OR FORMAT BY MICROSOFT AS A VIABLE AND EFFECTIVE SOLUTION 
   FOR THE CURRENT SECURITY PROBLEMS WITH SHARED HOSTING ENVIRONMENTS USING 
   IIS5.0 AND FRONTPAGE EXTENSIONS 2002.<br>
&nbsp;</p>
   </blockquote>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>