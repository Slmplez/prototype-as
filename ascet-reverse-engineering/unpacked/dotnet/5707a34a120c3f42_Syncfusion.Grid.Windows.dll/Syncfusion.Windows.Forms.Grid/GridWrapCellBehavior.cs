using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridWrapCellBehavior
{
	None = 0,
	WrapRow = 1,
	WrapGrid = 2,
	NextControlInForm = 4
}
