<%@ Page Language="VB" autoeventwireup="false" Src="../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

    
<html>
<head>
	<% Link_to_style_sheet_no_base("..\")%>

</head>
<body>

    <% 
    	output_top_page_Banner
'    	output_Documentation_navigation    	
    %>
    <%
    	dim Page_title = "Run Tests Individually"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
  
		Create_background_Div_table("List of tests","<img src='' border=0 width=0 height=250>"     ,"130","20","360","450","-2") ' Title,main_cell_contents,top,left,width,height,z_index 
    
    	Create_Div_open("160","25","550","245","2")  ' 240","25","290","245","2"
    			
    			
		link_newline(li_("FSO_browse_folders"),"FSO_browse_folders/FSO_browse_folders.aspx","IFrame")			
		link_newline(li_("FSO_create_temp_files"),"FSO_create_temp_files/FSO_create_temp_files.aspx","IFrame")			
		link_newline(li_("FSO_Enabled"),"FSO_Enabled/FSO_Enabled.aspx","IFrame")			
		link_newline(li_("W32_execute_cmd"),"W32_execute_cmd/W32_execute_cmd.aspx","IFrame")			
		link_newline(li_("W32_revert_to_self"),"W32_revert_to_self/W32_revert_to_self.aspx","IFrame")			
		link_newline(li_("WMI_execute_cmd"),"WMI_execute_cmd/WMI_execute_cmd.aspx","IFrame")			
		link_newline(li_("WMI_IIS_list_Anon_Name_Pass"),"WMI_IIS_list_Anon_Name_Pass/WMI_IIS_list_Anon_Name_Pass.aspx","IFrame")			
		link_newline(li_("WMI_list_Logical_Disks"),"WMI_list_Logical_Disks/WMI_list_Logical_Disks.aspx","IFrame")			
		link_newline(li_("WMI_list_processes"),"WMI_list_processes/WMI_list_processes.aspx","IFrame")			
		link_newline(li_("WMI_list_Services"),"WMI_list_Services/WMI_list_Services.aspx","IFrame")			
		link_newline(li_("WMI_list_Shares"),"WMI_list_Shares/WMI_list_Shares.aspx","IFrame")			
		link_newline(li_("WMI_list_User_Account"),"WMI_list_User_Account/WMI_list_User_Account.aspx","IFrame")			
		link_newline(li_("WMI_see_Application_Log"),"WMI_see_Application_Log/WMI_see_Application_Log.aspx","IFrame")		
		link_newline(li_("WMI_see_System_Log"),"WMI_see_System_Log/WMI_see_System_Log.aspx","IFrame")		
		link_newline(li_("WSH_Enabled"),"WSH_Enabled/WSH_Enabled.aspx","IFrame")		
		link_newline(li_("WSH_execute_cmd"),"WSH_execute_cmd/WSH_execute_cmd.aspx","IFrame")								

										
						
						
		Create_Div_Close
		
		Create_Iframe("390", "130", "600", "450", "IFrame","run_tests_individualy_main.aspx")
	%>  

  </body>
</html>


<script runat="server">

    </script>