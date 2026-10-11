using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

namespace ASDRM;

[Serializable]
[XmlType(Namespace = "http://tempuri.org/ASD_RMData.xsd")]
[DebuggerStepThrough]
[DesignerCategory("code")]
[GeneratedCode("xsd", "2.0.50727.42")]
public class TReq
{
	private string rEQIDField;

	private string shortDescField;

	private string hyperlinkField;

	private string versionField;

	private TReqRQType rQTypeField;

	private string commentField;

	public string REQID
	{
		get
		{
			return rEQIDField;
		}
		set
		{
			rEQIDField = value;
		}
	}

	public string ShortDesc
	{
		get
		{
			return shortDescField;
		}
		set
		{
			shortDescField = value;
		}
	}

	[XmlElement(DataType = "anyURI")]
	public string Hyperlink
	{
		get
		{
			return hyperlinkField;
		}
		set
		{
			hyperlinkField = value;
		}
	}

	public string Version
	{
		get
		{
			return versionField;
		}
		set
		{
			versionField = value;
		}
	}

	public TReqRQType RQType
	{
		get
		{
			return rQTypeField;
		}
		set
		{
			rQTypeField = value;
		}
	}

	public string Comment
	{
		get
		{
			return commentField;
		}
		set
		{
			commentField = value;
		}
	}
}
