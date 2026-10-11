using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridChangeCellsCommand : GridModelCommand
{
	private GridRangeInfo range;

	private GridStyleInfo[] cellsInfo;

	private StyleModifyType modifyType;

	public GridChangeCellsCommand(GridModel table, GridRangeInfo range, GridStyleInfo[] cellsInfo, StyleModifyType modifyType)
		: base(table)
	{
		SetDescription(SR.GetString("CommandChangeCells", range));
		this.range = range;
		this.cellsInfo = cellsInfo;
		this.modifyType = modifyType;
	}

	public override void Execute()
	{
		base.Grid.ChangeCells(range, cellsInfo, modifyType);
		base.Grid.ScrollCellInView(range, GridScrollCurrentCellReason.Command);
	}
}
