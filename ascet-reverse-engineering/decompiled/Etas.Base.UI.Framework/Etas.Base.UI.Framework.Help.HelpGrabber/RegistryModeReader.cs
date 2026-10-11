using System;
using Etas.Base.Shared;
using Microsoft.Win32;

namespace Etas.Base.UI.Framework.Help.HelpGrabber;

public sealed class RegistryModeReader : IModeReader
{
	private string regKey = "HKEY_CURRENT_USER\\Software\\ETAS\\General";

	private string altRegKey = "HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS\\General";

	private string regValue = "HelpMode";

	public HelpModes HelpMode => ReadModeFromRegistry();

	public void SaveHelpMode(HelpModes newMode)
	{
		string text = null;
		SaveHelpMode(newMode switch
		{
			HelpModes.ShowControl => "ShowControl", 
			HelpModes.ShowEditor => "ShowEditor", 
			_ => "ShowHelp", 
		});
	}

	private void SaveHelpMode(string newMode)
	{
		try
		{
			Registry.SetValue(regKey, regValue, newMode);
			Registry.SetValue(altRegKey, regValue, newMode);
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Caught exception while trying to save help mode to registry.");
		}
	}

	private HelpModes ReadModeFromRegistry()
	{
		string text = null;
		try
		{
			text = Registry.GetValue(regKey, regValue, string.Empty) as string;
		}
		catch (Exception exception)
		{
			Logger.LogException(exception, "Exception while getting help mode from Registry key '{0}'", regKey);
		}
		if (string.IsNullOrEmpty(text))
		{
			Logger.LogWarning("Could not get an help mode from Registry key '{0}', trying '{1}'", regKey, altRegKey);
			try
			{
				text = Registry.GetValue(altRegKey, regValue, "") as string;
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2, "Exception while getting help mode from Registry key '{0}'", altRegKey);
			}
		}
		HelpModes result = HelpModes.ShowHelp;
		if (string.IsNullOrEmpty(text))
		{
			Logger.LogWarning("Could not get an help mode from Registry keys '{0}' and '{1}', assuming standard behavior", regKey, altRegKey);
			result = HelpModes.ShowHelp;
		}
		else
		{
			switch (text)
			{
			case "ShowHelp":
				result = HelpModes.ShowHelp;
				break;
			case "ShowControl":
				result = HelpModes.ShowControl;
				break;
			case "ShowEditor":
				result = HelpModes.ShowEditor;
				break;
			default:
				Logger.LogWarning("Invalid help mode found in Registry, assuming standard behavior", regKey, altRegKey);
				break;
			}
		}
		return result;
	}
}
