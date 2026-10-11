using System;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms;

[Serializable]
[Editor(typeof(EnumFlagsEditor), typeof(UITypeEditor))]
[Flags]
public enum ColorUIGroups
{
	None = 0,
	CustomColors = 1,
	StandardColors = 2,
	SystemColors = 4,
	[Browsable(false)]
	All = 7,
	UserColors = 8,
	[Browsable(false)]
	Full = 0xF
}
