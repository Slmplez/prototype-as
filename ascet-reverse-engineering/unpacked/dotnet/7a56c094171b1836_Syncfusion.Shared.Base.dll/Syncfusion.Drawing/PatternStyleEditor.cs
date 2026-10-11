using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;

namespace Syncfusion.Drawing;

public sealed class PatternStyleEditor : UITypeEditor
{
	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (e.Value is PatternStyle)
		{
			PatternStyle patternStyle = (PatternStyle)e.Value;
			if (patternStyle != PatternStyle.None)
			{
				Brush brush = new HatchBrush((HatchStyle)(patternStyle - 1), SystemColors.WindowText, SystemColors.Window);
				e.Graphics.FillRectangle(brush, e.Bounds);
				brush.Dispose();
			}
		}
	}
}
