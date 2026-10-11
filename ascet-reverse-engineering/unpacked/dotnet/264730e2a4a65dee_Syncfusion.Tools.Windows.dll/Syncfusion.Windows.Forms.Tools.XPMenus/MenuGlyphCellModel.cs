using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MenuGlyphCellModel : GridStaticCellModel
{
	public MenuGlyphCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new MenuGlyphCellRenderer(control, this);
	}
}
