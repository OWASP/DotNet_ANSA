<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>ADSI – LDAP Provider</H2>	
 
 <blockquote>
   <p><b>Description:</b></p>
   <blockquote>
   <p><i>“The ADSI LDAP Provider implements a set of ADSI objects that support 
   various ADSI interfaces. To access the LDAP provider, bind to any of the ADSI 
   LDAP objects” - </i>Quote from Microsoft’s MSDN technical document ‘ADSI LDAP 
   Provider’ </p>
   </blockquote>
   <p>The ADSI LDAP provider works in the same way as the ADSI WinNT provider 
   but (as the name indicates) it is used to access LDAP databases, which in our 
   case is the Active Directory.<br>
   <br>
   As with the WinNT provider, by default the normal users only have read 
   access. This allows an attacker to discover (i.e. enumerate) most of 
   information stored in the Active Directory such as user information 
   (usernames, addresses, emails, etc…) and Desktop/Server information (Names, 
   IPs, etc..)<br>
   <br>
   In a shared hosting environment where Active Directory is used to manage the 
   client’s accounts. This vulnerability would allow user from website X (with 
   account X) to access details about the user Y of website Y. <br>
   <br>
   It would also provide the attacker with a complete topology of the ISP’s 
   network <br>
   <br>
   <b>Potential Impact:</b><br>
   <br>
   Disclosure of security sensitive information providing enough information for 
   an attacker to launch a successful attack.<br>
   <br>
   <b>Possible solutions</b><br>
   <br>
   <i>{more research is needed on the side effects of removing user rights from 
   the AD, this information will be included in the next version of this 
   document} </i><br>
   <br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>