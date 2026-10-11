using System;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.InternalMenus;

[Serializable]
public class MenuDefinition
{
	private string menuName;

	private MenuItemStructCollection collection;

	[XmlAttribute("MenuName")]
	public string MenuName
	{
		get
		{
			if (menuName == null || menuName == string.Empty)
			{
				menuName = "Default Menu";
			}
			return menuName;
		}
		set
		{
			menuName = value;
		}
	}

	public MenuItemStructCollection MenuItems
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

	public MenuDefinition()
	{
	}

	public MenuDefinition(string mName, MenuItemStructCollection misCollection)
	{
		menuName = mName;
		collection = misCollection;
	}
}
