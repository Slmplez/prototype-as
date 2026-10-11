using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Localization;

[AttributeUsage(AttributeTargets.All, AllowMultiple = false, Inherited = true)]
internal sealed class SRCategoryAttribute : CategoryAttribute
{
	public SRCategoryAttribute(string category)
		: base(category)
	{
	}

	protected override string GetLocalizedString(string value)
	{
		return SR.GetString(value);
	}
}
