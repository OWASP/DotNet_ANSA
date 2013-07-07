using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using FluentSharp.ExtensionMethods;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using O2.DotNetWrappers.DotNet;
using O2.Kernel;
using O2.Kernel.InterfacesBaseImpl;
using System.Text;
using O2.DotNetWrappers.Network;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService 
{

	public static object saving = new Object();
	static WebService()
	{
		//CompileEngine.DefaultReferencedAssemblies.add_If_Not_There("O2_FluentSharp_BCL.dll");  //also add support for this one
	}

    public WebService () 
	{

    }

	[WebMethod(EnableSession = true)]
	public string ExecuteCSharpCode(string snippet)
	{
		LogRequest(snippet);
		"[REPL] executing snippet with size: {0}".info(snippet.size());
		object executionResult = "";
		var compileError = "";
		Action<string> onCompileOk = (msg) => { };
		Action<string> onCompileFail = (msg) => { compileError = msg; };
		var result = snippet.fixCRLF().compileAndExecuteCodeSnippet(onCompileOk, onCompileFail);
		if (compileError.valid())
			executionResult = compileError;
		else
			executionResult = result.notNull() ? result : "";

		if (executionResult is string)
			return (string)executionResult;
		try
		{
			return new JavaScriptSerializer().Serialize(executionResult);
		}
		catch { }

		return executionResult.str();	
    }

	[WebMethod(EnableSession = true)]
	public  string CurrentLogFile_Path()
	{
		return AppDomain.CurrentDomain.BaseDirectory
						.pathCombine("Logs")
						.createDir()
						.pathCombine(DateTime.Now.ToShortDateString().safeFileName() +".xml");
	}

	[WebMethod(EnableSession = true)]
	//[ScriptMethod(UseHttpGet = true)] 
	public List<LogEntry> CurrentLogFile_Contents()
	{
		return CurrentLogFile_Path().load<List<LogEntry>>();
	}

	[WebMethod(EnableSession = true)]
	public LogEntry LogRequest(string snippet)
	{        
		var request = HttpContext.Current.Request;
		var logEntry = new LogEntry()
			{
				IP = request.UserHostAddress.str(),
				HostName = request.UserHostAddress,
				UserAgent = request.UserAgent,
				Cookies = request.Cookies.Keys.toList().Select((key) => "{0} : {1}".format(key,  request.Cookies[key.str()].Value)).asString(),
				Headers = request.Headers.Keys.toList().Select((key) => "{0} : {1}".format(key, request.Headers[key.str()])).asString(),
				Refferer = request.UrlReferrer.str(),
				RequestedAt = DateTime.Now.ToLongTimeString(),
				//Snippet = snippet
			};

		lock (saving)
		{
			var logFile = CurrentLogFile_Path();
			var logs = logFile.fileExists() 
							? logFile.load<List<LogEntry>>()
							: new List<LogEntry>();
			logs.add(logEntry);
			logs.saveAs(logFile);
		}
		return logEntry;
	}

	[WebMethod(EnableSession = true)]
	public int SaveSnippet(string snippet)
	{        
		"[SaveSnippet] saving snippet: {0}".info(snippet);
		var targetDir = AppDomain.CurrentDomain.BaseDirectory.pathCombine("User_Snippets");
		var id = targetDir.files().size() + 1;
		var targetFile  = targetDir.pathCombine("{0}.html".format(id));
		if (targetFile.fileExists())
			"[SaveSnippet] target ID already existed: {0}".format(targetFile);
		else
		{
			snippet.saveAs(targetFile);
			"[SaveSnippet] snippet saved to: {0}".format(targetFile);

			EmailSnippetToO2Support("Script saved on C# WEB REPL with id: " + id, snippet);
			
			return id;
		}
		return -1;				
	}
	

	[WebMethod(EnableSession = true)]	
	public string GetO2Logs()
	{		        
		var logs = (PublicDI.log.LogRedirectionTarget as Logger_DiagnosticsDebug).LogData.str();
		var logData = new StringBuilder();
		foreach (var line in logs.lines())
		{
			var color = "black";
			if (line.starts("DEBUG:"))
				color = "green";
			else if (line.starts("ERROR:"))
				color = "red";
			logData.Append("<span style='color:{0}'>{1}<span><br/>".format(color, Server.HtmlEncode(line)));
		}
		return logData.str();
    }

	
	[WebMethod(EnableSession = true)]
	public void EmailSnippetToO2Support(string subject, string snippet)
	{		
		var text = LogRequest(snippet).serialize(false);
		Mail.sendMail(PublicDI.sEmailHost, "support@o2platform.com", "support@o2platform.com", "",
									  "[WebRepl]" + subject,
									   text, new List<string>(), false);
	}
}
