using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCellBackgroundEventArgs : SyncfusionCancelEventArgs
{
	private Graphics graphics;

	private GridRangeInfo range;

	private bool isBannered;

	private bool isColored;

	private GridStyleInfo style;

	private Rectangle targetBounds;

	private Rectangle clipBounds;

	private bool isClipped;

	public Graphics Graphics => graphics;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	[TraceProperty(true)]
	public bool IsBannered => isBannered;

	[TraceProperty(true)]
	public bool IsColored => isColored;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public Rectangle TargetBounds => targetBounds;

	[TraceProperty(true)]
	public Rectangle ClipBounds => clipBounds;

	[TraceProperty(true)]
	public bool IsClipped => isClipped;

	public GridDrawCellBackgroundEventArgs(Graphics graphics, GridRangeInfo range, bool isBannered, bool isColored, GridStyleInfo style, Rectangle targetBounds, Rectangle clipBounds, bool isClipped)
	{
		this.graphics = graphics;
		this.range = range;
		this.isBannered = isBannered;
		this.isColored = isColored;
		this.style = style;
		this.targetBounds = targetBounds;
		this.clipBounds = clipBounds;
		this.isClipped = isClipped;
	}
}
