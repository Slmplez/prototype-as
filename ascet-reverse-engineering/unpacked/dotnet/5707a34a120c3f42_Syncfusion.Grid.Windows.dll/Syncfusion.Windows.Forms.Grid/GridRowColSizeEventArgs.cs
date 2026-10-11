using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColSizeEventArgs : SyncfusionHandledEventArgs
{
	private int index;

	private int size;

	[TraceProperty(true)]
	public int Index => index;

	[TraceProperty(true)]
	public int Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	public GridRowColSizeEventArgs(int index, int size)
	{
		this.index = index;
		this.size = size;
	}
}
