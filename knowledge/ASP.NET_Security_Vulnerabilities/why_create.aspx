<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Why create a document exposing ASP.NET vulnerabilities?</H2>	
 
 <blockquote>
   <p>One of the ongoing debates in the Security industry today is the 
   usefulness of disclosing sensitive information, namely un-published security 
   vulnerabilities in commercial software and documentation on how to exploit 
   those vulnerabilities.<br>
   <br>
   It is the authors firm belief that the best possible defence against an 
   external attacker is to know his weapons, strategies and resources. Only by 
   knowing what can be done and how it is done, can effective defence systems be 
   designed, build and (more importantly) tested.<br>
   <br>
   One of the main security problems of proprietary software (i.e. closed 
   source) is the fact that only the manufacturer knows (or has the ability to 
   know) what problems and vulnerabilities exist within the published software.
   <br>
   <br>
   In this scenario the vulnerabilities are only disclosed (i.e. published) when 
   the manufacturer releases a security patch / service pack or when a security 
   consultant (or malicious user) discovers them, publishes the details of the 
   consequences and (usually) how to replicate (i.e. exploit) the problem.<br>
   <br>
   Because security vulnerabilities when publicly known are very damaging and 
   expensive, most companies don’t publish details of the problems and 
   vulnerabilities discovered internally. Although this makes business sense to 
   the software manufacturer, it gives the software users a false sense of 
   security (i.e. ‘no issues reported’ = ‘no problems’) and makes them 
   vulnerable to exploitation from malicious users.<br>
   <br>
   We (at DDPlus) decided to start the creation of the 2003 / IIS 6.0 version of 
   our security guide for shared hosting environments by studying the different 
   ways such system can be exploited. This way solutions for the problems found 
   can be created in order to eliminate (or reduce to an acceptable level) the 
   risk faced by the users of such services (i.e. the customers that host 
   websites in such environments and their online visitors)<br>
   <br>
   After extended research on the internet and in current publications (see 
   references) we could only find information about the security features of 
   ASP.NET and how ASP.NET should be used to create and implement secure 
   solutions. We couldn’t find much information on how to exploit ASP.NET 
   servers from the inside (i.e. when an attacker has access to a valid user 
   account).<br>
   <br>
   This document aims to provide such information and increase the awareness of 
   the ISP/ASP/Developer community to the security problems with the .NET 
   Framework when used in a shared hosting environment.<br>
   <br>
&nbsp;</p>
 </blockquote>
 <p>&nbsp;</p>
  </body>
</html>