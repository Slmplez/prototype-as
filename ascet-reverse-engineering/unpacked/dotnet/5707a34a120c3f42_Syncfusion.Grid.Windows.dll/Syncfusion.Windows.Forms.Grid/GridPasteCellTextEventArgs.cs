using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridPasteCellTextEventArgs : SyncfusionCancelEventArgs
{
	private int rowIndex;

	private int colIndex;

	private GridStyleInfo style;

	private string text;

	private bool abort;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	[TraceProperty(true)]
	public bool Abort
	{
		get
		{
			return abort;
		}
		set
		{
			abort = value;
		}
	}

	public GridPasteCellTextEventArgs(int rowIndex, int colIndex, GridStyleInfo style, string text, bool abort)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.style = style;
		this.text = text;
		this.abort = abort;
	}
}
