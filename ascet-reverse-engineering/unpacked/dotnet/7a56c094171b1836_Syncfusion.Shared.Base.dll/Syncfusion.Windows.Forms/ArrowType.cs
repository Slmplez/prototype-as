using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

[Flags]
public enum ArrowType
{
	None = 0,
	Previous = 1,
	Next = 2,
	First = 4,
	Last = 8,
	AddNew = 0x10,
	[Browsable(false)]
	All = 0xFF
}
