using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridFindReplaceDialogOptions
{
	None = 0,
	ShowMatchCase = 1,
	ShowMatchWholeCell = 2,
	ShowSearchUp = 4,
	ShowSearchSelection = 8,
	[Browsable(false)]
	All = 0xF
}
