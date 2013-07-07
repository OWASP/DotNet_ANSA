using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Runtime.ConstrainedExecution;
using Microsoft.Win32.SafeHandles;
using System.Runtime.InteropServices;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
     [DllImport("advapi32.dll")]
public static extern int LogonUserA(String lpszUserName, 
	String lpszDomain,
	String lpszPassword,
	int dwLogonType, 
	int dwLogonProvider,
	ref IntPtr phToken);
   
    public static IntPtr phToken;

    public static int Login(string username, string password, string domain)
    {
        
        return LogonUserA(username, domain, password, 0 ,2, ref phToken);
    }
	public Helper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}