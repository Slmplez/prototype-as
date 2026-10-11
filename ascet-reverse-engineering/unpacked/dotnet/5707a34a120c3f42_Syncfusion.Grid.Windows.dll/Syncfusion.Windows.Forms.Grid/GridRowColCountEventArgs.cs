using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColCountEventArgs : SyncfusionHandledEventArgs
{
	private int count;

	[TraceProperty(true)]
	public int Count
	{
		get
		{
			return count;
		}
		set
		{
			count = value;
		}
	}

	public GridRowColCountEventArgs()
	{
		count = 0;
	}

	public GridRowColCountEventArgs(int count)
	{
		this.count = count;
	}
}
