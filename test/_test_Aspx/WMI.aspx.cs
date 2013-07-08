using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management;
using FluentSharp.ExtensionMethods;

public partial class test__test_Aspx_WMI : System.Web.UI.Page
{
    public string SearchQuery { get; set; }
    public string SearchResult { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        SearchQuery = "SELECT Name, CommandLine,Caption, Description, ExecutablePath FROM Win32_Process";
        var searcher = new ManagementObjectSearcher(SearchQuery);
        SearchResult = searcher.Get().toList().str();
    }
}