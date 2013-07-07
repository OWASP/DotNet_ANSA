using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for LogEntry
/// </summary>
/// [Serializable]
public class LogEntry
{
	[XmlAttribute] public string IP { get; set; }
	[XmlAttribute] public string UserAgent { get; set; }
	[XmlAttribute] public string HostName { get; set; }
	[XmlAttribute] public string RequestedAt { get; set; }
	[XmlAttribute] public string Cookies { get; set; }	
	[XmlAttribute] public string Headers { get; set; }
	[XmlElement] public string Refferer { get; set; }
	[XmlElement] public string Snippet { get; set; }	
}