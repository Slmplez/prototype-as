using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCurrentCellShowingDropDownEventArgs : SyncfusionCancelEventArgs
{
	private Size size;

	[TraceProperty(true)]
	public Size Size
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

	public GridCurrentCellShowingDropDownEventArgs(Size size)
	{
		this.size = size;
	}
}
