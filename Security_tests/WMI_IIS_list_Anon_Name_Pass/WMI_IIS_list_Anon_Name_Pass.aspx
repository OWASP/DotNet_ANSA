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
		
		 <H2>WMI IIS List Anonymous' User details (User name and password)</H2>	
		 
		 <blockquote>
		   <p><b>Description:</b> If the IIS Metabase is not protected it is 
           possible to read and display in clear text the current values of the 
           usernames and passwords of the current anonymous user (note that this 
           only applies to windows 2003)</p>
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
		
		if test_metabase_access then
			Run_test = OK + Critical+" It is possible to read the values (username and password) of the co-hosted website's"		
			if mode="show" then output_sample_data
		else	
			Run_test = OK + low + " it was not possible to use WMI to access Metabase information"			
		end if
		
	
	end function
	
	public function test_metabase_access()
		Dim Count = 0

		try
			Dim IIsComputerObj, iFlags ,providerObj ,nodeObj ,item, IP
			
			IIsComputerObj = CreateObject("WbemScripting.SWbemLocator") 			' Create an instance of the IIsComputer object
			providerObj = IIsComputerObj.ConnectServer("127.0.0.1", "root/microsoftIISv2")
			nodeObj  = providerObj.InstancesOf("IIsWebVirtualDirSetting") '  - IISwebServerSetting
			
	
			for each item in nodeObj
				Count = Count +1
				If Count > 2 then exit for
			next		

			test_metabase_access = true
		catch
			test_metabase_access = false
		end try
		If Count < 2 then test_metabase_access = false
	end function


	public sub output_sample_data()
		Dim IIsComputerObj, iFlags ,providerObj ,nodeObj ,item, IP
		
		IIsComputerObj = CreateObject("WbemScripting.SWbemLocator") 			' Create an instance of the IIsComputer object
		providerObj = IIsComputerObj.ConnectServer("127.0.0.1", "root/microsoftIISv2")
		nodeObj  = providerObj.InstancesOf("IIsWebVirtualDirSetting") '  - IISwebServerSetting
		
		Dim MaxCount = 20,Count = 0
		hr
		RW("only showing the first "+cstr(MaxCount) + " items")
		hr
		for each item in nodeObj
			response.write("<b>" + item.AppFriendlyName + " </b> -  ")
			response.write("(" + item.AppPoolId + ") ")
		
			response.write(item.AnonymousUserName + " : ")
			response.write(item.AnonymousUserPass)
			
			response.write("<br>")
			
			response.flush
			Count = Count +1
			If Count > MaxCount then exit for
		next		
		hr
	end sub	
	
' Vulnerability Specific Code
	

		
        </script>