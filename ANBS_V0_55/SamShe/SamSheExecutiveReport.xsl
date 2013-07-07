<?xml version="1.0" encoding="UTF-8"?> 

<!--

 Copyright (c) 2002 Free Software Foundation
 developed under the custody of the
 Open Web Application Security Project
 (http://www.owasp.org)
 
 This file is part of the OWASP Portal.
 The Portal is free software; you can redistribute it and/or modify it 
 under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.
  
 This Portal is distributed in the hope that it will be useful,
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
 
 Author: Ben Poweski 
         bpoweski@yahoo.com
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="contextPath"/>

    <xsl:template match="results">

	<br/>

	<table align="center" width="70%" border="1" style="border-collapse: collapse" bordercolor="DarkBlue">
	  <tr>
	     <td>
		<table width="90%" align="center">
      		   <tr>		     
			<td width="70"> <b>Date:</b>
			</td>
			<td> #currentDate#
			</td>
			<td width="80"> <b>Time:</b>
			</td>
			<td> #currentTime#
			</td>
		   </tr>
      		   <tr>		     
			<td width="70"> <b>Server IP:</b>
			</td>
			<td> #ServerIP#
			</td>
			<td width="80"> <b>Sam'She #:</b>
			</td>
			<td> #Sam'SheVersion#
			</td>
		   </tr>
      		   <tr>	
			<td colspan="4">
				<hr/>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="4"><b> Total Vulnerabilities Found: <xsl:value-of select="count(/results/result[risk!='no'])" /> </b>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="4">
				<ul>
					<li><font color="red"><b>Critical: <xsl:value-of select="count(/results/result[risk='CRITICAL!'])" /></b></font></li>
					<li><font color="red"><b>High: <xsl:value-of select="count(/results/result[risk='High'])" /></b></font></li>		
					<li><font color="orange"><b>Medium: <xsl:value-of select="count(/results/result[risk='Medium'])" /></b></font></li>
					<li><font color="green"><b>Low: <xsl:value-of select="count(/results/result[risk='Low'])" /></b></font></li>

				</ul>
				
			</td>
		   </tr>
   		</table>
 	    </td>
	  </tr>
	</table>
	<br/>
	<br/>

	<table align="center" width="90%" border="1" style="border-collapse: collapse" bordercolor="DarkBlue">
	  <tr>
	     <td>
		<table width="100%" align="center">      		   
      		   <tr>	
			<td colspan="2">
				<font color="red"><b><xsl:value-of select="count(/results/result[risk='CRITICAL!'])" /> Critical Vulnerabilities</b></font>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="2">
				<br/>
				<ul>
					<xsl:for-each select="result">	
						<xsl:if test="risk='CRITICAL!'">
							<li>
								<b><xsl:value-of select="name" /></b> : <xsl:value-of select="description" />	
								<br/><br/>
							</li>
						</xsl:if>
					</xsl:for-each>		
				</ul>
				
			</td>
		   </tr>
   		</table>

		<table width="100%" align="center">      		   
      		   <tr>	
			<td colspan="2">
				<font color="red"><b><xsl:value-of select="count(/results/result[risk='High'])" /> High Vulnerabilities</b></font>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="2">
				<br/>
				<ul>
					<xsl:for-each select="result">	
						<xsl:if test="risk='High'">
							<li>
								<b><xsl:value-of select="name" /></b> : <xsl:value-of select="description" />	
								<br/><br/>
							</li>
						</xsl:if>
					</xsl:for-each>		
				</ul>
				
			</td>
		   </tr>
   		</table>

		<table width="100%" align="center">      		   
      		   <tr>	
			<td colspan="2">
				<font color="Orange"><b><xsl:value-of select="count(/results/result[risk='Medium'])" /> Medium Vulnerabilities</b></font>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="2">
				<br/>
				<ul>
					<xsl:for-each select="result">	
						<xsl:if test="risk='Medium'">
							<li>
								<b><xsl:value-of select="name" /></b> : <xsl:value-of select="description" />	
								<br/><br/>
							</li>
						</xsl:if>
					</xsl:for-each>		
				</ul>
				
			</td>
		   </tr>
   		</table>

		<table width="100%" align="center">      		   
      		   <tr>	
			<td colspan="2">
				<font color="Green"><b><xsl:value-of select="count(/results/result[risk='Low'])" /> Low Vulnerabilities</b></font>
			</td>
		   </tr>
      		   <tr>	
			<td colspan="2">
				<br/>
				<ul>
					<xsl:for-each select="result">	
						<xsl:if test="risk='Low'">
							<li>
								<b><xsl:value-of select="name" /></b> : <xsl:value-of select="description" />	
								<br/><br/>
							</li>
						</xsl:if>
					</xsl:for-each>		
				</ul>
				
			</td>
		   </tr>
   		</table>
 	    </td>
	  </tr>
	</table>		


<!--	<ul>
		<xsl:apply-templates/>
	</ul>
-->

    </xsl:template>
<!--
    <xsl:template match="result">
	
	<li>
	 <font><xsl:attribute name="color"><xsl:value-of select="color" /></xsl:attribute> <b>#<xsl:value-of select="item" />: <xsl:value-of select="name" /> </b> (<xsl:value-of select="risk" /> risk) </font> <xsl:value-of select="description" />
	</li>

    </xsl:template>
-->

        
</xsl:stylesheet>