<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   


<% 
	Set_session_variables
	
	if request("mode")="test" then
		rw(Session("http_signature")+";")	
		rw(run_test"test")
	else
	
%>	
		<html>
		<head>
			<% Link_to_style_sheet%>
		</head>
		<body>
		
		 <H2>FSO Browse Folders</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 'navigate' outside this users web directory </p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))			
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

' General 

	public Function Run_test(mode)
		
		'See_if_we_can_navigate_outside_our_work_environment()
		
		try 
			Run_test = OK + Medium +" sucess"		
		catch
			Run_test = OK + low + " fail"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public sub See_if_we_can_navigate_outside_our_work_environment()
		
	end sub
		
        </script>