<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   


<% 
	Set_session_variables
	
	if request("mode")="test" then
		rw(Session("http_signature")+";")	
		rw(run_test("test"))
	else
	
%>	
		<html>
		<head>
			<% Link_to_style_sheet%>
		</head>
		<body>
		
				<%	End_if_in_safe_mode %>
		
		 <H2>WMI List Services</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 
           use WMI to list the Services current installed in the server</p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				Run_test("show")
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

' General 

	public Function Run_test(mode)
		
				
		if test_if_wmi_function_is_enabled("Win32_Service") then
			Run_test = OK + Medium +" Using WMI's Win32_Service It was possible to all information available about the Services currently installed in the server"		
			if mode="show" then output_wmi_function_data("Win32_Service","Name,description") ',serviceType,StartMode,StartName")
		else	
			Run_test = OK + low + " Access to Win32_Service is protected"			
		end if
		
	
	end function
	
	
	
' Vulnerability Specific Code
	

		
        </script>