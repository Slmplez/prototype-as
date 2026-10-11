using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridBorderStyleEditor : UITypeEditor
{
	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (e.Value is GridBorderStyle)
		{
			GridBorderStyle style = (GridBorderStyle)e.Value;
			GridBorder border = new GridBorder(style, SystemColors.WindowText, GridBorderWeight.Medium);
			Rectangle bounds = e.Bounds;
			bounds.Inflate(-2, -(bounds.Height / 2) + 1);
			GridBorderPaint.DrawRectangle(e.Graphics, border, bounds, SystemColors.Window, GridBorderSide.Top);
		}
	}
}
