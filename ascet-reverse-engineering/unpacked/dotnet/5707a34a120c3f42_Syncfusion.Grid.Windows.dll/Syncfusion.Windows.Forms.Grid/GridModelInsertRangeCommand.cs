namespace Syncfusion.Windows.Forms.Grid;

public class GridModelInsertRangeCommand : GridModelCommand
{
	private int insertAt;

	private int count;

	private GridModelInsertRangeOptions iro;

	private GridModelRowColOperations rco;

	public GridModelInsertRangeCommand(GridModelRowColOperations rco, int insertAt, int count, GridModelInsertRangeOptions iro)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandInsert" + rco.RowColName, insertAt, count));
		this.rco = rco;
		this.insertAt = insertAt;
		this.count = count;
		this.iro = iro;
	}

	public override void Execute()
	{
		rco.InsertRange(insertAt, count, iro);
		base.Grid.ScrollCellInView(rco.CreateRangeFromTo(insertAt, insertAt + count - 1), GridScrollCurrentCellReason.Command);
	}
}
