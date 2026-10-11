using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridWrapCellNextControlInFormEventArgs : SyncfusionCancelEventArgs
{
	private bool forward;

	private bool moveTopLeft;

	[TraceProperty(true)]
	public bool Forward => forward;

	[TraceProperty(true)]
	public bool MoveTopLeft
	{
		get
		{
			return moveTopLeft;
		}
		set
		{
			moveTopLeft = value;
		}
	}

	public GridWrapCellNextControlInFormEventArgs(bool forward, bool moveTopLeft)
	{
		this.forward = forward;
		this.moveTopLeft = moveTopLeft;
	}
}
