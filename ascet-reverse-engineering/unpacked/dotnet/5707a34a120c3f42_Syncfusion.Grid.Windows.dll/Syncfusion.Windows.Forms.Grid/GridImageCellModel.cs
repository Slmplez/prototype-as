using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridImageCellModel : GridStaticCellModel
{
	protected GridImageCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridImageCellModel(GridModel grid)
		: base(grid)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridImageCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		return ImageUtil.ConvertToImage(style.CellValue)?.Size ?? base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
	}
}
