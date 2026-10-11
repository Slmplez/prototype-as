using System;
using System.ComponentModel;

namespace Syncfusion.Core.Licensing;

[ToolboxItem(false)]
[LicenseProvider(typeof(FusionLicenseProvider))]
public class LicensedComponent : Component
{
	public LicensedComponent()
	{
		LicenseManager.Validate(typeof(LicensedComponent));
	}

	public LicensedComponent(Type type)
	{
		LicenseManager.Validate(typeof(LicensedComponent), type);
	}

	public LicensedComponent(Type type, out bool isEvalExpired)
		: this(type)
	{
		isEvalExpired = FusionLicenseProvider.IsEvalExpired;
	}
}
