<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

    
<html>
<head>
	<% Link_to_style_sheet_no_base("..\..\")%>

</head>
<body>

    <% 
    	output_top_page_Banner
'    	output_Documentation_navigation    	
    %>
    <%
    	dim Page_title = "Community"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
  
		Create_background_Div_table("Community","<img src='' border=0 width=0 height=250>"     ,"130","20","160","450","-2") ' Title,main_cell_contents,top,left,width,height,z_index 
    
    	Create_Div_open("160","25","150","245","2")  ' 240","25","290","245","2"
    			
    			
			link_hr("Introduction","default_main.aspx","IFrame") 	

			TR_TD(b_("GotDotNet"))	
				link_newline(li_("ANSA Workspace"),"http://www.gotdotnet.com/Community/Workspaces/Workspace.aspx?id=36ae9a2c-8740-4b52-924e-320edf64fba5","IFrame")						
				link_hr(li_("Main MessageBoard"),"http://www.gotdotnet.com/community/messageboard/messageboard.aspx?id=5990","IFrame")			

				
			TR_TD(b_("Online Discussions"))
				link_newline(li_("'Full Trust'"),"full_trust_issue.aspx","IFrame")
				link_newline(li_("'Asp.Net buffer Overflow'"),"Asp_Net_Buffer_overflow_issue.aspx","IFrame")				
				link_newline(li_("'Win32 API calls' issue"),"Win32_API_calls_issue.aspx","IFrame")	
				link_newline(li_("</a>'RevertToSelf' issue"),"","IFrame")
				link_newline(li_("Temporary Assembly files"),"Temporary_Assembly_files_issue.aspx","IFrame")
				link_newline(li_("</a>'IIS reveils passwords' issue"),"","IFrame")
				link_newline(li_("</a>'Application Issolation' issue"),"","IFrame")				
				link_newline(li_("</a>'WMI' issue"),"","IFrame")				
'				link_newline(li_(""),"","IFrame")

				
'				link_newline(li_("Version History"),"version_history.aspx","IFrame")
				
'    		link_hr("","","IFrame")
'			link_newline(li_(""),"","IFrame")	
				
				
		Create_Div_Close
		
		dim page_to_show
		if request("page")= "" then
			page_to_show = "Default_main.aspx"
		else
			page_to_show = request("page")
		end if
		Create_Iframe("190", "130", "800", "450", "IFrame",page_to_show)
	%>  
<!--	
	<span style="position: absolute; left: 240; top: 140">  
		<iframe name="I1" src="sad" width="750" height="400">
    	</iframe>
    </span>
-->	
	
  </body>
</html>


<script runat="server">

    </script>