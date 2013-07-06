<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

   


<% 
	Set_session_variables
	
	if request("mode")="test" then
		rw(Session("http_signature")+";")	
		rw(run_test)
	else
	
%>	
		<html>
		<head>
			<% Link_to_style_sheet%>
		</head>
		<body>
		<%	End_if_in_safe_mode %>		
		 <H2>FSO Enabled</H2>	
		 
		 <blockquote>
		   <p>
		   		<b>Description:</b> this check tests checks if it possible to create the object 'FSO'
           </p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test())			
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

	public Function Run_test()	
	
		Run_test = Test_Createobject("Scripting.FileSystemObject",  _
								     Medium, _
								     "The FSO (Scripting.FileSystemObject) could be created", _
								     Low, _ 
								     "The FSO (Scripting.FileSystemObject) could NOT be created" _
								     )			
	end function
	
	
        </script>