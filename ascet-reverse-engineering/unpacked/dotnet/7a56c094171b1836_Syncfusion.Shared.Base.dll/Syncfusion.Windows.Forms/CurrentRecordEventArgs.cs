using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class CurrentRecordEventArgs : SyncfusionCancelEventArgs
{
	private int record;

	[TraceProperty(true)]
	public int Record
	{
		get
		{
			return record;
		}
		set
		{
			record = value;
		}
	}

	public CurrentRecordEventArgs(int record)
	{
		this.record = record;
	}
}
