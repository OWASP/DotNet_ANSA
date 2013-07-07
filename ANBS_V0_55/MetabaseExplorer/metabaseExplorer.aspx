<%@ Page Language="VB" Src="../htmlMetaLanguage.vb" Inherits="htmlMetaLanguage"%>
<%@ Import namespace="System.Security.Principal" %>
<%@ Import namespace="System.Reflection" %>






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
									METABASE EXPLORER
								</font>
								<Br/>
								<font size=2>
									(an ANBS tool)
								</font>
							</b>
						</td>
					</tr>
					<tr valign=Top>
						<td colspan="2">					

<% 
	Revert_To_Self_function

	Dim currentPath = calculateCurrentPath
	Dim metaObj = New IISConfig.Metabase()

	metaObj.OpenLocalMachine()

%>

	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="707">
		<tr>
			<td colspan="6"><b><span lang="en-gb">Current Path: "<%= currentPath%>"</span></b></td>
		</tr>
		<tr>
			<td width="22">&nbsp;</td>
			<td width="22">&nbsp;</td>
			<td width="158">&nbsp;</td>
			<td width="26">&nbsp;</td>
			<td width="22">&nbsp;</td>
			<td width="453">&nbsp;</td>
		</tr>
		<tr>
			<td width="22">&nbsp;</td>
			<td width="180" colspan="2" bgcolor="#000080"><b>
			<font color="#FFFFFF"><span lang="en-gb">&nbsp;SubKeys</span></font></b></td>
			<td width="26">&nbsp;</td>
			<td width="476" colspan="2" bgcolor="#000080"><b>
			<font color="#FFFFFF"><span lang="en-gb">Properties </span></font>
			</b></td>
		</tr>
		<tr>
			<td width="22">&nbsp;</td>
			<td width="22">&nbsp;</td>
			<td width="158" valign=top><span lang="en-gb"><% listSubKeys(currentPath,metaObj)%></span></td>
			<td width="26">&nbsp;</td>
			<td width="22">&nbsp;</td>
			<td width="453" valign=top><span lang="en-gb"><% listProperties(currentPath,metaObj)%></span></td>
		</tr>
	</table>





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

	
<script runat="server">

		function calculateCurrentPath()
		
			if request("Path")<> "" then
				calculateCurrentPath = request("Path")
			else
				calculateCurrentPath="\LM"
			end if
			
		end function


		sub listSubKeys(currentPath,metaObj)
			Try
				response.write("<a href='MetabaseExplorer.aspx?Path="+left(CurrentPath,instrrev(CurrentPath,"\")-1)+"'>..</a>")
				response.write("<br>")

				Dim metaSubKeys = InvokePrivateMemberInstance(metaObj,"GetSubkeys", new Object() {currentPath})
				dim subKeyName
				for each subKeyName in metaSubKeys
					response.write("<a href='MetabaseExplorer.aspx?Path="+CurrentPath+"\"+subKeyName+"'>"+subKeyName+"</a>")
					response.write("<br>")
				next
			catch
				response.write("<font color=red>Access Denied</font>") ' "+err.description+ "")
			end try			
		end sub

		sub listProperties(currentPath,metaObj)
			Try
				response.write("<br>")				

				Dim metaProperties = InvokePrivateMemberInstance(metaObj,"GetAllData", new Object() {currentPath,False})

				
				dim metaProperty
				for each metaProperty in metaProperties
					response.write("<b>"+metaProperty.name+"</b> : ")
					response.write(metaProperty.data)					
					response.write("<br>")
				next
			catch
				response.write("<font color=red>Access Denied</font>") ' "+err.description+ "")
			end try			
		end sub

	    Sub fetchDetailsFromMetabase()


	        Dim metaTest = New IISConfig.Metabase()
	        Dim webSiteNumber, webSiteData, item
	        Dim webSitePath as string
	        Dim count = 0

	        metaTest.OpenLocalMachine()

	        Dim metaSubKeys = metaTest.GetSubKeys("\LM\W3SVC")   ' This list will give me the list of the existent websites

	        For Each webSiteNumber In metaSubKeys 
	            Response.Write("<hr>")
	            webSitePath = "\LM\W3SVC\"+cstr(websiteNumber)+"\root"        
				Response.Write("<b><big>#" + cstr(count) + ": " + webSitePath + "</big></b><br><ul>")

	            try 
			        webSiteData = metaTest.GetAllData(webSitePath, False)
	
			        For Each item In webSiteData
			            Response.Write("<b>"+item.name+"</b>")
			            Response.Write(" : ")
			            Response.Write(item.data)
			            Response.Write("<br>")
			        Next
				catch
					response.write("<font color=red>Error</font> " + err.description)
				end try
				response.write("</ul>")
				response.flush
	            count = count + 1
	            
	          	if count > 10 then response.end
	        Next
       end sub

    Declare Auto Function RevertToSelf Lib "advapi32.dll" () As Integer

    Public Function Revert_To_Self_function()
        Dim before, after
        before = WindowsIdentity.GetCurrent().Name
        RevertToSelf()
        after = WindowsIdentity.GetCurrent().Name


        If before <> after Then
            Revert_To_Self_function = "<b> Changing the Application pool Identity from '" + before + "' to '" + after + "' </b>"
        Else
            Revert_To_Self_function = " It was not possible to change the current application account (currently '" + before + "')"
        End If


    End Function


	Public Function InvokePrivateMemberInstance(objClassToReflect, strPrivateMethodToCall, objArrayWithParameters)
		try
			dim objType as Type = objClassToReflect.GetType()
			InvokePrivateMemberInstance = objType.InvokeMember(strPrivateMethodToCall,BindingFlags.NonPublic or BindingFlags.Instance or BindingFlags.InvokeMethod, Nothing, objClassToReflect,objArrayWithParameters)
		catch
			InvokePrivateMemberInstance = Nothing
		end try
	end function

</script></p>