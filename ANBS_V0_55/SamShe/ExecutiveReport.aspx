<html>
<head>
	<title>Executive Report</title>
	<link rel="stylesheet" type="text/css" href="../ANBSFiles/style.css">
	<script language="VBScript">
		sub loadAndProcessXmlReport()
			styleFile = "SamSheExecutiveReport.xsl"
			set source = CreateObject("Microsoft.XMLDOM")
			source.async = false
	
			xmlResultsSource = chr(60) +"?xml version=""1.0"" encoding=""UTF-8""?>"
			xmlResultsSource = xmlResultsSource + "<results>"
			xmlResultsSource = xmlResultsSource +  opener.document.all.xmlWithVulnerabilityResults.innertext
			xmlResultsSource = xmlResultsSource + "</results>"
	
			source.loadXML(xmlResultsSource)
			set style = CreateObject("Microsoft.XMLDOM")
			style.async = false
			style.load(styleFile)
			document.all.xsltProcessedReport.innerHtml = source.transformNode(style)
		end sub
	</script>
</head>
<body onload="loadAndProcessXmlReport()">

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
   <tr>
     <td>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	
		<tr>
			<td colspan="3" valign=top background="../images/topBanner_slice.gif" height="78">				
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
							<b><font size=5>SAM'SHE Executive Report<font></b>
						</td>
					</tr>
					<tr valign=Top>
						<td colspan="2">
							<div id="xsltProcessedReport">...</div>	
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