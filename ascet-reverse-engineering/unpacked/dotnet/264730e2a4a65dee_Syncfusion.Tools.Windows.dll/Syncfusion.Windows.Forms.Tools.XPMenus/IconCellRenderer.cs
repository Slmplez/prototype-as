using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class IconCellRenderer : GridStaticCellRenderer
{
	public IconCellRenderer(GridControlBase grid, GridCellModelBase model)
		: base(grid, model)
	{
	}

	protected virtual bool ShouldDrawImage(BarItem barItem)
	{
		if (barItem != null && barItem.PaintStyle != PaintStyle.TextOnly && barItem.PaintStyle != PaintStyle.TextOnlyInMenus)
		{
			return true;
		}
		return false;
	}

	private Rectangle GetIconRect(Rectangle cellRect, Size szIcon)
	{
		return new Rectangle(cellRect.X + (cellRect.Width - szIcon.Width) / 2, cellRect.Y + (cellRect.Height - szIcon.Height) / 2, szIcon.Width, szIcon.Height);
	}

	protected override void DrawBackground(Graphics g, Rectangle rect, GridStyleInfo style, bool fillBackground)
	{
		if (base.Grid is MenuGridControlBase { ThemesEnabled: not false, IsVistaOS: not false })
		{
			rect.Offset(2, 0);
			rect.Inflate(0, -2);
		}
		base.DrawBackground(g, rect, style, fillBackground);
	}

	protected override void OnDraw(Graphics g, Rectangle rect, int rowIndex, int colIndex, GridStyleInfo style)
	{
		int imageIndex = style.ImageIndex;
		Rectangle rectangle = rect;
		bool Selected = false;
		bool flag = false;
		MenuGridControlBase menuGridControlBase = base.Grid as MenuGridControlBase;
		if (menuGridControlBase != null)
		{
			Selected = menuGridControlBase.HighlightRange.Top == rowIndex;
			flag = menuGridControlBase.IsRightToLeft();
		}
		BarItem barItem = menuGridControlBase.parentItem.Items[rowIndex - 1];
		if (barItem.ReiseBeforePopupItemPaint(g, rect, ref Selected, DrawElement.Icon, style))
		{
			return;
		}
		bool flag2 = style.CellValue != null && (int)style.CellValue > 0;
		if (flag2)
		{
			int num = SystemInformation.MenuCheckSize.Width + 7;
			int num2 = SystemInformation.MenuCheckSize.Height + 7;
			if (num > rect.Width - 1)
			{
				num = rect.Width - 1;
			}
			if (num2 > rect.Height - 2)
			{
				num2 = rect.Height - 2;
			}
			Rectangle rectangle2 = ((barItem.Image == null) ? GetIconRect(rect, new Size(num, num2)) : GetIconRect(rect, BarItem.DEF_IMAGE_SIZE));
			bool flag3 = barItem.Image == null && imageIndex < 0;
			if (menuGridControlBase != null && menuGridControlBase.ThemesEnabled && menuGridControlBase.IsVistaOS)
			{
				if (Selected)
				{
					SolidBrush solidBrush = ((!flag3) ? new SolidBrush(VistaMenuColors.SelImageBGColor) : new SolidBrush(VistaMenuColors.SelCheckedMenuBGColor));
					Rectangle rect2 = rect;
					rect2.Inflate(-1, -1);
					g.FillRectangle(solidBrush, rect2);
					solidBrush.Dispose();
				}
				if (flag3)
				{
					Pen pen = new Pen(VistaMenuColors.SelCheckedMenuColor, 2f);
					Rectangle rectangle3 = rectangle2;
					rectangle3.Inflate(-rectangle2.Width / 3, -rectangle2.Height / 4);
					Point[] points = new Point[3]
					{
						new Point(rectangle3.X, rectangle3.Y + rectangle3.Height / 2),
						new Point(rectangle3.X + rectangle3.Width / 2 - 1, rectangle3.Bottom - 2),
						new Point(rectangle3.Right - 1, rectangle3.Top - 1)
					};
					SmoothingMode smoothingMode = g.SmoothingMode;
					g.SmoothingMode = SmoothingMode.AntiAlias;
					g.DrawLines(pen, points);
					g.SmoothingMode = smoothingMode;
					pen.Dispose();
				}
				Pen pen2 = ((!flag3) ? new Pen(VistaMenuColors.SelImageBorderColor) : new Pen(VistaMenuColors.SelCheckedMenuBorderColor));
				Rectangle rect3 = rect;
				rect3.Width -= 2;
				rect3.Height--;
				g.DrawPath(pen2, DrawingUtils.GetRoundedRectangle(rect3, 2));
			}
			else if (menuGridControlBase.Style == VisualStyle.Office2007)
			{
				Office2007MenuPainter.DrawMenuChecked(g, rect, flag3);
			}
			else
			{
				rectangle2.X++;
				SolidBrush solidBrush2 = (Selected ? new SolidBrush(GetSelectedCheckMarkColor(menuGridControlBase.Style)) : new SolidBrush(GetCheckMarkColor(menuGridControlBase.Style)));
				g.FillRectangle(solidBrush2, rectangle2);
				solidBrush2.Dispose();
				if (flag3)
				{
					Pen pen3 = new Pen(SystemColors.ControlText);
					int num3 = (int)((float)rectangle2.Width / 4f + (float)rectangle2.Width / 20f);
					int num4 = num3 + (int)((float)rectangle2.Width / 10f);
					int num5 = num4 + (int)((float)rectangle2.Width / 5f);
					int num6 = (int)((float)rectangle2.Height / 4f + (float)rectangle2.Height / 5f);
					int num7 = num6 + (num4 - num3);
					int num8 = num7 - (num5 - num4);
					int num9 = (int)((float)rectangle2.Width / 10f);
					for (int i = 0; i < num9; i++)
					{
						g.DrawLine(pen3, rectangle2.Left + num3, rectangle2.Top + num6 + i, rectangle2.Left + num4, rectangle2.Top + num7 + i);
						g.DrawLine(pen3, rectangle2.Left + num4, rectangle2.Top + num7 + i, rectangle2.Left + num5, rectangle2.Top + num8 + i);
					}
					pen3.Dispose();
				}
				rectangle2.Width--;
				rectangle2.Height--;
				Pen checkMarkBorderPen = GetCheckMarkBorderPen(menuGridControlBase.Style, Selected);
				g.DrawRectangle(checkMarkBorderPen, rectangle2);
				checkMarkBorderPen.Dispose();
			}
		}
		if (menuGridControlBase.ThemesEnabled && menuGridControlBase.IsVistaOS)
		{
			Pen pen4 = ((!Selected) ? new Pen(VistaMenuColors.SeparatorColor) : new Pen(Color.FromArgb(64, VistaMenuColors.SeparatorColor)));
			if (menuGridControlBase.IsRightToLeft())
			{
				Point pt = new Point(rectangle.Left + 1, rectangle.Top);
				Point pt2 = new Point(rectangle.Left + 1, rectangle.Bottom);
				g.DrawLine(new Pen(Color.FromArgb(64, VistaMenuColors.SelBorderColor)), pt, pt2);
				g.DrawLine(pen4, pt, pt2);
				pt.Offset(-1, 1);
				pt2.Offset(-1, -2);
				g.DrawLine(new Pen(VistaMenuColors.BackgroundColor), pt, pt2);
			}
			else
			{
				Point pt3 = new Point(rectangle.Right - 1, rectangle.Top);
				Point pt4 = new Point(rectangle.Right - 1, rectangle.Bottom);
				g.DrawLine(new Pen(Color.FromArgb(64, VistaMenuColors.SelBorderColor)), pt3, pt4);
				g.DrawLine(pen4, pt3, pt4);
				pt3.Offset(1, 1);
				pt4.Offset(1, -2);
				g.DrawLine(new Pen(VistaMenuColors.BackgroundColor), pt3, pt4);
			}
			pen4.Dispose();
		}
		if (!ShouldDrawImage(barItem))
		{
			return;
		}
		bool flag4 = false;
		if (menuGridControlBase.IsItemDropDownStyle(barItem) && menuGridControlBase is MenuGrid)
		{
			MenuGrid menuGrid = menuGridControlBase as MenuGrid;
			if (!menuGrid.Customizing && Control.MouseButtons == MouseButtons.Left && menuGrid.currentVisibleChildIndex == -1)
			{
				flag4 = true;
			}
		}
		Size imageSizeInternal = barItem.GetImageSizeInternal(bLargeIcons: false);
		Rectangle iconRect = GetIconRect(rect, imageSizeInternal.IsEmpty ? BarItem.DEF_IMAGE_SIZE : imageSizeInternal);
		Rectangle rect4 = Rectangle.Empty;
		if ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) && Selected && style.Enabled && (flag4 || flag2))
		{
			rect4 = rect;
			SolidBrush solidBrush3 = null;
			solidBrush3 = ((menuGridControlBase.Style == VisualStyle.Office2003) ? new SolidBrush(Office2003Colors.CheckedSelColor) : new SolidBrush(Color.FromArgb(70, MenuColors.SelBorderColor)));
			int imageIndex2 = barItem.ImageIndex;
			IList imageListInternal = barItem.GetImageListInternal(bLargeIcons: false);
			if ((imageIndex2 >= 0 && imageIndex2 < imageListInternal.Count) || barItem.Image != null)
			{
				g.FillRectangle(solidBrush3, rect4);
			}
			solidBrush3.Dispose();
		}
		if (!style.Enabled)
		{
			if (Selected && !flag2 && menuGridControlBase.Style != VisualStyle.Office2003 && menuGridControlBase.Style != VisualStyle.VS2005 && menuGridControlBase.Style != VisualStyle.Office2007 && menuGridControlBase.Style != VisualStyle.Office2007Outlook)
			{
				iconRect.Offset((!flag) ? 1 : 0, 1);
			}
			if (!DrawDisabledImage(g, iconRect, barItem))
			{
				int imageIndex3 = barItem.ImageIndex;
				IList imageListInternal2 = barItem.GetImageListInternal(bLargeIcons: false);
				if (imageListInternal2 != null && imageIndex3 >= 0 && imageIndex3 < imageListInternal2.Count)
				{
					Image image = imageListInternal2[imageIndex3] as Image;
					Color background = ((menuGridControlBase.Style != VisualStyle.Office2003) ? MenuColors.SelColor : Office2003Colors.CheckedColor);
					ControlPaint.DrawImageDisabled(g, image, iconRect.Left, iconRect.Top, background);
				}
				else if (barItem.Image != null)
				{
					barItem.Image.Draw(g, iconRect, DrawItemState.Disabled);
				}
			}
		}
		else
		{
			Image image2 = null;
			ImageExt imageExt = null;
			if (Selected)
			{
				int highlightedImageIndex = barItem.HighlightedImageIndex;
				IList highlightImageListInternal = barItem.GetHighlightImageListInternal(bLargeIcons: false);
				if (highlightImageListInternal != null && highlightedImageIndex >= 0 && highlightedImageIndex < highlightImageListInternal.Count)
				{
					image2 = highlightImageListInternal[highlightedImageIndex] as Image;
				}
				else
				{
					imageExt = barItem.HighlightedImage;
				}
			}
			if (image2 == null && imageExt == null)
			{
				int imageIndex4 = barItem.ImageIndex;
				IList imageListInternal3 = barItem.GetImageListInternal(bLargeIcons: false);
				if (imageListInternal3 != null && imageIndex4 >= 0 && imageIndex4 < imageListInternal3.Count)
				{
					image2 = imageListInternal3[imageIndex4] as Image;
				}
				else
				{
					imageExt = barItem.Image;
				}
			}
			if (image2 != null || imageExt != null)
			{
				bool flag5 = false;
				if (Selected && !flag4 && !flag2 && menuGridControlBase.Style != VisualStyle.Office2003 && menuGridControlBase.Style != VisualStyle.VS2005 && menuGridControlBase.Style != VisualStyle.Office2007 && menuGridControlBase.Style != VisualStyle.Office2007Outlook && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
				{
					if (image2 == null)
					{
						image2 = imageExt.GetImage();
						flag5 = true;
					}
					using (Image iconImage = new Bitmap(image2, iconRect.Size))
					{
						DrawingUtils.DrawShadow(g, iconImage, iconRect.Left, iconRect.Top);
					}
					iconRect.Offset(flag ? 1 : (-1), -1);
				}
				if (imageExt != null)
				{
					imageExt.Draw(g, iconRect, DrawItemState.None);
				}
				else
				{
					DrawingUtils.DrawImage(g, image2, iconRect.Left, iconRect.Top, iconRect.Width, iconRect.Height);
				}
				if (flag5)
				{
					image2.Dispose();
				}
			}
			if (!Selected && !menuGridControlBase.ThemesEnabled && menuGridControlBase.Style != VisualStyle.Office2003 && menuGridControlBase.Style != VisualStyle.VS2005 && menuGridControlBase.Style != VisualStyle.Office2007 && menuGridControlBase.Style != VisualStyle.Office2007Outlook && (!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS))
			{
				SolidBrush solidBrush4 = new SolidBrush(Color.FromArgb(255 - MenuColors.InactiveItemAlphaBlendFactor, style.Interior.BackColor));
				g.FillRectangle(solidBrush4, iconRect);
				solidBrush4.Dispose();
			}
		}
		if ((!menuGridControlBase.ThemesEnabled || !menuGridControlBase.IsVistaOS) && Selected && style.Enabled && flag4)
		{
			rect4.Width--;
			rect4.Height--;
			Color color = ((menuGridControlBase.Style != VisualStyle.Office2003) ? MenuColors.SelBorderColor : Office2003Colors.SelBorderColor);
			Pen pen5 = new Pen(color);
			int imageIndex5 = barItem.ImageIndex;
			IList imageListInternal4 = barItem.GetImageListInternal(bLargeIcons: false);
			if ((imageIndex5 >= 0 && imageIndex5 < imageListInternal4.Count) || barItem.Image != null)
			{
				g.DrawRectangle(pen5, rect4);
			}
			pen5.Dispose();
		}
		barItem.ReiseAfterPopupItemPaint(g, rect, Selected, DrawElement.Icon, style);
	}

	private bool DrawDisabledImage(Graphics g, Rectangle rc, BarItem barItem)
	{
		int disabledImageIndex = barItem.DisabledImageIndex;
		IList disabledImageListInternal = barItem.GetDisabledImageListInternal(bLargeIcons: false);
		if (disabledImageListInternal != null && disabledImageIndex >= 0 && disabledImageIndex < disabledImageListInternal.Count)
		{
			Image image = disabledImageListInternal[disabledImageIndex] as Image;
			DrawingUtils.DrawImage(g, image, rc.Left, rc.Top, rc.Width, rc.Height);
			return true;
		}
		if (barItem.DisabledImage != null)
		{
			barItem.DisabledImage.Draw(g, rc, DrawItemState.None);
			return true;
		}
		return false;
	}

	private Pen GetCheckMarkBorderPen(VisualStyle style, bool bSelected)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.Office2007Outlook => bSelected ? new Pen(Office2007OutlookColors.MenuSelectedCheckMarkBorderColor) : new Pen(Office2007OutlookColors.MenuCheckMarkBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.MenuSelectedItemBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}

	private Color GetCheckMarkColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.CheckedColor, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.MenuCheckMarkColor, 
			VisualStyle.VS2005 => VS2005Colors.MenuCheckMarkColor, 
			_ => Color.FromArgb(70, MenuColors.SelColor), 
		};
	}

	private Color GetSelectedCheckMarkColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.CheckedSelColor, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.MenuSelectedCheckMarkColor, 
			VisualStyle.VS2005 => VS2005Colors.MenuSelectedCheckMarkColor, 
			_ => Color.FromArgb(70, MenuColors.SelColor), 
		};
	}
}
