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
		
		 <H2>WSH Enabled</H2>	
		 
		 <blockquote>
		   <p>
		   		<b>Description:</b> this tests checks if it possible to create the object WSH (Windows 
		   		Script Host. Namely the object WSCRIPT.SHELL)
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
	
		Run_test = Test_Createobject("WSCRIPT.SHELL",  _
								     Critical, _
								     "The WSH (namelly WSCRIPT.SHELL) object could be created. This object allows the remote execution of commands on the server. It should be disabled for normal users and should only be available to administrators ", _
								     Low, _ 
								     "The WSH (namelly WSCRIPT.SHELL) object could NOT be created" _
								     )			
	end function
	
	
        </script>