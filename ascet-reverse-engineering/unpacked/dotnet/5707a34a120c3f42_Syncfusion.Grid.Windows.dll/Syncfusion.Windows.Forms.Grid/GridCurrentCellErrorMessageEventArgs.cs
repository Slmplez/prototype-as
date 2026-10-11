using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCurrentCellErrorMessageEventArgs : SyncfusionCancelEventArgs
{
	private IWin32Window owner;

	private string text;

	public IWin32Window Owner
	{
		get
		{
			return owner;
		}
		set
		{
			owner = value;
		}
	}

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

	public GridCurrentCellErrorMessageEventArgs(IWin32Window owner, string text)
	{
		this.owner = owner;
		this.text = text;
	}
}
