<%@ Page Language="VB" autoeventwireup="false" Src="scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>



<%	Set_session_variables  %>

<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>

<%
if Ucase(request.servervariables("PATH_INFO")) = UCase("/ANSA_"+Session("version")+"/Default.aspx") then
%>

    <% output_top_page_Banner %>

		<table width="100%" border=0>		
			<tr>
				<td valign=top>
					<br><h2>
	                Welcome to the <%= Session("Project Name")%> website</h2>
	
	    	        <h2>&nbsp;Main Sections</h2>
	    	        <ul>
	    	        	<li><a href="security_analyser.aspx">Security Analyser</a></b>- Run the security analyser</li>
	    	        	<li><a href="security_tests/run_tests_individualy.aspx">run tests individually </a>- execute each tests individually </li>	   
	    	        	<li><a href="knowledge/Solutions">Solutions  </a>- Information about how to solve the vulnerabilites identified</li>
	    	        	<li><a href="knowledge/Asp.Net_Security_Vulnerabilities">Asp.Net Security Vulnerabilites </a>- Information about known security problems with Asp.Net </li>
	    	        	<li><b>Community </b>- Section under construction</li>	    	        		    	        		    	        	 	        	
	    	        	<li><a href="Configuration.aspx">Config </a>- See the Session variables used and the current values of the 'Environment Variables' and the 'Session Variables'</li>		    	        	
	    	        </ul>
					<br>
					<br>
					<hr>	
					<center>		
		                <% if Session("Safe_mode") then rw(red_("Running in safe mode<br>"))%>
		                <b>Current version: <%= Session("Version")%> (07/Oct/03)</b><br>
						<p>
						Created by
						<br>
						<br>
		                 <b>Dinis Cruz</b><br>
		                 (.Net Security Consultant)<br>
		                <a href="mailto:dinis@ddplus.net">dinis@ddplus.net</a><br>
	    	            <a href="http://www.ddplus.net">www.ddplus.net</a> 
	    	            </p>
	    	            This site was designed for 1024 x 768 screen resolution
	    	            
	    	        </center>    
	    	        
	    	    </td>
	   	        <td valign=top>
    	        <% Create_Iframe_relative("500", "149", "IFrame","knowledge/Solutions/ANSA_description.aspx") %>    	        	              
				<br>
    	        <% Create_Iframe_relative("500", "149", "IFrame","knowledge/Solutions/version_history.aspx") %>				
				<br>
    	        <% Create_Iframe_relative("500", "155", "IFrame","knowledge/Community/External_links.aspx") %>    	        	                

    	        
    	        </td>
			</tr>
		</table>

    </ul>
<% else%>

   <h1><font color=red> ERROR!</font> This application directory must be executed from the root of this website.
    Please copy the entire 'ANSA_V0.XX' folder to the root of this URL. This is a known bug  and will be solved soon.</h1>


<% end if%>
</body>
</html>