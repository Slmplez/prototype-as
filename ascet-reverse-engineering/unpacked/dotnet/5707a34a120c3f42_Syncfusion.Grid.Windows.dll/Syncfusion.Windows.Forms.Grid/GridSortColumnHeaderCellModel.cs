using System;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridSortColumnHeaderCellModel : GridHeaderCellModel
{
	public GridSortColumnHeaderCellModel(GridModel grid)
		: base(grid)
	{
	}

	protected GridSortColumnHeaderCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override string GetFormattedText(GridStyleInfo style, object value, int textInfo)
	{
		GridStyleInfo gridStyleInfo = base.Grid.ColStyles[((GridStyleInfoIdentity)style.Identity).ColIndex];
		string description = gridStyleInfo.Description;
		if (description.Length > 0)
		{
			return description;
		}
		return base.GetFormattedText(style, value, textInfo);
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridSortColumnHeaderCellRenderer(control, this);
	}

	protected override Size OnQueryPrefferedClientSize(Graphics g, int rowIndex, int colIndex, GridStyleInfo style, GridQueryBounds queryBounds)
	{
		Size result = base.OnQueryPrefferedClientSize(g, rowIndex, colIndex, style, queryBounds);
		result.Width += 12;
		return result;
	}
}
