<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>WMI – Windows Management Instrumentation</H2>	
 
 <blockquote>
   <p><b>Description:</b></p>
   <blockquote>
   <p><i>“Effective management of PC and server systems in an enterprise network 
   benefits from well-instrumented computer software and hardware, which allow 
   system components to be monitored and controlled, both locally and remotely. 
   Microsoft is committed to simplifying instrumentation of hardware and 
   software under Microsoft® Windows® operating systems. Microsoft is also 
   committed to providing consistent access to this instrumentation for both 
   Windows-based management systems and legacy management systems that are 
   hosted in other environments.<br>
   <br>
   The foundations for manageability in Windows operating systems are Windows 
   Management Instrumentation (WMI; formerly known as WBEM) and WMI extensions 
   for Windows Driver Model”</i></p>
   <p>Quote from Microsoft’s technical document ‘WMI - Windows Management 
   Instrumentation’</p>
   <p><i>“WMI is a unifying architecture that allows access to data from a 
   variety of underlying technologies. These technologies include, for example, 
   WMI extensions to WDM, the Desktop Management Interface (DMI), and the Simple 
   Network Management Protocol (SNMP). WMI is based on the Common Information 
   Model (CIM) schema, which is an industry standard specification driven by the 
   Distributed Management Task Force (DMTF). <br>
   <br>
   WMI provides a three-tiered approach for collecting and providing management 
   data. This approach consists of a standard mechanism for storing data (a CIM-compliant 
   data repository), a standard protocol for obtaining and distributing 
   management data (for example, COM and DCOM), and a WMI provider” </i></p>
   <p>Quote from Microsoft’s technical document ‘WMI Architecture’ </p>
   </blockquote>
   <p>WMI provides a very user-friendly script access to most Windows resources. 
   Since ASP.NET supports WMI, we where able to write pages that:</p>
   <ul>
     <li>Displayed user and computer information</li>
     <li>Executed commands on the server with cmd.exe (for example: ‘dir’ , 
     ‘type’ , ‘net user’ , ‘net view’ , ‘ipconfig’ , ‘netstat -na’ , route 
     print‘’)</li>
     <li>Executed programs uploaded to server (for example NC.exe)</li>
     <li>Display information from the Event Log</li>
     <li>Display information from the Registry</li>
     <li>Listed all directories that the current account has access to</li>
     <li>Listed all files that the current account has access to</li>
     <li>Copied files on the server</li>
   </ul>
   <p>In our view, being able to make WMI calls (which everybody by default can) 
   is a major security vulnerability and, given the wide range of tools 
   available (basically the entire Windows API) would allow an attacker to gain 
   total control over the system.<br>
   <br>
   Our initial research as shown that this is a very un-known problem to which 
   the IIS security community doesn’t seem to be aware of:</p>
   <ul>
     <li>We couldn’t find posts in online newsgroups about the issues of 
     allowing normal users to make WMI calls</li>
     <li>We couldn’t find references in Microsoft security documentation about 
     the WMI impact in IIS and what are the side-effects of only allowing 
     administrators to access WMI properties and Methods</li>
     <li>Most ISPs are vulnerable to this problem (which means that they where 
     not aware of the problem)</li>
   </ul>
   <p><b>Potential Impact:</b></p>
   <ul>
     <li>Disclosure of security sensitive information providing enough 
     information for an attacker to launch a successful attack.</li>
     <li>Execute commands on the server via cmd.exe</li>
     <li>Copy Executables to directories with ‘Execute’ rights</li>
     <li>Run Executables on the servers</li>
     <li>Browse and view file contents from other websites hosted in the same 
     server</li>
     <li>Etc… </li>
   </ul>
   <p><b>Possible solutions</b><br>
   WMI has a built in security solution. It is possible via an MMC add-on to 
   manage the permissions and define which users can access it.<br>
   <br>
   <i>{more research is needed on the side-effects of only allowing 
   administrators access to WMI. This information will be included in the next 
   version of this document}<br>
   .</i><br>
   <br>
&nbsp;</p>
 </blockquote>
 <p>&nbsp;</p>
  </body>
</html>