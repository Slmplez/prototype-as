using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDrawCellButtonBackgroundEventArgs : SyncfusionCancelEventArgs
{
	private GridCellButton button;

	private Graphics graphics;

	private Rectangle bounds;

	private ButtonState buttonState;

	private GridStyleInfo style;

	[TraceProperty(true)]
	public GridCellButton Button => button;

	[TraceProperty(true)]
	public Graphics Graphics => graphics;

	[TraceProperty(true)]
	public Rectangle Bounds => bounds;

	[TraceProperty(true)]
	public ButtonState ButtonState => buttonState;

	public GridStyleInfo Style => style;

	public GridDrawCellButtonBackgroundEventArgs(GridCellButton button, Graphics graphics, Rectangle bounds, ButtonState buttonState, GridStyleInfo style)
	{
		this.button = button;
		this.graphics = graphics;
		this.bounds = bounds;
		this.buttonState = buttonState;
		this.style = style;
	}
}
