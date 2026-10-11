using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridPushButtonCellModel : GridCellModelBase
{
	public GridPushButtonCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridPushButtonCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridPushButtonCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Font gdipFont = style.GdipFont;
		Size result;
		if (queryBounds == GridQueryBounds.Height)
		{
			base.Grid.GetSpannedRangeInfo(rowIndex, colIndex, out var range);
			Rectangle cellBounds = new Rectangle(0, 0, base.Grid.ColWidths.GetTotal(range.Left, range.Right), base.Grid.RowHeights.GetTotal(range.Top, range.Bottom));
			Rectangle rectangle = SubtractBorders(cellBounds, style, isRightToLeft: false);
			result = g.MeasureString(style.Description, gdipFont, rectangle.Width).ToSize();
		}
		else
		{
			result = g.MeasureString(style.Description, gdipFont).ToSize();
		}
		result.Width += 8;
		result.Height += 4;
		return result;
	}
}
