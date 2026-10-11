using System;
using System.Collections;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class ReflectionHelper
{
	public static ArrayList GetTabStyleNames(ArrayList rendererTypes)
	{
		ArrayList arrayList = new ArrayList();
		foreach (Type rendererType in rendererTypes)
		{
			string tabNameFromType = GetTabNameFromType(rendererType);
			if (tabNameFromType != null && tabNameFromType.Length > 0)
			{
				arrayList.Add(tabNameFromType);
			}
		}
		return arrayList;
	}

	public static string GetTabNameFromType(Type tabRenderer)
	{
		string text = string.Empty;
		try
		{
			text = tabRenderer.InvokeMember("TabStyleName", BindingFlags.Static | BindingFlags.Public | BindingFlags.GetProperty, null, null, new object[0]) as string;
		}
		catch (Exception ex)
		{
			MessageBox.Show("Invalid TabStyle: " + ex.Message);
		}
		if (text == string.Empty)
		{
			text = tabRenderer.ToString();
		}
		return text;
	}

	public static Type GetTabTypeFromName(string tabStyleName)
	{
		ArrayList registeredRenderers = TabRendererFactory.GetRegisteredRenderers(forDesignTime: false);
		foreach (Type item in registeredRenderers)
		{
			string text = string.Empty;
			try
			{
				text = item.InvokeMember("TabStyleName", BindingFlags.Static | BindingFlags.Public | BindingFlags.GetProperty, null, null, new object[0]) as string;
			}
			catch
			{
			}
			if (text == tabStyleName)
			{
				return item;
			}
		}
		return null;
	}
}
