using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridModelSetHeaderCountCommand : GridModelCommand
{
	private int headerCount;

	private GridModelRowColOperations rco;

	public GridModelSetHeaderCountCommand(GridModelRowColOperations rco, int headerCount)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandHeaderCount" + rco.RowColName, headerCount));
		this.rco = rco;
		this.headerCount = headerCount;
	}

	public override void Execute()
	{
		rco.HeaderCount = headerCount;
	}
}
