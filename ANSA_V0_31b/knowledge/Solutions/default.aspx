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
    	dim Page_title = "Solutions"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
  
		Create_background_Div_table("Solutions","<img src='' border=0 width=0 height=250>"     ,"130","20","360","450","-2") ' Title,main_cell_contents,top,left,width,height,z_index 
    
    	Create_Div_open("160","25","350","245","2")  ' 240","25","290","245","2"
    			
    			
			link_hr("Introduction","default_main.aspx","IFrame") 	

			TR_TD(b_(".NET Framework"))	
				link_hr(li_("Win32 issue (Possible solutions)"),"Win32_possible_solutions.aspx","IFrame")			
				
			TR_TD(b_("Security guide for IIS 5.0 (without .NET Framework)"))
				link_newline(li_("Introduction"),"IIS_5_guide_intro.aspx","IFrame")	
				link_newline(li_("Proposed Solution for IIS 5.0"),"Proposed_solution_IIS_5_0.aspx","IFrame")
				link_newline(li_("More details about proposed solution"),"more_details_about_proposed_solution.aspx","IFrame")
				link_newline(li_("DDPlus research Lab - Hardware and Software"),"DDPlus_Research_Lab.aspx","IFrame")
				link_newline(li_("Step by Step installation of w2k server"),"Step_by_step_installation_of_W2k_Server.aspx","IFrame")
				link_newline(li_("IIS 5.0 Vulnerabitlity Assessment using scripts"),"IIS_5_Vulnerability_Assessment_using_Asp_scripts.aspx","IFrame")								
				link_newline(li_("Other Security Recomendations"),"other_security_recomendations.aspx","IFrame")
				link_hr(li_("IIS 5.0 Security References"),"IIS_5_references.aspx","IFrame")

				link_newline(li_("Funcionality to add on next version"),"new_funcionality_to_add_to_next_versions.aspx","IFrame")
				link_newline(li_("References"),"references.aspx","IFrame")
				link_newline(li_("Version History"),"version_history.aspx","IFrame")
				
'    		link_hr("","","IFrame")
'			link_newline(li_(""),"","IFrame")	
				
				
		Create_Div_Close
		
		dim page_to_show
		if request("page")= "" then
			page_to_show = "Default_main.aspx"
		else
			page_to_show = request("page")
		end if
		Create_Iframe("390", "130", "600", "450", "IFrame",page_to_show)
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