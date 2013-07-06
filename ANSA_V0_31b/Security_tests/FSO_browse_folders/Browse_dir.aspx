<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>
<html>
<head>
		<% Link_to_style_sheet %>
		<base target=_self Href="<% rw("http://"+request.servervariables("SERVER_NAME") + "/"+request.servervariables("SCRIPT_NAME"))%>">
</head>
		<%	End_if_in_safe_mode %>
<script language="JavaScript">
<!--//hide
	function openindex(page_to_open)
	{  
		window.open(page_to_open,'_blank','toolbar=no,location=yes,directories=no,status=yes,menubar=0,resizable=1,scrollbars=1,width=650,height=350');
	}
//-->
        </script>

<body>

<%
	Dim sPP

	if request("dir_to_show")<>"" then
		sPP=request("dir_to_show")
	else
		sPP = Request.ServerVariables("APPL_PHYSICAL_PATH")
	end if
	if right(sPP,1)="\" then sPP=left(sPP,len(sPP)-1)

%>

<table border="2" cellpadding="2" cellspacing="3" style="border-collapse: collapse; border-left-width: 0; border-right-width: 0; border-top-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1" height="86">
  <tr>
    <td width="100%" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1" height="44" colspan="2">
    <b>3) Browse Directories: </b><p><b>Current Directory:</b>&nbsp;<% Parse_directory(sPP)%> <br>&nbsp;</td>
  </tr>
  <tr>
    <td width="50%" style="border-left:1px solid #111111; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" height="13" valign="top">
    <b>Sub-Directories </b>(click to browse)</td>
    <td width="50%" style="border-right:1px solid #111111; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" height="13" valign="top">
    <b>Files </b>(click to open file in a pop-up window)</td>
  </tr>
  <tr>
    <td width="50%" style="border-left:1px solid #111111; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" height="12" valign="top"><% Show_Directories(sPP) %> </td>
    <td width="50%" style="border-right:1px solid #111111; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" height="12" valign="top"><% Show_Files(sPP) %></td>
  </tr>
  </table>



<hr>
<% if request("file_to_print")<>"" then
	response.write("<H1>"+request("file_to_print")+"</H1><br>") 
	
%>
<pre><%	print_file(request("file_to_print"))  %>
</pre>	
<%
end if	
%>
</body>

</html>


<script runat=server>

sub Parse_directory(Path)
	
	Dim Link_path,filtered_path 

	if right(Path ,1)<>"\" then Path=Path + "\"
	Link_path = ""
	do while instr(Path,"\")>0 
		filtered_path = left(Path,instr(Path,"\"))
		Link_path = Link_path +filtered_path 
		if right(filtered_path ,1)="\" then filtered_path =left(filtered_path ,len(filtered_path )-1)
		Path = right(path,len(path)-instr(Path,"\"))
		response.write("<a href='"+request.servervariables("SCRIPT_NAME")+"?dir_to_show="+Link_path+"\'>"+filtered_path +"</a> \ ")
'		response.write(filtered_path + "("+Link_Path +") - ")
	loop
'	Link_path = Link_path +filtered_path 
'	response.write("<a href='"+request.servervariables("SCRIPT_NAME")+"?dir_to_show="+Link_path+"\'>"+filtered_path +"</a> \ ")

	
end sub 

Sub Show_Directories(sPP)	
	Dim fso, ff, f,f1
        fso = CreateObject("Scripting.FileSystemObject")
        
        Try
            f = fso.GetFolder(sPP)
            ff = f.SubFolders
            Response.Write("There are " + ff.Count.ToString() + " folders <hr>")
            For Each f1 In ff
                Try                    
                    Response.Write("<b><a href='" + Request.ServerVariables("SCRIPT_NAME") + "?dir_to_show=" + sPP + "\" + f1.name + "'>" & f1.name & "</a></b> <br>")
                Catch ex As Exception
                    Response.Write("Error: " + ex.Message)
                End Try                
            Next
        Catch ex As Exception
            Response.Write("Error: " + ex.Message)
        End Try	
	ff = nothing
	fso = nothing
	f = nothing
End Sub

Sub Show_files(sPP)
	Dim fso, fc, f,f1
        fso = CreateObject("Scripting.FileSystemObject")
        Try
            f = fso.GetFolder(sPP)
            fc = f.Files
            For Each f1 In fc
                Response.Write("<a href=""#"" onclick=""Javascript: openindex('show_file_pop-up.aspx?file_to_print=" + Replace(sPP, "\", "\\") + "\\" + f1.name + "')"">" + sPP + "\" + f1.name + "</a> <br>")
            Next
        Catch ex As Exception
            Response.Write("Error: " + ex.Message)
        End Try
	
'	  Response.Write "<a href='"+request.servervariables("SCRIPT_NAME")+"?file_to_print=" & sPP +"\"+ f1.name &"&dir_to_show="+sPP+"'>" & f1.name & "</a> <br>"
	
	fso = nothing
	f = nothing
	fc = nothing
End Sub


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