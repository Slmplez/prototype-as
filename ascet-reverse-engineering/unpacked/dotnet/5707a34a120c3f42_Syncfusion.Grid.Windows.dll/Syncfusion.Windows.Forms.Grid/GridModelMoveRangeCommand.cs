namespace Syncfusion.Windows.Forms.Grid;

public class GridModelMoveRangeCommand : GridModelCommand
{
	private int from;

	private int count;

	private int target;

	private GridModelRowColOperations rco;

	public GridModelMoveRangeCommand(GridModelRowColOperations rco, int from, int count, int target)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandMove" + rco.RowColName, from, count, target));
		this.rco = rco;
		this.from = from;
		this.count = count;
		this.target = target;
	}

	public override void Execute()
	{
		rco.MoveRange(from, count, target);
		base.Grid.ScrollCellInView(rco.CreateRangeFromTo(target, target + count - 1), GridScrollCurrentCellReason.Command);
	}
}
