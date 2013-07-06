<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System.Object" %>

<html>
<head>
		<% Link_to_style_sheet %>
</head>

<body>
		<%	End_if_in_safe_mode %>
<p>&nbsp;</p>
Results from attemps to create, read and delete a temporary file in the normal temp directories
<% 
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
		rw(b_(br_ + szTempFile) + " : ")
		if (Create_file(szTempFile,"Testing File Creation") = get_file_contents(szTempFile))	
			try
				oFileSys.DeleteFile(szTempFile, True)
				green("file created and deleted")
			catch
				yellow("file created but not deleted (permission denied)")
			end try
		else
			red("Unable to create file")
		end if
	next
	
%>

</body>

</html>

<script runat=server>


        </script>