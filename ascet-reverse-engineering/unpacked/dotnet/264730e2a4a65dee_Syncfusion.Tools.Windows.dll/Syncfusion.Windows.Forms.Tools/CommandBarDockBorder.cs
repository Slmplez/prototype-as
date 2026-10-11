using System;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
[Flags]
public enum CommandBarDockBorder
{
	None = 0,
	Top = 1,
	Bottom = 2,
	Left = 4,
	Right = 8
}
