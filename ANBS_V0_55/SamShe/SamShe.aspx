<%@ Page Language="VB" Src="..\htmlMetaLanguage.vb" Inherits="htmlMetaLanguage"%>
<%@ import Namespace="System.IO" %>


<html>
<head>
	<title>Sam'She - Security Analyser for Microsoft's Shared Hosting Environments</title>
	<link rel="stylesheet" type="text/css" href="../ANBSFiles/style.css">
</head>
<body>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
   <tr>
     <td>

	<!--#include file="../ANBSFiles/ANBSMenu.html" -->

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td colspan="3" valign=top background="../images/topBanner_slice.gif" height="28">
			

			</td>
		</tr>
		<tr>
			<td valign=top width="50" background="../images/leftBanner.png">
			</td>
			<td valign=top>
				<table border="0" width="100%">
					<tr>
						<td valign=top width="100">
							<img src="../images/owasp_logo.png" />
	
						</td>
						<td valign="Middle" align="left" width="80%">
							<b>
								<font size=5>
									SAM'SHE
								</font>
								<Br/>
								<font size=2>
									(Security Analyser for Microsoft's Shared Hosting Environments)
								</font>
							</b>
						</td>
					</tr>
					<tr valign=Top>
						<td colspan="2">					
							<%
								SamShe
							%>
						</td>	
					</tr>
				</table>
			</td>
			<td valign=top width="50" background="../images/leftBanner.png">
			</td>

		</tr>
	</table>
     </td>
   </tr>
</table>

</body>
</html>


<Script runat=server>

	Private SamSheInternalRootDirectory as String  = server.mapPath("")
	Private XmlFileWithGlobalVariables = SamSheInternalRootDirectory +"\SamSheGlobalVariables.xml"
	Private RootElementOfGlobalVariables

	Private sub SamShe()
		RootElementOfGlobalVariables = returnRootElementOfXMLFileWithGlobalVariables
		Session("Debug") = RootElementOfGlobalVariables.item("Debug").innerText
		Output_Xml_transformed_by_XSLT("SamSheMainXmlFile.xml", "SamSheMainXslFile.xsl") 
	end sub

	Private vulnerablitiesDatabase as String = server.mapPath("")   ' Use the local Directory
	Private VulXmlFileFilter = "MSHE*.*"

	private sub Output_Xml_transformed_by_XSLT(path_to_xml, path_to_xslt)
	
		Dim objXML = server.CreateObject("MSXML2.DOMDocument.3.0")
		Dim objXSL = server.CreateObject("MSXML2.DOMDocument.3.0")
		dim strResult


		' Load Page contents and XSLT file

			objXML.Load (mapPath(path_to_xml))						
			objXSL.Load (server.mapPath(path_to_xslt))

		' Transform and Display (contents)

			strResult = objXML.transformNode(objXSL)

		' Add the IFrames with the vulnerabilities to test

			Dim iFrameHtmlCode
			Dim strVulnerabitityIFrame = "#VulnerabilityIframe#"
			Dim strDebugMessage = "#DebugMessage#"
			if Session("Debug") then			
				strResult = replace(strResult, strDebugMessage, red_(" (<b>Debug Mode</b>) "))
			else
				strResult = replace(strResult, strDebugMessage, "")
			end if
			dim listOfVulnerabilityFileToProcess = Directory.GetFileSystemEntries(vulnerablitiesDatabase,vulXmlFileFilter)
			dim vulnerabilityFileToProcess
			dim objFileInfo
			for each vulnerabilityFileToProcess in listOfVulnerabilityFileToProcess
				objFileInfo = new fileInfo(vulnerabilityFileToProcess)
				iFrameHtmlCode = "<iframe width = ""35"" height = ""35"" src=""" + objFileInfo.name + """></iframe>"	
				strResult = replace(strResult,strVulnerabitityIFrame,iFrameHtmlCode + strVulnerabitityIFrame)
			next
			strResult = replace(strResult,strVulnerabitityIFrame,"")

			RW(strResult)

	end sub

	public sub addItemToXmlVulnerabilityResults(item,color,risk,description)
		response.write("<"+"script language=""VBScript"">")				
		response.write("	call addItemToXmlVulnerabilityResults(""" + item + """,""" + color + """,""" + risk + """,""" + description + """)")
		response.write("<"+"/script>")
		response.flush
	end sub

	Private function returnRootElementOfXMLFileWithGlobalVariables
		Dim xmlSource  as New System.XML.XMLdocument
		Dim objFileInfo = new FileInfo(XmlFileWithGlobalVariables)
		xmlSource.Load(objFileInfo.FullName)
		dim rootElement = xmlSource.documentElement
		returnRootElementOfXMLFileWithGlobalVariables = rootElement
	end function


</script>
