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
		
		 <H2>WMI List System Event Log Entries</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 
           use WMI to list entries from the System&nbsp; Event Log</p>
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
		
		dim WMI_function = "Win32_NTLogEvent where Logfile='System'"		
		dim Fields_to_load = "Logfile,Message,type"
		dim success_description = " Using WMI's " + WMI_function+ " It was possible to list the current System event log entries"
		dim fail_description = " Access to " + WMI_function + " is protected"
		
		if test_if_wmi_function_is_enabled(WMI_function) then
			Run_test = OK + Medium + success_description		
			if mode="show" then output_wmi_function_data_instances(WMI_function,Fields_to_load,2000)
'			rw("there is a problem with this test where the query takes too much time to execute")

		else	
			Run_test = OK + low + fail_description
		end if
		
	
	end function
	
	
	
' Vulnerability Specific Code
	

		
        </script>