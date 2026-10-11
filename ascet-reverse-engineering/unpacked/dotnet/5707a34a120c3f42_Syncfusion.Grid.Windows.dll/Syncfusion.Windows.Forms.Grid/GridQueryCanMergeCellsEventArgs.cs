using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridQueryCanMergeCellsEventArgs : SyncfusionHandledEventArgs
{
	private GridStyleInfo style1;

	private GridStyleInfo style2;

	private bool result;

	[TraceProperty(true)]
	public GridStyleInfo Style1 => style1;

	[TraceProperty(true)]
	public GridStyleInfo Style2 => style2;

	[TraceProperty(true)]
	public bool Result
	{
		get
		{
			return result;
		}
		set
		{
			result = value;
		}
	}

	public GridQueryCanMergeCellsEventArgs(GridStyleInfo style1, GridStyleInfo style2, bool result)
	{
		this.style1 = style1;
		this.style2 = style2;
		this.result = result;
	}
}
