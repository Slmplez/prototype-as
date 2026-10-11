using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridModelSetRowColSizeCommand : GridModelCommand
{
	private int from;

	private int to;

	private int[] values;

	private GridModelRowColSizeIndexer rcsi;

	public GridModelSetRowColSizeCommand(GridModelRowColSizeIndexer rcsi, int from, int last, int[] values)
		: base(rcsi.model)
	{
		SetDescription(SR.GetString("Command" + rcsi.RowColName, from, to));
		this.rcsi = rcsi;
		this.from = from;
		to = last;
		this.values = values;
	}

	public override void Execute()
	{
		rcsi.SetRange(from, to, values);
		base.Grid.ScrollCellInView(rcsi.RowColObject.CreateRangeFromTo(from, to), GridScrollCurrentCellReason.Command);
	}
}
