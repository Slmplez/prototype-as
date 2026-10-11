using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridModelSetFrozenCountCommand : GridModelCommand
{
	private int frozenCount;

	private GridModelRowColOperations rco;

	public GridModelSetFrozenCountCommand(GridModelRowColOperations rco, int frozenCount)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandFrozenCount" + rco.RowColName, frozenCount));
		this.rco = rco;
		this.frozenCount = frozenCount;
	}

	public override void Execute()
	{
		rco.FrozenCount = frozenCount;
	}
}
