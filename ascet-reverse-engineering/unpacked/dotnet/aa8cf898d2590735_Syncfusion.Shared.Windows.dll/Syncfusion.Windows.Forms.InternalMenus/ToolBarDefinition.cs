using System;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
public class ToolBarDefinition
{
	private string toolbarName;

	private ToolBarItemStructCollection collection;

	[XmlAttribute("ToolBarName")]
	public string ToolBarName
	{
		get
		{
			if (toolbarName == null || toolbarName == string.Empty)
			{
				toolbarName = "Default ToolBar";
			}
			return toolbarName;
		}
		set
		{
			toolbarName = value;
		}
	}

	public ToolBarItemStructCollection ToolBarItems
	{
		get
		{
			return collection;
		}
		set
		{
			collection = value;
		}
	}

	public ToolBarDefinition()
	{
	}

	public ToolBarDefinition(string tName, ToolBarItemStructCollection tisCollection)
	{
		toolbarName = tName;
		collection = tisCollection;
	}
}
