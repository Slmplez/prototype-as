using System;
using System.Windows.Forms;
using Etas.Base.Shared;
using Microsoft.Win32;

namespace Etas.Base.UI.Framework;

public static class ToolTipExtensions
{
	public static bool ToolTipsDisabled { get; private set; }

	static ToolTipExtensions()
	{
		try
		{
			ToolTipsDisabled = Registry.GetValue("HKEY_LOCAL_MACHINE\\SOFTWARE\\ETAS", "DisableToolTips", "no").ToString() == "yes";
			if (ToolTipsDisabled)
			{
				Logger.LogInfo("ToolTips disabled via registry key 'HKLM\\SOFTWARE\\ETAS\\DisableToolTips'.");
			}
		}
		catch (Exception)
		{
			ToolTipsDisabled = false;
		}
	}

	public static void SetToolTipEx(this ToolTip toolTip, Control control, string caption)
	{
		toolTip.SetToolTip(control, ToolTipsDisabled ? string.Empty : caption);
	}

	public static string AsToolTip(this string toolTipText)
	{
		if (!ToolTipsDisabled)
		{
			return toolTipText;
		}
		return string.Empty;
	}
}
