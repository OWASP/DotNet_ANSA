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
			    Create_Iframe_relative(900,400,"FSO_browse",www_path + "W32_cmd_DotNet.aspx")		
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

	Declare Function WinExec Lib "kernel32" Alias "WinExec" (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long
	Declare Function CopyFile Lib "kernel32" Alias "CopyFileA" (ByVal lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists As Long)  As Long

	public Function Run_test(mode)
		
		try 
		Dim winObj, objProcessInfo, item, local_dir, local_copy_of_cmd, Target_copy_of_cmd
		Dim objStartup, objConfig, objProcess, errReturn, intProcessID, temp_name
		Dim FailIfExists
		
		Dim Cmd_to_execute = "dir"
		
		local_dir = left(request.servervariables("PATH_TRANSLATED"),inStrRev(request.servervariables("PATH_TRANSLATED"),"\"))
		local_copy_of_cmd = Local_dir+"cmd.exe"
		Target_copy_of_cmd = Environment.GetEnvironmentVariable("Temp")+"\_test.exe"

		' Copy CMD.EXE to temp directory
		CopyFile(local_copy_of_cmd, Target_copy_of_cmd,FailIfExists)

		' Execute Command and save results in temp file	
		errReturn = WinExec(Target_copy_of_cmd + " /c " + cmd_to_execute, 10)

			
			Run_test = OK + Critical +" The server allows the remote execution of commands using a direct call to WinExec API!"		
		catch	
			Run_test = OK + low + "It was not possible to execute commands using cmd.exe"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public sub See_if_we_can_navigate_outside_our_work_environment()
		
	end sub
		
        </script>