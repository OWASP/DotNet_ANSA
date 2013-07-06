<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>


<html>
<head>
		<% Link_to_style_sheet %>
</head>

<body>
		<%	End_if_in_safe_mode %>
<p>&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" bgcolor="#000000">
  <tr>
    <td width="100%"><b><font color="#FFFFFF">Showing file: <%=request("file_to_print")%> </font></b>
    </td>
  </tr>
</table>

<% print_file(request("file_to_print"))%>

</body>

</html>

<script runat=server>

sub print_file(file_name)
	dim fs,f,ts,file_contents
	fs=Server.CreateObject("Scripting.FileSystemObject")
	f=fs.GetFile(file_name)
	ts=f.OpenAsTextStream(1)
	file_contents=ts.ReadAll
	response.Write("<hr>")	
	Response.Write(replace(file_contents,"Javascript","JJJJJJJJ"))
	Response.Write("<hr>")
	response.write(replace(server.HTMLencode(file_contents),vbnewline,"<br>"))
 	Response.Write("<hr>")
	ts.Close
	ts=nothing
	f=nothing
	fs=nothing
	
end sub
</script>