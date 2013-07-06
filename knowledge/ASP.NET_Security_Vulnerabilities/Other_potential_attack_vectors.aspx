<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Other potential attack vectors</H2>	
 
 <blockquote>
   <p>These are other potential scenarios that we think are possible but haven’t 
   had the time to create the proof-of-concept exploit code</p>
   <ol>
     <li><b>Late Bind to assemblies already loaded in memory that belong to 
     other web applications</b> - Since reflection allows late biding of any IL 
     compatible object (dll or exe) theoretically it should be possible to 
     connect to this objects (create an instance) when they are loaded in their 
     own worker process. If only the administrator is able to do this, there is 
     no security risk, if any member of the IWAM group can do this, then this 
     could be a huge problem because that means that our account would be able 
     to request information (such as SQL connection strings) or make direct 
     calls to that website's database<br>
&nbsp;</li>
     <li><b>Assembly tampering - </b>Once an attacker as access to a compiled IL 
     DLL it should be possible to add a couple of Trojan functions to it<b> </b>
     and copied it to the 'bin'<b> </b>directory or to the temporary assembly 
     directory. The next steps in researching this vulnerability are answering 
     the following questions:<ul>
       <li>&quot;If a DLL located in the 'bin' directory is changed will it be used 
       as normal or is there any security check that would detect this 
       tampering&quot; (The solution for this could in 'Strong Names'?')</li>
       <li>&quot;When the DLL is executed, which version is copied to the memory? the 
       one in the 'bin' directory or the one in the '.Net Temporary Assembly 
       folder'?&quot;</li>
       <li>&quot;If the DLL copied to memory is the one in the '.Net temporary' 
       folder, then what happens if that DLL is changed (i.e. tampered) 
       directly?&quot;.<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>_vti_bin vulnerabilities </b>- When FrontPage extensions are used a 
     virtual directory is created that points '_vti_bin' to the '\program 
     files\common files\Microsoft Shared\web server extensions\50\isapi' folder. 
     Inside this folder there are 4 executables: &quot;shtml.dll&quot;,&quot;fpcount.exe&quot;,&quot;admin.dll&quot;,&quot;fpadmdll.dll&quot;.<br>
&nbsp;<ul>
       <li>Is there any vulnerability in this files (for example buffer 
       overflow)?</li>
       <li>Why aren't this files build using .Net and compiled in IL? Doesn't 
       that make this executables more dangerous?</li>
       <li>Is there any dangerous undocumented functionality in this (web 
       exposed) objects? <br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Buffer Overflows on server's components - </b>By calling native 
     Win32 DLLs, starting new process and (maybe) communicate with existent 
     process then it should be possible (in an unpathced server) to exploit an 
     existent buffer overflow.<br>
&nbsp;</li>
     <li><b>SNMP or NetBIOS queries</b><br>
     Since Asp.Net allows access to the WiN32 API, it should be possible to 
     create SNMP and NetBIOS queries to the local server, routers, switches or 
     PCs&nbsp; to discover sensitive 
     information such as: Usernames, Services or Shares. It should also be 
     possible to do a brute force password attack&nbsp; to SNMP community name 
     (public and private)<br>
&nbsp;</li>
     <li><b>XML, OBDC and OleDB - </b>These objects expose a huge amount of 
     functionality and all have the ability to read files from local (or remote)<b>
     </b>locations.<br>
&nbsp;</li>
     <li><b>Office Automation - </b>With .Net it is possible to create office 
     objects (Word, Access, Excel, Outlook, PowerPoint) that expose hundreds of 
     objects, and also (more important from a security point of view) are able 
     to execute macros (i.e. script).<br>
     <br>
     This means that even a server whose trust level was reduced (i.e. not 'Full 
     Trust') but allowed accesses to 'Access' databases, could be exploited.&nbsp; 
     The attacker could write the malicious code inside the 'Access' database 
     which would run on the server with Full trust.<br>
&nbsp;</li>
     <li><b>DoS attacks<br>
&nbsp;</b><ul>
       <li><b>Crashing the server </b>– For example by calling an API with 
       wrongly formatted parameters</li>
       <li><b>Creating hundreds of thousands of TCP/IP connections</b> – 
       Crashing the TCP/IP stack</li>
       <li><b>Disk Space and Memory abuse</b> – Crash the server by exhausting 
       its system resources<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>AD Corruption</b><br>
     Unless system administrators where very careful with the Active Directory, 
     it might be possible to change/add information to that could corrupt it.<br>
&nbsp;</li>
     <li><b>NET passport Exploit</b><br>
     see <a href="http://alive.znep.com/~marcs/passport/">
     http://alive.znep.com/~marcs/passport/</a><br>
&nbsp;</li>
     <li><b>Discovery of Administrator’s account Token</b><br>
     Since the Administrator’s account token (i.e. identity) is only a Ptr 
     (pointer) away, It could be possible to discovery this information via 
     memory leaks or Brute force attacks.<br>
&nbsp;</li>
     <li><b>Server based Proxy server</b><br>
     Since ASP.NET exposed the TCP/IP class it should be possible to create a 
     Web service that acts like a proxy for the Server’s internal network. <br>
     <br>
     The objective would be to create such a system where the attacker computer 
     is able to sent TCP/UDP requests to servers and desktop located in the web 
     hosting server local area network. In another words, those computers would 
     be PINGABLE (i.e. a valid route would exit between both networks, just like 
     in a VPN scenario). <br>
     <br>
     The main idea here is to be able to remotely access the server’s local 
     network in order to exploit vulnerabilities and gain access to its 
     resources. <br>
     <br>
     The danger is that most networks don’t have good internal security, that 
     is, they focus in blocking attacks from the internet but are easily 
     exploitable from the inside. <br>
     <br>
     As mentioned before this could also be done programmatically via ASP.NET 
     pages, but this proxy would make the hacking process much more easy and 
     quicker (the attacker would be able to use his toolkit)<br>
&nbsp;</li>
     <li><b>Sniff the local Network traffic - </b>If it is possible to use the 
     existent .Net framework objects or a Win32 DLL to read the server's network 
     traffic (i.e. all access to all websites hosted in that server) then a it 
     would be possible to discover information sent by clear text such as: FTP 
     login details or HTTP authentication.<br>
&nbsp;</li>
     <li><b>Tamper with the server's response to it's visitors </b>(i.e. users 
     accessing a website hosted in that server) -&nbsp; exploiting the fact that 
     that user's firewall (if he as one) will accept any traffic on port XXXX 
     (temporary port number) that originates from that server's port 80. Since 
     this is easy to spoof, one could use the knowledge of the client's open 
     ports (run 'netstat -na' on their server) and send malicious code that 
     could be executed on the client's machine. In a scenario where&nbsp; the 
     user trust a hosted website and accepts that activeX or Scripts from that 
     website are executed without asking for permission, then if it was possible 
     to spoof a HTML response and inject HTML code in a page requested, then the 
     user's computer could be compromised without the user's knowledge. And in 
     this scenario, all evidence store in the user's computer will indicate the 
     the computer was 'compromised' by the website the user was visiting.<br>
&nbsp;</li>
     <li><b>.Net Code Zone security settings </b>-<b> </b>See if they<b> </b>
     could be exploited by the fact that Asp.Net scripts are running locally. 
     See if a TCP request from website 'A' to website 'B' is, from Website's 'B' 
     point of view, coming from the localhost (127.0.0.1) or from Website's 'B' 
     external IP address<br>
&nbsp;</li>
     <li><b>Potentially Dangerous core .Net componets<br>
&nbsp;</b><ul>
       <li>&quot;System.Diagnostics.Process class&quot; - create process (i.e. execute 
       programs on the server)<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>Misc</b><ul>
       <li>See if shatter attacks can be done via Asp.Net</li>
       <li>Analyse the functionality of the attribute &quot;SupportUnmanagedCodeSecurity&quot;</li>
     </ul>
     </li>
   </ol>
 </blockquote>
  </body>
</html>