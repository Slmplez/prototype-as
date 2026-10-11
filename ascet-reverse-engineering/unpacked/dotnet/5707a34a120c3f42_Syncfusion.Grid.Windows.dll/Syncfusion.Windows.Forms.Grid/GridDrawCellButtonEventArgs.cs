using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCellButtonEventArgs : SyncfusionCancelEventArgs
{
	private GridCellButton button;

	private Graphics graphics;

	private int rowIndex;

	private int colIndex;

	private bool isActive;

	private GridStyleInfo style;

	[TraceProperty(true)]
	public GridCellButton Button => button;

	public Graphics Graphics => graphics;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	[TraceProperty(true)]
	public bool IsActive => isActive;

	public GridStyleInfo Style => style;

	public GridDrawCellButtonEventArgs(GridCellButton button, Graphics graphics, int rowIndex, int colIndex, bool isActive, GridStyleInfo style)
	{
		this.button = button;
		this.graphics = graphics;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.isActive = isActive;
		this.style = style;
	}
}
