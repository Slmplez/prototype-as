using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridFillRectangleHookEventArgs : SyncfusionCancelEventArgs
{
	private Graphics graphics;

	private RectangleF bounds;

	private BrushInfo brush;

	[TraceProperty(true)]
	public Graphics Graphics
	{
		get
		{
			return graphics;
		}
		set
		{
			graphics = value;
		}
	}

	[TraceProperty(true)]
	public RectangleF Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	[TraceProperty(true)]
	public BrushInfo Brush
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

	public RectangleF ClipBounds
	{
		get
		{
			RectangleF clipBounds = graphics.ClipBounds;
			if (clipBounds.IsEmpty)
			{
				return bounds;
			}
			clipBounds.Intersect(bounds);
			return clipBounds;
		}
	}

	public GridFillRectangleHookEventArgs(Graphics graphics, RectangleF bounds, BrushInfo brush)
	{
		this.graphics = graphics;
		this.bounds = bounds;
		this.brush = brush;
	}
}
