#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Resources;
using System.Xml.Serialization;

namespace Syncfusion.Windows.Forms.InternalMenus;

public class MenuLoader
{
	private static ResourceManager resManager;

	private static FactoryType factoryType;

	private static MenuFactory menuFactory;

	private static string eventActionNamespace;

	private static ToolBarItemStructCollection[] toolbarItemStructCollections;

	private static MenuItemStructCollection[] menuItemStructCollections;

	private static object parentObject;

	internal static object ParentObject
	{
		get
		{
			return parentObject;
		}
		set
		{
			parentObject = value;
		}
	}

	internal static FactoryType CurrentFactoryType
	{
		get
		{
			return factoryType;
		}
		set
		{
			factoryType = value;
		}
	}

	internal static ResourceManager CurrentResourceManager
	{
		get
		{
			return resManager;
		}
		set
		{
			resManager = value;
		}
	}

	internal static MenuFactory CurrentMenuFactory
	{
		get
		{
			return menuFactory;
		}
		set
		{
			menuFactory = value;
		}
	}

	internal static string EventActionNamespace
	{
		get
		{
			return eventActionNamespace;
		}
		set
		{
			eventActionNamespace = value;
		}
	}

	internal static ToolBarItemStructCollection[] CurrentToolBarItemStructCollection
	{
		get
		{
			return toolbarItemStructCollections;
		}
		set
		{
			toolbarItemStructCollections = value;
		}
	}

	internal static MenuItemStructCollection[] CurrentMenuItemStructCollection
	{
		get
		{
			return menuItemStructCollections;
		}
		set
		{
			menuItemStructCollections = value;
		}
	}

	public static MenuFactory CreateFactory(FactoryType defaultFactoryType, string eventActionNamespace, string[] toolbarDefinitionXmlResource, string[] menuDefinitionXmlResource, ResourceManager resManager, object parent)
	{
		ParentObject = parent;
		MenuItemStructCollection[] menuItemStructs = GetMenuItemStructCollections(menuDefinitionXmlResource);
		ToolBarItemStructCollection[] toolBarItemStructCollections = GetToolBarItemStructCollections(toolbarDefinitionXmlResource);
		return CreateFactory(defaultFactoryType, eventActionNamespace, toolBarItemStructCollections, menuItemStructs, resManager, parent);
	}

	internal static MenuFactory CreateFactory(FactoryType defaultFactoryType, string eventActionNamespace, string toolbarItemStructXmlResource, string menuItemStructXmlResource, ResourceManager resManager, object parent)
	{
		ParentObject = parent;
		return CreateFactory(defaultFactoryType, eventActionNamespace, (ToolBarItemStructCollection)SetItemStructCollection(toolbarItemStructXmlResource, typeof(ToolBarItemStructCollection)), (MenuItemStructCollection)SetItemStructCollection(menuItemStructXmlResource, typeof(MenuItemStructCollection)), resManager, parent);
	}

	internal static MenuFactory CreateFactory(FactoryType defaultFactoryType, string eventActionNamespace, Stream toolbarItemCollectionXmlStream, Stream menuItemCollectionXmlStream, ResourceManager resManager, object parent)
	{
		ParentObject = parent;
		return CreateFactory(defaultFactoryType, eventActionNamespace, (ToolBarItemStructCollection)SetItemStructCollection(toolbarItemCollectionXmlStream, typeof(ToolBarItemStructCollection)), (MenuItemStructCollection)SetItemStructCollection(menuItemCollectionXmlStream, typeof(MenuItemStructCollection)), resManager, parent);
	}

	internal static MenuFactory CreateFactory(FactoryType defaultFactoryType, string eventActionNamespace, ToolBarItemStructCollection toolbarItemStructCollection, MenuItemStructCollection menuItemStructCollection, ResourceManager resManager, object parent)
	{
		return CreateFactory(defaultFactoryType, eventActionNamespace, new ToolBarItemStructCollection[1] { toolbarItemStructCollection }, new MenuItemStructCollection[1] { menuItemStructCollection }, resManager, parent);
	}

	internal static MenuFactory CreateFactory(FactoryType defaultFactoryType, string eventActionNamespace, ToolBarItemStructCollection[] toolbarItemStructs, MenuItemStructCollection[] menuItemStructs, ResourceManager resManager, object parent)
	{
		CurrentToolBarItemStructCollection = toolbarItemStructs;
		CurrentMenuItemStructCollection = menuItemStructs;
		EventActionNamespace = eventActionNamespace;
		CurrentResourceManager = resManager;
		ParentObject = parent;
		return CreateFactory(defaultFactoryType);
	}

	private static MenuFactory CreateFactory(FactoryType fType)
	{
		CurrentFactoryType = fType;
		switch (CurrentFactoryType)
		{
		case FactoryType.WinFormsMenuFactory:
			CurrentMenuFactory = new WinFormsMenuFactory();
			break;
		case FactoryType.WhidbeyMenuFactory:
			try
			{
				CurrentMenuFactory = new WhidbeyMenuFactory();
			}
			catch (Exception ex)
			{
				Trace.WriteLine(ex.ToString());
				CreateFactory(FactoryType.WinFormsMenuFactory);
			}
			break;
		default:
			CurrentMenuFactory = new WinFormsMenuFactory();
			break;
		}
		return CurrentMenuFactory;
	}

	private static MenuItemStructCollection[] GetMenuItemStructCollections(string[] menuDefinitionsInParent)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(typeof(MenuDefinition));
		Type type = ParentObject.GetType();
		Stream stream = null;
		ArrayList arrayList = new ArrayList();
		foreach (string name in menuDefinitionsInParent)
		{
			stream = type.Module.Assembly.GetManifestResourceStream(name);
			MenuDefinition menuDefinition = (MenuDefinition)xmlSerializer.Deserialize(stream);
			stream.Close();
			menuDefinition.MenuItems.MenuName = menuDefinition.MenuName;
			arrayList.Add(menuDefinition.MenuItems);
		}
		return (MenuItemStructCollection[])arrayList.ToArray(typeof(MenuItemStructCollection));
	}

	private static ToolBarItemStructCollection[] GetToolBarItemStructCollections(string[] toolbarDefinitionsInParent)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(typeof(ToolBarDefinition));
		Type type = ParentObject.GetType();
		Stream stream = null;
		ArrayList arrayList = new ArrayList();
		foreach (string name in toolbarDefinitionsInParent)
		{
			stream = type.Module.Assembly.GetManifestResourceStream(name);
			ToolBarDefinition toolBarDefinition = (ToolBarDefinition)xmlSerializer.Deserialize(stream);
			stream.Close();
			toolBarDefinition.ToolBarItems.ToolBarName = toolBarDefinition.ToolBarName;
			arrayList.Add(toolBarDefinition.ToolBarItems);
		}
		return (ToolBarItemStructCollection[])arrayList.ToArray(typeof(ToolBarItemStructCollection));
	}

	private static ArrayList SetItemStructCollections(string[] resourcesInParent, Type itemStructCollectionType)
	{
		ArrayList arrayList = new ArrayList();
		foreach (string resourceInParent in resourcesInParent)
		{
			arrayList.Add(SetItemStructCollection(resourceInParent, itemStructCollectionType));
		}
		return arrayList;
	}

	private static object SetItemStructCollection(Stream xmlStream, Type itemStructCollectionType)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(itemStructCollectionType);
		object result = xmlSerializer.Deserialize(xmlStream);
		xmlStream.Close();
		return result;
	}

	private static object SetItemStructCollection(string resourceInParent, Type itemStructCollectionType)
	{
		Type type = ParentObject.GetType();
		Stream manifestResourceStream = type.Module.Assembly.GetManifestResourceStream(resourceInParent);
		return SetItemStructCollection(manifestResourceStream, itemStructCollectionType);
	}
}
