using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridDataObjectConsumerOptions
{
	None = 0,
	Styles = 1,
	Text = 2,
	[Browsable(false)]
	All = 3
}
