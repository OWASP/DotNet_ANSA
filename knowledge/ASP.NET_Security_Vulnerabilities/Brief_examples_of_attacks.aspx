<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Brief examples of attacks based on the FPSE2002 vulnerabilities</H2>	
 
 <blockquote>
   <p>These are examples of real-life scenarios showing what a malicious user 
   can do if he has access to an account (legitimate or not) in a shared windows 
   server, that hosts hundreds of websites, and is vulnerable to the IIS 5.0 
   FPSE2002 security problems.<br>
   <br>
   It is frightening how easy these processes are, and how much power the 
   attacker can gain. These examples are ordered in a possible sequence of 
   events (one leads to the other)</p>
   <ul>
     <li><b>Download Access databases with user data: </b>An attacker would 
     browse the folders containing the website data of the target company, find 
     where the Access database is stored, open a browser and download that 
     database. This works most of the time because the databases are stored in 
     public areas (i.e. www.MyWebsite.com/database/MyDatabase.mdb) where the 
     security applied to the database is the fact that nobody should know its 
     location. As an attacker can read the directory structure, there is no 
     protection at all<br>
&nbsp;</li>
     <li><b>Have full access to SQL databases that store the website’s dynamic 
     content: </b>Although (in normal) cases the attacker cannot change the data 
     in the victim’s website (i.e. cannot deface the web pages), by being able 
     to read the source code of the pages, the attacker can easily find the SQL 
     access codes to the victims SQL server database (Server IP address, 
     Database Name, Username and Password). When .asp scripting is used to 
     access an SQL server database, in most situations the connection details 
     are stored in easy to identify files such as: Global.asa or Web.Config. 
     With these details at hand, the attacker can connect to the database with 
     full rights over the content stored. This usually includes content 
     displayed on the website, users/client details and some times Credit Card 
     information<br>
&nbsp;</li>
     <li><b>Elevate the attacker’s valid user account to administrative status 
     or create an account with administrative rights</b>: If the application is 
     running in “Low (IIS process)” protection mode, the attacker can use the 
     command shell to add his account to the administrative group. If not, the 
     attacker can look in all files containing SQL access data until an “SA” 
     password is discovered. The “SA” is the default administrative account of 
     SQL server. This account (unless the SQL server is securely implemented) 
     can execute commands (using the extended procedure “master..xp_cmdshell”) 
     that run under the account used by the SQL server, which is (is most cases) 
     the SYSTEM account. This means that the attacker can simply do:<br>
&nbsp;<ul>
       <li>“Exec master..xp_cmdshell ‘net user /add Attacker_Acccount’ ” plus 
       </li>
       <li>“Exec master..xp_cmdshell ‘net localgroup administrator /add 
       Attacker_Account’ ” </li>
     </ul>
   <p>and have an account on the SQL server called “Attacker_Account” that is a 
   system administrator on that server (or maybe the domain!)<br>
&nbsp;</p>
     </li>
     <li><b>Discover user login details that are stored in the main SQL database</b> 
     – With the “SA” password the attacker can open all databases that are 
     stored in the SQL server. Some ISPs use these (outward facing) SQL servers 
     to store their main client database. This means that the attacker can 
     create a simple .asp page that connects to the main database and outputs in 
     user friendly format a table containing all user details stored in the 
     database. These details are usually the: Client Name, Company Name, 
     Address, email, User Name, Password and much more. With this information 
     the attacker can now logon as the real user with full control over that 
     user’s website and database.<br>
&nbsp;</li>
     <li><b>Discover all Windows passwords from all users: </b>Once the attacker 
     has an account with administrative right and the ability to upload files to 
     the server, the attacker can upload the “pw3dump.exe” tool, and use it to 
     discover all password hashes from all users (a password hash is string of 
     letters and number representing the password in an encrypted format). The 
     attacker would then copy those hashes to his computer where he would use a 
     tool like the LC4 from @stake to (in his own time) decrypt the passwords. 
     Since most users have very complicated passwords (not!), LC4 usually is 
     able to discover 80% of the password in 30 minutes (including of course the 
     real Administrator password). With this information the attacker can now 
     logon as the real user with full control over that user’s website and 
     database<br>
&nbsp;</li>
     <li><b>Gain terminal Access to the servers:</b> If the server has terminal 
     Services installed and the server allows connection from any computer on 
     the internet. After the attacker discovers the password of a user with 
     administrative rights he can just open the Terminal Services client, enter 
     the IP address of the web server or SQL server and login as administrator. 
     Having full access and control over the server (i.e. he can see the desktop 
     and do what ever he wants). <br>
     <br>
     Sometimes the system administrators will disable external accesses to the 
     Terminal Services, configuring the Web and SQL servers to only accept 
     connections from internal IPs. But, usually they have one server (which 
     doesn’t host websites or databases) that allows external connections via 
     Terminal Services Clients (they use it for remote administration). If the 
     attacker knows the passwords of the real administrators, it is very likely 
     the he will be able to login into that Terminal Services Server (because 
     most system administrators reuse their passwords from server to server), 
     and once access is gained he can establish a Terminal Services Connection 
     to the live Web and SQL servers from that Server which will now work 
     because that server is also on the internal network.<br>
&nbsp;</li>
     <li>Once the attacker has full control over the Web and SQL servers he can 
     use them to:<br>
&nbsp;<ul>
       <li><b>Further penetrate the ISP</b>, eventually gaining control over all 
       servers and desktops<br>
&nbsp;</li>
       <li><b>Steal whatever information is stored on the servers</b> (for 
       example Credit Card details , proprietary code, mailing lists, personal 
       data etc.) This particular point has serious Data Protection 
       implications, both for the ISP and client. <br>
&nbsp;</li>
       <li><b>Blackmail the ISP </b>with the treat of service disruption, data 
       deletion, mass website defacement, public exposure of vulnerabilities, 
       etc…<br>
&nbsp;</li>
       <li><b>Use those servers to attack other servers</b><br>
&nbsp;</li>
       <li><b>Perform a Distributed Denial of Service attack (DDoS) against that 
       ISP or that ISP’s ISP</b>, using the servers compromised in the ISPs 
       network and maybe others from external networks. Note that a DDoS attack 
       that uses internal servers is almost impossible to defend, and the 
       minimum that would happen is massive service disruption to that ISP’s 
       clients for several days or weeks<br>
&nbsp;</li>
       <li><b>Deface thousands of websites </b>with the Attacker’s favourite 
       political or religious message. <br>
&nbsp;</li>
       <li><b>Publicly shame the ISP</b> for their lack of security practices, 
       where the ISP’s reputation and credibility is severely damaged. Several 
       ISP’s client would cancel their contracts and maybe even sue the ISP.<br>
&nbsp;</li>
     </ul>
     </li>
   </ul>
 </blockquote>
  </body>
</html>