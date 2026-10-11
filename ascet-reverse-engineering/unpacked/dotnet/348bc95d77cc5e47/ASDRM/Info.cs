using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

namespace ASDRM;

[Serializable]
[DebuggerStepThrough]
[XmlType(AnonymousType = true)]
[DesignerCategory("code")]
[XmlRoot(Namespace = "http://tempuri.org/ASD_RMData.xsd", IsNullable = false)]
[GeneratedCode("xsd", "2.0.50727.42")]
public class Info
{
	private string nameField;

	private string oIDField;

	private string revField;

	private TReqList reqField;

	private string sCMDBField;

	private bool readOnlyField;

	public string Name
	{
		get
		{
			return nameField;
		}
		set
		{
			nameField = value;
		}
	}

	public string OID
	{
		get
		{
			return oIDField;
		}
		set
		{
			oIDField = value;
		}
	}

	public string Rev
	{
		get
		{
			return revField;
		}
		set
		{
			revField = value;
		}
	}

	public TReqList Req
	{
		get
		{
			return reqField;
		}
		set
		{
			reqField = value;
		}
	}

	public string SCMDB
	{
		get
		{
			return sCMDBField;
		}
		set
		{
			sCMDBField = value;
		}
	}

	public bool ReadOnly
	{
		get
		{
			return readOnlyField;
		}
		set
		{
			readOnlyField = value;
		}
	}
}
