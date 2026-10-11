using System.ComponentModel;
using System.Drawing.Design;

namespace Syncfusion.Drawing;

[Editor(typeof(GradientStyleEditor), typeof(UITypeEditor))]
public enum GradientStyle
{
	None,
	ForwardDiagonal,
	BackwardDiagonal,
	Horizontal,
	Vertical,
	PathRectangle,
	PathEllipse
}
