<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>ADSI – WinNT Provider</H2>	
 
 <blockquote>
   <p><b>Description:<br>
   </b><br>
   ADSI is a very powerful  tool which was designed to help administrators 
   and developers:</p>
   <blockquote>
   <p><i>“Active Directory Service Interfaces (ADSI) is a set of COM interfaces 
   used to access the features of directory services from different network 
   providers in a distributed computing environment to present a single set of 
   directory service interfaces for managing network resources. Administrators 
   and developers can use ADSI services to enumerate and manage the resources in 
   a directory service, no matter which network environment contains the 
   resource.<br>
   <br>
   ADSI enables common administrative tasks, such as adding new users, managing 
   printers, and locating resources in a distributed computing environment.”&nbsp; </i></p>
   <p>Quote from Microsoft’s MSDN technical document ‘Active Directory Service 
   Interfaces’ </p>
   <p><i>“The Microsoft Windows NT ADSI provider implements a set of ADSI 
   objects to support various ADSI interfaces. The namespace name for the 
   Windows NT provider is &quot;WinNT&quot; and this provider is commonly referred to as 
   the WinNT provider. ”&nbsp; </i></p>
   <p>Quote from Microsoft’s MSDN technical document ‘ADSI WinNT Provider’ </p>
   </blockquote>
   <p>
   <b>COM objects supported by the ADSI WinNT provider:</b></p>
   <blockquote>
   <p><i>Class, Computer, Domain, FileService, FileShare, FPNWFileService, 
   FPNWFileShare, FPNWResource, FPNWResourcesCollection, FPNWSession, 
   FPNWSessionsCollection, Group, GroupCollection, LocalGroup, 
   LocalgroupCollection, Namespace, PrintJob, PrintJobsCollection, PrintQueue, 
   Property, Resource, ResourcesCollection, Schema, Service, Session, 
   SessionsCollection, Syntax, User, UserGroupCollection</i></p>
   </blockquote>
   <p>Basically the WinNT ADSI provider exposes to the developer the entire 
   server. <br>
   <br>
   Although to make changes (for example to create new users) an account with 
   administrative rights must be used, authenticated users (such as the ones 
   used to execute our scripts in the server) by default are able to execute 
   most WinNT ADSI methods. <br>
   <br>
   Since ASP.NET (and ASP 3.0) allows the creation of scripts with WinNT ADSI 
   calls, it is possible to easily create scripts that display the following 
   information about most servers belonging to the ISP’s network:</p>
   <ul>
     <li>List of usernames (and all available account details)</li>
     <li>List of security groups </li>
     <li>Which users belong to the administrators security group</li>
     <li>The current User’s security policy</li>
     <li>The current Server’s security policy</li>
     <li>What services are running (and all available service’s details)</li>
     <li>What shares exits</li>
     <li>Who is connected to the server</li>
     <li>Which domain the server belongs to</li>
     <li>Etc.. (see http://msdn.microsoft.com/library/en-us/netdir/adsi/adsi_objects_of_winnt.asp 
     for more details and examples on how to retrieve this information)</li>
   </ul>
   <p>In our view this is a very serious problem because it provides an attacker 
   with a huge amount of information about the server.<br>
   <br>
   <b>Potential Impact:</b><br>
   <br>
   Disclosure of security sensitive information providing enough information for 
   an attacker to launch a successful attack.</p>
   <p><b>Possible solutions<br>
   <br>
   </b><i>{more research is needed, this information will be included in the 
   next version of this document} <br>
   </i><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>