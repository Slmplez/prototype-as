using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCellEventArgs : GridCellCancelEventArgs
{
	private Graphics graphics;

	private GridCellRendererBase renderer;

	private Rectangle bounds;

	private GridStyleInfo style;

	private bool isBackgroundErased;

	public Graphics Graphics => graphics;

	[TraceProperty(true)]
	public Rectangle Bounds => bounds;

	[TraceProperty(true)]
	public GridCellRendererBase Renderer
	{
		get
		{
			return renderer;
		}
		set
		{
			renderer = value;
		}
	}

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public bool IsBackgroundErased => isBackgroundErased;

	public GridDrawCellEventArgs(Graphics graphics, GridCellRendererBase renderer, Rectangle bounds, int rowIndex, int colIndex, GridStyleInfo style, bool isBackgroundErased)
		: base(rowIndex, colIndex)
	{
		this.graphics = graphics;
		this.renderer = renderer;
		this.bounds = bounds;
		this.style = style;
		this.isBackgroundErased = isBackgroundErased;
	}
}
