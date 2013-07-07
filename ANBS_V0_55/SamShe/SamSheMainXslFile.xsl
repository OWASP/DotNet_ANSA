<?xml version="1.0" encoding="UTF-8"?> 

<!--

 Copyright (c) 2002 Free Software Foundation
 developed under the custody of the
 Open Web Application Security Project
 (http://www.owasp.org)
 
 This file is part of the OWASP ANBS (Asp.Net Baseline Security).

 The ANBS is free software; you can redistribute it and/or modify it 
 under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.
  
 This Tool is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 See the GNU General Public License for more details.
 
 The valid license text for this file can be retrieved with
 the call:   java -cp owasp.jar org.owasp.LICENSE
 
 If you are not able to view the LICENSE that way, which should
 always be possible within a valid and working Portal release,
 please write to the Free Software Foundation, Inc.,
 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 to get a copy of the GNU General Public License or to report a
 possible license violation.
 
 Author: Dinis Cruz 
         dinis@ddplus.net
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="contextPath"/>

    <xsl:template match="document">


			<table border="0" width="100%">
				<tr valign="top" height="10">
					<td height="10" colspan="2" valign="top">
						<hr/>
						<b>Number of tests executed: </b><span id="itemCount">0</span><br/>
						<b>Vulnerability test's execution Status </b>#DebugMessage#<br/>				
						#VulnerabilityIframe#
					</td>
				</tr>
				<tr valign="top">
					<td colspan="2"  valign="top">
						<hr/>
						<b><font size="3">
							When tests are completed (i.e. all 'status boxes' are green) click: </font> <br/>
							<ul>
								<li><a href="ExecutiveReport.aspx" target="_Blank">1) here to see the Executive Report</a></li> 
								<li>2) here to see the Technical Report {under construction}</li>
							</ul>
						</b>
						<hr/>
					</td>
				</tr>
				<tr>
					<td colspan="2"><b>Test Results</b>
					</td>
				</tr>
				<tr>
					<td width="100"><font color="white">........</font></td>					
					<td valign="top" width="100%" bgcolor="#F2F2F2">
						<div id="vulnerabilityResults">	 
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><b>XML File with Test Results</b>
					</td>
				</tr>
				<tr>
					<td width="100"><font color="white">........</font></td>					
					<td width="100%" valign	="top" bgcolor="#C0C0C0">					
							<div id="xmlWithVulnerabilityResults"></div>
					</td>
				</tr>
			</table>		
    </xsl:template>
        
</xsl:stylesheet>