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
		
		 <H2>FSO Browse Folders</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> this test checks to see if it is possible to 'navigate' outside this users web directory </p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))	
				newline
				newline
				Dim www_path = left(request.servervariables("SCRIPT_NAME"),instrrev(request.servervariables("SCRIPT_NAME"),"/"))
			    Create_Iframe_relative(900,400,"FSO_browse",www_path + "browse_dir.aspx")		
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
		
'		See_if_we_can_navigate_outside_our_work_environment(10,mode) 		
		
		try 
			if See_if_we_can_navigate_outside_our_work_environment(10,mode)  then
				Run_test = OK + High + "It was possible to browse files from other websites outside the user's web directory"		
			else
				Run_test = OK + Low + " The server doesn't allow access to other websites' data"		
			end if
		catch
			Run_test = Fail + ";; test failed"			
		end try		
			
	end function
	
	
	
' Vulnerability Specific Code
	
	public function See_if_we_can_navigate_outside_our_work_environment(max_items,mode)
	
		dim work_path = Request.ServerVariables("APPL_PHYSICAL_PATH")
		dim key_directory = "_private"


		'key_directory = "security_tests"
		'key_directory = "wwwroot"
		'key_directory = "ddplus"

		dim found_count = 0

		do while work_path <>""
			work_path = go_up_one_directory(work_path)
			Found_count = Found_count + Search_in_subfolder_folders(key_directory, work_path,max_items-found_count,mode)
			
			if found_count >= max_items then 
				exit do
			end if			
		loop
		if mode="show" then
			hr
			print_var("found count",cstr(found_count), "number of items found")
			hr
		end if
		See_if_we_can_navigate_outside_our_work_environment = found_count
	end function
	
	function Search_in_subfolder_folders(key_directory,work_path,current_max_items,mode)	
		dim folder_dictionary,sub_folder_dictionary,sub_sub_folder_dictionary, item, sub_item,sub_sub_item, found_count
		found_count = 0
		folder_dictionary = Return_dictionary_with_folder_list(work_path)
		if (folder_dictionary(ucase(key_directory))<>"") and (instr(ucase(folder_dictionary(ucase(key_directory)))+"\",ucase(Request.ServerVariables("APPL_PHYSICAL_PATH")))=0)  then
			found_count = found_count + 1
			if mode="show" then print_var(key_directory,folder_dictionary(ucase(key_directory)),"")
			if found_count >= current_max_items then 
				Search_in_subfolder_folders = Found_count
				exit function
			end if
		end if
		for each item in folder_dictionary
			if folder_dictionary(item) <> "" then
				sub_folder_dictionary = Return_dictionary_with_folder_list(folder_dictionary(item)+"\")
				if (sub_folder_dictionary(ucase(key_directory)) <> "") and (instr(ucase(sub_folder_dictionary(ucase(key_directory)))+"\",ucase(Request.ServerVariables("APPL_PHYSICAL_PATH")))=0) then
					found_count = found_count + 1
					if mode="show" then print_var(key_directory,sub_folder_dictionary(ucase(key_directory)),item)			
					if found_count >= current_max_items then 
						Search_in_subfolder_folders = Found_count
						exit function
					end if				
				end if
				for each sub_item in sub_folder_dictionary
					if sub_folder_dictionary(sub_item) <> "" then 
						sub_sub_folder_dictionary = Return_dictionary_with_folder_list(sub_folder_dictionary(sub_item)+"\")		
						if (sub_sub_folder_dictionary(ucase(key_directory))<>"") and (instr(ucase(sub_sub_folder_dictionary(ucase(key_directory)))+"\",ucase(Request.ServerVariables("APPL_PHYSICAL_PATH")))=0)  then				
							found_count = found_count + 1
							if mode="show" then print_var(key_directory,"" + sub_sub_folder_dictionary(ucase(key_directory)),item)
							if found_count >= current_max_items then 
								Search_in_subfolder_folders = Found_count
								exit function
							end if
						end if
					end if
				next 
			end if
		next
		Search_in_subfolder_folders = Found_count
	end function
	
	Sub Show_Directories(sPP)	
		Dim fso, ff, f,f1
		fso = CreateObject("Scripting.FileSystemObject")
		f = fso.GetFolder(sPP)  
		ff = f.SubFolders 
		For Each f1 in ff	
	  	  Response.Write ("<b><a href='"+request.servervariables("SCRIPT_NAME")+"?dir_to_show="+sPP +"\"+ f1.name +"'>" & f1.name  & "</a></b> <br>")
		Next  
		ff = nothing
		fso = nothing
		f = nothing
	End Sub


	function go_up_one_directory(Current_directory)
		if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)
		Current_directory = left(Current_directory,instrrev(Current_directory,"\"))
'		if right(Current_directory,1)="\" then Current_directory=left(Current_directory,len(Current_directory)-1)
		go_up_one_directory = Current_directory
	end function

	Function Return_dictionary_with_folder_list(Path)

		dim Folder_list, Directory_data, fso, directory
		on error resume next
	
		Folder_List = Server.CreateObject("Scripting.Dictionary")
		fso = CreateObject("Scripting.FileSystemObject")
		Directory_data = fso.GetFolder(Path)
		For Each Directory in Directory_data.subFolders
			call Folder_list.add (ucase(cstr(Directory.name)),Path+Directory.name)
'			rw(Directory.name)
'			newline
		next
		
		Return_dictionary_with_folder_list = Folder_List
	
	end function

	
        </script>