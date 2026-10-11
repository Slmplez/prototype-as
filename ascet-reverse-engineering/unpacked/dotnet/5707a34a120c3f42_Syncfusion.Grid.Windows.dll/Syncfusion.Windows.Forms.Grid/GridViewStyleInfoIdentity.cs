using System.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DebuggerStepThrough]
[DocumentationExclude]
internal class GridViewStyleInfoIdentity : GridStyleInfoIdentity
{
	private GridControlBase gridView;

	public GridViewStyleInfoIdentity(GridControlBase gridView, IGridData data, int rowIndex, int colIndex)
		: base(data, rowIndex, colIndex, offLine: true)
	{
		this.gridView = gridView;
	}

	public override void Dispose()
	{
		gridView = null;
		base.Dispose();
	}

	public override GridControlBase GetActiveGridView()
	{
		return gridView;
	}
}
