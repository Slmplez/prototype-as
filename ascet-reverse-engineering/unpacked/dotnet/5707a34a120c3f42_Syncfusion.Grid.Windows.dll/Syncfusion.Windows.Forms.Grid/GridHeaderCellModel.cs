using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridHeaderCellModel : GridStaticCellModel
{
	public GridHeaderCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowMerging = true;
	}

	protected GridHeaderCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridHeaderCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size size = base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
		return new Size(size.Width + 4, size.Height + 2);
	}
}
