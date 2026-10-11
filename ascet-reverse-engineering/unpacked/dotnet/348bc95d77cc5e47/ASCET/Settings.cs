using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

namespace ASCET;

[Serializable]
[XmlType(AnonymousType = true)]
[XmlRoot(Namespace = "", IsNullable = false)]
[DebuggerStepThrough]
[DesignerCategory("code")]
[GeneratedCode("xsd", "2.0.50727.42")]
public class Settings
{
	private GroupType[] groupField;

	[XmlElement("Group")]
	public GroupType[] Group
	{
		get
		{
			return groupField;
		}
		set
		{
			groupField = value;
		}
	}
}
