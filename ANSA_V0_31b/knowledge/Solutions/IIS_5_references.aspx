<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
    <style>
<!--
table.MsoTableGrid
	{border:1.0pt solid windowtext;
	font-size:10.0pt;
	font-family:"Times New Roman"}
 li.MsoNormal
	{mso-style-parent:"";
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:Verdana;
	margin-left:0in; margin-right:0in; margin-top:0in}
-->
    </style>
</head>
<body>

 <H2>IIS 5.0 References</H2>	
 
 <blockquote>
   <p class="MsoNormal" style="margin-right:45.0pt"><b><span lang="EN-GB">Online 
   articles:</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Microsoft Windows 
   Web Hoster Online Community</span></b><span lang="EN-GB" style="font-size:8.0pt"><br>
   <a href="http://www.microsoft.com/serviceproviders/webhosting" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/serviceproviders/webhosting</a> </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Microsoft Service 
   Providers </span><span style="font-size: 8.0pt">Online Community</span></b><span style="font-size: 8.0pt"><br>
   <a href="http://www.microsoft.com/serviceproviders" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/serviceproviders</a>&nbsp; </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">The Windows 
   Script Host Object Diagram <br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://msdn.microsoft.com/archive/default.asp?url=/archive/en-us/dnarwsh/html/wsh_object.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://msdn.microsoft.com/archive/default.asp?url=/archive/en-us/dnarwsh/html/wsh_object.asp</a></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">CmdAsp.asp checks 
   your last line of defense<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.securiteam.com/tools/CmdAsp_asp_checks_your_last_line_of_defense.html" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.securiteam.com/tools/CmdAsp_asp_checks_your_last_line_of_defense.html</a></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Secure Internet 
   Information Services 5 Checklist <br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.microsoft.com/technet/treeview/default.asp?url=/TechNet/prodtechnol/iis/tips/iis5chk.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/technet/treeview/default.asp?url=/TechNet/prodtechnol/iis/tips/iis5chk.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">From Blueprint to 
   Fortress: A Guide to Securing IIS 5.0 <br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/iis/deploy/depovg/securiis.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/iis/deploy/depovg/securiis.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">IIS 5.0 Baseline 
   Security Checklist<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.microsoft.com/technet/treeview/default.asp?url=/technet/security/tools/chklist/iis5cl.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/technet/treeview/default.asp?url=/technet/security/tools/chklist/iis5cl.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Files and 
   Permissions on Internet Information Service </span></b>
   <span lang="EN-GB" style="font-size:8.0pt"><br>
   <a href="http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/sharepnt/proddocs/admindoc/owsk01.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/sharepnt/proddocs/admindoc/owsk01.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Step-by-Step 
   Guide to Encrypting File System (EFS) <br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.microsoft.com/windows2000/techinfo/planning/security/efssteps.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/windows2000/techinfo/planning/security/efssteps.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Issues Fixed by 
   Office XP SP-1 for SharePoint Team Services</span></b><span lang="EN-GB" style="font-size:8.0pt"><br>
   <a href="http://support.microsoft.com/default.aspx?scid=kb;EN-US;312543" style="color: blue; text-decoration: underline; text-underline: single">
   http://support.microsoft.com/default.aspx?scid=kb;EN-US;312543</a></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Issues Fixed in 
   SharePoint Team Services for Microsoft by Office XP Service Pack 2<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://support.microsoft.com/default.aspx?scid=kb;EN-US;323549" style="color: blue; text-decoration: underline; text-underline: single">
   http://support.microsoft.com/default.aspx?scid=kb;EN-US;323549</a>&nbsp; </span>
   </p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Authenticating 
   Users Separately For Each Virtual Server<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/sharepnt/proddocs/admindoc/owsj03.asp" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.microsoft.com/technet/treeview/default.asp?url=/technet/prodtechnol/sharepnt/proddocs/admindoc/owsj03.asp</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Hisecweb.inf – An 
   Analysis</span></b><span lang="EN-GB" style="font-size:8.0pt"> <br>
   <a href="http://www.sans.org/rr/win2000/hisecweb.php" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.sans.org/rr/win2000/hisecweb.php</a>&nbsp; </span></p>
   <p class="MsoNormal" style="margin-right:45.0pt"><b><span lang="EN-GB">Online 
   discussions</span></b></p>
   <ul style="margin-top: 0in; margin-bottom: 0in" type="disc">
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">Security Chat Transcript from 
     the Chat on March 7, 2002</span></b><span lang="EN-GB" style="font-size:8.0pt"><br>
     <a href="http://www.microsoft.com/serviceproviders/webhosting/chat/security.asp" style="color: blue; text-decoration: underline; text-underline: single">
     http://www.microsoft.com/serviceproviders/webhosting/chat/security.asp</a>
     </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">Windows and IIS<br>
     </span></b><span lang="EN-GB" style="font-size:8.0pt">
     <a href="http://groups.google.com/groups?q=cmdasp+low&hl=en&lr=&ie=UTF-8&oe=UTF-8&selm=Pine.LNX.4.10.10101291056200.11074-100000%40calvin.dogmile.com&rnum=2" style="color: blue; text-decoration: underline; text-underline: single">
     http://groups.google.com/groups?q=cmdasp+low&amp;hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;selm=Pine.LNX.4.10.10101291056200.11074-100000%40calvin.dogmile.com&amp;rnum=2</a>
     </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">Re: CmdAsp.asp - What's your 
     exposure? </span></b><span lang="EN-GB" style="font-size:8.0pt"><br>
     <a href="http://groups.google.com/groups?q=cmdasp+low&hl=en&lr=&ie=UTF-8&oe=UTF-8&selm=Pine.LNX.4.10.10012121513510.2052-100000%40calvin.dogmile.com&rnum=1" style="color: blue; text-decoration: underline; text-underline: single">
     http://groups.google.com/groups?q=cmdasp+low&amp;hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;selm=Pine.LNX.4.10.10012121513510.2052-100000%40calvin.dogmile.com&amp;rnum=1</a></span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">IIS 6 on Windows 2000&nbsp; <br>
     </span></b><span lang="EN-GB" style="font-size:8.0pt">
     <a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=35fdc5c521cdad3e&rnum=1" style="color: blue; text-decoration: underline; text-underline: single">
     http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;th=35fdc5c521cdad3e&amp;rnum=1</a>
     </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">MUST READ Warning- Network 
     security on Frontpage ext... </span></b>
     <span lang="EN-GB" style="font-size:8.0pt">(the discussion of FPSE2002 
     starts at message #9 and continues on message #14 and beyond)<br>
     <a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=c6e6c0a58a89259c&rnum=1" style="color: blue; text-decoration: underline; text-underline: single">
     http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;th=c6e6c0a58a89259c&amp;rnum=1</a>
     </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">FPSE2002 Shared Hosting Flaw 
     Workaround<br>
     </span></b><span lang="EN-GB" style="font-size:8.0pt">
     <a href="http://groups.google.com/groups?q=FPSE2002+Shared+Hosting+Flaw+Workaround&hl=en&lr=&ie=UTF-8&oe=UTF-8&selm=OgQ4p2iTCHA.1996%40tkmsftngp12&rnum=1" style="color: blue; text-decoration: underline; text-underline: single">
     http://groups.google.com/groups?q=FPSE2002+Shared+Hosting+Flaw+Workaround&amp;hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;selm=OgQ4p2iTCHA.1996%40tkmsftngp12&amp;rnum=1</a></span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">IIS and FP 2002 security problem 
     for shared hosting...</span></b><span lang="EN-GB" style="font-size:8.0pt">.<br>
     <a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=33eeea126cb9bc3b&rnum=1" style="color: blue; text-decoration: underline; text-underline: single">
     <span style="color: windowtext; text-decoration: none">
     <a style="color: blue; text-decoration: underline; text-underline: single" href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=33eeea126cb9bc3b&rnum=1">
     http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF- 
     8&amp;th=33eeea126cb9bc3b&amp;rnum=1</a></span></a></span><a style="color: blue; text-decoration: underline; text-underline: single" href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=33eeea126cb9bc3b&rnum=1"><span style="font-size:8.0pt"><u><font color="#000000">&nbsp;
     </font></u></span>
     <span lang="EN-GB" style="font-size: 8.0pt; text-decoration: underline">&nbsp;</span></a></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="FR" style="font-size: 8.0pt">Fp 2002 Ex on .NET server: 
     security</span></b><span lang="FR" style="font-size: 8.0pt"><br>
     </span>
     <a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=3b5cf59fe11c4b0c&rnum=4" style="color: blue; text-decoration: underline; text-underline: single">
     <span lang="EN-GB" style="font-size: 8.0pt; color: windowtext; text-decoration: none">
     <a style="color: blue; text-decoration: underline; text-underline: single" href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=3b5cf59fe11c4b0c&rnum=4">
     http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;th=3b5cf59fe11c4b0c&amp;rnum=</a></span><span style="font-size: 8.0pt; color: windowtext; text-decoration: none">4</span></a><font color="#000000"><span style="font-size: 8.0pt"><a style="color: blue; text-decoration: underline; text-underline: single" href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=3b5cf59fe11c4b0c&rnum=4">&nbsp;
     </a></span></font><span lang="FR" style="font-size: 8.0pt">&nbsp; </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="FR" style="font-size: 8.0pt">Fp 2002 Ex on .NET server: 
     security<br>
     </span></b><span lang="EN-GB" style="font-size:8.0pt">
     <a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=592267fa2b2aadb&rnum=5" style="color: blue; text-decoration: underline; text-underline: single">
     <span lang="FR">
     http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;th=592267fa2b2aadb&amp;rnum=5</span></a></span><span lang="EN-GB" style="font-size: 8.0pt">
     </span></li>
     <li class="MsoNormal" style="margin-right: 45.0pt"><b>
     <span lang="EN-GB" style="font-size:8.0pt">NTFS ACL's for FPSE 2002<br>
     </span></b><span lang="EN-GB" style="font-size:8.0pt">&nbsp;<a href="http://groups.google.com/groups?hl=en&lr=&ie=UTF-8&oe=UTF-8&th=4358c6919affcb40&rnum=7">http://groups.google.com/groups?hl=en&amp;lr=&amp;ie=UTF-8&amp;oe=UTF-8&amp;th=4358c6919affcb40&amp;rnum=7</a></span><span style="font-size:8.0pt">
     </span></li>
   </ul>
   <p class="MsoNormal" style="margin-right:45.0pt"><b><span lang="EN-GB"><br>
   Books&nbsp;</span></b></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Securing windows 
   NT/2000 servers for the Internet</span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.amazon.co.uk/exec/obidos/ASIN/1565927680/ref=sr_aps_books_1_1/202-5733063-0696652" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.amazon.co.uk/exec/obidos/ASIN/1565927680/ref=sr_aps_books_1_1/202-5733063-0696652</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">IIS Security<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">&nbsp;<a href="http://www.amazon.co.uk/exec/obidos/ASIN/0072224398/qid=1052960408/sr=1-1/ref=sr_1_0_1/202-5733063-0696652">http://www.amazon.co.uk/exec/obidos/ASIN/0072224398/qid=1052960408/sr=1-1/ref=sr_1_0_1/202-5733063-0696652</a></span><span style="font-size:8.0pt">
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Windows Security 
   Resource Kit <br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">&nbsp;<a href="http://www.amazon.co.uk/exec/obidos/ASIN/0735618682/ref=sr_aps_books_1_1/202-5733063-0696652">http://www.amazon.co.uk/exec/obidos/ASIN/0735618682/ref=sr_aps_books_1_1/202-5733063-0696652</a></span><span style="font-size:8.0pt">
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Implementing and 
   Administering SECURITY&nbsp; in a WINDOWS 2000 NETWORK<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.amazon.co.uk/exec/obidos/ASIN/073561878X/qid=1052960626/sr=1-1/ref=sr_1_0_1/202-5733063-0696652" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.amazon.co.uk/exec/obidos/ASIN/073561878X/qid=1052960626/sr=1-1/ref=sr_1_0_1/202-5733063-0696652</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Hacking Exposed 
   (4<sup>th</sup> edition)<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.amazon.co.uk/exec/obidos/ASIN/0072227427/qid=1052960721/sr=2-1/ref=sr_2_3_1/202-5733063-0696652" style="color: blue; text-decoration: underline; text-underline: single">
   http://www.amazon.co.uk/exec/obidos/ASIN/0072227427/qid=1052960721/sr=2-1/ref=sr_2_3_1/202-5733063-0696652</a>
   </span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b><span lang="EN-GB" style="font-size:8.0pt">Hacking Windows 
   2000 Exposed<br>
   </span></b><span lang="EN-GB" style="font-size:8.0pt">
   <a href="http://www.amazon.co.uk/exec/obidos/ASIN/0072192623/ref=pd_ecc_rvi_f/202-5733063-0696652">
   http://www.amazon.co.uk/exec/obidos/ASIN/0072192623/ref=pd_ecc_rvi_f/202-5733063-0696652</a></span></p>
   <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in; margin-right: 45.0pt; margin-top: 0in; margin-bottom: .0001pt">
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Symbol">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </span></span><b>
   <span lang="EN-GB" style="font-size: 8.0pt; font-family: Verdana">Special OPS<br>
   </span></b><span lang="EN-GB" style="font-size: 8.0pt; font-family: Verdana">
   &nbsp;<a href="http://www.amazon.co.uk/exec/obidos/ASIN/1931836698/qid=1052960753/sr=1-3/ref=sr_1_1_3/202-5733063-0696652">http://www.amazon.co.uk/exec/obidos/ASIN/1931836698/qid=1052960753/sr=1-3/ref=sr_1_1_3/202-5733063-0696652</a></span><b><span style="font-size: 8.0pt; font-family: Verdana">
   </span><span lang="EN-GB" style="font-size: 8.0pt; font-family: Verdana"><br>
   <![if !supportLineBreakNewLine]><br>
&nbsp;<![endif]></span></b></p>
   <p>&nbsp;</p>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>