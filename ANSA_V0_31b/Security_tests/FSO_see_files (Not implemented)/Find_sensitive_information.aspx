<%@ Page aspcompat=true %> 
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>FSO Test</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<script language="JavaScript">
<!--//hide
	function openindex(page_to_open)
	{  
		window.open(page_to_open,'_blank','toolbar=no,location=no,directories=no,status=yes,menubar=0,resizable=1,scrollbars=1,width=650,height=350');
	}
//-->
</script>

<body>
		<%	End_if_in_safe_mode %>
		
<%
	
	Dim Current_directory 
	Current_directory = Request.ServerVariables("APPL_PHYSICAL_PATH")

' go up one directory
	if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)
	Current_directory = left(Current_directory,instrrev(Current_directory,"\"))
	if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)


%>

<b>4) Search for Sensitive information</b><br><br>
<b>a) looking for sensitive files in the current root directory ("<%= Current_directory %>")</b/><br>
<ul>
<b>Files found:</b>
<br>
<%  find_sensitive_files(Current_directory )

'response.end  %>
</ul>
<hr>
<%

' go up one directory
	if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)
	Current_directory = left(Current_directory,instrrev(Current_directory,"\"))
	if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)

%>

b) looking for sensitive files in all directories above the current root 
directory ("<%=Current_directory %>&quot;)</b/><br>
<ul>
<b>Files found:</b>*
<br>

<% find_sensitive_files(Current_directory) %>
</ul>
*only the first 20 will be displayed
<hr>

</b></b></b>

</body>

</html>


<script runat=server>

sub find_sensitive_files(Current_directory)
	
	dim Folder_list,Sensitive_files, item
	
'	response.write(Current_directory)
	Folder_list = Return_dictionary_with_folder_list(Current_directory)
	Sensitive_files = Return_Sensitive_files_in_selected_directory(Folder_list)
	Display_dictionary_contents_parsed_and_linked(Sensitive_files)
end sub

sub Display_dictionary_contents(Dictionary)
	dim item
'	on error resume next
	for each item in Dictionary 
		response.write("<br>" + Dictionary (item))
	next
end sub

sub Display_dictionary_contents_parsed_and_linked(Dictionary)

	dim File_link, File_name, Dir_name, item

	for each item in Dictionary 
		response.write("<br>")		
		File_link = Dictionary (item)
		if right(File_link,1)="\" then File_link=left(File_link,len(File_link)-1)
		File_name = right(File_link,len(File_link) - instrrev(File_link,"\"))	
		Dir_name = 	left(File_link,instrrev(File_link,"\")-1)
		response.write (item)
		response.write (" - ")
		Response.Write ("<a href=""#"" onclick=""Javascript: openindex('browse_dir.aspx?dir_to_show=" + replace(Dir_Name,"\","\\")  +"')"">"+Dir_Name+"</a> \ ")		
		Response.Write ("<a href=""#"" onclick=""Javascript: openindex('show_file_pop-up.aspx?file_to_print=" + replace(File_Link,"\","\\")  +"')"">"+ File_Name+"</a>")		
'		response.write (File_Name + "<br>")
'		response.write(Dictionary (item))
	next
end sub



Function Return_Sensitive_files_in_selected_directory(Directories_to_Search)

	Dim fso, Directory_data,file_name, i , file_list, directory_name

	on error resume next

	File_List = Server.CreateObject("Scripting.Dictionary")
	i=0
	for each Directory_name in Directories_to_Search
'		response.write("<br> Processing Directory: " + Directory_name)
		Response.Flush	
	 	fso = CreateObject("Scripting.FileSystemObject")
		Directory_data = fso.GetFolder(Directory_name)
		For Each file_name in Directory_data.Files
			if inStr(file_name.name,".asa") > 0 or _
			   inStr(file_name.name,".inc") > 0 or _
			   inStr(file_name.name,"Web.config") > 0 _
			   then	
'			   	response.write("<b>found Sensitive file:"+file_name.path+"</b><br>")
			 	Call File_List.add (Cstr(i),file_name.path)
				i=i+1
				if i>20 then
			 		Return_Sensitive_files_in_selected_directory = File_List	
				 	exit function	
				end if
			end if
		next
		
	next
	
	Return_Sensitive_files_in_selected_directory = File_List	

end function

Function Return_dictionary_with_folder_list(Path)

	dim Folder_list, Directory_data, fso, directory
'	on error resume next

	Folder_List = Server.CreateObject("Scripting.Dictionary")
	fso = CreateObject("Scripting.FileSystemObject")
	Directory_data = fso.GetFolder(Path)
	For Each Directory in Directory_data.subFolders
		call Folder_list.add (Path+"\"+Directory.name+"\www",Path+"\"+Directory.name+"\www")
		'response.write(Directory.name)
	next
	
	Return_dictionary_with_folder_list = Folder_List
	
end function
</script>