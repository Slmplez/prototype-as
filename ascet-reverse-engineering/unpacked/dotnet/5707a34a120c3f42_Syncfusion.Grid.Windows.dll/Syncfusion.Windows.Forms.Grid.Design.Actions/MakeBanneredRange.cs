using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class MakeBanneredRange : GridDesignerBasicAction
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
		GridRangeInfo activeRange = grid.Model.Selections.Ranges.ActiveRange;
		grid.Model.BanneredRanges.Add(activeRange);
	}
}
