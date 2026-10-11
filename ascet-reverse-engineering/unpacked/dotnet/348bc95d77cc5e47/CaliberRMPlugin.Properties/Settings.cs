using System.CodeDom.Compiler;
using System.Configuration;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace CaliberRMPlugin.Properties;

[CompilerGenerated]
[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "8.0.0.0")]
internal sealed class Settings : ApplicationSettingsBase
{
	private static Settings defaultInstance = (Settings)SettingsBase.Synchronized(new Settings());

	public static Settings Default => defaultInstance;

	[DefaultSettingValue("")]
	[UserScopedSetting]
	[DebuggerNonUserCode]
	public string LastUser
	{
		get
		{
			return (string)this["LastUser"];
		}
		set
		{
			this["LastUser"] = value;
		}
	}

	[DefaultSettingValue("")]
	[UserScopedSetting]
	[DebuggerNonUserCode]
	public string LastServer
	{
		get
		{
			return (string)this["LastServer"];
		}
		set
		{
			this["LastServer"] = value;
		}
	}

	[UserScopedSetting]
	[DebuggerNonUserCode]
	public AutoCompleteStringCollection CaliberRMServer
	{
		get
		{
			return (AutoCompleteStringCollection)this["CaliberRMServer"];
		}
		set
		{
			this["CaliberRMServer"] = value;
		}
	}

	[DebuggerNonUserCode]
	[UserScopedSetting]
	public AutoCompleteStringCollection CaliberRMUser
	{
		get
		{
			return (AutoCompleteStringCollection)this["CaliberRMUser"];
		}
		set
		{
			this["CaliberRMUser"] = value;
		}
	}
}
