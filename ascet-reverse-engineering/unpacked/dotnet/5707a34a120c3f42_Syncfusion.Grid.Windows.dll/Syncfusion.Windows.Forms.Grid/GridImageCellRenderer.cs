using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridImageCellRenderer : GridStaticCellRenderer
{
	public GridImageCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
	}

	protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)
	{
		if (clientRectangle.IsEmpty)
		{
			return;
		}
		object cellValue = style.CellValue;
		Image image = ImageUtil.ConvertToImage(cellValue);
		ImageList imageList = null;
		int num = -1;
		if (image == null)
		{
			imageList = style.ImageList;
			num = style.ImageIndex;
			if (imageList != null)
			{
				if (num < 0 && cellValue != null)
				{
					try
					{
						if (!(cellValue is string) || (string)cellValue != string.Empty)
						{
							num = Convert.ToInt32(cellValue);
						}
					}
					catch
					{
					}
				}
				if (num < 0 || num >= imageList.Images.Count)
				{
					num = style.ImageIndex;
				}
				if (num >= 0 && num < imageList.Images.Count)
				{
					image = imageList.Images[num];
				}
			}
		}
		Rectangle cellBoundsCoreInt = GetCellBoundsCoreInt(rowIndex, colIndex, nonClientIfVisible: false);
		bool isTextRightToLeft = (style.RightToLeft == RightToLeft.Inherit && base.Grid.IsRightToLeft()) || style.RightToLeft == RightToLeft.Yes;
		GridImageUtil.DrawImage(image, cellBoundsCoreInt, g, clientRectangle, style, isTextRightToLeft, imageList, num);
	}
}
