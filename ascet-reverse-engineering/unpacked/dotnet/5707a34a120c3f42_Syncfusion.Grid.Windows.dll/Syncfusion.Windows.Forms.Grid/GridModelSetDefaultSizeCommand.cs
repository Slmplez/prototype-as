using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridModelSetDefaultSizeCommand : GridModelCommand
{
	private int defaultSize;

	private GridModelRowColOperations rco;

	public GridModelSetDefaultSizeCommand(GridModelRowColOperations rco, int defaultSize)
		: base(rco.model)
	{
		SetDescription(SR.GetString("CommandDefaultSize" + rco.RowColName, defaultSize));
		this.rco = rco;
		this.defaultSize = defaultSize;
	}

	public override void Execute()
	{
		rco.DefaultSize = defaultSize;
	}
}
