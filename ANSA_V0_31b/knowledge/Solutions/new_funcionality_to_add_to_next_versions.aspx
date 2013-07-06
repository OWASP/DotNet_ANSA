<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <h2>New functionality to add to next versions</h2>
 
 <blockquote>
   <p>This is my 'wish list' of features that will be added on the next 
   versions:</p>
   <ul>
     <li><b>New GUI for the 'Security Analyser' page</b> <br>
&nbsp;</li>
     <li><b>Create a 'Send results to Dinis Cruz' Button </b>- this would allow 
     the ANSA's user to send Anonymously the results of it's server test 
     directly to Dinis Cruz's email. This would make it easy for the ANSA's user 
     to send the results and allow Dinis to better understand how is the tool 
     working and what areas need to be improved.<br>
&nbsp;</li>
     <li>Create an improved collaboration environment because the current 
     workspace host (GotDotNet) is not very powerful. The new workspace, must 
     provide:<ul>
       <li>Good document management</li>
       <li>Ability to create discussion groups</li>
       <li>Ability to create custom lists &amp; surveys</li>
       <li>Ability to customize the workspace's layout and design</li>
     </ul>
   <p>The options at moment are to use 'SourceForge' (need to research it 
   better) or use Sharepoint Team Services (now Windows Sharepoint Services)<br>
&nbsp;</p>
     </li>
     <li><b>Create a 'Admin Tools' section with</b><br>
&nbsp;<ul>
       <li><b>Online User management system</b> - based on ADSI (Active 
       Directory and Normal server version) that allows the easy execution of 
       user account management tasks such as:<br>
&nbsp;<ul>
         <li>Create user details</li>
         <li>Edit user</li>
         <li>Delete user</li>
         <li>Disable user</li>
         <li>Change User password</li>
       </ul>
   <p>Note: I have already created the scripts for AD management, i just need to 
   change the configurations page so that it is not client specific. The normal 
   windows user management section still needs some work.<br>
&nbsp;</p>
       </li>
       <li><b>Port Scaner - </b>Based on the idea of 'Shields UP' (www.grc.com) 
       create an web based port scanner which is able to scan internal networks 
       for known ports. Note: I have already created the core engine and just 
       need to build a better GUI<br>
&nbsp;</li>
       <li><b>Online Permission Manager </b>- Tool that allows the management of 
       security permissions in files located in the '\system32' or '\Microsoft.Net' 
       folders<br>
&nbsp;</li>
       <li><b>Online Trust manager</b> - Tool to manage ther server's and each 
       website trust settings<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>ISP management tools:<br>
&nbsp;</b><ul>
       <li><b>Automatic 'secure' website creation </b>(new website wizard)<br>
&nbsp;</li>
       <li><b>Automatic build of 'Secure' Servers </b>(new server wizard)<br>
&nbsp;</li>
       <li><b>Test Scheduler - </b>Ability to run tests regularly at a 
       convenient time<b><br>
&nbsp;</b></li>
       <li><b>Client Reporting XML Web Service - </b>Provide the ISP's clients 
       with information about the server's security and the results of the 
       latest test. This could be used by the ISPs to justify the extra cost of 
       the more 'secure hosting package'<b> </b>and to prove that they are still 
       secure.<br>
&nbsp;</li>
       <li><b>Online Import and Export of: IIS Websites , Active Directory OUs 
       and Active Directory GPOs<br>
&nbsp;</b></li>
       <li><b>Online GPO editing - </b>In an Active Directory Environment, allow 
       the management of GPO settings (namely the security related ones)<b><br>
&nbsp;</b></li>
     </ul>
     </li>
     <li><b>Support for:<br>
&nbsp;</b><ul>
       <li><b>multi-server testing <br>
&nbsp;</b></li>
       <li><b>save of results for comparison<br>
&nbsp;</b></li>
       <li><b>Storage of information from Server backups, Anti-Virus updates and 
       Security Patches updates - </b>This could be done via the registry<br>
&nbsp;</li>
       <li><b>'Administrator run' test - </b>Some tests&nbsp; will require 
       administrative rights in order to be relevant (for example testing if all 
       accounts have individual Application Pools)</li>
     </ul>
   <p>&nbsp;</p>
     </li>
     <li><b>.Net Intrusion Detection System - </b>Build a tool that:<blockquote>
       <ul>
         <li>Monitors server / website activity</li>
         <li>Detects 'Weird Behavior'</li>
         <li>Analyses logs and generates alerts</li>
         <li>Control website's access by dynamically changing<ul>
           <li>individual website settings (Web.config or directly on the 
           Metabase)</li>
           <li>Server settings (Machine.config or directly on the Metabase)</li>
         </ul>
   <p>Manage the current server status:</p>
         <ul>
           <li>Low - Normal activity</li>
           <li>Medium&nbsp; - Security problems detected</li>
           <li>High - Server under attack, or already compromised</li>
         </ul>
         </li>
       </ul>
     </blockquote>
     </li>
   </ul>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>