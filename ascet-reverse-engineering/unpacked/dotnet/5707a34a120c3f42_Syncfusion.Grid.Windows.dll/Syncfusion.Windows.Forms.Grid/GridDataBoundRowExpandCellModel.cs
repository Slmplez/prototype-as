using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDataBoundRowExpandCellModel : GridCellModelBase
{
	protected GridDataBoundRowExpandCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		base.ButtonBarSize = new Size(11, 11);
	}

	public GridDataBoundRowExpandCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDataBoundRowExpandCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		return new Size(34, base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds).Height);
	}
}
