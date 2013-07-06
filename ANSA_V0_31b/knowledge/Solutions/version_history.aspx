<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   
    
<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

 <H2>Version History (What's new)</H2>	
 
 <blockquote>
   <ul>
     <li><b>V0_30</b><ul>
       <li><b>Added new content:</b><ul>
       <li>This Version history page (i.e. What's new)</li>
       <li>Solutions -&gt;
       <a target="_parent" href="Knowledge/solutions/default.aspx?page=new_funcionality_to_add_to_next_versions.aspx">
       Functionality to add to next version</a></li>
       <li>Page: Solutions -&gt;
       <a target="_parent" href="Knowledge/solutions/default.aspx?page=Win32_possible_solutions.aspx">
       W32 issue (Possible Solutions)</a></li>
       <li>Page: Solutions -&gt;
       <a target="_parent" href="Knowledge/solutions/default.aspx?page=References.aspx">
       References</a></li>
       <li>Asp.Net Security Vulnerabilities -&gt;&nbsp;
       <a target="_parent" href="knowledge/Asp.Net_Security_Vulnerabilities/default.aspx?page=Other_potential_attack_vectors.aspx">
       Other potential attack vector</a></li>
       <li>Asp.Net Security Vulnerabilities -&gt;
       <a target="_parent" href="knowledge/Asp.Net_Security_Vulnerabilities/default.aspx?page=Vulnerabilites_that_need_a_test.aspx">
       Vulnerabilities that need a test</a></li>
       <li>Asp.Net Security Vulnerabilities -&gt;
       <a target="_parent" href="knowledge/Asp.Net_Security_Vulnerabilities/default.aspx?page=Brief_examples_of_attacks.aspx">
       Brief examples of attacks based on the FPSE2002 vulnerabilities</a></li>
       <li>Asp.Net Security Vulnerabilities -&gt;
       <a target="_parent" href="knowledge/Asp.Net_Security_Vulnerabilities/default.aspx?page=Problems_with_windows_2000_in_shared_hosting.aspx">
       Problems associated with using Windows 2000 server for Shared Hosting</a><br>
&nbsp;</li>
     </ul>
       </li>
       <li><b>Added documentation</b> namely the content of the previous security 
       guides also created by DDPlus<ul>
       <li>
       <a target="_parent" href="Knowledge/solutions/default.aspx?page=IIS_5_guide_intro.aspx">
       Security guide for IIS 5.0 (without .Net framework)</a></li>
       <li>
       <a target="_parent" href="http://127.0.0.1/ANsA_V0.29a/knowledge/Asp.Net_Security_Vulnerabilities/">
       Asp.Net Security Vulnerabilities</a><br>
&nbsp;</li>
     </ul>
       </li>
       <li>Added a <b>new functionality</b> called '<b>Safe Mode'</b> which (when activated) 
       doesn't show the anonymous user the pages with the vulnerabilities' 
       exploits making it safer to send the ANSA link to a third party. This was 
       originally developed so that we can publish a 'live' version of this tool 
       on our website (<a target="_blank" href="http://www.ddplus.net">www.ddplus.net</a>)<br>
&nbsp;</li>
       <li>Added the <b>section 'run tests individually'</b> to the top menu and 
       created the relevant pages<br>
&nbsp;</li>
       <li><b>Made same changes to the 'Security Analyser' page. </b> <ul>
       <li>Modified the layout (Now the results are separated by category)</li>
       <li>In the main table, I renamed 'Result' with 'Status' and 
       'Classification' with 'Score' </li>
     </ul>
       &nbsp;</li>
       <li>Added a new<b> feature 'Send results to Dinis'</b> which allows the 
       users to send Anonymously their results directly to me<br>
&nbsp;</li>
       <li>Fixed some broken links and spelling mistakes<br>
&nbsp;</li>
       <li>Fixed minor bugs with the 'Win_execute_cmd' test<br>
&nbsp;</li>
       <li>New layout for ANSA's home page<br>
&nbsp;</li>
     </ul>
     </li>
     <li><b>V0.29</b><ul>
       <li>Fist stable published version in GotDotNet</li>
     </ul>
     </li>
   </ul>
   <p>&nbsp;</p>
   <p><br>
   <br>
   &nbsp;</p>
 </blockquote>
  </body>
</html>