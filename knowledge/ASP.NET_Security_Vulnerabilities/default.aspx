<%@ Page Language="VB" autoeventwireup="false" Src="../../scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

    
<html>
<head>
	<% Link_to_style_sheet_no_base("..\..\")%>
	<% 'Link_to_style_sheet()%>

</head>
<body>

    <% 
    	output_top_page_Banner
'    	output_Documentation_navigation    	
    %>
    <%
    	dim Page_title = "Asp.Net Security Vulnerabilities"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
  
		Create_background_Div_table("Topics","<img src='' border=0 width=0 height=250>"     ,"130","20","360","450","-2") ' Title,main_cell_contents,top,left,width,height,z_index 
    
    	Create_Div_open("160","25","350","245","2") 
    			
    	
				link_newline(li_("Introduction"),"default_main.aspx","IFrame") 			
				link_newline(li_("Why create a document exposing ASP.NET vulnerabilities?"),"why_create.aspx","IFrame")
				link_hr(li_("Definition of a secure server"),"secure_Server.aspx","IFrame")
				TR_TD(b_("Asp.Net Vulnerabilities"))	
				link_newline(li_("WSH and FSO"),"wsh_and_FSO.aspx","IFrame")
				link_newline(li_("Authentication and impersonation"),"authentication_and_impersonation.aspx","IFrame")
				link_newline(li_("WMI – Windows Management Instrumentation"),"wmi.aspx","IFrame")
				link_newline(li_("ADSI – WinNT accesses"),"ADSI-WinNT_provider.aspx","IFrame")
				link_newline(li_("ADSI – LDAP accesses"),"ADSI–LDAP_Provider.aspx","IFrame")
				link_newline(li_("Internal Port Scan"),"Internal_Port_Scan.aspx","IFrame")
				link_newline(li_("W32 DLL calls"),"W32_DLL_calls.aspx","IFrame")
				link_hr(li_("RevertToSelf() Problem"),"RevertToSelf.aspx","IFrame")
				TR_TD(b_("Research"))	
				
				link_newline(li_("Vulnerabilities that need a test"),"Vulnerabilites_that_need_a_test.aspx","IFrame")
				link_newline(li_("Other potential attack vector"),"Other_potential_attack_vectors.aspx","IFrame")
				link_newline(li_("Brief examples of attacks based on the FPSE2002 vulnerabilities"),"Brief_examples_of_attacks.aspx","IFrame")
				link_newline(li_("Problems associated with using Windows 2000 server for Shared Hosting"),"Problems_with_windows_2000_in_shared_hosting.aspx","IFrame")
										
						
'				link_newline(li_(""),"","IFrame")
						
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