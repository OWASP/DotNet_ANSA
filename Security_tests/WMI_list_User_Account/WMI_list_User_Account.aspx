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
		
		 <H2>WMI List User Accounts</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 
           use WMI to list the current Users</p>
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
		
		dim WMI_function = "Win32_UserAccount"		
		dim Fields_to_load = "Name,Domain,FullName,Description,SID"
		dim success_description = " Using WMI's " + WMI_function+ " It was possible to list the existent user Accounts"
		dim fail_description = " Access to " + WMI_function + " is protected"
		
		if test_if_wmi_function_is_enabled(WMI_function) then
			Run_test = OK + High + success_description		
			if mode="show" then output_wmi_function_data(WMI_function,Fields_to_load)
		else	
			Run_test = OK + low + fail_description
		end if
		
	
	end function
	
	
	
' Vulnerability Specific Code
	

		
        </script>