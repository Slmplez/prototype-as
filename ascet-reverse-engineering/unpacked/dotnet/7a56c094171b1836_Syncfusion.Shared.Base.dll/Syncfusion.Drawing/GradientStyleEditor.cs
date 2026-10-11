using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;

namespace Syncfusion.Drawing;

public sealed class GradientStyleEditor : UITypeEditor
{
	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (e.Value is GradientStyle)
		{
			GradientStyle gradientStyle = (GradientStyle)e.Value;
			BrushPaint.FillRectangle(e.Graphics, e.Bounds, gradientStyle, SystemColors.WindowText, SystemColors.Window);
		}
	}
}
