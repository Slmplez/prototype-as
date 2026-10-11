using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridBorderWeightEditor : UITypeEditor
{
	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (e.Value is GridBorderWeight)
		{
			GridBorderWeight weight = (GridBorderWeight)e.Value;
			GridBorder border = new GridBorder(GridBorderStyle.Solid, SystemColors.WindowText, weight);
			Rectangle bounds = e.Bounds;
			bounds.Inflate(-2, -(bounds.Height / 2) + 2);
			GridBorderPaint.DrawRectangle(e.Graphics, border, bounds, SystemColors.Window, GridBorderSide.Top);
		}
	}
}
