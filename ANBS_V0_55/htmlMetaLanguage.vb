Imports System
Imports System.Collections
Imports System.Net.Sockets
Imports System.Threading 
Imports System.Security.Principal
imports System.net
imports System.IO

Imports Microsoft.VisualBasic


public Class htmlMetaLanguage

        Inherits System.Web.UI.Page


	public sub Set_session_variables()


		' THIS NEEDS TO BE MOVE TO THE WEB.CONFIG FILE

		' PROJECT SPECIFIC
		
'			Session("Version") = "V0_31b"
'			Session("Safe_mode") = False	
''			Session("Safe_mode") = true	' uncomment this line to make ANSA run in safe mode
'			Session("root_path") = "/ANsA_"+ Session("Version") + "/"
'			Session("Project Name") = "ANSA (Asp.Net Security Analyser)" 
'			Session("www_relative_path") ="/"
'			Session("Project_www_path") = "http://"+request.servervariables("SERVER_NAME")+Session("www_relative_path")+"ANSA_"+Session("Version") +"/"
'			Session("Security_tests_directory") = "security_tests" 
'			Session("http_signature") = "[ANSA-response "+Session("Version")+"]"
			
	
		' MISC
'			Session("URLs_to_test") = "www.google.com:80:Google website (www.google.com)," + _
'							   "www.bbc.co.uk:80:BBC website (www.bbc.uk)," + _
'							   "www.microsoft.uk:80:Microsoft (www.microsoft.com)," + _
'							   "127.0.0.1:80:Local Computer"		

		' NON PROJECT SPECIFIC
	
'			Session("StyleSheet_link") = "style.css"
	
	end sub



        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            H T M L  M E T A L A N G U A G E 
        '*************
        '***************************************************************************
        '***************************************************************************

	
	public sub Newline
		response.write("<BR>")
	end sub
	
	public sub TextNewline
		response.write(vbnewline)
	end sub

	public sub rw(text_to_print)	  ' Response.write
		response.write(text_to_print)
	end sub

	public sub rw_b(text_to_print)
		rw("<b>"+text_to_print+"</b>")
	end sub

	public sub hr()
		rw("<hr>")
	end sub

	public sub ul()
		rw("<ul>")
	end sub

	public sub _ul()
		rw("</ul>")
	end sub

	public sub table(border_size,width,height)
		rw("<table border='"+cstr(border_size)+"' width ='"+cstr(width)+"' height='"+cstr(height)+"'>")
	end sub

	public sub _table()
		rw("</table>")
	end sub

	public sub tr()
		rw("<tr>")
	end sub

	public sub _tr()
		rw("</tr>")
	end sub

	public sub td()
		rw("<td>")
	end sub

	public sub _td()
		rw("</td>")
	end sub

	public sub td_span(align,name,contents)
		rw("<td align="+align+"><span id='"+name+"'>"+ contents + "</span></td>")
	end sub

	Public sub td_link(align,title,link,target)
		rw("<td align="+align+"><a href='"+link+"' target='"+target+"'>"+title+"</a></td>")
	end sub

	Public sub link(title,link,target)
		rw("<a href='"+link+"' target='"+target+"'>"+title+"</a>")
	end sub

	Public sub link_hr(title,link,target)
		rw("<a href='"+link+"' target='"+target+"'>"+title+"</a>")
		hr
	end sub

	Public sub link_newline(title,link,target)
		rw("<a href='"+link+"' target='"+target+"'>"+title+"</a>")
		newline
	end sub
	
	public sub empty_Cell(ColSpan)
		rw("<td colspan='"+cstr(colspan)+"'></td>")
	end sub

	public sub empty_row(ColSpan)
		rw("<tr><td colspan='"+cstr(colspan)+"'></td></tr>")
	end sub

       	Public sub Create_table_row_with_supplied_colors(bgColor, fontColor, alignValue, rowItems)
            dim rowItem

            rowItems = split(rowItems,",")
            response.write("<tr bgcolor="+bgcolor+">")
            for each rowItem in RowItems
                response.write("<td align="+alignValue+"><font color="+fontColor+"><b>"+rowItem +"<b></font></td>")
            next
            response.write("</tr>")

        end sub

        Public sub TR_TD(cellContents)
            response.write("<td>")
            response.write(cellContents)
            response.write("</td>")
        end sub
	

        Public sub Surround_by_TD(cellContents)
            response.write("<td>")
            response.write(cellContents)
            response.write("</td>")
        end sub

        Public sub Surround_by_TD_and_Bold(cellContents)
            response.write("<td><b>")
            response.write(cellContents)
            response.write("</b></td>")
        end sub

        Public sub Surround_by_TD_with_supplied_colors_and_bold(bgColor, fontColor, alignValue, cellContents)
            response.write("<td align="+alignValue+" bgcolor="+bgcolor+" ><font color="+fontColor+"><b>")
            response.write(cellContents)
            response.write("</b></font></td>")
        end sub



	Public sub Create_background_Div_table(title,main_cell_contents,top,left,width,height,z_index)
		response.write("<div style='position: absolute; top: " + top + "; left: " + left + "; width: "+width+"; height: "+height+"; z-index: "+z_index+"'>")
		response.write("  <table border='1' cellpadding='0' cellspacing='0' style='border-collapse: collapse' bordercolor='#111111' width='100%' id='AutoNumber1' height='100%'>")
		response.write("    <tr heigth=20>")
		response.write("      <td bgcolor='black' align=center><font color='white'><b>"+ title +"</b></font></td>")
		response.write("    </tr>")
		response.write("    <tr>")
		response.write("      <td>"+main_Cell_contents+"</td>")
		response.write("    </tr>")
		response.write("  </table>")
		response.write("</div>")
	end sub

	Public sub Create_Div_open(top,left,width,height,z_index)
		response.write("<div style='position: absolute; top: " + top + "; left: " + left + "; width: "+width+"; height: "+height+"; z-index: "+z_index+"'>")
	end sub


	Public sub Create_Div_close()
		response.write("</div>")
	end sub

	public sub Create_Iframe(left, top, width, height, name,src)
		rw("<span style='position: absolute; left: " + left+ "; top: " +top + "'>")  
		rw("	<iframe name='" + name+ "' src='" + src+ "' width='" + cstr(width) + "' height='" + cstr(height) + "'></iframe>")
    		rw("</span>")
	end sub

	public sub Create_Iframe_relative(width, height, name,src)
		rw("	<iframe name='" + name+ "' src='" + src+ "' width='" + cstr(width) + "' height='" + cstr(height) + "'></iframe>")
	end sub

	public sub return_100_percent_table()
		rw("<table border width='100%' height='100%'><tr><td>sdf</td></tr></table>")
	end sub

	public sub font_size(size)
		rw("<font size="+size+">")
	end sub

	public sub end_font()
		rw("</font>")
	end sub

	public sub red(contents)
		rw("<font color=red>"+contents+"</font>")
	end sub

	public sub yellow(contents)
		rw("<font color='#FF8800'>"+contents+"</font>")
	end sub

	public sub green(contents)
		rw("<font color=green>"+contents+"</font>")
	end sub


	public sub print_var(var_name, var_value,var_description)
		if var_description<> "" Then
			rw(b_(var_name)+" : " + var_value + i_("  ("+var_description+")"))
		else
			rw(b_(var_name)+" : " + var_value)
		end if
		newline
	end sub

' Functions

	public function br_()
		br_ = "<br>"
	end function

	public function b_(contents)
		b_ = "<b>"+ contents + "</b>"
	end function

	public function i_(contents)
		i_ = "<i>"+ contents + "</i>"
	end function

	public function li_(contents)
		li_ = "<li>"+ contents + "</li>"
	end function

	public function h1_(contents)
		h1_ = "<h1>"+ contents + "</h1>"
	end function

	public function h2_(contents)
		h2_ = "<h2>"+ contents + "</h2>"
	end function

	public function h3_(contents)
		h3_ = "<h3>"+ contents + "</h3>"
	end function

	public function big_(contents)
		big_ = "<big>"+ contents + "</big>"
	end function

	public function center_(contents)
		center_ = "<center>"+ cstr(contents) + "</center>"
	end function


	public function td_force_width_(width)
		td_force_width_ = "<br><img src='' height=0 width=" + cstr(width) +  " border=0>"
	end function

	public function black_(contents)
		black_ = "<font color='black'>" + contents +"</font>"
	end function

	public function red_(contents)
		red_ = "<font color='red'>" + contents +"</font>"
	end function

	public function yellow_(contents)
		yellow_ = "<font color='#FF8800'>"+contents+"</font>"
	end function

	public function green_(contents)
		green_ = "<font color='green'>"+contents+"</font>"
	end function

	Public function link_(title,link,target)
		link_ = "<a href='"+link+"' target='"+target+"'>"+title+"</a>"
	end function










        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            J A V A S C R I P T     S C R I P T S 
        '*************
        '***************************************************************************
        '***************************************************************************






	Public sub Redirect_to_this_page_after_X_milliseconds(page,time_to_wait)
		rw("<script language=JavaScript>"+vbnewline)
		rw("	Id = window.setTimeout("+chr(34)+"reload_page();"+chr(34)+","+time_to_wait+");  // comment to stop reloading"+vbnewline)
		rw("	function reload_page()"+vbnewline)
		rw("	{"+vbnewline)
		rw("		 document.location.href="+chr(34)+page+chr(34)+vbnewline)
		rw("	}"+vbnewline)
		rw("</script>")
	end sub




end Class


