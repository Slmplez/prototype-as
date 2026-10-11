using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

[Flags]
public enum InternalButtonState
{
	Normal = 0,
	Disabled = 1,
	Hovered = 2,
	Pushed = 4,
	Checked = 8,
	DragTarget = 0x10,
	[Browsable(false)]
	Options = 0x18
}
