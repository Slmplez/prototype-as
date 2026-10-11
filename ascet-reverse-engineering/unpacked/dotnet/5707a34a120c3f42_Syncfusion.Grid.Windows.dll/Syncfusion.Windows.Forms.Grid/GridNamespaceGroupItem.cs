using System;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public struct GridNamespaceGroupItem
{
	[XmlAttribute("Name")]
	public string Name;

	public string Value;

	public GridNamespaceGroupItem(string name, string value)
	{
		Name = name;
		Value = value;
	}
}
