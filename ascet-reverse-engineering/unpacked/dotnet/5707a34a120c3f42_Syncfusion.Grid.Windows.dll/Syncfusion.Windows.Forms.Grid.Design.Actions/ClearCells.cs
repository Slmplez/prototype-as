using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ClearCells : GridDesignerBasicAction
{
	private GridDesignerPreviewGrid grid;

	public override void InvokeAction(object sender, EventArgs e)
	{
		grid = base.MainWindow.Grid as GridDesignerPreviewGrid;
		if (grid != null)
		{
			GridRangeInfoList ranges = null;
			grid.Selections.GetSelectedRanges(out ranges, considerCurrentCell: true);
			if (ranges != null)
			{
				grid.ClearCells(ranges, styleOrValue: false);
			}
		}
	}
}
