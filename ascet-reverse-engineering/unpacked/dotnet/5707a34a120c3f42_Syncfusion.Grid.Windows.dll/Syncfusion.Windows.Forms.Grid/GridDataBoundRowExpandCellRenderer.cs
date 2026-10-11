using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDataBoundRowExpandCellRenderer : GridCellRendererBase
{
	public GridDataBoundRowExpandCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		AddButton(new GridDataBoundRowExpandCellButton(this));
	}

	public override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		e.Style.HorizontalAlignment = GridHorizontalAlignment.Center;
		e.Style.VerticalAlignment = GridVerticalAlignment.Middle;
		e.Style.ShowButtons = ((Convert.ToInt32(e.Style.CellValue) != -1) ? GridShowButtons.Show : GridShowButtons.Hide);
		e.Style.Clickable = true;
	}

	protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds)
	{
		ref Rectangle reference = ref buttonsBounds[0];
		reference = GridUtil.CenterInRect(innerBounds, new Size(11, 11));
		return innerBounds;
	}
}
