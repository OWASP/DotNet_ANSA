<%@ Page Language="VB" Src="../htmlMetaLanguage.vb" Inherits="htmlMetaLanguage"%>
<%@ Import namespace="System.IO" %>






<html>
<head>
	<title>Sam'She - Security Analyser for Microsoft's Shared Hosting Environments</title>
	<link rel="stylesheet" type="text/css" href="../ANBSFiles/style.css">
</head>
<body>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
   <tr>
     <td>

	<!--#include file="../ANBSFiles/ANBSMenu.html" -->

	<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
		<tr>
			<td colspan="3" valign=top background="../images/topBanner_slice.gif" height="28">
			

			</td>
		</tr>
		<tr>
			<td valign=top width="50" background="../images/leftBanner.png">
			</td>
			<td valign=top>
				<table border="0" width="100%" height="100%">
					<tr>
						<td valign=top width="100">
							<img src="../images/owasp_logo.png" />
	
						</td>
						<td valign="Middle" align="left" width="80%">
							<b>
								<font size=5>
									Vulnerabilites Database
								</font>
								<Br/>
								<font size=2>
									(XML Files)
								</font>
							</b>
						</td>
					</tr>
					<tr valign=Top>
						<td>
							<br/>	
							<br/>				
							<b>Current XML Vulnerability Files</b> (click to see)
				
							<%
								outputListOfCurrentVulnerabilityFiles
							%>
						</td>		
						<td>
							<iframe src="" width=100% height="400" name="VulXMLFrame">
						</td>



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

<script runat=server>

	Private XmlFileWithGlobalVariables = SamSheInternalRootDirectory +"\SamSheGlobalVariables.xml"
	Private SamSheInternalRootDirectory as String  = server.mapPath("")
	Private vulnerablitiesDatabase as String = SamSheInternalRootDirectory + "\..\VulnerabilitesDataBase"
	Private VulFileFilter = "MSHE*"
	Private VulXmlFileFilter = VulFileFilter+".xml"

	sub outputListOfCurrentVulnerabilityFiles()

		dim listOfVulnerabilityFileToProcess = Directory.GetFileSystemEntries(vulnerablitiesDatabase,vulXmlFileFilter)
		dim vulnerabilityFileToProcess
		UL
		for each vulnerabilityFileToProcess in listOfVulnerabilityFileToProcess
			Dim objFileInfo = new FileInfo(vulnerabilityFileToProcess)
			RW(LI_(link_(objFileInfo.Name,objFileInfo.Name,"VulXMLFrame")))
		next
		_UL

	end sub
</script>