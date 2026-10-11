using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuTextCellModel : GridStaticCellModel
{
	public MenuTextCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new MenuTextCellRenderer(control, this);
	}

	public override bool OnQueryCanFloatCell(int rowIndex, int colIndex, GridStyleInfo style, GridQueryFloatCell query)
	{
		return true;
	}
}
