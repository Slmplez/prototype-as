using System;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class UpDownVisualStyleEnumFilter : DefaultVisualStyleEnumFilter
{
	private static readonly VisualStyle[] r_valuesToSkip = new VisualStyle[3]
	{
		VisualStyle.Office2003,
		VisualStyle.OfficeXP,
		VisualStyle.VS2005
	};

	public UpDownVisualStyleEnumFilter(Type type)
		: base(type, (VisualStyle[])r_valuesToSkip.Clone())
	{
	}
}
