	
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
	
	if WSHEnabled_test then 
	if WSHEnabled_CreateProcesses_test then 
	end if
	end if
	'<!--functionPointer-->		
%>

<script language="VBScript">

	 changeThisDocumentBgColor("green")

</script>
</body>
</html>

<%

	public sub addItemToXmlVulnerabilityResults(item,color,risk,description)
	
		response.write("<"+"script language=""VBScript"">")				
		response.write("	call addItemToXmlVulnerabilityResults(""" + item + """,""" + color + """,""" + risk + """,""" + description + """)")
		response.write("<"+"/script>")
		response.flush
	end sub

		
			 
	
	
			Private function WSHEnabled_test()
				name = "ASPCLASSIC.WSH.Enabled"
				risk = "Medium"
				color = "orange"
				successComment = "in ASPCLASSIC It is possible to create the WSH object"
				failComment = "in ASPCLASSIC It is NOT possible to create the WSH object (no more tests will be done)"
				functionResponse = WSHEnabled
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					Call addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					WSHEnabled_test = true
					exit function
				end if
				if session("debug") then
					Call addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				WSHEnabled_test = false
			end function				
		     	

				Private function WSHEnabled
					dim objProcessInfo , winObj, item , Process_properties, Process_user, Process_domain
					on error resume next
						Set winObj = CreateObject("WSCRIPT.SHELL")							
						if err = 0 then 
						WSHEnabled  = true			
					else
						WSHEnabled = false
					end if
				end function

			 
	
	
			Private function WSHEnabled_CreateProcesses_test()
				name = "ASPCLASSIC.WSH.Enabled.Create.Processes"
				risk = "High"
				color = "red"
				successComment = "In ASPCLASSIC it is possible to use WSH to create new processes on the server (i.e. execute commands)"
				failComment = "In ASPCLASSIC it is NOt possible to use the WSH to create new processes on the server"
				functionResponse = WSHEnabled_CreateProcesses
				if cstr(functionResponse)<>"False" then
					if cstr(functionResponse) <> "True" then
						successComment = successComment + " (" + cstr(functionResponse) +")"
					end if					
					Call addItemToXmlVulnerabilityResults(name,color,risk,successComment)
					WSHEnabled_CreateProcesses_test = true
					exit function
				end if
				if session("debug") then
					Call addItemToXmlVulnerabilityResults(name,"black","no",failComment)
				end if
				WSHEnabled_CreateProcesses_test = false
			end function				
		     
					
					Private function WSHEnabled_CreateProcesses
						on error resume next
							cmdToExecute = "w3wp.exe"  ' the base directory for the WSH is 'c:\windows\system32\inetsrv'
							Set winObj = CreateObject("WSCRIPT.SHELL")				
						  	Call winObj.Run (cmdToExecute , 0, True)
						if err=	0 then 
							WSHEnabled_CreateProcesses  = true			
						else
							WSHEnabled_CreateProcesses = false
						end if
					end function

				 
'<!--functionLocation-->

%>
