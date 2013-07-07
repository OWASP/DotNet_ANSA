	
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
				<%@ Import namespace="System.Security.Principal"%>
				<%@ Import namespace="System.Diagnostics" %>

				<%
					getCurrentThreadIdentity
				%>					
			 


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
	
	if RevertToSelfReflection_test then 
	end if
	if RevertToSelfWin32_test then 
	end if
	if checkForChangedIdentity_test then 
	end if
	if checkIfRevertedToSystem_test then 
	end if
	if AfterRevertCreateProcess_test then 
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

		

				Declare Function RevertToSelf Lib "advapi32.dll" Alias "RevertToSelf" () As Boolean

				Private CurrentThreadIdentity
				Private successfullyCalledRevertToSelf
			
				Private sub getCurrentThreadIdentity()
					CurrentThreadIdentity = WindowsIdentity.GetCurrent().name
				end sub
						

				Private System_Dll as String = Environment.GetEnvironmentVariable("windir") +"\Microsoft.NET\Framework\v1.1.4322\system.dll"
				Private System_Web_Dll as String = Environment.GetEnvironmentVariable("windir") +"\Microsoft.NET\Framework\v1.1.4322\system.web.dll"
				Private objMicrosoftWin32UnsafeNativeMethods = CreateInstance_for_Instance(System_Dll, "Microsoft.Win32.UnsafeNativeMethods","",BindingFlags.Public)
				Private objSystemNetUnSafeNclNativeMethods = CreateInstance_for_Instance(System_Dll, "System.Net.UnsafeNclNativeMethods","",BindingFlags.Public)
				Private objSystemWebUnSafeNativeMethods = CreateInstance_for_Instance(System_Web_Dll, "System.Web.UnsafeNativeMethods","",BindingFlags.NonPublic)

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

			 
		
			Private function RevertToSelfReflection_test()
				dim name as string = "RevertToSelf.Reflection"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to call RevertToSelf using Reflection"
				dim failComment as string = "fail"
				dim functionResponse = RevertToSelfReflection
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
					
		     

				Private function RevertToSelfReflection()
					try 	
						Dim revertToSelfMethodsAvailable as String = ""

						if objMicrosoftWin32UnsafeNativeMethods.RevertToSelf then revertToSelfMethodsAvailable = revertToSelfMethodsAvailable + "Microsoft.Win32.UnsafeNativeMethods.RevertToSelf"
						if InvokePrivateMemberStatic(objSystemNetUnSafeNclNativeMethods,"RevertToSelf",Nothing) then revertToSelfMethodsAvailable = revertToSelfMethodsAvailable + ", System.Net.UnSafeNclNativeMethods.RevertToSelf"
						if InvokePrivateMemberStatic(objSystemWebUnSafeNativeMethods,"RevertToSelf",Nothing) then revertToSelfMethodsAvailable = revertToSelfMethodsAvailable + ", System.Web.UnSafeNativeMethods.RevertToSelf"
						if InvokePrivateMemberStatic(WindowsIdentity.GetCurrent(),"_RevertToSelf",Nothing) then revertToSelfMethodsAvailable = revertToSelfMethodsAvailable + ", System.Security.Principal.WindowsIdentity._RevertToSelf"

						if revertToSelfMethodsAvailable <> "" then
							successfullyCalledRevertToSelf = true	
							return "Using : " + revertToSelfMethodsAvailable
						else
							return false
						end if
					catch					
						return false
					end try									
				end function

				
			 
		
			Private function RevertToSelfWin32_test()
				dim name as string = "RevertToSelf.Win32"
				dim risk as string = "Medium"
				dim color as string = "Orange"
				dim successComment as string = "It is possible to call RevertToSelf using Reflection"
				dim failComment as string = "fail"
				dim functionResponse = RevertToSelfWin32
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
					
		     

				Private function RevertToSelfWin32

					try 	
						if RevertToSelf then
							successfullyCalledRevertToSelf = true	
							return true
						else 
							return false
						end if
					catch					
						return false						
					end try	
				end function

				
			 
		
			Private function checkForChangedIdentity_test()
				dim name as string = "RevertToSelf.AfterRevert.ChangeIdentity"
				dim risk as string = "High"
				dim color as string = "Red"
				dim successComment as string = "RevertToSelf Changed the current Thread Identity"
				dim failComment as string = "fail"
				dim functionResponse = checkForChangedIdentity
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
					
		     

				Private function checkForChangedIdentity
					try 	
						if (successfullyCalledRevertToSelf) and (CurrentThreadIdentity <> WindowsIdentity.GetCurrent().name) then
							return "from " + CurrentThreadIdentity + " to " + WindowsIdentity.GetCurrent().name
						else 
							return false
						end if
					catch					
						return false						
					end try	
				end function

				
			 
		
			Private function checkIfRevertedToSystem_test()
				dim name as string = "RevertToSelf.AfterRevert.CheckIfRevertedToSystem"
				dim risk as string = "CRITICAL!"
				dim color as string = "Red"
				dim successComment as string = "the identity 'Reverted to' is the SYSTEM account. This means that all code is executed with administrative privileges"
				dim failComment as string = "fail"
				dim functionResponse = checkIfRevertedToSystem
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
					
		     

				Private function checkIfRevertedToSystem
					try 	
						if (successfullyCalledRevertToSelf) and (WindowsIdentity.GetCurrent().name = "NT AUTHORITY\SYSTEM") then
							return true
						else 
							return false
						end if
					catch					
						return false						
					end try	
				end function

				
			 
		
			Private function AfterRevertCreateProcess_test()
				dim name as string = "RevertToSelf.AfterRevert.CreateProcess"
				dim risk as string = "High"
				dim color as string = "Red"
				dim successComment as string = "After RevertToSelf it was possible to create a new process using 'system.diagnostics.process.start()'"
				dim failComment as string = "fail"
				dim functionResponse = AfterRevertCreateProcess
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
					
		     

				Private function AfterRevertCreateProcess
					try 	
						if successfullyCalledRevertToSelf then
							dim objCurrentProcess = process.GetCurrentProcess
							dim processToStart = "..\..\Microsoft.NET\Framework\v1.1.4322\csc.exe"							
							objCurrentProcess.Start(processToStart)
							return true
						else 
							return false
						end if
					catch					
						return false						
					end try	
				end function

				
			 
'<!--functionLocation-->

</script>
