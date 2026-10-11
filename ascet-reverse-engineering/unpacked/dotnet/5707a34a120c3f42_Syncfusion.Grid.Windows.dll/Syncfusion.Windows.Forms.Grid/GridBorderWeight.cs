using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(GridBorderWeightEditor), typeof(UITypeEditor))]
public enum GridBorderWeight
{
	ExtraThin = 1,
	Thin,
	Medium,
	Thick,
	ExtraThick,
	ExtraExtraThick
}
