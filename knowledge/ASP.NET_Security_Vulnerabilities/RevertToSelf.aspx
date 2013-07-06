<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>RevertToSelf() </H2>	
 
 <blockquote>
   <p><b>Description:<br>
   </b>After calling an RevertToSelf() class from an unmanaged API, the account 
   used to execute the ASP.NET script will change. According to Microsoft’s 
   explanation of this issue it reverts to the account used to run that 
   website’s application pool. <br>
   <br>
   <b>Potential Impact:</b></p>
   <ul>
     <li>Allows the attacker to execute scripts on the server with an account 
     that could have more rights that his own account or the account used for 
     anonymous access </li>
     <li>We found several references to this problem with indication that 
     sometimes this RevertToSelf() class would return the SYSTEM account (i.e. 
     administrator). This could be related to previous versions of the .NET 
     Framework. Future versions of this document will include an update on this 
     issue.</li>
   </ul>
   <p><b>Possible solutions</b><br>
   <br>
   Microsoft doesn’t seem to consider this to be a problem<br>
&nbsp;</p>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>