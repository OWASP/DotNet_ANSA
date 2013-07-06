Imports System
Imports System.Collections
Imports System.Net.Sockets
Imports System.Threading 
Imports System.Security.Principal
imports System.net
imports System.IO

Imports Microsoft.VisualBasic


public Class Scripts_Archive

        Inherits System.Web.UI.Page


	public sub Set_session_variables()

		' PROJECT SPECIFIC
		
        Session("Version") = "V0_31b"
        Session("Safe_mode") = False
        '			Session("Safe_mode") = true	' uncomment this line to make ANSA run in safe mode
        Session("root_path") = Request.Url.ToString().Replace(Request.Url.AbsolutePath, "") + "/ANSA_" + Session("Version") + "/"
        Session("Project Name") = "ANSA (Asp.Net Security Analyser)"
        Session("www_relative_path") = "/"
        Session("Project_www_path") = "http://" + Request.ServerVariables("SERVER_NAME") + Session("www_relative_path") + "ANSA_" + Session("Version") + "/"
        Session("Security_tests_directory") = "security_tests"
        Session("http_signature") = "[ANSA-response " + Session("Version") + "]"


        ' MISC
        Session("URLs_to_test") = "www.google.com:80:Google website (www.google.com)," + _
             "www.bbc.co.uk:80:BBC website (www.bbc.uk)," + _
             "www.microsoft.uk:80:Microsoft (www.microsoft.com)," + _
             "127.0.0.1:80:Local Computer"

		' NON PROJECT SPECIFIC
	
        Session("StyleSheet_link") = "style.css"
	
	end sub



        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            S E C U R I T Y    A N A L Y S E R 
        '*************
        '***************************************************************************
        '***************************************************************************


	Public sub Create_Results_table_by_classification(tests_to_run,classification,classification_title)

		Dim test, mapped_path
		rw(classification_title)
		table("1' cellpadding='2' cellspacing='0","100%","")  
			Create_table_row_with_supplied_colors("black","white","center","SECURITY TEST,STATUS,SCORE,COMMENTS" + td_force_width_(300) + ",MORE DETAILS"  + td_force_width_(90))
			for each test in tests_to_run
				mapped_path = "http://"+request.servervariables("SERVER_NAME")+left(request.servervariables("SCRIPT_NAME"),instrrev(request.servervariables("SCRIPT_NAME"),"/"))+Session("Security_tests_directory") + "/" + test + "/" + test+ ".aspx?mode=interactive"
				tr	
					try 	
						TD_span("left",classification+test+"_name","")
						TD_span("center",classification+test+"_result","")
						TD_span("center",classification+test+"_Classification","")
						TD_span("left",classification+test+"_comments","")
						TD_span("left",classification+test+"_more_details","")
'						td_link("center","More details",mapped_path ,"_blank")
					catch
					end try
				_tr		
			next
		_table		
		newline
		response.flush
		

	end sub	
	

	Public sub Run_Security_tests(List_of_tests_to_run)
			
	
		Dim tests_to_run , test, mapped_path, web_data, test_result_array, split_value
		Dim test_result, test_classification, test_comments
		tests_to_run = Split(List_of_tests_to_run,",")
		
		Create_Results_table_by_classification(tests_to_run,"Critical",red_(b_(big_("Critical Vulnerabilites"))))
		Create_Results_table_by_classification(tests_to_run,"High",red_(b_(big_("High Vulnerabilites"))))
		Create_Results_table_by_classification(tests_to_run,"Medium",yellow_(b_(big_("Medium Vulnerabilites"))))
		Create_Results_table_by_classification(tests_to_run,"Low",green_(b_(big_("Server Protected to the following Vulnerabilites"))))


		for each test in tests_to_run
            If Not (Left(test, 1) = "-") Then
                mapped_path = Request.Url.ToString().Replace("security_analyser.aspx", "Security_Tests/" + test + "/" + test + ".aspx")
                '     mapped_path = "http://" + Request.ServerVariables("SERVER_NAME") + Left(Request.ServerVariables("SCRIPT_NAME"), InStrRev(Request.ServerVariables("SCRIPT_NAME"), "/")) + Session("Security_tests_directory") + "/" + test + "/" + test + ".aspx"
                web_data = get_web_page(mapped_path + "?mode=test")
                '			response.write(web_data)

                If InStr(web_data, Session("http_signature")) Then
                    test_result_array = Split(web_data, ";")
                    split_value = Split(test_result_array(2), ",")
                    test_result = test_result_array(1)
                    test_classification = test_result_array(2)
                    test_comments = test_result_array(3)
                Else
                    test_result = "Test Error"
                    test_classification = "2,..."  ' Low
                    test_comments = "..."
                End If

                Try
                    Update_field(split_value(1) + test, "name", b_(test))
                    Update_field(split_value(1) + test, "result", test_result)
                    Update_field(split_value(1) + test, "classification", test_classification)
                    Update_field(split_value(1) + test, "comments", test_comments)
                    Update_field(split_value(1) + test, "more_details", link_("More details", mapped_path + "?mode=interactive", "_blank"))
                Catch
                    Update_field(test, "result", "Test Error (array)")
                End Try
            Else
                Update_field("Low" + test, "name", b_(test))
                Update_field("Low" + test, "result", "Test Error")
                Update_field("Low" + test, "more_details", link_("More details", mapped_path + "?mode=interactive", "_blank"))
            End If
			response.flush		

'		   end if
		next

	end sub

	Public function get_web_page(page_to_get)

		Dim myWebRequest = WebRequest.Create(page_to_get)

	    	Try
        		Dim result As WebResponse  = myWebRequest.GetResponse()
        		Dim ReceiveStream As Stream = result.GetResponseStream()

        		Dim read() as Byte = new Byte(512) {}
        		Dim bytes As Integer  = ReceiveStream.Read(read, 0, 512)


        		While (bytes > 0)
          			Dim encode = System.Text.Encoding.GetEncoding("utf-8")
          			get_web_page = get_web_page & encode.GetString(read, 0, bytes)
          			bytes = ReceiveStream.Read(read, 0, 512)
        		End While
    		Catch Exc As Exception
        		get_web_page = "Error retrieving page"
		End Try

	end function



	public sub Update_field(Test_to_update,field,value)
		dim Split_value
		rw("<script language='VBScript'>")
 		rw("document.all." + Test_to_update + "_"+field+".innerHtml = " + chr(34))

		Split_value = split(value,",")
'	 		rw("msgbox(" +chr(34)+ Test_to_update + "_"+field+".innerHtml = ")
		try
			Select case Split_value(0)
				case "0"
					red(b_(split_value(1)))
				case "1"
					yellow(b_(split_value(1)))
				case "2"
					green(b_(split_value(1)))
				case else
					rw(Split_value(0))
			end select
		catch		
			rw(value)
		end try
	        rw(chr(34)+"</script>")
	end sub	


	Public function Test_Createobject(object_to_create,Success_classification,Success_text,fail_classification, fail_text)
		dim fso
		try 
			fso = CreateObject(object_to_create)
			Test_Createobject = OK + success_classification + Success_text '"The FSO (Scripting.FileSystemObject) could be created"		
		catch
			Test_Createobject = OK + fail_classification + fail_text ' "The FSO (Scripting.FileSystemObject) could NOT be created"			
		end try		

	end function

	public function test_if_wmi_function_is_enabled(WMI_function)
		dim objProcessInfo , winObj, item , Process_properties, Process_user, Process_domain

		try 	
			winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
			
			objProcessInfo = winObj.ExecQuery("Select * from " + WMI_Function)					
			for each item in objProcessInfo	
				exit for  ' only need to do it once to know it is ok
			next
			test_if_wmi_function_is_enabled = true
		catch
'			rw(err.description)				
			test_if_wmi_function_is_enabled = false
		end try
	end function



	public function output_wmi_function_data(Wmi_Function,Fields_to_Show)
		dim objProcessInfo , winObj, item , Process_properties, Process_user, Process_domain
		dim fields_split, fields_item,i

		'on error resume next

		table("0","","")
		Create_table_row_with_supplied_colors("black","white","center",Fields_to_Show)

		winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
		objProcessInfo = winObj.ExecQuery("Select "+Fields_to_Show+" from " + Wmi_Function)					
		
		fields_split = split(Fields_to_Show,",")
		for each item in objProcessInfo	
			tr
				Surround_by_TD_and_Bold(item.properties_.item(fields_split(0)).value)
				if Ubound(Fields_split)>0 then
					for i = 1 to ubound(fields_split)
						Surround_by_TD(center_(item.properties_.item(fields_split(i)).value))				
					next
				end if
			_tr
		next
	end function

	public function output_wmi_function_data_instances(Wmi_Function,Fields_to_Show,MaxCount)
		dim objProcessInfo , winObj, item , Process_properties, Process_user, Process_domain
		dim fields_split, fields_item,i,count
		newline
		rw("Showing the first " + cstr(MaxCount) + " Entries")
		newline
		newline
		table("1","","")
		Create_table_row_with_supplied_colors("black","white","center",Fields_to_Show)
		_table
		winObj = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
'		objProcessInfo = winObj.ExecQuery("Select "+Fields_to_Show+" from " + Wmi_Function)					
		objProcessInfo = winObj.InstancesOf(Wmi_Function)					
		
		fields_split = split(Fields_to_Show,",")
		count = 0
		for each item in objProcessInfo		
			count = Count + 1
			table("1","","")
			tr
				Surround_by_TD_and_Bold(item.properties_.item(fields_split(0)).value)
				if Ubound(Fields_split)>0 then
					for i = 1 to ubound(fields_split)
						Surround_by_TD(item.properties_.item(fields_split(i)).value)				
					next
				end if
			_tr
			if count > MaxCount then exit for
		next
	end function


	public Function OK()
		OK = "2,OK;"
	end function	

	public Function Debug()
		Debug = "1,Please debug;"
	end function	
	
	public Function Fail()
		Fail = "0,Test Failed;"
	end function	

	public Function Low()
		Low = "2,Low;"
	end function	

	public Function Medium()
		Medium = "1,Medium;"
	end function	
	
	public Function High()
		High = "0,High;"
	end function	

	public Function Critical()
		Critical = "0,Critical;"
	end function	




        '***************************************************************************
        '                   E N D   of    S E C U R I T Y  A N A L Y S E R  code
        '***************************************************************************


' the folowing scripts and from my default asp.net library

        Const ADS_UF_ACCOUNTDISABLE = 2


        Public Sub New()  ' Class Constructor
        End Sub


        Public function Scripts_test()
            return ("Hello World")
        end function



        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            D E S I G N  :     TOP MENU, NAVIGATION
        '*************
        '***************************************************************************
        '***************************************************************************



        public sub output_top_page_Banner()

           	response.write("<table width=100% cellspacing=1 cellpadding=3><tr>")
'            	response.write("<td width='100'><img src='"+Session("Project Logo")+"'></td>")
            	response.write(" <td bgcolor='#000055' align=center><a href='"+Session("root_path")+"default.aspx'><font size=5 color=white face=arial>"+Session("Project Name")+" " + Session("Version") +"</font></a></td</tr>")
            	response.write("</table>")
		output_topLevel_navigation
			
        end sub

        public sub output_topLevel_navigation()

            	response.write("<table width=100% cellspacing=1 cellpadding=3>")
            	response.write("<tr>")
			output_link_cell("#A090FF",Session("root_path")+"security_analyser.aspx", "Security Analyser")
			output_link_cell("#A090FF", Session("root_path")+"security_tests/run_tests_individualy.aspx","Run tests individually")

			output_link_cell("#A090FF", Session("root_path")+"knowledge\Solutions","Solutions") 
			output_link_cell("#A090FF", Session("root_path")+"knowledge\Asp.Net_Security_Vulnerabilities", "Asp.Net Security Vulnerabilites") 
			output_link_cell("#A090FF", Session("root_path")+"knowledge\community","Community")		
			output_link_cell("#A090FF",Session("root_path")+"Configuration.aspx", "Config")
			
	    	response.write("</tr>")
            	response.write("</table>")
	end sub

'        public sub output_User_Management_navigation()
'
'            	response.write("<table width=50% cellspacing=1 cellpadding=3>")
'            	response.write("<tr>")
'			output_link_cell("#D0D0FF","User_Console.aspx", "Manage Users")
'			output_link_cell("#D0D0FF","Create_User_Account.aspx", "Create New User Account")
'	    	response.write("</tr>")
'            	response.write("</table>")
'			
'        end sub


	Public sub output_link_cell(bgcolor,Link_page, Link_description)
		response.write("<td bgcolor='" + bgcolor + "' align=center>")
		response.write("<a href="+link_page+"><font color=DarkBlue size=2> "+ link_description)
		response.write("</font></a></td>")	
	end sub

	Public sub output_cell(bgcolor,description)
		response.write("<td bgcolor='" + bgcolor + "' align=center>")
		response.write("<font color=DarkBlue size=2> "+ description)
		response.write("</font></td>")	
	end sub
        public sub output_top_link(linkText, linkURL)
		newline
	        rw("<a href='"+ linkURL +"'><font  size=4>" + linkText + "<font></a>")
        end sub

	
	public sub Link_to_style_sheet()
		Set_session_variables
		rw("<base Href='"+Session("Project_www_PAth")+"'>")
		rw("<link rel='stylesheet' type='text/css' href='"+Session("StyleSheet_link")+"'>")
	end sub 


	public sub Link_to_style_sheet_no_base(relative_path)
		Set_session_variables
		rw("<link rel='stylesheet' type='text/css' href='" + relative_path + Session("StyleSheet_link")+"'>")
	end sub 
	
	public sub End_if_in_safe_mode()
		if session("safe_mode")=true then
			rw("<h1>this page is not available in Safe Mode</h1>")
			response.end
		end if
	end sub


        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            A C T I V E  D I R E C T O R Y    S C R I P T S 
        '*************
        '***************************************************************************
        '***************************************************************************


	Public Function Create_User_Account(target_OU,FirstName, LastName,AccountName,password,ProfilePath,HomeDirectory)

		If_logged_in_change_Current_Identity
		
		Dim objOU, objUser, OUPath

		obJOU = getObject("LDAP://" + target_OU)
		
		objUser = obJOU.Create("User", "cn="+cstr(AccountName))
		objUser.Put ("sAMAccountName",cstr(AccountName))
'		objUser.Put ("name","name")	
		if cstr(firstName)<> "" then objUser.Put ("givenName",cstr(firstName))	
		if cstr(lastName)<> "" then objUser.Put ("sn",cstr(lastName))	
		if (cstr(firstName)<> "") or (cstr(lastName)<> "") then objUser.Put ("displayName",Cstr(firstName)+ " " + Cstr(lastName))	
		if cstr(ProfilePath)<> "" then objUser.Put ("ProfilePath",cstr(ProfilePath)+"\"+cstr(AccountName))	
		if cstr(HomeDirectory)<> "" then objUser.Put ("homedirectory",cstr(HomeDirectory))
'		if cstr(lastName)<> "" then objUser.Put ("sn",cstr(lastName))	

		objUser.Setinfo

	end function

	public Sub Delete_User_Account(ADsPath)		

	        dim objOU, Path_to_Users_OU
		Path_to_Users_OU = replace(UCase(ADsPath),UCase("cn="+Get_value_from_AD_Key(ADsPath,"cn"))+",","")
        	objOU = GetObject(Path_to_Users_OU)
	        objOU.delete ("User", "cn="+Get_value_from_AD_Key(ADsPath,"cn"))

	end sub



        Public function Return_RecordSet_with_AD_ObjectInformation(ADPath,ADClass, ADFields)

            Dim objDSE, strDefaultDN,objContainer,objChild, objconnection, objCommand, objRecordSet
            Dim Commandtext, objRecord, objField

            objDSE = GetObject("LDAP://rootDSE")
            strDefaultDN = "CN=Resources," & objDSE.Get("defaultNamingContext")

            objConnection = CreateObject("ADODB.Connection")
            objconnection.Provider = "ADSDSOObject"
            objconnection.Open("ADs Provider")


             Commandtext = "<LDAP://"+ADPath+">;(objectClass="+ADClass+");"+ADFields+";subtree"

            'response.write(server.htmlencode(Commandtext ))

            objRecordSet = objconnection.execute (Commandtext)

            return objRecordSet

        end function


        Public sub Output_Table_with_AD_ObjectInformation(ADPath,ADClass, ADFields)

            dim objRecordSet, objField, item

            objRecordSet = Return_RecordSet_with_AD_ObjectInformation(ADPath,ADClass, ADFields)

            response.write("<table border>")
            objField = split(ADFields,",")
            for each item in objField
                    response.write("<td bgcolor=darkblue align=center><font color=White><b>")
                    response.write(item)
                    response.write("<b></font></td>")
            next

            Do while not objRecordSet.Eof
                response.write("<tr>")
                for each objField in objRecordSet.fields
                    response.write("<td>")
                    response.write(objRecordSet.fields(objField.name).value)
                    response.write("</td>")
                next
                response.write("</tr>")
                objRecordSet.moveNext
            Loop
            response.write("</table>")

        end sub

        public sub Save_value_in_AD_Key(ADPath, KeyName,KeyValue)

            dim objUser, CurrentValue,localKeyName, localKeyValue

            objUser = GetObject(ADPath)
            objUser.put (cstr(KeyName) , cstr(KeyValue))
            objUser.SetInfo

        end sub


        public function Get_value_from_AD_Key(ADPath, KeyName)

            dim objUser, CurrentValue

            objUser = GetObject(ADPath)
            return objUser.get(cstr(KeyName))

        end function

	public sub Delete_value_from_AD_key(ADpath,item_to_delete)	

		const ADS_PROPERTY_CLEAR = 1
            	dim objUser

		objUser = GetObject(ADPath)
            	objUser.putEx (ADS_PROPERTY_CLEAR, item_to_delete,0)
            	objUser.SetInfo
	end sub



        public sub Set_binary_value_in_AD_Key(ADPath, KeyName,Binvalue)

            dim objUser, CurrentValue

            objUser = GetObject(ADPath)
            CurrentValue = objUser.get(KeyName)
            objUser.put (KeyName , (CurrentValue OR Binvalue))
            objUser.SetInfo

        end sub

        public sub Remove_binary_value_from_AD_Key(ADPath, KeyName,Binvalue)

            dim objUser, CurrentValue

            objUser = GetObject(ADPath)
            CurrentValue = objUser.get(KeyName)
            objUser.put (KeyName , (CurrentValue XOR Binvalue))
            objUser.SetInfo

        end sub

        public sub Swap_binary_value_from_AD_Key(ADPath, KeyName,Binvalue)

            dim objUser, CurrentValue

            objUser = GetObject(ADPath)
            CurrentValue = objUser.get(KeyName)
            objUser.put (KeyName , (CurrentValue XOR Binvalue))
            objUser.SetInfo

        end sub

    	sub List_Users_in_AD()
		
		Const ADS_UF_ACCOUNTDISABLE = 2
		dim asd


       		response.write("<table border>")
	        Create_table_row_with_supplied_colors("DarkBlue","white","center","User Name, Status, Profile Path, Home Directory,Last Logon")

	        Dim objRecordSet, objField

	        objRecordSet = Return_RecordSet_with_AD_ObjectInformation("{PUT AD PATH HERE}","User","name,UserAccountControl,ADsPath,profilePath,homeDirectory,lastlogon")


	        Do while not objRecordSet.Eof
        		on error resume next
	            response.write("<tr>")

	            Surround_by_TD_and_Bold(objRecordSet.fields("name").value)
        	    If objRecordSet.fields("name").value = "Administrator"
        	        Surround_by_TD("enabled")
        	    else
        	        if (objRecordSet.fields("UserAccountControl").value AND ADS_UF_ACCOUNTDISABLE)=0 then
        	            Surround_by_TD("enabled (<a href='"+Request.Servervariables("URL")+"?action=Disable_account&ADsPath="+objRecordSet.fields("ADsPath").value+"'>Disable</a>)")
        	        else
        	            Surround_by_TD("<font color=red>Disabled Account</font> (<a href='"+Request.Servervariables("URL")+"?action=Enable_account&ADsPath="+objRecordSet.fields("ADsPath").value+"'>enable</a>)")
        	        end if
        	    end if
	
	            Surround_by_TD(objRecordSet.fields("profilePath").value)
	            Surround_by_TD(objRecordSet.fields("homeDirectory").value)
	
	            Dim oli
	            oli = objRecordSet.fields("lastlogon").value
	            dim lDate as Long = (oli.HighPart * &h100000000) + oli.LowPart
	
	            Surround_by_TD(DateTime.FromFileTime(lDate))
	
	            Surround_by_TD("&nbsp;&nbsp;&nbsp;")
	            Surround_by_TD_with_supplied_colors_and_bold("#D0D0D0","DarkBlue","center","<a href='edit_user_details.aspx?AdsPath="+ objRecordSet.fields("ADsPath").value +"'>Edit '"+objRecordSet.fields("name").value+"' Details</a>")
	            response.write("</tr>")
	            objRecordSet.moveNext
	        Loop
	
	        response.write("</table>")
	
	end sub







        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            N E T W O R K I N G     s C R I P T S
        '*************
        '***************************************************************************
        '***************************************************************************

'        sub Test_if_URL_is_up(URL,port_number)
'                dim Ip_to_scan
'                Response.write("<tr>")
'				try
'					Ip_to_scan =URL
'					response.write("<td>Testing <B>'" + ip_to_scan + "'</b> on port " + str(port_number)+"<td>")
'					response.flush
'					Dim Scan_IP as new TcpClient
'					Scan_IP.sendTimeout=10
''					Scan_IP.receiveTimeout=10
'
'					'Scan_IP.connect(ip_to_scan, 139)
'					'response.write(" 139 is Open, ")
'
'					Scan_IP.connect(ip_to_scan, Port_number)
'					response.write("<td bgcolor='#00FF00' align=center> <b>&nbsp;&nbsp;Connection OK ;&nbsp;&nbsp;</b></td>")
'				Catch e As ArgumentNullException
'				  response.write ("ArgumentNullException: {0}")
'				  response.write (e)
'				Catch e As SocketException
'					response.write ("<td bgcolor='red' align=center><b> no response! </b></td>")
'				  'response.write ("SocketException: {0}")
'				  'response.write (e)
'				end try
'				response.write("</tr>")
'
'	end sub



	function Port_scan(mode,IP_list)
		Dim Split_list, Split_Item
		Split_list = Split(IP_list,",")
		for each Split_item in Split_list
			Port_scan = Port_scan + Create_list_of_IP_with_diferent_ports(Split_item,mode )+","
		next
		Port_scan = left(Port_scan , len(Port_scan )-1)
	end function
	


	function Create_list_of_IP_with_diferent_ports(IP_to_add_ports,mode)
		dim list_of_IP_with_dif_ports, ports_to_Scan,Split_ports,Port_item,i
			Select case mode				
			case "Common Ports"
				ports_to_Scan  = "21,25,80,110,119,135,139,143,161,389,443,445,1433,2000,2001,3389,5631,5632,5800"			
			case "1 to 2000"
				for i = 1 to 2000
					ports_to_Scan  = Ports_to_Scan+ cstr(i) + ","
				next
				ports_to_Scan  = left(ports_to_Scan  ,len(ports_to_Scan  )-1)
			case else
				exit function
		end Select
				
							
		Split_ports = split(ports_to_Scan,",")
		for each port_item in Split_ports
			list_of_IP_with_dif_ports = list_of_IP_with_dif_ports + Ip_to_add_ports + ":" + cstr(port_item) + ","
		next
		Create_list_of_IP_with_diferent_ports = left(list_of_IP_with_dif_ports ,len(list_of_IP_with_dif_ports)-1)

	end function

	

	function Create_list_of_Ips_in_Class_C_with_fixed_port(subnet_to_search,Start_ip, end_ip,Port_number)
		Dim list_of_IP_and_ports_to_Scan ,i 
		for i = Start_ip to end_ip
			list_of_IP_and_ports_to_Scan = list_of_IP_and_ports_to_Scan + subnet_to_search+cstr(i)+":" + cstr(Port_number)+","
			next
		Create_list_of_Ips_in_Class_C_with_fixed_port = left(list_of_IP_and_ports_to_Scan,len(list_of_IP_and_ports_to_Scan)-1)
	end function	


	
	sub Scan_Ip(ip_to_scan,port_to_scan,Unique_identifier)
		Dim Result
		try
			Dim objScan_IP as new TcpClient	
			objScan_IP.connect(ip_to_scan, port_to_scan)
			Result="<font color='green'>OK (" + cstr(port_to_scan) + ")</font>"
		Catch
			Result="<b><font color='red'>No response</font></b>"			
		end try
		Session("r"+Unique_identifier)=Result		 ' r is for result
		
	end sub
		

		
	public sub Thread_Scan_Ip()
		dim Split_values
		Split_values = split(thread.CurrentThread.name,":")		
		Scan_Ip(Split_values(0),Split_values(1),thread.CurrentThread.name)
	end sub

	
	sub Scan_List(List_to_Scan,time_out,pause,hide_non_responsive)	

		' Start Thread

		Dim Split_list,item, Split_item
		Split_list = split(List_to_Scan,",")
		for each item in Split_list 
			Session("t"+item) = New Thread(AddressOf Thread_Scan_Ip) ' t is for thread
			Session("t"+item).name = item 
				Session("t"+item).start()
		next
'		for each item in Split_list 
'			Session("t"+item).start()
'		next

		Thread.sleep(pause)


		' Send results to web browser

		for each item in Split_list 
			Session("t" + item).join(time_out)
			if not hide_non_responsive or instr(Session("r" + item),"OK") then 
				Split_item = split(item,":")
				rw("<b>")
				if Ubound(Split_item)=2 then  ' there is a description
					response.write(Split_item(2))
				else							
					response.write(Split_item(0))
				end if
				rw("</b> : ")
				if Session("r" + item)="" then 
					response.write("<b><font color='red'>Timed Out</font></b>")
				Else
					response.write(Session("r" + item))
				end if
'				response.write(" : ")
'				response.write(Session("t" + item).threadState)			
				response.write("<br>")
				response.flush				
			end if
			Session("t" + item).abort
		next
	
		Session.abandon  ' CLose down the objects
		
	end sub


        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            A D M I N   s C R I P T S
        '*************
        '***************************************************************************
        '***************************************************************************


	Public sub output_default_Session_Variables()
		
		dim item
		response.write("<table border>")
		Create_table_row_with_supplied_colors("black","white","center","Session variable Name,value")
		for each item in Session
			response.write("<tr>")
			Surround_by_TD_and_Bold(item)
			Surround_by_TD(Session(item))
			response.write("</tr>")
		next	
		response.write("<table>")


	End sub

	public sub output_environment_variable_value(variable_Name)		
		response.write("<b> " + variable_Name + ": </b>" + Environment.GetEnvironmentVariable(variable_Name)) 
		newline	
	
	end sub

	public sub output_all_environment_variables(mode)
	      	Dim environmentVariables As IDictionary = Environment.GetEnvironmentVariables()
	      	Dim de As DictionaryEntry
      		For Each de In  environmentVariables
			if mode="HTML" then
        			response.write("<b> " +de.Key + " </b>: " + de.Value + "<br>")
			else
				if mode="text"
					response.write(de.Key + ": " + de.Value + vbnewline+ vbnewline)
				end if		
			end if
	      	Next
	end sub

        Public sub output_all_Server_variables(mode)

            dim item

            for each item in request.servervariables

		if mode="HTML" then
                	response.write("<b>" + item + "</b> : ")
                	response.write(request.servervariables(item))
                	response.write("<br>")
		else
			if mode="text"
				response.write(item + " : " + request.servervariables(item) + vbnewline + vbnewline)
			end if		
		end if

            next

        end sub

	Public sub Sleep(Time_to_sleep)
		thread.sleep(Time_to_sleep)
	end sub

	public function Create_file(file_name,File_Contents)
		try
			dim fs,f,ts	
			fs=Server.CreateObject("Scripting.FileSystemObject")
				f=fs.CreateTextFile(file_name)
					f.write(file_contents)
				f.close
				f=nothing
			fs=nothing
			Create_file = File_contents
		Catch
			Create_file = "Error Creating File"
		end try
	end function

	Public function get_file_contents(file_name)
		try
			dim fs,f,ts	
			fs=Server.CreateObject("Scripting.FileSystemObject")
				f=fs.GetFile(file_name)
					ts=f.OpenAsTextStream(1)
						get_file_contents=ts.ReadAll					
					ts.Close
					ts=nothing
				f=nothing	
			fs=nothing		
		catch 
			get_file_contents = "Error loading file contents"
		end try		
	end Function



        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            S E C U R I T Y    S C R I P T S 
        '*************
        '***************************************************************************
        '***************************************************************************


   	Declare Auto Function LogonUser Lib "advapi32.dll" (ByVal lpszUsername As String, ByVal lpszDomain As String, ByVal lpszPassword As String, ByVal dwLogonType As Integer, ByVal dwLogonProvider As Integer, ByRef phToken As IntPtr) As Integer
   	Declare Auto Function ImpersonateLoggedOnUser Lib "advapi32.dll" (ByVal hToken As IntPtr) As Integer
	Declare Auto Function RevertToSelf Lib "advapi32.dll" () As Integer


	function Login_and_impersonate(username as String, Domain as String, password as String) as boolean
		Dim LogonType as Integer
		Dim LogonProvider as Integer
		Dim Tk as IntPtr
		LogonType = 3 'Interactive	
		LogonProvider = 0 'Default Provider

		if LogonUser(username ,Domain ,password , LogonType, LogonProvider ,Tk) <> 0 then
	 	
			' response.write("login ok<hr>")
		
			  if ImpersonateLoggedonUser(Tk) <> 0 then
				Session("User_Token")=Tk
	
				Login_and_impersonate ="True"
			  else
				Login_and_impersonate ="False"
			  End if
		 	
		else
			Login_and_impersonate ="False"	
			'response.write(LogonUser(username ,Domain ,password , LogonType, LogonProvider ,Tk))						
		end if
	End function

	Sub undoImpersonation()
		RevertToSelf()
	End Sub

	public function Impersonate_User_from_Token(Token)
		Impersonate_User_from_Token = ImpersonateLoggedonUser(Token) 
	end function

	public sub If_logged_in_change_Current_Identity()
		Impersonate_User_from_Token(Session("User_Token"))
	end sub

     	public sub output_current_Security_Principal()
		response.write("<b>The current Security Principal is: </b>")
		response.write(WindowsIdentity.GetCurrent().Name)

		if Does_The_current_Identity_belong_to_this_group("BUILTIN\Administrators") then
			response.write("  (User belongs to the 'Administrators' Security group)")
		end if
 
		newline
	end sub

	public Function Does_The_current_Identity_belong_to_this_group(Group_name)
		dim MyIdentity, MyPrincipal
		
		MyIdentity = WindowsIdentity.GetCurrent()
		MyPrincipal = new WindowsPrincipal(MyIdentity)

		Does_The_current_Identity_belong_to_this_group = myPrincipal.IsInRole(Group_name)
	end Function

	Public sub Check_Administrator_rights()		
		if not Does_The_current_Identity_belong_to_this_group("BUILTIN\Administrators")  then
			Session("Login_Referral_Page") = request.servervariables("PATH_INFO")
			response.redirect(Session("Login_page"))
		end if
	end sub











        '***************************************************************************
        '***************************************************************************
        '*************
        '*************            H T M L  S N I P P E T S
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


	public function red_(contents)
		red_ = "<font color=red>"+contents+"</font>"
	end function

	public function yellow_(contents)
		yellow_ = "<font color='#FF8800'>"+contents+"</font>"
	end function

	public function green_(contents)
		green_ = "<font color=green>"+contents+"</font>"
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


