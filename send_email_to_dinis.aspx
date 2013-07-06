<%@ Page Language="VB" autoeventwireup="false" Src="scripts_archive.vb" Inherits="Scripts_Archive" Debug="true" %>
<%@ import Namespace="System" %>
<%@ import Namespace="System.Web.mail" %>



<%	Set_session_variables  
%>

<html>
<head>
	<% Link_to_style_sheet%>
</head>
<body>
    	<% 
    		output_top_page_Banner
	
	    	dim Page_title = "Send Results to Dinis"
	    	output_top_link(Page_title,request.servervariables("PATH_INFO"))
		%>	
		
		<%	process_params %>
	<form method=post action="send_email_to_dinis.aspx">
		
		<table border=2>
			<tr><td><b></b></td> <td> <input type="Submit" name="action" value="SEND EMAIL NOW" size=30></td></tr>						
			<tr><td><b> From (email):</b> </td> <td> <input type="text" name="from" value="ANSA_Result_from_annonymous_user@ddplus.net" size=50></td></tr>
			<tr><td><b> CC (email):</b> </td> <td> <input type="text" name="CC" value="" size=50></td></tr>			
			<tr><td><b> To (email): </b></td> <td> <input type="text" name="to" value="Dinis.Cruz@ddplus.net" disabled size=30>
			                                       <input type="Hidden" name="to" value="Dinis.Cruz@ddplus.net" size=30></td></tr>	
			<tr><td><b> Subject: </b></td> <td> <input type="text" name="Subject" value="ANSA result" size=100></td></tr>				
			<tr><td valign=top>
					<b> Body: </b>
				</td> 
			    <td>
			    	<TextArea name="Body" cols=100 rows=6>Dear Dinis
			    		
As requested, here are the ANSA results. 			    		
			    		
Anonymous User
					</TextArea> <br>
					Html Code sent:<br>
					<TextArea name=results cols=100 rows=2><% response.write(request.form("Page_Contents"))	%>	</TextArea>
					<% response.write(replace(request.form("Page_Contents"),"<_","<"))	%> &nbsp;</td>
			</tr>				
						
			</tr>	
			<tr><td><b></b></td> <td> <input type="Submit" name="action" value="SEND EMAIL NOW" size=30></td></tr>						
						
		</table>

		<br>
		<ul>			
		
	</form>	
	</ul>

</body>
</html>


<script runat=server>
	sub process_params
		dim error_msg = ""
		if request("action") = "SEND EMAIL NOW" then
'			response.write(request("body"))
'			response.end
            Try		
               Dim Message As System.Web.Mail.MailMessage = New System.Web.Mail.MailMessage()
               Message.BodyFormat = MailFormat.Html
               Message.To = request.form("to")
               Message.CC = request.form("cc")               
               Message.From = request.form("from")
               Message.Subject = request.form("Subject")
               Message.Body = server.htmlencode(request("body")) + "test<hr> " 	+ replace(request.form("results"),"<_","<")
               SmtpMail.SmtpServer = "mail.ddplus.net"
               SmtpMail.Send(Message)                                            
             Catch 
             	 error_msg = err.description
             	  hr
                  rw(red_(b_("The following error occoured: ")))
                  rw(red_(b_(error_msg)))
                  hr
             End Try            
             if error_msg = "" then
   	               rw("<br><p>The email was sent. <br><br>Thanks for your help.</p>")
	               response.end
			 end if	         
		end if
	end sub
</script>