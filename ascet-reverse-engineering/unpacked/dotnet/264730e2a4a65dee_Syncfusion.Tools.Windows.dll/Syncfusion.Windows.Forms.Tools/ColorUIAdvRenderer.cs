using System;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorUIAdvRenderer
{
	private const int horizontalOffcet = 5;

	private const int verticalOffcet = 2;

	private const ContentAlignment anyRight = (ContentAlignment)1092;

	private const ContentAlignment anyBottom = (ContentAlignment)1792;

	private const ContentAlignment anyCenter = (ContentAlignment)546;

	private const ContentAlignment anyMiddle = (ContentAlignment)112;

	private static readonly Color c_ItemBorderColor = Color.FromArgb(197, 197, 197);

	private static readonly Color c_HighlightedBorderColor = Color.FromArgb(243, 148, 54);

	private static readonly Color c_SelectedBorderColor = Color.FromArgb(235, 75, 13);

	private static readonly Color c_SelectedHighlightedBorderColor = Color.FromArgb(255, 226, 148);

	private static readonly Color c_DefaultBackColor = SystemColors.Control;

	private static readonly Color c_GroupHeaderBackColor = SystemColors.ControlDark;

	protected Point m_textPoint = Point.Empty;

	private Rectangle m_bounds = Rectangle.Empty;

	private ColorPickerUIAdv m_colorPicker;

	private Point m_focus = new Point(-1, -1);

	private Color m_foreColor = Color.Black;

	protected virtual Color BackColor => c_DefaultBackColor;

	protected Rectangle Bounds => m_bounds;

	public ColorPickerUIAdv ColorPicker => m_colorPicker;

	protected virtual Color ItemBorderColor => c_ItemBorderColor;

	protected virtual Color HighlightedBorderColor => c_HighlightedBorderColor;

	protected virtual Color SelectedBorderColor => c_SelectedBorderColor;

	protected virtual Color SelectedHighlightedBorderColor => c_SelectedHighlightedBorderColor;

	protected virtual Color GroupHeaderBackColor => c_GroupHeaderBackColor;

	protected virtual Color ForeColor => m_foreColor;

	public ColorUIAdvRenderer(ColorPickerUIAdv control)
	{
		m_colorPicker = control;
		m_bounds = control.ClientRectangle;
	}

	public virtual void OnPaint(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		graphics.FillRectangle(new SolidBrush(BackColor), ColorPicker.ClientRectangle);
		DrawInterior(graphics);
	}

	protected virtual void DrawInterior(Graphics g)
	{
		_ = Bounds;
		if (ColorPicker.Groups == null || ColorPicker.Groups.Count == 0)
		{
			return;
		}
		for (int i = 0; i < ColorPicker.Groups.Count; i++)
		{
			ColorUIAdvGroup colorUIAdvGroup = ColorPicker.Groups[i];
			if (colorUIAdvGroup.Visible)
			{
				DrawGroupHeader(g, colorUIAdvGroup);
				DrawGroupInterior(g, colorUIAdvGroup);
			}
		}
	}

	protected virtual void DrawGroupHeader(Graphics g, ColorUIAdvGroup group)
	{
		Rectangle rectangle = Rectangle.Empty;
		if (group.Header.Dock == DockStyle.Top)
		{
			rectangle = new Rectangle(group.Bounds.X, group.Bounds.Y, group.Bounds.Width, group.HeaderHeight);
		}
		g.FillRectangle(new SolidBrush(GroupHeaderBackColor), rectangle);
		DrawText(g, group, rectangle);
	}

	public virtual void DrawText(Graphics g, ColorUIAdvGroup group, Rectangle labelBounds)
	{
		ComputeTextPosition(group, labelBounds);
		DrawParams drawParams = new DrawParams();
		drawParams.Enabled = ColorPicker.Enabled;
		drawParams.ControlBackColor = ColorPicker.BackColor;
		drawParams.Bounds = CalcTextRectangle(g, group, ColorPicker.TextAlign, labelBounds);
		drawParams.Align = ColorPicker.TextAlign;
		DrawTextInternal(g, group.Name, ForeColor, ColorPicker.Font, m_textPoint, drawParams);
	}

	private void DrawTextInternal(Graphics g, string str, Color textColor, Font textFont, PointF pt, DrawParams param)
	{
		using StringFormat stringFormat = new StringFormat();
		stringFormat.HotkeyPrefix = HotkeyPrefix.Show;
		stringFormat.Alignment = TranslateAlignment(param.Align);
		stringFormat.LineAlignment = TranslateLineAlignment(param.Align);
		RectangleF bounds = param.Bounds;
		if (param.Enabled)
		{
			using (Brush brush = new SolidBrush(textColor))
			{
				g.DrawString(str, textFont, brush, bounds, stringFormat);
				return;
			}
		}
		ControlPaint.DrawStringDisabled(g, str, textFont, param.ControlBackColor, param.Bounds, stringFormat);
	}

	private StringAlignment TranslateAlignment(ContentAlignment align)
	{
		if ((align & (ContentAlignment)1092) != 0)
		{
			return StringAlignment.Far;
		}
		if ((align & (ContentAlignment)546) != 0)
		{
			return StringAlignment.Center;
		}
		return StringAlignment.Near;
	}

	private StringAlignment TranslateLineAlignment(ContentAlignment align)
	{
		if ((align & (ContentAlignment)1792) != 0)
		{
			return StringAlignment.Far;
		}
		if ((align & (ContentAlignment)112) != 0)
		{
			return StringAlignment.Center;
		}
		return StringAlignment.Near;
	}

	private Rectangle VAlignWithin(Size alignThis, Rectangle withinThis, ContentAlignment align)
	{
		if ((align & (ContentAlignment)1792) != 0)
		{
			withinThis.Y += withinThis.Height - alignThis.Height;
		}
		else if ((align & (ContentAlignment)112) != 0)
		{
			withinThis.Y += (withinThis.Height - alignThis.Height) / 2;
		}
		withinThis.Height = alignThis.Height;
		return withinThis;
	}

	private Rectangle HAlignWithin(Size alignThis, Rectangle withinThis, ContentAlignment align)
	{
		if ((align & (ContentAlignment)1092) != 0)
		{
			withinThis.X += withinThis.Width - alignThis.Width;
		}
		else if ((align & (ContentAlignment)546) != 0)
		{
			withinThis.X += (withinThis.Width - alignThis.Width) / 2;
		}
		withinThis.Width = alignThis.Width;
		return withinThis;
	}

	public virtual void ComputeTextPosition(ColorUIAdvGroup group, Rectangle labelBounds)
	{
		Graphics graphics = ColorPicker.CreateGraphics();
		StringFormat stringFormat = (StringFormat)StringFormat.GenericTypographic.Clone();
		stringFormat.FormatFlags |= StringFormatFlags.MeasureTrailingSpaces;
		SizeF sizeF = graphics.MeasureString(group.Name, ColorPicker.Font, ColorPicker.Width, stringFormat);
		graphics.Dispose();
		Rectangle rectangle = labelBounds;
		int y = labelBounds.Y;
		int num = (int)Math.Max(0f, ((float)(rectangle.Width - 10) - sizeF.Width) / 2f);
		int num2 = (int)Math.Max(0f, ((float)(rectangle.Height - 4) - sizeF.Height) / 2f);
		switch (ColorPicker.TextAlign)
		{
		case ContentAlignment.BottomCenter:
			m_textPoint = new Point(num + 5, 2 * num2 + 2);
			break;
		case ContentAlignment.BottomLeft:
			m_textPoint = new Point(5, 2 * num2 + 2);
			break;
		case ContentAlignment.BottomRight:
			m_textPoint = new Point(num * 2 + 5, 2 * num2 + 2);
			break;
		case ContentAlignment.MiddleCenter:
			m_textPoint = new Point(num + 5, num2 + 2);
			break;
		case ContentAlignment.MiddleLeft:
			m_textPoint = new Point(5, num2 + 2);
			break;
		case ContentAlignment.MiddleRight:
			m_textPoint = new Point(num * 2 + 5, num2 + 2);
			break;
		case ContentAlignment.TopCenter:
			m_textPoint = new Point(num + 5, 2);
			break;
		case ContentAlignment.TopLeft:
			m_textPoint = new Point(5, 2);
			break;
		case ContentAlignment.TopRight:
			m_textPoint = new Point(num * 2 + 5, 2);
			break;
		}
		m_textPoint.Y += y;
	}

	protected virtual Rectangle CalcTextRectangle(Graphics g, ColorUIAdvGroup group, ContentAlignment align, Rectangle labelBounds)
	{
		Rectangle rectangle = labelBounds;
		rectangle.Inflate(-5, -2);
		Rectangle rectangle2 = rectangle;
		if (g != null)
		{
			Size alignThis;
			using (StringFormat stringFormat = new StringFormat())
			{
				SizeF value = g.MeasureString(group.Name, ColorPicker.Font, new SizeF(rectangle2.Width, rectangle2.Height), stringFormat);
				alignThis = Size.Ceiling(value);
			}
			rectangle2 = HAlignWithin(alignThis, rectangle2, align);
			rectangle2 = VAlignWithin(alignThis, rectangle2, align);
		}
		int num = Math.Min(rectangle2.Bottom, rectangle.Bottom);
		rectangle2.Y = Math.Max(rectangle2.Y, rectangle.Y);
		rectangle2.Height = num - rectangle2.Y;
		return rectangle2;
	}

	protected virtual void DrawGroupInterior(Graphics g, ColorUIAdvGroup group)
	{
		if (group.Items == null || group.Items.Count <= 0)
		{
			return;
		}
		int num = group.Bounds.Y;
		if (group.Header.Dock == DockStyle.Top)
		{
			num += group.HeaderHeight;
		}
		int num2 = num;
		if (group.IsSubItemsVisible)
		{
			num2 += group.ParentControl.BorderOffset + group.ParentControl.ColorItemSize.Height;
			num2 = ((group.ParentControl.VerticalItemsSpacing >= 6) ? (num2 + group.ParentControl.VerticalItemsSpacing) : (num2 + 6));
		}
		else
		{
			num2 += group.ParentControl.BorderOffset * 2 + group.ParentControl.ColorItemSize.Height;
		}
		Rectangle inheritArea = new Rectangle(new Point(0, num2), new Size(group.Size.Width, group.Size.Height - num2));
		for (int i = 0; i < group.Items.Count; i++)
		{
			GroupColorItem groupColorItem = group.Items[i] as GroupColorItem;
			Rectangle bounds = groupColorItem.Bounds;
			Color color = groupColorItem.Color;
			g.FillRectangle(new SolidBrush(color), bounds);
			bounds.Width--;
			bounds.Height--;
			Color empty = Color.Empty;
			empty = ((groupColorItem.State == ColorItemState.Normal) ? ItemBorderColor : ((groupColorItem.State != ColorItemState.Highlighted) ? SelectedBorderColor : HighlightedBorderColor));
			g.DrawRectangle(new Pen(empty), bounds);
			if (groupColorItem.State == ColorItemState.Highlighted || groupColorItem.State == ColorItemState.Selected)
			{
				bounds.Inflate(-1, -1);
				g.DrawRectangle(new Pen(SelectedHighlightedBorderColor), bounds);
			}
			if (group.IsSubItemsVisible)
			{
				DrawInheritItems(g, group, groupColorItem, inheritArea);
			}
		}
	}

	protected virtual void DrawInheritItems(Graphics g, ColorUIAdvGroup group, GroupColorItem colorItem, Rectangle inheritArea)
	{
		ColorItemCollection subItems = colorItem.SubItems;
		Size colorItemSize = group.ParentControl.ColorItemSize;
		if (subItems == null || subItems.Count <= 0)
		{
			return;
		}
		for (int i = 0; i < group.SubItemsDepth; i++)
		{
			if (i >= subItems.Count)
			{
				continue;
			}
			ColorItem colorItem2 = subItems[i];
			Rectangle bounds = colorItem2.Bounds;
			g.FillRectangle(new SolidBrush(colorItem2.Color), bounds);
			if (ColorPicker.VerticalItemsSpacing != 0)
			{
				bounds.Width--;
				bounds.Height--;
				Color empty = Color.Empty;
				empty = ((colorItem2.State == ColorItemState.Normal) ? ItemBorderColor : ((colorItem2.State != ColorItemState.Highlighted) ? SelectedBorderColor : HighlightedBorderColor));
				g.DrawRectangle(new Pen(empty), bounds);
				if (colorItem2.State == ColorItemState.Highlighted || colorItem2.State == ColorItemState.Selected)
				{
					bounds.Inflate(-1, -1);
					g.DrawRectangle(new Pen(SelectedHighlightedBorderColor), bounds);
				}
			}
		}
		if (ColorPicker.VerticalItemsSpacing != 0)
		{
			return;
		}
		int width = ColorPicker.ColorItemSize.Width;
		int num = ColorPicker.ColorItemSize.Height * group.SubItemsDepth;
		int x = ColorPicker.BorderOffset + (ColorPicker.HorizontalItemsSpacing + colorItemSize.Width) * colorItem.Index;
		int y = inheritArea.Location.Y;
		g.DrawRectangle(new Pen(ItemBorderColor), new Rectangle(x, y, width - 1, num - 1));
		if (ColorPicker.HighLightedItem != null || ColorPicker.SelectedItem != null)
		{
			if (ColorPicker.HighLightedItem != null)
			{
				Rectangle bounds2 = ColorPicker.HighLightedItem.Bounds;
				bounds2.Width--;
				bounds2.Height--;
				g.DrawRectangle(new Pen(HighlightedBorderColor), bounds2);
				bounds2.Inflate(-1, -1);
				g.DrawRectangle(new Pen(SelectedHighlightedBorderColor), bounds2);
			}
			if (ColorPicker.HighLightedItem != ColorPicker.SelectedItem && ColorPicker.SelectedItem != null)
			{
				Rectangle bounds3 = ColorPicker.SelectedItem.Bounds;
				bounds3.Width--;
				bounds3.Height--;
				g.DrawRectangle(new Pen(SelectedBorderColor), bounds3);
				bounds3.Inflate(-1, -1);
				g.DrawRectangle(new Pen(SelectedHighlightedBorderColor), bounds3);
			}
		}
	}
}
