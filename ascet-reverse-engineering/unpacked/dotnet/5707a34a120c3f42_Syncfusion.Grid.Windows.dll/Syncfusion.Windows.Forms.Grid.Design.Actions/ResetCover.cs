using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ResetCover : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			PerformAction(grid);
			base.MainWindow.MarkDirty(dirty: true);
		}
	}

	public static void PerformAction(GridControlBase grid)
	{
		if (grid.Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true))
		{
			GridRangeInfo gridRangeInfo = ranges.ActiveRange;
			if (!gridRangeInfo.IsEmpty)
			{
				gridRangeInfo = grid.Model.CoveredRanges.Merge(gridRangeInfo);
			}
			grid.Model.CoveredRanges.Remove(gridRangeInfo);
		}
	}
}
