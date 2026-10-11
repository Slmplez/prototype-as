using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColSizeTotalEventArgs : SyncfusionHandledEventArgs
{
	private int from;

	private int last;

	private int maximum;

	private int size;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int Last => last;

	[TraceProperty(true)]
	public int Maximum => maximum;

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

	internal GridRowColSizeTotalEventArgs(int from, int last, int maximum, int size)
	{
		this.from = from;
		this.last = last;
		this.maximum = maximum;
		this.size = size;
	}
}
