using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class RemoveRows : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid == null)
		{
			return;
		}
		GridRangeInfoList rowRanges = grid.Model.Selections.Ranges.GetRowRanges(GridRangeInfoType.Rows);
		if (rowRanges.Count == 0)
		{
			return;
		}
		grid.Model.CommandStack.BeginTrans("Remove Rows");
		foreach (GridRangeInfo item in rowRanges)
		{
			grid.Model.Rows.RemoveRange(item.Top, item.Bottom);
		}
		grid.Model.CommandStack.CommitTrans();
	}
}
