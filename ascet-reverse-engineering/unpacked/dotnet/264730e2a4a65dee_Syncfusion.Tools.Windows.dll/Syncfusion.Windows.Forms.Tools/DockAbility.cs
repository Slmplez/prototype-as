using System;

namespace Syncfusion.Windows.Forms.Tools;

[Flags]
public enum DockAbility
{
	None = 0,
	Left = 1,
	Top = 2,
	Right = 4,
	Bottom = 8,
	Tabbed = 0x10,
	Horizontal = 0x15,
	Vertical = 0x1A,
	All = 0x1F
}
