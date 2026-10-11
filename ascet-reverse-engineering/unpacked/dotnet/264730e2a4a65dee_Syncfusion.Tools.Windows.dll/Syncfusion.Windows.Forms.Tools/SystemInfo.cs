using System;
using System.Windows.Forms;
using Microsoft.Win32;

namespace Syncfusion.Windows.Forms.Tools;

public class SystemInfo
{
	private static bool m_bIsVisualStyleEnabled;

	public static bool IsVisualStyleEnabled => m_bIsVisualStyleEnabled;

	public static event SettingsChangedEventHandler SettingsChanged;

	static SystemInfo()
	{
		SystemInfo.SettingsChanged = null;
		SystemEvents.DisplaySettingsChanged += DisplaySettingsChangedHandler;
		SystemEvents.UserPreferenceChanged += UserPreferenceChangedHandler;
		Update();
	}

	private static void DisplaySettingsChangedHandler(object sender, EventArgs e)
	{
		Update();
		OnSettingsChanged();
	}

	private static void UserPreferenceChangedHandler(object sender, UserPreferenceChangedEventArgs e)
	{
		Update();
		OnSettingsChanged();
	}

	protected static void OnSettingsChanged()
	{
		if (SystemInfo.SettingsChanged != null)
		{
			SystemInfo.SettingsChanged();
		}
	}

	private static void Update()
	{
		m_bIsVisualStyleEnabled = !SystemInformation.HighContrast;
	}
}
