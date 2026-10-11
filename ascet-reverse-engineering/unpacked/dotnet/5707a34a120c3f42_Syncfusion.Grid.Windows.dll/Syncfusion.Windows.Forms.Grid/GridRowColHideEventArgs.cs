using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColHideEventArgs : SyncfusionHandledEventArgs
{
	private int index;

	private bool hide;

	[TraceProperty(true)]
	public int Index => index;

	[TraceProperty(true)]
	public bool Hide
	{
		get
		{
			return hide;
		}
		set
		{
			hide = value;
		}
	}

	public GridRowColHideEventArgs(int index, bool hide)
	{
		this.index = index;
		this.hide = hide;
	}
}
