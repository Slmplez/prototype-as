using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellValidateStringEventArgs : SyncfusionCancelEventArgs
{
	private string text;

	[TraceProperty(true)]
	public string Text => text;

	public GridCurrentCellValidateStringEventArgs(string text)
	{
		this.text = text;
	}
}
