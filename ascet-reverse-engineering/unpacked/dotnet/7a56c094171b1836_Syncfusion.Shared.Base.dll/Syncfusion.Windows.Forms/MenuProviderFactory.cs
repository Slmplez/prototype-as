using System;
using System.Reflection;

namespace Syncfusion.Windows.Forms;

public class MenuProviderFactory
{
	public static IContextMenuProvider CreateContextMenuProvider()
	{
		IContextMenuProvider contextMenuProvider = null;
		Assembly[] assemblies = AppDomain.CurrentDomain.GetAssemblies();
		Assembly[] array = assemblies;
		foreach (Assembly assembly in array)
		{
			string name = assembly.GetName().Name;
			if (name == "Syncfusion.Tools.Windows")
			{
				contextMenuProvider = (IContextMenuProvider)Activator.CreateInstance(assembly.GetType("Syncfusion.Windows.Forms.Tools.XPMenus.XPMenusProvider"));
			}
		}
		if (contextMenuProvider == null)
		{
			contextMenuProvider = new StandardMenusProvider();
		}
		return contextMenuProvider;
	}
}
