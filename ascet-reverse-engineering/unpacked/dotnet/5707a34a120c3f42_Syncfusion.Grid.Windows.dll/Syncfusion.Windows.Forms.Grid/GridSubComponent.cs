using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridSubComponent : NonFinalizeDisposable
{
	private GridControlBase grid;

	public GridControlBase Grid => grid;

	protected GridSubComponent(GridControlBase grid)
	{
		this.grid = grid;
	}
}
