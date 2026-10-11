using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class CheckMarkCellModel : GridStaticCellModel
{
	public CheckMarkCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new CheckMarkCellRenderer(control, this);
	}
}
