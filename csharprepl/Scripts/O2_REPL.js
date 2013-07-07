var O2Platform = {};
O2Platform.JS = {};

O2Platform.JS.defaultCallback = function(data) { alert(data.d) };
O2Platform.JS.defaultErrorHandler = function(data) { alert(data) };

O2Platform.JS.WebServices = '/csharprepl/CSharp_REPL.asmx/';

O2Platform.JS.invokeWebService = function(method, params, handleData, handleError)
	{					
		var url = O2Platform.JS.WebServices + method;				
		if (typeof(handleData) == "undefined") 
		{   
			handleData = O2Platform.JS.defaultCallback;
		}
		if (typeof(handleError) == "undefined")	
		{
			handleError = O2Platform.JS.defaultErrorHandler;		
		}
		$.ajax( {
						type            : "POST"
					,   url             : url
					,	data            : params                				
					,	contentType		: "application/json; charset=utf-8"
					,	dataType		: "json"
					,	success: function (msg) 
							{   													
								O2Platform.JS.lastDataReceived = msg;				
								if(typeof(msg.d) == "undefined")
									handleError("No data received from call to: " + url);
								else
									handleData(msg.d)			
							}
					,	failure: function (msg) 
							{						
								handleError(msg);            
							}
					,	error: function (msg) 
							{
								handleError(msg);					
							}
				});
	}

O2Platform.JS.executeCSharpCode = function(code, handleData, handleError)
	{
		var params = { snippet : code };
		O2Platform.JS.invokeWebService("ExecuteCSharpCode",JSON.stringify(params), handleData,handleError)
	}

O2Platform.JS.saveSnippet = function(code, handleData, handleError)
	{
		var params = { snippet : code };
		O2Platform.JS.invokeWebService("SaveSnippet",JSON.stringify(params), handleData,handleError)
	}

O2Platform.JS.getO2Logs = function(handleData, handleError)
	{
		var params = {};
		O2Platform.JS.invokeWebService("GetO2Logs",JSON.stringify(params), handleData, handleError)
	}
O2Platform.JS.currentLogFile_Contents = function(handleData, handleError)
	{
		var params = {};
		O2Platform.JS.invokeWebService("CurrentLogFile_Contents",JSON.stringify(params), handleData, handleError)
	}

