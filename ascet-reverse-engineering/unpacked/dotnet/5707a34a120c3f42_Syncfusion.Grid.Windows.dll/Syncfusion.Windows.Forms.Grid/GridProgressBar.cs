using System.ComponentModel;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridProgressBar : ProgressBarAdv
{
	private GridProgressBarCellRenderer parent;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridProgressBarCellRenderer ParentCell => parent;

	public GridProgressBar(GridProgressBarCellRenderer parent)
	{
		this.parent = parent;
	}
}
