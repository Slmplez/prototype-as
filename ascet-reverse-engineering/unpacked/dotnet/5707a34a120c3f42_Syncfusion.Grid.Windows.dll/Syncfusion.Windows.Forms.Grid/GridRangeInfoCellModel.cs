using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridRangeInfoCellModel : GridTextBoxCellModel
{
	internal GridRangeInfoDropDownUserControl ddUser;

	public GridRangeInfoCellModel(GridModel grid, GridRangeInfoDropDownUserControl ddUser)
		: base(grid)
	{
		this.ddUser = ddUser;
		base.ButtonBarSize = new Size(grid.Rows.DefaultSize - 2, grid.Rows.DefaultSize - 2);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridRangeInfoCellRenderer(control, this);
	}
}
