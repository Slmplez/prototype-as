namespace Syncfusion.Core.Licensing;

public enum LicenseError
{
	None,
	DesigntimeNoKey,
	DesigntimeKeyExpired,
	DesigntimeNotLicensedControl,
	RuntimeKeyExpired,
	RuntimeNotLicensedControl,
	RuntimeLicensedComponentEntryMissing,
	RuntimeNoLicx,
	Unknown
}
