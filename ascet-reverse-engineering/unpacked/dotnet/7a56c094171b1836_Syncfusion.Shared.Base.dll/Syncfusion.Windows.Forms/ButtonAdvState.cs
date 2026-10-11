using System;

namespace Syncfusion.Windows.Forms;

[Flags]
public enum ButtonAdvState
{
	Default = 1,
	MouseOver = 2,
	Pressed = 4,
	Checked = 8,
	Flat = 0x10,
	Inactive = 0x20,
	All = 0x21
}
