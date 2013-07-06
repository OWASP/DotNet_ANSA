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
		
		 <H2>WMI Execute Commands using Cmd.exe using Win32_Process</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> This test checks if it is possible to execute 
           commands on the server using the WMI's Win32_process </p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))	
				newline
				newline
				Dim www_path = left(request.servervariables("SCRIPT_NAME"),instrrev(request.servervariables("SCRIPT_NAME"),"/"))
			    Create_Iframe_relative(900,400,"FSO_browse",www_path + "Wmi_cmd_DotNet.aspx")		
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

' General 

	public Function Run_test(mode)
	
		Dim cmd_to_execute = "dir"
		Dim winObj, objProcessInfo, item, local_dir, local_copy_of_cmd, Target_copy_of_cmd
		Dim objStartup, objConfig, objProcess, errReturn, intProcessID, temp_name
		
		try 
			
			winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
			local_dir = left(request.servervariables("PATH_TRANSLATED"),inStrRev(request.servervariables("PATH_TRANSLATED"),"\"))
			local_copy_of_cmd = Local_dir+"cmd.exe"
			Target_copy_of_cmd = Environment.GetEnvironmentVariable("Temp")+"\_test.exe"
	
			' Copy CMD.EXE to temp directory
			
				objProcessInfo = winObj.ExecQuery("Select * from Cim_Datafile where name='"+replace(local_copy_of_cmd,"\","\\")+"'") 
				for each item in objProcessInfo	
					item.copy(Target_copy_of_cmd)
				next

		catch	
			Run_test = Fail + low + "test failed while attempting to copy the test 'cmd.exe' file"			
			exit function
		end try
		try
			' Execute Command and save results in temp file	
			
			objStartup = winObj.get("Win32_ProcessStartup")
			objConfig = objStartup.SpawnInstance_
			objConfig.ShowWindow = 12 ' HIDDEN_WINDOW const
			objProcess = GetObject("winmgmts:root\cimv2:Win32_Process")
	
			errReturn = objProcess.Create(Target_copy_of_cmd + " /c " + cmd_to_execute,,objConfig,intProcessID)
	
			' Delete CMD.EXE from temp directory
	
			objProcessInfo = winObj.ExecQuery("Select * from Cim_Datafile where name='"+replace(Target_copy_of_cmd,"\","\\")+"'") 
			for each item in objProcessInfo	
			'	item.delete		
			next
			
			Run_test = OK + Critical +" The server allows the remote execution of commands by creating a new cmd.exe process!"		
		catch	
			Run_test = OK + low + "It was not possible to execute commands using cmd.exe"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public sub See_if_we_can_navigate_outside_our_work_environment()
		
	end sub
		
        </script>