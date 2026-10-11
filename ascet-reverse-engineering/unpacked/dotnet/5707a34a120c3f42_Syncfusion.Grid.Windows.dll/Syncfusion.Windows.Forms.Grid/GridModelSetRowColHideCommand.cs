using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridModelSetRowColHideCommand : GridModelCommand
{
	private int from;

	private int to;

	private bool[] values;

	private GridModelHideRowColsIndexer rchi;

	public GridModelSetRowColHideCommand(GridModelHideRowColsIndexer rchi, int from, int last, bool[] values)
		: base(rchi.model)
	{
		SetDescription(SR.GetString("Command" + rchi.RowColName, from, to));
		this.rchi = rchi;
		this.from = from;
		to = last;
		this.values = values;
	}

	public override void Execute()
	{
		rchi.SetRange(from, to, values);
		base.Grid.ScrollCellInView(rchi.RowColObject.CreateRangeFromTo(from, to), GridScrollCurrentCellReason.Command);
	}
}
