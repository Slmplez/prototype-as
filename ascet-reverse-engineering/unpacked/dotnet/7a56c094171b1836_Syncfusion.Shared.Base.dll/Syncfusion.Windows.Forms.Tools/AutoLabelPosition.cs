using System;

namespace Syncfusion.Windows.Forms.Tools;

public enum AutoLabelPosition
{
	Custom = 0,
	[Obsolete("Left will be replaced with side, to take into account RightToLeft configs. Please use side instead.")]
	Left = 1,
	Top = 2,
	Side = 1
}
