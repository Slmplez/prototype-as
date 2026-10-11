using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDataBoundTreeCellModel : GridTextBoxCellModel
{
	private GridControlBase grid;

	private GridDataBoundTreeCellRenderer renderer;

	protected GridDataBoundTreeCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		base.ButtonBarSize = new Size(11, 11);
	}

	public GridDataBoundTreeCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		grid = control;
		renderer = new GridDataBoundTreeCellRenderer(control, this);
		return renderer;
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size size = base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
		int num = 36;
		if (grid != null)
		{
			GridBoundRecordState recordStateAtRowIndex = ((GridDataBoundGrid)grid).Binder.GetRecordStateAtRowIndex(rowIndex);
			num = (recordStateAtRowIndex.level + 1) * renderer.offSet + renderer.midPt + renderer.leftSide + 2;
		}
		return new Size(size.Width + num, size.Height);
	}
}
