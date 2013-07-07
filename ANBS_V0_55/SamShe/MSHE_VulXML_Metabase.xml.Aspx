	
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

				<%@ Import namespace="System.Reflection" %>
				<%@ import Namespace="System.IO" %>
				<%@ import Namespace="System.Security" %>
				<%@ import Namespace="System.Security.Principal	" %>
			 


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
	
	if readMetabaseFile_test then 
	end if
	if readMetabaseBackupFiles_test then 
	end if
	if metabaseAfterRevertToSelfReadMainAnonymousAccountDetails_test then 
	end if
	if metabaseAfterRevertToSelfReadWebsitesAnonymousAccountDetails_test then 
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

		

				Declare Auto Function RevertToSelf Lib "advapi32.dll" () As Integer

				Private MSCorLib_Dll = Environment.GetEnvironmentVariable("windir") +"\Microsoft.NET\Framework\v1.1.4322\mscorlib.dll"
				Private System_Dll = Environment.GetEnvironmentVariable("windir") +"\Microsoft.NET\Framework\v1.1.4322\system.dll"
				Private strIdentityBeforeRevertToSelf =  WindowsIdentity.GetCurrent().name	

				Private Function InvokeMethod_for_Assembly(assemblyName,className,methodName,publicOrPrivateFlag,arrayParams)
					Dim System_web_Obj as [Assembly] = [Assembly].LoadFrom(AssemblyName)
					Dim Reflected_Class as Type = System_web_Obj.GetType(ClassName)
					InvokeMethod_for_Assembly = Reflected_Class.InvokeMember(methodName,publicOrPrivateFlag or BindingFlags.Static or BindingFlags.InvokeMethod, Nothing, Nothing,arrayParams)			
				end function
	
				Private Function CreateInstance_for_Instance(assemblyName,className,methodName, publicOrPrivateFlag)
					Dim System_web_Obj as [Assembly] = [Assembly].LoadFrom(assemblyName)
					Dim Reflected_Class as Type = System_web_Obj.GetType(className)
					CreateInstance_for_Instance = Reflected_Class.InvokeMember(methodName, publicOrPrivateFlag or BindingFlags.Instance or BindingFlags.CreateInstance, Nothing, Reflected_Class , Nothing) 
				end function	

				Public Function InvokePrivateMemberStatic(objClassToReflect, strPrivateMethodToCall, objArrayWithParameters)
					dim objType as Type = objClassToReflect.GetType()
					InvokePrivateMemberStatic = objType.InvokeMember(strPrivateMethodToCall,BindingFlags.NonPublic or BindingFlags.Static or BindingFlags.InvokeMethod, Nothing, objClassToReflect,objArrayWithParameters)
				end function


				Public Function InvokePrivateMemberInstance(objClassToReflect, strPrivateMethodToCall, objArrayWithParameters)
					dim objType as Type = objClassToReflect.GetType()
					InvokePrivateMemberInstance = objType.InvokeMember(strPrivateMethodToCall,BindingFlags.NonPublic or BindingFlags.Instance or BindingFlags.InvokeMethod, Nothing, objClassToReflect,objArrayWithParameters)
				end function
			 
		
			Private function readMetabaseFile_test()
				dim name as string = "Read.Metabase.file"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It was possible to open directly the Metabase File 'Metabase.xml'"
				dim failComment as string = "fail"
				dim functionResponse = readMetabaseFile
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
					
		     

				Private function readMetabaseFile
					try 	

						Dim strMetabaseDirectory = System.Environment.CurrentDirectory
						Dim xmlMetabaseFullPath as String = strMetabaseDirectory + "\metabase.xml"
						Dim xmlMetabase as New System.XML.XMLdocument
						xmlMetabaseFullPath = replace(xmlMetabaseFullPath,"\","\\")

						xmlMetabase.Load(xmlMetabaseFullPath)
						dim rootElement = xmlMetabase.documentElement

						return True
					catch					
						return false
					end try									
				end function
				
			 
		
			Private function readMetabaseBackupFiles_test()
				dim name as string = "Read.Metabase.Backup.files"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It was possible to open directly the Metabase Backups Files"
				dim failComment as string = "fail"
				dim functionResponse = readMetabaseBackupFiles
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
					
		     

				Private function readMetabaseBackupFiles
					Dim metabaseRootDirectory = System.Environment.CurrentDirectory + "\MetaBack\"
					Dim metabaseBackupsFilter = "*.MD*"
					Dim metabasebackupFile
					Dim xmlMetabase as New System.XML.XMLdocument
					Dim intFoundCount as integer = 0
					Try 
						
					
					dim listOfMetabaseBackupFiles = Directory.GetFiles(metabaseRootDirectory,metabaseBackupsFilter)

						for each metabasebackupFile in listOfMetabaseBackupFiles							
							xmlMetabase.Load(metabasebackupFile)
							intFoundCount = intFoundCount + 1
						next
						return cstr(intFoundCount) + " Files"
					catch	
						if intFoundCount = 0 then				
							return false
						else
							return cstr(intFoundCount) + " Files"
						end if
					end try									
				end function

		
				
			 
		
			Private function metabaseAfterRevertToSelfReadMainAnonymousAccountDetails_test()
				dim name as string = "Metabase.AfterRevertToSelf.Read.Main.AnonymousAccountDetails"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It was possible to (After Calling RevertToSelf) read the main Anonymous Username and Password from the metabase"
				dim failComment as string = "fail"
				dim functionResponse = metabaseAfterRevertToSelfReadMainAnonymousAccountDetails
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
					
		     

				Private function metabaseAfterRevertToSelfReadMainAnonymousAccountDetails
					try 	
						RevertToSelf

						Dim metaObj = New IISConfig.Metabase()	
						metaObj.OpenLocalMachine()
						Dim currentPath = "\LM\W3SVC"

						Dim objMetaKeyData = InvokePrivateMemberInstance(metaObj,"GetAllData", new Object() {currentPath,False})
		

						dim objMetabaseRecordData
						dim strWAMUserName as Boolean = False
						dim strWAMUserPass as Boolean = False
						dim strDummyVariable

						for each objMetabaseRecordData in objMetaKeyData
							if objMetabaseRecordData.Name = "WAMUserName" then 
								strDummyVariable = objMetabaseRecordData.Data ' Just to make sure this value can be read
								strWAMUserName = True
							end if
							if objMetabaseRecordData.Name = "WAMUserPass" then
								strDummyVariable = objMetabaseRecordData.Data ' Just to make sure this value can be read
								strWAMUserPass = True
							end if
						next
						if strWAMUserName and strWAMUserPass					
							return True
						else
							return False
						end if
					catch					
						return False
					end try									
				end function
				
			 
		
			Private function metabaseAfterRevertToSelfReadWebsitesAnonymousAccountDetails_test()
				dim name as string = "Metabase.AfterRevertToSelf.Read.Websites.AnonymousAccountDetails"
				dim risk as string = "CRITICAL!"
				dim color as string = "Red"
				dim successComment as string = "It was possible to (After Calling RevertToSelf) read (from the metabase) the Anonymous Username and Password of other co-hosted Websites "
				dim failComment as string = "fail"
				dim functionResponse = metabaseAfterRevertToSelfReadWebsitesAnonymousAccountDetails
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
					
		     

				Private function metabaseAfterRevertToSelfReadWebsitesAnonymousAccountDetails
					try						
						RevertToSelf
						dim strIdentityAfterRevertToSelf =  WindowsIdentity.GetCurrent().name	
						Dim metaObj = New IISConfig.Metabase()	
						metaObj.OpenLocalMachine()
						Dim strMainPath = "\LM\W3SVC"
	
						dim objMetabaseRecordData
						dim strWAMUserName as Boolean = False
						dim strWAMUserPass as Boolean = False
						dim strDummyVariable

						Dim objMetaSubKeys = InvokePrivateMemberInstance(metaObj,"GetSubkeys", new Object() {strMainPath})
						Dim strSubKeyName
						Dim strSubKeyPath	
						Dim objSubKeyData
						Dim intFoundCount = 0
						for each strSubKeyName in objMetaSubKeys
							try 
								strSubKeyPath = strMainPath + "\" + strSubKeyName + "\root"
								Dim objMetaKeyData = InvokePrivateMemberInstance(metaObj,"GetAllData", new Object() {strSubKeyPath,False})
								strWAMUserName = False
								strWAMUserPass = False
								for each objMetabaseRecordData in objMetaKeyData
									if objMetabaseRecordData.Name = "AnonymousUserName" then 
										if (objMetabaseRecordData.Data <> strIdentityBeforeRevertToSelf) and (objMetabaseRecordData.Data <> strIdentityAfterRevertToSelf) then   ' Only the ones that we don't know count
											strWAMUserName = True
										end if
									end if
									if objMetabaseRecordData.Name = "AnonymousUserPass" then
										strDummyVariable = objMetabaseRecordData.Data ' Just to make sure this value can be read
										strWAMUserPass = True
									end if
								next
								if strWAMUserName and strWAMUserPass					
									intFoundCount = intFoundCount + 1
								end if
							Catch
							end Try
						next
						
						if intFoundCount > 0 then 	
							return cstr(intFoundCount) + " accounts found"
						else
							return false
						end if
					catch					
						return false
					end try									
				end function
				
			 
'<!--functionLocation-->

</script>
