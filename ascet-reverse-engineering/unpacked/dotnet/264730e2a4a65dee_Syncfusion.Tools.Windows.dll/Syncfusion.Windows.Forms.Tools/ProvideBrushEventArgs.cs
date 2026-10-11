using System;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools;

public class ProvideBrushEventArgs : EventArgs
{
	private Brush brush;

	private Rectangle itemBounds;

	private GraphicsPath path;

	public Rectangle Bounds => itemBounds;

	public GraphicsPath Path => path;

	public Brush Brush
	{
		get
		{
			return brush;
		}
		set
		{
			brush = value;
		}
	}

	public ProvideBrushEventArgs(Rectangle bounds, GraphicsPath path)
	{
		itemBounds = bounds;
		this.path = path;
	}
}
