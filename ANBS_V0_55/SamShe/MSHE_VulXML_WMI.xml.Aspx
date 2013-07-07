	
			<!--

			 Copyright (c) 2004 Free Software Foundation
			 developed under the custody of the
			 Open Web Application Security Project
			 (http://www.owasp.org)
 
 			 This file is part of the OWASP ANBS (Asp.Net Baseline Security).

			 The ANBS is free software; you can redistribute it and/or modify it 
			 under the terms of the GNU General Public License as published by
			 the Free Software Foundation; either version 2 of the License, or
			 (at your option) any later version.
  
			 This tool is distributed in the hope that it will be useful,
			 but WITHOUT ANY WARRANTY; without even the implied warranty of
			 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			 See the GNU General Public License for more details.
 
			 The valid license text for this file can be retrieved with
			 the call:   java -cp owasp.jar org.owasp.LICENSE
 
			 If you are not able to view the LICENSE that way, which should
			 always be possible within a valid and working ANBS release,
			 please write to the Free Software Foundation, Inc.,
			 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
			 to get a copy of the GNU General Public License or to report a
			 possible license violation.
 
			 Author: Dinis Cruz 
			         dinis@ddplus.net
			-->
		     <%@ Page Language="VB" Src="..\htmlMetaLanguage.vb" Inherits="htmlMetaLanguage"%>

			 


<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=UTF-16">
<script language="VBScript">
					


				sub addItemToXmlVulnerabilityResults(name , color, risk , description)
					parent.document.all.itemCount.innerText = cstr(cint(parent.document.all.itemCount.innerText)+1)
					itemCount = parent.document.all.itemCount.innerText
					parent.document.all.xmlWithVulnerabilityResults.innerText = "<result><item>"+ itemCount +"</item><name> " + name + " </name><color>" + color + "</color><risk>" + risk + "</risk><description> " + description + " </description></result>" + vbnewline + parent.document.all.xmlWithVulnerabilityResults.innerText 	
					updateResultsWindow
				end sub

				sub updateResultsWindow

					styleFile = "SamSheTempResults.xsl"

					set source = CreateObject("Microsoft.XMLDOM")
					source.async = false

					xmlResultsSource = chr(60) +"?xml version=""1.0"" encoding=""UTF-8""?>"
					xmlResultsSource = xmlResultsSource + "<results>"
					xmlResultsSource = xmlResultsSource +  parent.document.all.xmlWithVulnerabilityResults.innertext
					xmlResultsSource = xmlResultsSource + "</results>"

					source.loadXML(xmlResultsSource)
					set style = CreateObject("Microsoft.XMLDOM")
					style.async = false
					style.load(styleFile)
'					msgbox(source.transformNode(style))
					parent.document.all.vulnerabilityResults.innerHTML= source.transformNode(style)
				end sub


				sub changeThisDocumentBgColor(newColor)
					document.bgcolor = NewColor
				end sub
		
			</script><link rel="stylesheet" type="text/css" href="style.css">
</head>
<body bgcolor="red">

<%
	
	if WMIEnabled_test then 
	if WMIEnabled_ListProcesses_test then 
	end if
	if WMIEnabled_ListUserNames_test then 
	end if
	if WMIEnabled_ReadSystemLog_test then 
	end if
	if WMIEnabled_ReadApplicationLog_test then 
	end if
	if WMIEnabled_ListNetworkShares_test then 
	end if
	if WMIEnabled_ListServices_test then 
	end if
	if WMIEnabled_ListLogicalDisks_test then 
	end if
	if WMIEnabled_ListAnonymousAccountDetails_test then 
	end if
	if WMIEnabled_CreateProcesses_test then 
	end if
	end if
	'<!--functionPointer-->		
%>

<script language="VBScript">

	 changeThisDocumentBgColor("green")

</script>
</body>
</html>

<Script runat=server>

	public sub addItemToXmlVulnerabilityResults(item,color,risk,description)
	
		response.write("<"+"script language=""VBScript"">")				
		response.write("	call addItemToXmlVulnerabilityResults(""" + item + """,""" + color + """,""" + risk + """,""" + description + """)")
		response.write("<"+"/script>")
		response.flush
	end sub

		

				Private function Test()
					 Test = "testing 123"
				end function
			 
		
			Private function WMIEnabled_test()
				dim name as string = "WMI Enabled"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to make WMI calls"
				dim failComment as string = "It is not Possible to make WMI calls (no more tests will be done)"
				dim functionResponse = WMIEnabled
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     


				Private function WMIEnabled
					dim objProcessInfo , winObj, item , Process_properties, Process_user, Process_domain

					try 	
						winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
						return true
					catch					
						return false
					end try									
				end function

			 
		
			Private function WMIEnabled_ListProcesses_test()
				dim name as string = "WMI.Enabled.List.Process"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to use WMI to list the running processes"
				dim failComment as string = "It is NOt possible to use the WMI to list the running processes"
				dim functionResponse = WMIEnabled_ListProcesses
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     

					
					Private function WMIEnabled_ListProcesses
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_Process"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ListUserNames_test()
				dim name as string = "WMI.Enabled.List.UserNames"
				dim risk as string = "High"
				dim color as string = "red"
				dim successComment as string = "It is possible to list the current UserNames"
				dim failComment as string = "it is NOT possible to enumerate Usernames though WMI"
				dim functionResponse = WMIEnabled_ListUserNames
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_ListUserNames
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_UserAccount"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ReadSystemLog_test()
				dim name as string = "WMI.Enabled.Read.System.LogFiles"
				dim risk as string = "Low"
				dim color as string = "Green"
				dim successComment as string = "It is possible to Read events from the System Log"
				dim failComment as string = "it is NOT possible to Read events from the System Log though WMI"
				dim functionResponse = WMIEnabled_ReadSystemLog
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_ReadSystemLog
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_NTLogEvent where Logfile='System'"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ReadApplicationLog_test()
				dim name as string = "WMI.Enabled.Read.Application.Log"
				dim risk as string = "Low"
				dim color as string = "Green"
				dim successComment as string = "It is possible to Read events from the Application Log"
				dim failComment as string = "it is NOT possible to read events from the Application Log though WMI"
				dim functionResponse = WMIEnabled_ReadApplicationLog
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_ReadApplicationLog
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_NTLogEvent where Logfile='Application'"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ListNetworkShares_test()
				dim name as string = "WMI.Enabled.List.Network.Shares"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to List the current Network Shares"
				dim failComment as string = "it is NOT possible to list the current Network Shares though WMI"
				dim functionResponse = WMIEnabled_ListNetworkShares
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_ListNetworkShares
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_Share"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ListServices_test()
				dim name as string = "WMI.Enabled.List.Services"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to use WMI to list the running Services"
				dim failComment as string = "It is NOt possible to use the WMI to list the running Services"
				dim functionResponse = WMIEnabled_ListServices
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
			
					Private function WMIEnabled_ListServices
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_Service"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ListLogicalDisks_test()
				dim name as string = "WMI.Enabled.List.Logical.Disks"
				dim risk as string = "Low"
				dim color as string = "green"
				dim successComment as string = "It is possible to use WMI to list the existent Logical Disks"
				dim failComment as string = "It is NOt possible to use the WMI to list the existent Logical Disks"
				dim functionResponse = WMIEnabled_ListLogicalDisks
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_ListLogicalDisks
						dim objProcessInfo , winObj, item
						dim wmiFunctionToTest = "Win32_LogicalDisk"
						try 
							winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")			
							objProcessInfo = winObj.ExecQuery("Select * from " + wmiFunctionToTest)
							for each item in objProcessInfo	
								return  true ' only need to do it once to know it is ok (this also ensures that we where able to fetch at least one value)
							next
						catch											
						end try
						return false 
					end function

				 
		
			Private function WMIEnabled_ListAnonymousAccountDetails_test()
				dim name as string = "WMI.Enabled.List.Anonymous.Account.Details"
				dim risk as string = "CRITICAL!"
				dim color as string = "red"
				dim successComment as string = "It is possible to use WMI to list from the Metabase the Annonymous account's details (i.e. username and password)"
				dim failComment as string = "It is NOt possible to use the WMI to list from the Metabase the Anonymous account's Details"
				dim functionResponse = WMIEnabled_ListAnonymousAccountDetails
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
			
					Private function WMIEnabled_ListAnonymousAccountDetails
						Dim Count as integer = 0				
						Dim testMetabaseAccess as boolean
						try
							Dim IIsComputerObj, iFlags ,providerObj ,nodeObj ,item, IP							
							IIsComputerObj = CreateObject("WbemScripting.SWbemLocator") 			' Create an instance of the IIsComputer object
							providerObj = IIsComputerObj.ConnectServer("127.0.0.1", "root/microsoftIISv2")
							nodeObj  = providerObj.InstancesOf("IIsWebVirtualDirSetting") 			
							for each item in nodeObj
								Count = Count +1
								If Count > 2 then exit for
							next		
				
							testMetabaseAccess = true
						catch
							testMetabaseAccess = false
						end try
						If Count < 2 then testMetabaseAccess = false 	' the correct value will be 1 or 2 (accounts that bellong to the current website's application pool)
						return testMetabaseAccess
					end function

				 
		
			Private function WMIEnabled_CreateProcesses_test()
				dim name as string = "WMI.Enabled.Create.Processes"
				dim risk as string = "High"
				dim color as string = "red"
				dim successComment as string = "It is possible to use WMI to create new processes on the server (i.e. execute commands)"
				dim failComment as string = "It is NOt possible to use the WMI to create new processes on the server"
				dim functionResponse = WMIEnabled_CreateProcesses
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					return true
				end if
				if session("debug") then
					addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				return false
			end function
					
		     
					
					Private function WMIEnabled_CreateProcesses
						dim intProcessID, errReturn
						try							
							dim winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
							dim objStartup = winObj.get("Win32_ProcessStartup")
							dim objConfig = objStartup.SpawnInstance_
							objConfig.ShowWindow = 12 ' HIDDEN_WINDOW const
							dim objProcess = GetObject("winmgmts:root\cimv2:Win32_Process")
							errReturn = objProcess.Create("..\Microsoft.NET\Framework\v1.1.4322\csc.exe",,objConfig,intProcessID)	
						catch
							return false
						end try
						if errReturn = 0 then
							return true
						else 		
							return false
						end if
					end function

				 
'<!--functionLocation-->

</script>
