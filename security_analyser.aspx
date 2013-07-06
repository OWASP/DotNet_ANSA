<%@ Page Language="VB" autoeventwireup="false" Src="scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

<%
	If session("Safe_Mode") then
		response.redirect("security_analyser_safe_mode.aspx")
	end if

%>    
    
    
<html>
<head>
	<% Link_to_style_sheet%>
	
<script language=VBScript>	
	function Send_email_to_dinis()
'		msgbox(document.all.results.InnerHTML)

'		document.all.Send_email.Page_contents.value = document.all.results.Innertext
		document.all.Send_email.Page_contents.value = replace(document.all.results.InnerHTML,"<","<_")
		
'		msgbox(document.all.Send_email.Page_contents.value)

'		location="http://127.0.0.1"
		document.all.Send_email.submit()
	end function
    </script>
</head>
<body>

    <%
    	output_top_page_Banner
    	
       	dim Page_title = "Security Analyser"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
%>
	<span id="results">
<%    	
		newline
		newline

		Run_Security_tests("FSO_Enabled,"					+ _ 
						   "FSO_Create_temp_files,"			+ _ 
   						   "WSH_Enabled,"					+ _		
   						   "WSH_execute_cmd,"				+ _
   						   "WMI_list_User_Account,"			+ _
					 	   "WMI_IIS_list_Anon_Name_Pass," 	+ _				   
   						   "WMI_list_Processes,"			+ _   	   					   					   
   						   "WMI_list_Services,"				+ _   						    
   						   "WMI_see_Application_Log,"		+ _   						   
   						   "WMI_see_System_Log,"			+ _   							      						   
   						   "WMI_list_Shares,"				+ _   
   						   "WMI_list_Logical_Disks,"		+ _
   						   "WMI_execute_cmd,"				+ _   
   						   "W32_execute_cmd,"				+ _
   						   "W32_revert_to_self,"			+ _   						   
   						   "FSO_browse_folders"				+ _   						         						   						        						   
   						   "")


'						   "FSO_see_files,"					+ _

	%>  
	</span>
	<p align=center>Security Analysis Complete.</p>
	
		<% 	
		Create_Div_open("90","350","300","25","2")
		rw(h3_(green_("Security Analysis Complete")))
		Create_Div_Close
	%>		

	<% 	
		Create_Div_open("80","695","300","25","2")
	%>		
		<form Method=Post name="Send_email" action="send_email_to_dinis.aspx">	
			<input type=hidden name="Page_contents" value="test">
	<%
			table("3","","")
				tr
					td
						%>			
						<a href="VBScript:Send_email_to_dinis()">Send Results to Dinis Cruz </a>- and help with the development of this tool. This link will open a new webpage where you can see the information that will be sent.
					    <%
					_td
				_tr
		 	_table
	%>		 	
		 </form>		 
	<%
    	Create_Div_Close	
    %>

    
  </body>
</html>

<script runat="server">

    </script>