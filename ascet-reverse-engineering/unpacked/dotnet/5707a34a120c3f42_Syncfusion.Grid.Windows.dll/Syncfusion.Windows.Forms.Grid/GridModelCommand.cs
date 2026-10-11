using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public abstract class GridModelCommand : SyncfusionCommand
{
	private string description;

	private GridModel grid;

	public override string Description => description;

	public GridModel Grid => grid;

	public GridModelCommand()
	{
		description = string.Empty;
	}

	public GridModelCommand(GridModel grid)
	{
		this.grid = grid;
	}

	protected void SetDescription(string value)
	{
		description = value;
	}
}
