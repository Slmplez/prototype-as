using System;
using System.ComponentModel;

namespace Syncfusion.Core.Licensing;

[ToolboxItem(false)]
public class LicensedWebComponent
{
	public LicensedWebComponent()
	{
		LicenseManager.Validate(typeof(LicensedComponent));
	}

	public LicensedWebComponent(Type type)
	{
		LicenseManager.Validate(typeof(LicensedComponent), type);
	}

	public LicensedWebComponent(Type type, out bool isEvalExpired)
		: this(type)
	{
		isEvalExpired = FusionLicenseProvider.IsEvalExpired;
	}
}
