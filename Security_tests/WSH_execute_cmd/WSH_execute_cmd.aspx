<%@ Page Language="VB" aspcompat=true  autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
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
		
		 <H2>WSH Execute Commands using Cmd.exe</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> This test checks if it is possible to execute 
           commands on the server using the WSH (Windows Script Host) object</p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))	
				newline
				newline
				Dim www_path = left(request.servervariables("SCRIPT_NAME"),instrrev(request.servervariables("SCRIPT_NAME"),"/"))
			    Create_Iframe_relative(900,400,"FSO_browse",www_path + "cmd_DotNet.aspx")		
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
			Dim cmd_to_execute = "dir"
'		  	Dim szTempFile = Environment.GetEnvironmentVariable("TEMP") & "\"& oFileSys.GetTempName( )
			Dim oScript = Server.CreateObject("WSCRIPT.SHELL")
	  	    Call oScript.Run ("cmd.exe /c " & cmd_to_execute , 0, True)

			Run_test = OK + Critical +" The server allows the remote execution of commands!"		
		catch	
			Run_test = OK + Low + "It was not possible to execute commands using cmd.exe"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public sub See_if_we_can_navigate_outside_our_work_environment()
		
	end sub
		
        </script>