using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class SeparatorCellModel : GridStaticCellModel
{
	public SeparatorCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new SeparatorCellRenderer(control, this);
	}
}
