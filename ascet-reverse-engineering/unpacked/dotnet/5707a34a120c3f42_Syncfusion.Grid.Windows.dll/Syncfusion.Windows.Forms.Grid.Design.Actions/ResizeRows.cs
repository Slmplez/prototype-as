using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ResizeRows : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		foreach (GridRangeInfo selection in grid.Model.Selections)
		{
			grid.Model.RowHeights.ResizeToFit(selection, GridResizeToFitOptions.ResizeCoveredCells);
		}
	}
}
