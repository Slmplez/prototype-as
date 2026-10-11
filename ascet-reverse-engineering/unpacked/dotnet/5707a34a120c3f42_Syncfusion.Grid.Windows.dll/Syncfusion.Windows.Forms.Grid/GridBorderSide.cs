using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridBorderSide
{
	Left = 1,
	Top = 2,
	Right = 4,
	Bottom = 8,
	All = 0xF
}
