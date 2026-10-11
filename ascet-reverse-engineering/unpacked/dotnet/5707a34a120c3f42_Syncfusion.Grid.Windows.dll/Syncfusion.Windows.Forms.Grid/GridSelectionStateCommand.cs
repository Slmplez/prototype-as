namespace Syncfusion.Windows.Forms.Grid;

public class GridSelectionStateCommand : GridModelCommand
{
	private int currentRow;

	private int currentCol;

	private GridRangeInfo[] ranges;

	public GridSelectionStateCommand(GridModel table, int currentRow, int currentCol, GridRangeInfo[] ranges)
		: base(table)
	{
		SetDescription(SR.GetString("CommandSelectionState", currentRow, currentCol));
		this.currentRow = currentRow;
		this.currentCol = currentCol;
		this.ranges = ranges;
	}

	public override void Execute()
	{
		base.Grid.ChangeSelectionState(currentRow, currentCol, ranges);
		base.Grid.CommandStack.selChanged = ranges != null && ranges.Length > 0;
	}
}
