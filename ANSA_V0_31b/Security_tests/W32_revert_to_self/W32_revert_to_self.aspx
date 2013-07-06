<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ Import namespace="System.Security.Principal" %>

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
		
		 <H2>W32 Revert To Self</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> By calling the RevertToSelf function from the advapi32.dll the account currently running our commands on the server can be changed</p>
		 </blockquote>
		 <hr>	
		 <b>Test results:</b>
		 <hr>
		 		
			<% 			
				rw(Run_test("show"))
			%>
			
		  </body>
		</html>
<%
	end if
%>

<script runat=server>

' General 

	public Function Run_test(mode)
	
		try 
			dim before,after
			before = WindowsIdentity.GetCurrent().Name
		
			
			UndoImpersonation
			after = WindowsIdentity.GetCurrent().Name
			
					
			if before<>after then
				Run_test = OK + high +" It was possible to change the current Application account from '"+before+"' to '"+after+"'"		
			else	
				Run_test = Medium + low + " It possible to execute RevertToSelf() but current application account didn't change (currently '"+before+"')"			
			end if
		catch
			Run_test = OK + low + " It was not possible to execute RevertToSelf()"			
		end try		
	
	end function
	
	
	
' Vulnerability Specific Code
	

		
        </script>