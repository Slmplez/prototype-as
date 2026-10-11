using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellTextEventArgs : SyncfusionHandledEventArgs
{
	private string text;

	private GridStyleInfo style;

	private object value;

	private int textInfo;

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
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public object Value => value;

	[TraceProperty(true)]
	public int TextInfo => textInfo;

	public GridCellTextEventArgs(string text, GridStyleInfo style, object value, int textInfo)
	{
		this.text = text;
		this.style = style;
		this.value = value;
		this.textInfo = textInfo;
	}
}
