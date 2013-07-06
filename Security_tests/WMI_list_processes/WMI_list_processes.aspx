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
		
		 <H2>WMI List Processes</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 
           use WMI to list the processes currently running</p>
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
		
				
		if test_if_wmi_function_is_enabled("Win32_Process") then
			Run_test = OK + Medium +" Using WMI's Win32_Process It was possible to list the processes currently running in the server"		
			if mode="show" then output_wmi_function_data("Win32_Process","Name,ProcessId,HandleCount")
		else	
			Run_test = OK + low + " Access to Win32_Process is protected"			
		end if
		
	
	end function
	
	
	
' Vulnerability Specific Code
	

		
        </script>