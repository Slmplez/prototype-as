using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class RemoveCols : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		GridRangeInfoList colRanges = grid.Model.Selections.Ranges.GetColRanges(GridRangeInfoType.Cols);
		if (colRanges.Count == 0)
		{
			return;
		}
		grid.Model.CommandStack.BeginTrans("Remove Columns");
		foreach (GridRangeInfo item in colRanges)
		{
			grid.Model.Cols.RemoveRange(item.Left, item.Right);
		}
		grid.Model.CommandStack.CommitTrans();
	}
}
