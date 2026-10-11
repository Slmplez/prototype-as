using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class ExcelLikeSelection : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null)
		{
			grid.Model.BeginUpdate(BeginUpdateOptions.None);
			bool flag = !grid.Model.Options.ExcelLikeCurrentCell;
			grid.Model.Options.ExcelLikeCurrentCell = flag;
			grid.Model.Options.ExcelLikeSelectionFrame = flag;
			GridRangeInfo activeRange = grid.Selections.Ranges.ActiveRange;
			if (!activeRange.IsEmpty)
			{
				grid.CurrentCell.ConfirmChanges();
				grid.CurrentCell.Deactivate(discardChanges: true);
				grid.CurrentCell.MoveTo(activeRange.Top, activeRange.Left, GridSetCurrentCellOptions.NoSelectRange);
			}
			grid.Model.EndUpdate(update: false);
			grid.Model.Refresh();
		}
	}
}
