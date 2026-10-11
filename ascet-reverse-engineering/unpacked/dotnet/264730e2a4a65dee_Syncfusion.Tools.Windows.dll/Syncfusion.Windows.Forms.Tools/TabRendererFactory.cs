using System;
using System.Collections;
using System.Reflection;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class TabRendererFactory
{
	[DocumentationExclude]
	private static Hashtable tabRenderers = new Hashtable();

	private static Hashtable tabPanelPropertyExtenders = new Hashtable();

	public static void RegisterTabType(string tabStyleName, Type tabType, ITabDefaultProperties tabPanelPropertyExtender)
	{
		if (tabType == null)
		{
			throw new ArgumentNullException("tabType");
		}
		if (tabPanelPropertyExtender == null)
		{
			throw new ArgumentNullException("tabPanelPropertyExtender");
		}
		if (typeof(ITabRenderer).IsAssignableFrom(tabType))
		{
			tabPanelPropertyExtenders[tabStyleName] = tabPanelPropertyExtender;
			tabRenderers[tabStyleName] = tabType;
			return;
		}
		throw new ArgumentException("Cannot Register TabType that does not implement ITabRenderer.");
	}

	public static ITabRenderer CreateNewTabRenderer(string tabStyle, ITabControl tabControl, ITabPanelRenderer panelRenderer)
	{
		Type type = tabRenderers[tabStyle] as Type;
		if (type != null)
		{
			Type[] types = new Type[2]
			{
				typeof(ITabControl),
				typeof(ITabPanelRenderer)
			};
			ConstructorInfo constructor = type.GetConstructor(types);
			if (constructor != null)
			{
				object[] parameters = new object[2] { tabControl, panelRenderer };
				return constructor.Invoke(parameters) as ITabRenderer;
			}
		}
		return null;
	}

	public static ArrayList GetRegisteredRenderers(bool forDesignTime)
	{
		if (forDesignTime)
		{
			ArrayList arrayList = new ArrayList();
			{
				foreach (Type value in tabRenderers.Values)
				{
					string tabNameFromType = ReflectionHelper.GetTabNameFromType(value);
					if (tabPanelPropertyExtenders[tabNameFromType] is ITabDefaultProperties { ShowInDesignMode: not false })
					{
						arrayList.Add(value);
					}
				}
				return arrayList;
			}
		}
		return new ArrayList(tabRenderers.Values);
	}

	public static ITabDefaultProperties GetRegisteredExtender(string tabStyle)
	{
		return tabPanelPropertyExtenders[tabStyle] as ITabDefaultProperties;
	}
}
