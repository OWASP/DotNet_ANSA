<%@ Page Language="VB" autoeventwireup="false" Src="scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>

<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>
    <% output_top_page_Banner %>
    <%
    	dim Page_title = "Config"
    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
	%> 
     <ul>
     <%
     	output_environment_variable_value("ComputerName")
     	output_current_Security_Principal
'     	rw("After Login: ")
'		If_logged_in_change_Current_Identity 
'		output_current_Security_Principal
'     	newline
     	output_default_Session_Variables
     	newline
     	
%>

		<table border>
			<% Create_table_row_with_supplied_colors("Black", "White", "center", "Environment Variables, Server Variables") %>

			<tr>
				<td><textArea cols=40 rows=10><% output_all_environment_variables("text") %></textarea></td>
				<td><textArea cols=40 rows=10><% output_all_Server_variables("text") %></textarea></td>
			</tr>
		</table>
<%     	
'     response.write("Environment.machineName") 
'     response.write(Environment.machineName)
     %>
    </ul>
</body>
</html>

<script runat="server">

    ' Insert page code here
    '





</script>