namespace Syncfusion.Windows.Forms.Grid;

public class GridModelRemoveRangeCommand : GridModelCommand
{
	private int from;

	private int to;

	private GridModelRowColOperations rco;

	public GridModelRemoveRangeCommand(GridModelRowColOperations rco, int from, int last)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandRemove" + rco.RowColName, from, last));
		this.rco = rco;
		this.from = from;
		to = last;
	}

	public override void Execute()
	{
		rco.RemoveRange(from, to);
		base.Grid.ScrollCellInView(rco.CreateRangeFromTo(from, from), GridScrollCurrentCellReason.Command);
	}
}
