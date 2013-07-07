<%@ Page Language="VB" Src="..\htmlMetaLanguage.vb" Inherits="htmlMetaLanguage"%>
<%@ import Namespace="System.IO" %>
<html>
<head>
	<title>Create Sam'She</title>
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
						<td valign="middle" align="center" width="80%">
							<b><font size=5>Create Sam'She Test Files<font></b>
						</td>
					</tr>
					<tr valign=Top>
						<td colspan="2">
							<br>
							<ul>
								<%
									CreateShaShe	
								%>		
							</ul>
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

<Script runat=server>
	
	Private SamSheAspxfile as String
	Private functionTXTPointer = vbTab + "'<!--functionPointer-->"
	Private functionTXTLocation = "'<!--functionLocation-->" 'vbTab +  "'<!--functionLocation-->"
	Private PageDirectiveTXTLocation = "<!--PageDirectives-->"

	Private functionSourceCodeTemplate 
	Private RootElementOfGlobalVariables
	Private SamSheURL = "SamShe.aspx"
	Private SamSheInternalRootDirectory as String  = server.mapPath("")
	Private XmlFileWithGlobalVariables = SamSheInternalRootDirectory +"\SamSheGlobalVariables.xml"
	Private vulnerablitiesDatabase as String = SamSheInternalRootDirectory + "\..\VulnerabilitesDataBase"
	Private VulFileFilter = "MSHE*"
	Private VulXmlFileFilter = VulFileFilter+".xml"
	Private SamSheExternalRootDirectory as String = "/ANBS/SamShe/"

	Private sub CreateShaShe()
		RootElementOfGlobalVariables = returnRootElementOfXMLFileWithGlobalVariables
		createSamSheTestFiles
	end sub

	private sub createSamSheTestFiles		
		Dim xmlSource  as New System.XML.XMLdocument
		dim vulnerabilityFileToProcess
		dim vulnerabilityFileWithTests
		
		try  ' NOTE: this will only works if the current worker process as Modify (and delete) priviledges in the Sam'she work directory

			dim listOfVulnerabilityTestFileToDelete = Directory.GetFileSystemEntries(SamSheInternalRootDirectory,VulFileFilter)
			dim strFileToDelete
			for each strFileToDelete in listOfVulnerabilityTestFileToDelete
				file.Delete(strFileToDelete )
			next
		catch
		end try

		dim listOfVulnerabilityFileToProcess = Directory.GetFileSystemEntries(vulnerablitiesDatabase,vulXmlFileFilter)


		for each vulnerabilityFileToProcess in listOfVulnerabilityFileToProcess

			Dim objFileInfo = new FileInfo(vulnerabilityFileToProcess)
			xmlSource.Load(objFileInfo.FullName)
			dim rootElement = xmlSource.documentElement

			getPageTemplateSourceCode(rootElement.item("Language").innerText)
			vulnerabilityFileWithTests = objFileInfo.name + rootElement.item("Language").innerText 
			RW("Processing file : '" + objFileInfo.name +"' as '" + vulnerabilityFileWithTests +"'<br>")		

			ProcessVulnerabilityList(rootElement)
			createSamSheTestFile(vulnerabilityFileWithTests)
		next

		RW("<hr>Test Files Sucessfully created, " + link_("click here to execute SAM'SHE", SamSheURL,"_self"))		
	end sub

	Private function returnRootElementOfXMLFileWithGlobalVariables
		Dim xmlSource  as New System.XML.XMLdocument
		Dim objFileInfo = new FileInfo(XmlFileWithGlobalVariables)
		xmlSource.Load(objFileInfo.FullName)
		dim rootElement = xmlSource.documentElement
		returnRootElementOfXMLFileWithGlobalVariables = rootElement
	end function
	

	Private sub getPageTemplateSourceCode(strStriptLanguage)
		strStriptLanguage = "Language"+UCase(strStriptLanguage)

		' Load the PageTemplate
		dim strPageTemplate = RootElementOfGlobalVariables.item(strStriptLanguage).item("Template.Page").innerText		
		dim objFileStreamReader as StreamReader
		objFileStreamReader = File.OpenText(mapPath(strPageTemplate))
		SamSheAspxfile = objFileStreamReader.ReadToEnd()

		' add the Copyright notice
		SamSheAspxfile = RootElementOfGlobalVariables.item("CopyrightNotice").innerText	 + SamSheAspxfile
		objFileStreamReader.close

		' Load the MainFunction script for this language	
		functionSourceCodeTemplate = RootElementOfGlobalVariables.item(strStriptLanguage).item("CallerFunction.SourceCode").innerText
	end sub

	private sub createSamSheTestFile(FileName)
		Dim myFileStream as StreamWriter
		myFileStream = File.CreateText(SamSheInternalRootDirectory + "\" +  FileName)	
		myFileStream.WriteLine(SamSheAspxfile)
		myFileStream.close				
	end sub


	Private Sub ProcessVulnerabilityList(vulnerabilityData)
		
		dim firstLevelVulnerabilities
			try 
			if vulnerabilityData.item("Language").innerText <> "" then 
				firstLevelVulnerabilities = true
				dim pageDirectiveCode = vulnerabilityData.item("Page.Directives").innerText
				dim sharedSourceCode = vulnerabilityData.item("Shared.Source.Code").innerText				
				SamSheAspxfile = replace (SamSheAspxfile, PageDirectiveTXTLocation, pageDirectiveCode)			
				SamSheAspxfile = replace (SamSheAspxfile, functionTxTLocation, vbTab + sharedSourceCode + vbnewline + functionTxTLocation)				
			end if
		catch			
			firstLevelVulnerabilities = false
		end try
		try 			
			Dim nodeData 

			if not firstLevelVulnerabilities then
				dim mainfunctionName = vulnerabilityData.item("Test.Source.Code").GetAttribute("mainFunctionName")
				dim testFunctionName = mainfunctionName + "_test"

				Dim functionSourceCode  = functionSourceCodeTemplate
				functionSourceCode = replace(functionSourceCode, RootElementOfGlobalVariables.item("ptrTo.testFunctionName").innerText, testFunctionName)	
				functionSourceCode = replace(functionSourceCode, RootElementOfGlobalVariables.item("ptrTo.mainFunctionName").innerText, mainFunctionName)	
				functionSourceCode = functionSourceCode + vulnerabilityData.item("Test.Source.Code").innerText
	
				' insert the function's source code and its link
				' the 'if' statement will only allow the exectution of the sub-vulnerabilities if the current one was successfull
				SamSheAspxfile = replace (SamSheAspxfile, functionTxTPointer, vbTab + "if " + TestFunctionName + " then " + vbnewline + functionTxTPointer + vbNewline + vbTab +"end if")
				SamSheAspxfile = replace (SamSheAspxfile, functionTxTLocation, vbTab + functionSourceCode + vbnewline + functionTxTLocation)
				
				'populate the variables with the correct values
				SamSheAspxfile = replace (SamSheAspxfile ,"_name", vulnerabilityData.item("Name").innerText)
				SamSheAspxfile = replace (SamSheAspxfile ,"_risk", vulnerabilityData.item("Risk").innerText)
				SamSheAspxfile = replace (SamSheAspxfile ,"_color", vulnerabilityData.item("Color").innerText)
				SamSheAspxfile = replace (SamSheAspxfile ,"_success.comment", vulnerabilityData.item("Success.Comment").innerText)
				SamSheAspxfile = replace (SamSheAspxfile ,"_fail.comment", vulnerabilityData.item("Fail.Comment").innerText)
			end if

			' process this vulnerability sub-Vulnerabilties
			for each nodeData in vulnerabilityData		
				if nodeData.name = "vulnerability"
					ProcessVulnerabilityList(nodeData)
				end if

			next
			if not firstLevelVulnerabilities then
				SamSheAspxfile = replace (SamSheAspxfile, functionTxTPointer + vbNewline + vbTab +"end if", vbTab +"end if" + vbNewline + functionTxTPointer)
			end if
		catch 
			rw(red_(err.description))
		end try

	end sub
</script>