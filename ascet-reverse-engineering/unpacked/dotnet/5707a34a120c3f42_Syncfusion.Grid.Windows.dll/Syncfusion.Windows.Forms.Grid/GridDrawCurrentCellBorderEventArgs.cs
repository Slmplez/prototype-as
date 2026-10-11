using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCurrentCellBorderEventArgs : GridCellCancelEventArgs
{
	private Graphics g;

	private Rectangle bounds;

	private bool gridFocused;

	private GridStyleInfo style;

	private GridShowCurrentCellBorder showBorder;

	[TraceProperty(true)]
	public Graphics Graphics => g;

	[TraceProperty(true)]
	public Rectangle Bounds => bounds;

	[TraceProperty(true)]
	public bool GridFocused => gridFocused;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public GridShowCurrentCellBorder ShowBorder => showBorder;

	public GridDrawCurrentCellBorderEventArgs(int rowIndex, int colIndex, Graphics g, Rectangle bounds, bool gridFocused, GridStyleInfo style, GridShowCurrentCellBorder showBorder)
		: base(rowIndex, colIndex)
	{
		this.g = g;
		this.bounds = bounds;
		this.gridFocused = gridFocused;
		this.style = style;
		this.showBorder = showBorder;
	}
}
