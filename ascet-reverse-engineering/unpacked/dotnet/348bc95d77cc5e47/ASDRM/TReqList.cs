using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

namespace ASDRM;

[Serializable]
[DebuggerStepThrough]
[DesignerCategory("code")]
[XmlType(Namespace = "http://tempuri.org/ASD_RMData.xsd")]
[GeneratedCode("xsd", "2.0.50727.42")]
public class TReqList
{
	private TReq[] reqsField;

	private DateTime lastUpdateField;

	private string customerField;

	[XmlElement("Reqs")]
	public TReq[] Reqs
	{
		get
		{
			return reqsField;
		}
		set
		{
			reqsField = value;
		}
	}

	public DateTime LastUpdate
	{
		get
		{
			return lastUpdateField;
		}
		set
		{
			lastUpdateField = value;
		}
	}

	[XmlAttribute]
	public string customer
	{
		get
		{
			return customerField;
		}
		set
		{
			customerField = value;
		}
	}
}
