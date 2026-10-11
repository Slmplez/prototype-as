namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellValueCommand : GridModelCommand
{
	private int currentRow;

	private int currentCol;

	private object value;

	public GridCurrentCellValueCommand(GridModel table, int currentRow, int currentCol, object value)
		: base(table)
	{
		SetDescription(SR.GetString("CommandCurrentCellValue", currentRow, currentCol));
		this.currentRow = currentRow;
		this.currentCol = currentCol;
		this.value = value;
	}

	public override void Execute()
	{
		if (base.Grid.ActiveGridView != null)
		{
			GridCurrentCell currentCell = base.Grid.ActiveGridView.CurrentCell;
			currentCell.MoveTo(currentRow, currentCol);
			currentCell.BeginEdit();
			currentCell.Renderer.ControlValue = value;
		}
	}
}
