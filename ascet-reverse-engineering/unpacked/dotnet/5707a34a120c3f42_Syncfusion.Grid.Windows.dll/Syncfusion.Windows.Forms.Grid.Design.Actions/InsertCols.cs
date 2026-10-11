using System;

namespace Syncfusion.Windows.Forms.Grid.Design.Actions;

internal class InsertCols : GridDesignerBasicAction
{
	public override void InvokeAction(object sender, EventArgs e)
	{
		GridControlBase grid = base.MainWindow.Grid;
		if (grid != null && grid.CurrentCell.GetCurrentCell(out var rowIndex, out var colIndex))
		{
			grid.Model.Cols.InsertRange(colIndex, 1, null);
			grid.CurrentCell.MoveTo(rowIndex, colIndex + 1);
		}
	}
}
