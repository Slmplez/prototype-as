using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(GridBorderStyleEditor), typeof(UITypeEditor))]
public enum GridBorderStyle
{
	NotSet,
	None,
	Dashed,
	Dotted,
	DashDot,
	DashDotDot,
	Solid,
	Standard
}
