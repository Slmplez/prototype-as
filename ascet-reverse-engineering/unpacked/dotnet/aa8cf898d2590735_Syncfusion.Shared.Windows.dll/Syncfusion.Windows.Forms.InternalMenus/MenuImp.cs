#define TRACE
using System;
using System.Diagnostics;
using System.Reflection;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

public abstract class MenuImp
{
	protected ResourceManager resourceManager;

	public MenuImp()
	{
	}

	public abstract object[] CreateMenus(ResourceManager manager, MenuItemStructCollection[] structCollectionArray);

	protected Shortcut GetShortcutByStringRep(string stringRepresentation)
	{
		object obj = null;
		try
		{
			Type type = Shortcut.F1.GetType();
			obj = type.InvokeMember(stringRepresentation, BindingFlags.GetField, null, Shortcut.F1, new object[0]);
		}
		catch (Exception ex)
		{
			Trace.WriteLine(ex.ToString());
			return Shortcut.None;
		}
		return (Shortcut)obj;
	}
}
