using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridResizingColumnsEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo columns;

	private int width;

	private GridResizeCellsReason reason;

	private GridBorder sizeIndicatorBorder;

	private GridBorder boundsIndicatorBorder;

	private Point point;

	[TraceProperty(true)]
	public GridRangeInfo Columns => columns;

	[TraceProperty(true)]
	public int Width
	{
		get
		{
			return width;
		}
		set
		{
			width = value;
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

	public GridResizingColumnsEventArgs(GridRangeInfo columns, int width, GridResizeCellsReason reason, GridBorder sizeIndicatorBorder, GridBorder boundsIndicatorBorder, Point point)
	{
		this.columns = columns;
		this.width = width;
		this.reason = reason;
		this.sizeIndicatorBorder = sizeIndicatorBorder;
		this.boundsIndicatorBorder = boundsIndicatorBorder;
		this.point = point;
	}
}
