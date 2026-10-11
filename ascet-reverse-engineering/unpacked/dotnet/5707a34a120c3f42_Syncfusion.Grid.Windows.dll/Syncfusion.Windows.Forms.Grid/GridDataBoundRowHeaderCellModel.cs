using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDataBoundRowHeaderCellModel : GridHeaderCellModel
{
	protected GridDataBoundRowHeaderCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridDataBoundRowHeaderCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridDataBoundRowHeaderCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		return new Size(34, base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds).Height);
	}
}
