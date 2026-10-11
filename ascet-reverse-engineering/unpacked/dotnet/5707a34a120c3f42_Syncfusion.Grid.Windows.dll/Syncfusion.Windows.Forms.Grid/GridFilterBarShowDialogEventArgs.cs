using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridFilterBarShowDialogEventArgs : SyncfusionHandledEventArgs
{
	private string filterCriteria;

	private DialogResult result;

	[TraceProperty(true)]
	public string FilterCriteria
	{
		get
		{
			return filterCriteria;
		}
		set
		{
			filterCriteria = value;
		}
	}

	[TraceProperty(true)]
	public DialogResult Result
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

	public GridFilterBarShowDialogEventArgs(string filterCriteria, DialogResult result)
	{
		this.filterCriteria = filterCriteria;
		this.result = result;
	}
}
