using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridResizingRowsEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo rows;

	private int height;

	private GridResizeCellsReason reason;

	private GridBorder sizeIndicatorBorder;

	private GridBorder boundsIndicatorBorder;

	private Point point;

	[TraceProperty(true)]
	public GridRangeInfo Rows => rows;

	[TraceProperty(true)]
	public int Height
	{
		get
		{
			return height;
		}
		set
		{
			height = value;
		}
	}

	[TraceProperty(true)]
	public GridResizeCellsReason Reason => reason;

	[TraceProperty(true)]
	public GridBorder SizeIndicatorBorder
	{
		get
		{
			return sizeIndicatorBorder;
		}
		set
		{
			sizeIndicatorBorder = value;
		}
	}

	[TraceProperty(true)]
	public GridBorder BoundsIndicatorBorder
	{
		get
		{
			return boundsIndicatorBorder;
		}
		set
		{
			boundsIndicatorBorder = value;
		}
	}

	[TraceProperty(true)]
	public Point Point => point;

	public GridResizingRowsEventArgs(GridRangeInfo rows, int height, GridResizeCellsReason reason, GridBorder sizeIndicatorBorder, GridBorder boundsIndicatorBorder, Point point)
	{
		this.rows = rows;
		this.height = height;
		this.reason = reason;
		this.sizeIndicatorBorder = sizeIndicatorBorder;
		this.boundsIndicatorBorder = boundsIndicatorBorder;
		this.point = point;
	}
}
