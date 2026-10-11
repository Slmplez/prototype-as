using System;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using Etas.Base.Shared;
using Microsoft.Win32;

namespace Etas.Base.UI.Framework.Help.HelpCore;

public sealed class RegistryEditorLocator : IEditorLocator
{
	private readonly string regKey = "HKEY_CURRENT_USER\\Software\\ETAS\\General";

	private readonly string altRegKey = "HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS\\General";

	private readonly string regValue = "OnlineHelpDeveloper";

	private IOnlineHelpDeveloperUI cachedUI;

	public IOnlineHelpDeveloperUI Editor
	{
		get
		{
			IOnlineHelpDeveloperUI onlineHelpDeveloperUI = cachedUI;
			string directoryName = Path.GetDirectoryName(Assembly.GetAssembly(typeof(RegistryEditorLocator)).Location);
			string text = Path.Combine(directoryName, "Etas.Base.UI.OnlineHelpDeveloperEditorPlugin.dll");
			if (onlineHelpDeveloperUI == null)
			{
				if (string.IsNullOrEmpty(text))
				{
					Logger.LogError("Failed to read OnlineHelpDeveloper path from registry keys {0} and {1}", regKey, altRegKey);
				}
				else
				{
					onlineHelpDeveloperUI = LoadUI(text);
				}
			}
			if (onlineHelpDeveloperUI == null)
			{
				Logger.LogError("Failed to load assembly containing the IOnlineHelpDeveloper. Returning null now search Path: " + text);
				MessageBox.Show("Online Help Editor Not Installed");
			}
			cachedUI = onlineHelpDeveloperUI;
			return onlineHelpDeveloperUI;
		}
	}

	private string ReadPath()
	{
		string empty = string.Empty;
		try
		{
			empty = Registry.GetValue(regKey, regValue, string.Empty) as string;
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while reading assembly path from Registry key {0}", regKey);
			empty = string.Empty;
		}
		if (string.IsNullOrEmpty(empty))
		{
			try
			{
				empty = Registry.GetValue(altRegKey, regValue, string.Empty) as string;
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2, "Caught exception while reading assembly path from Registry key {0}. Returning string.Empty now", altRegKey);
				empty = string.Empty;
			}
		}
		return empty;
	}

	private IOnlineHelpDeveloperUI LoadUI(string pathToAssembly)
	{
		PluginLoader<IOnlineHelpDeveloperUI> pluginLoader = new PluginLoader<IOnlineHelpDeveloperUI>();
		return pluginLoader.LoadFromAssembly(pathToAssembly);
	}
}
