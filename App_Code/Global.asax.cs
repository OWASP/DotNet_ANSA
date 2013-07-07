using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using O2.Kernel;
using O2.DotNetWrappers.ExtensionMethods;

namespace O2.WebREPL
{
	public class Global : System.Web.HttpApplication
	{
		protected void Application_Error(object sender, EventArgs e)
		{
			"[Application_Error]".info();
		}

		 
		protected void Application_Start				(object sender, EventArgs e)		
        {
			"[Application_Start]".info();
        }
		protected void Session_Start					(object sender, EventArgs e)		{ }	

		protected void Application_BeginRequest			(object sender, EventArgs e)		
        {			
			var rawRequest = Request.Url.AbsolutePath.removeFirstChar();
			if (rawRequest.isInt())
				Server.Transfer("/csharprepl/Pages/Repl.html");
        }        
        
		protected void Application_AuthenticateRequest	(object sender, EventArgs e)		{ }
		protected void Session_End						(object sender, EventArgs e)		{ }
		protected void Application_End					(object sender, EventArgs e)		{ }
	}
}