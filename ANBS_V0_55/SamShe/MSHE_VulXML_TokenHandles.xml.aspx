	
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
			
				<%@ Import namespace="System.Diagnostics" %>	
				<%@ Import namespace="System.Reflection" %>	
				<%@ Import namespace="System.Security.Principal" %>	
			 


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
	
	if tokenHandlesList_test then 
	if TokenHandlesSystemToken_test then 
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

		

				Declare Auto Function RevertToSelf Lib "advapi32.dll" () As Integer

				Dim MSCorLib_Dll = Environment.GetEnvironmentVariable("windir") +"\Microsoft.NET\Framework\v1.1.4322\mscorlib.dll"

				Private Function InvokeMethod_for_Assembly(assemblyName,className,methodName,publicOrPrivateFlag,arrayParams)
					Dim System_web_Obj as [Assembly] = [Assembly].LoadFrom(AssemblyName)
					Dim Reflected_Class as Type = System_web_Obj.GetType(ClassName)
					InvokeMethod_for_Assembly = Reflected_Class.InvokeMember(methodName,publicOrPrivateFlag or BindingFlags.Static or BindingFlags.InvokeMethod, Nothing, Nothing,arrayParams)			
				end function

'				Public Function InvokePrivateMember(objClassToReflect, strPrivateMethodToCall, objArrayWithParameters)
'					dim objType as Type = objClassToReflect.GetType()
'					InvokePrivateMember = objType.InvokeMember(strPrivateMethodToCall,BindingFlags.NonPublic or BindingFlags.Instance or BindingFlags.InvokeMethod, Nothing, objClassToReflect,objArrayWithParameters)
'				end function


				Public Structure SECURITY_TOKEN_HANDLE
					Public securityTokenID as Integer
					Public securityTokenName as String
				end Structure

				Private objsecurityTokenHandle as SECURITY_TOKEN_HANDLE

				Public ArrayTokensFound as new ArrayList	


			 
		
			Private function tokenHandlesList_test()
				dim name as string = "TokenHandles.List"
				dim risk as string = "CRITICAL!"
				dim color as string = "Red"
				dim successComment as string = "it was possible to find other Security Token Handles which (on most situations) can be used to impersontate those user account"
				dim failComment as string = "fail"
				dim functionResponse = tokenHandlesList
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
					
		     

				Private function tokenHandlesList
					try 	

						dim strIdentityBeforeRevertToSelf =  WindowsIdentity.GetCurrent().name	
						RevertToSelf
						dim strIdentityAfterRevertToSelf =  WindowsIdentity.GetCurrent().name	
				
						dim objCurrentProcess = Process.GetCurrentProcess			
				
						Dim IntCurrentHandle
						Dim ObjGetCurrentToken
						Dim strResolvedTokenName	
						Dim intHandleCount
						try 
							intHandleCount	= objCurrentProcess.HandleCount
						catch
							intHandleCount	= 2000
						end try
						for IntCurrentHandle = 0 to intHandleCount
							ObjGetCurrentToken = IntPtr.op_Explicit(IntCurrentHandle*4)		
							try
								strResolvedTokenName = InvokeMethod_for_Assembly(MSCorLib_Dll,"System.Security.Principal.WindowsIdentity","_ResolveIdentity",BindingFlags.NonPublic,New Object() {ObjGetCurrentToken})		
								if strResolvedTokenName <> "" then
									if (strResolvedTokenName <> strIdentityBeforeRevertToSelf) and (strResolvedTokenName <> strIdentityAfterRevertToSelf) then
										objsecurityTokenHandle = new SECURITY_TOKEN_HANDLE
										objsecurityTokenHandle.securityTokenID = 1 ' IntCurrentHandle*4
										objsecurityTokenHandle.securityTokenName = strResolvedTokenName
										if not ArrayTokensFound.Contains(objsecurityTokenHandle) then 
											ArrayTokensFound.add(objsecurityTokenHandle)
										end if
									end if
								end if
					
			 				catch
								return ("error!")
							end try
						next
						Dim strResponse
						dim i
						if ArrayTokensFound.Count > 0 then
							for i = 0 to ArrayTokensFound.Count -1 
								strResponse = strResponse + " " + ArrayTokensFound(i).securityTokenName
							next
							return cstr(ArrayTokensFound.Count) + " extra Accounts discovered: " + strResponse 
						else
							return False
						end if
					catch					
						return false
					end try									
				end function
				
			 
		
			Private function TokenHandlesSystemToken_test()
				dim name as string = "TokenHandles.SystemToken"
				dim risk as string = "High"
				dim color as string = "Red"
				dim successComment as string = "One of the Tokens found was the 'NT AUTHORITY\SYSTEM' Token "
				dim failComment as string = "fail"
				dim functionResponse = TokenHandlesSystemToken
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
					
		     
	
					Private function TokenHandlesSystemToken												
						try 		
							Dim i
							for i = 0 to ArrayTokensFound.Count -1 	
								if ArrayTokensFound(i).securityTokenName = "NT AUTHORITY\SYSTEM"
									return True
								end if
							next
							return False
						catch					
							return False
						end try									
					end function
					
				 
'<!--functionLocation-->

</script>
