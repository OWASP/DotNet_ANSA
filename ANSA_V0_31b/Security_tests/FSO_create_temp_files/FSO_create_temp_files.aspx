<%@ Page Language="VB" aspcompat=true autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
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
		
		 <H2>FSO Create temp files</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 
           create, read and delete temporary files </p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))	
				newline
				newline
				Dim www_path = left(request.servervariables("SCRIPT_NAME"),instrrev(request.servervariables("SCRIPT_NAME"),"/"))
			    Create_Iframe_relative(900,400,"FSO_create",www_path + "create_temp_files.aspx")		
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

' General 

	public Function Run_test(mode)
		dim fso
		
'		See_if_we_can_create_temp_files(10,mode) 		
		
		try 
			if See_if_we_can_create_temp_files()  then
				Run_test = OK + Medium + "It was possible to create and read temporary files using FSO, this could be exploited by a remote execution vulnerability"		
			else
				Run_test = OK + Low + " The server doesn't allow the creation of temporary files using FSO"		
			end if
		catch
			Run_test = Fail + ";; test failed"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public function See_if_we_can_create_temp_files()
	
		dim oFileSys = Server.CreateObject("Scripting.FileSystemObject")		
		dim szTempFile , Split_files, item, files_to_test
		
		Files_to_test = Environment.GetEnvironmentVariable("TEMP") + ";" + _
						request.servervariables("APPL_PHYSICAL_PATH") + ";" + _
						Environment.GetEnvironmentVariable("SystemRoot")+"\Microsoft.NET\Framework\v1.1.4322\Temporary ASP.NET Files" + ";" + _
						"C:\" + ";" + _
						"D:\" + ";" + _
						"E:\" 
	
	
		Split_files = Split(Files_to_test,";")
		for each item in Split_Files
			szTempFile = item & "\"& oFileSys.GetTempName()
			if (Create_file(szTempFile,"Testing File Creation") = get_file_contents(szTempFile))	
				try
					oFileSys.DeleteFile(szTempFile, True)
					 See_if_we_can_create_temp_files=true 
					 exit function
				catch
				end try
			end if
		next
	
	end function

	
        </script>