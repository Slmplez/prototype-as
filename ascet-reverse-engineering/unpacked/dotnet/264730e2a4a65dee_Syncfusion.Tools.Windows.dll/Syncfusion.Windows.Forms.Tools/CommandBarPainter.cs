using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class CommandBarPainter
{
	private const int c_iGripperXOffset = 2;

	private const int c_iGripperYOffset = 4;

	private const int c_iGripperPointSize = 2;

	private const int c_iRectOffset = 1;

	private const int c_iDropDownRadius = 2;

	private const int c_iChevronDistance = 4;

	private const int c_iChevronArrowNumber = 2;

	static CommandBarPainter()
	{
	}

	public static void PaintDockedText(Graphics g, Rectangle rect, string text, Font textFont, Color foreColor, bool bRTL, bool bVertical)
	{
		StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = StringAlignment.Near;
		stringFormat.LineAlignment = StringAlignment.Center;
		stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		stringFormat.FormatFlags = StringFormatFlags.NoWrap;
		if (bRTL)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		if (bVertical)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionVertical;
		}
		using Brush brush = new SolidBrush(foreColor);
		g.DrawString(text, textFont, brush, rect, stringFormat);
	}

	public static void PaintFloatingText(Graphics g, Rectangle rect, string text, Font textFont, Color foreColor, bool bRTL)
	{
		StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = StringAlignment.Near;
		stringFormat.LineAlignment = StringAlignment.Center;
		stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		stringFormat.FormatFlags = StringFormatFlags.NoWrap;
		if (bRTL)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		using Brush brush = new SolidBrush(foreColor);
		g.DrawString(text, textFont, brush, rect, stringFormat);
	}

	public static void PaintControlBarText(Graphics g, Rectangle rect, string text, Font textFont, Color foreColor, bool bRTL)
	{
		StringFormat stringFormat = (StringFormat)StringFormat.GenericDefault.Clone();
		stringFormat.Alignment = StringAlignment.Near;
		stringFormat.LineAlignment = StringAlignment.Center;
		stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		stringFormat.FormatFlags = StringFormatFlags.MeasureTrailingSpaces | StringFormatFlags.NoWrap;
		if (bRTL)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		using Brush brush = new SolidBrush(foreColor);
		g.DrawString(text, textFont, brush, rect, stringFormat);
	}

	public static void PaintDropDownButton(Graphics g, Rectangle rect, bool bRTL, bool bVertical, bool bShowChevron, Color lightColor, Color darkColor, Color chevronColor, bool bShowArrow)
	{
		if (bVertical)
		{
			PaintDropDownVertical(g, rect, bRTL, lightColor, darkColor);
			if (bShowArrow)
			{
				PaintDropDownVerticalArrow(g, rect, bRTL);
			}
			if (bShowChevron)
			{
				PaintChevronVertical(g, rect, bRTL, chevronColor);
			}
		}
		else
		{
			PaintDropDownHorizontal(g, rect, bRTL, lightColor, darkColor);
			if (bShowArrow)
			{
				PaintDropDownHorizontalArrow(g, rect, bRTL);
			}
			if (bShowChevron)
			{
				PaintChevronHorizontal(g, rect, bRTL, chevronColor);
			}
		}
	}

	public static void PaintGripper(Graphics g, Rectangle rect, bool bRTL, bool bVertical, Color lightColor, Color darkColor)
	{
		SolidBrush solidBrush = new SolidBrush(darkColor);
		SolidBrush solidBrush2 = new SolidBrush(lightColor);
		int num = (bVertical ? GetsNumberGripperPoints(rect.Width) : GetsNumberGripperPoints(rect.Height));
		if (bVertical)
		{
			Rectangle rectangle = (bRTL ? new Rectangle(4, rect.Bottom - 4, 2, 2) : new Rectangle(4, 2, 2, 2));
			Rectangle rect2 = rectangle;
			rect2.Offset(1, 1);
			for (int i = 0; i < num; i++)
			{
				g.FillRectangle(solidBrush2, rect2);
				g.FillRectangle(solidBrush, rectangle);
				rectangle.X += 4;
				rect2.X += 4;
			}
		}
		else
		{
			Rectangle rectangle2 = (bRTL ? new Rectangle(rect.Right - 4, 4, 2, 2) : new Rectangle(2, 4, 2, 2));
			Rectangle rect3 = rectangle2;
			rect3.Offset(1, 1);
			for (int j = 0; j < num; j++)
			{
				g.FillRectangle(solidBrush2, rect3);
				g.FillRectangle(solidBrush, rectangle2);
				rectangle2.Y += 4;
				rect3.Y += 4;
			}
		}
		solidBrush.Dispose();
		solidBrush2.Dispose();
	}

	public static void PaintGripperOfficeXP(Graphics g, Rectangle rect, bool bRTL, DockStyle dockState, Color gripperColor)
	{
		Pen pen = new Pen(gripperColor, 1f);
		Rectangle rectangle = rect;
		int num = 2;
		int num2 = 2;
		int num3 = 4;
		int num4 = 2;
		int num5 = ((dockState == DockStyle.Left || dockState == DockStyle.Right) ? ((rect.Width - 10) / 2) : ((rect.Height - 10) / 2));
		if (dockState == DockStyle.Top || dockState == DockStyle.Bottom)
		{
			Point pt = new Point(bRTL ? (rectangle.Right - num2) : num2, num3);
			Point pt2 = new Point(bRTL ? (rectangle.Right - num2 - num4) : (num2 + num4), pt.Y);
			for (int i = 0; i <= num5; i++)
			{
				g.DrawLine(pen, pt, pt2);
				pt.Y += num;
				pt2.Y = pt.Y;
			}
		}
		else
		{
			Point pt3 = new Point(num3 + num, bRTL ? (rectangle.Bottom - num2) : num2);
			Point pt4 = new Point(pt3.X, bRTL ? (rectangle.Bottom - num2 - num4) : (num2 + num4));
			for (int j = 0; j <= num5; j++)
			{
				g.DrawLine(pen, pt3, pt4);
				pt3.X += num;
				pt4.X = pt3.X;
			}
		}
		pen.Dispose();
	}

	public static void PaintControlBarGripperOfficeXP(Graphics g, Rectangle rect, int captionHeight, bool bRTL, bool bFloating, Color gripperColor)
	{
		Pen pen = new Pen(gripperColor, 1f);
		Rectangle rectangle = rect;
		int right = rectangle.Right;
		int num = 2;
		int num2 = 2;
		int num3 = 4;
		int num4 = 2;
		int num5 = (captionHeight - 6) / 2;
		int num6 = num2 + 1;
		if (bRTL)
		{
			num6 = right - num4 - num6;
		}
		int num7 = (bFloating ? num3 : (num3 + 2));
		int num8 = 0;
		for (int i = 0; i <= num5; i++)
		{
			g.DrawLine(pen, num6, num7 + num8, num6 + num4, num7 + num8);
			num8 += num;
		}
		pen.Dispose();
	}

	public static void PaintDockedBackground(Graphics g, bool bRTL, bool bVertical, Rectangle clientRect, Color barColorLight, Color barColorDark, Color barBorderColor)
	{
		if (bVertical)
		{
			PaintDockedBackgroundVertical(g, bRTL, clientRect, barColorLight, barColorDark, barBorderColor);
		}
		else
		{
			PaintDockedBackgroundHorizontal(g, bRTL, clientRect, barColorLight, barColorDark, barBorderColor);
		}
	}

	public static void PaintDockedBackgroundOfficeXP(Graphics g, bool bRTL, DockStyle dockState, Rectangle rect, Color backColor, bool bDrawTopLine)
	{
		Rectangle rectangle = rect;
		if (bRTL)
		{
			rectangle.X++;
		}
		else
		{
			rectangle.Width--;
		}
		Pen pen = new Pen(backColor);
		switch (dockState)
		{
		case DockStyle.Top:
			if (bDrawTopLine)
			{
				g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Top);
			}
			g.DrawLine(pen, rectangle.Left, rectangle.Bottom, rectangle.Right, rectangle.Bottom);
			break;
		case DockStyle.Bottom:
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Top);
			g.DrawLine(pen, rectangle.Left, rectangle.Bottom, rectangle.Right, rectangle.Bottom);
			break;
		default:
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left, rectangle.Bottom);
			g.DrawLine(pen, rectangle.Right, rectangle.Top, rectangle.Right, rectangle.Bottom);
			break;
		}
		pen.Dispose();
	}

	public static void PaintFloatingBackground(Graphics g, Rectangle clientRect, Rectangle barRect, Color backColor, Color borderColor, Color startColor, Color endColor)
	{
		using (Brush brush = new SolidBrush(backColor))
		{
			g.FillRectangle(brush, clientRect);
		}
		using (LinearGradientBrush brush2 = new LinearGradientBrush(barRect, startColor, endColor, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush2, barRect);
		}
		Point[] points = new Point[8]
		{
			new Point(clientRect.Left + 1, clientRect.Top),
			new Point(clientRect.Right - 2, clientRect.Top),
			new Point(clientRect.Right - 1, clientRect.Top + 1),
			new Point(clientRect.Right - 1, clientRect.Bottom - 2),
			new Point(clientRect.Right - 2, clientRect.Bottom - 1),
			new Point(clientRect.Left + 1, clientRect.Bottom - 1),
			new Point(clientRect.Left, clientRect.Bottom - 2),
			new Point(clientRect.Left, clientRect.Top + 1)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		using (graphicsPath)
		{
			using Pen pen = new Pen(borderColor);
			g.DrawPath(pen, graphicsPath);
		}
	}

	public static void PaintFloatingCloseButton(Graphics g, Rectangle rect, Color borderColor, Color fillColor, Color buttonColor)
	{
		using (SolidBrush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(borderColor))
		{
			g.DrawRectangle(pen, rect);
		}
		using Pen pen2 = new Pen(buttonColor);
		g.DrawLine(pen2, new Point(rect.Left + 5, rect.Top + 5), new Point(rect.Right - 5, rect.Bottom - 5));
		g.DrawLine(pen2, new Point(rect.Left + 6, rect.Top + 5), new Point(rect.Right - 4, rect.Bottom - 5));
		g.DrawLine(pen2, new Point(rect.Left + 5, rect.Bottom - 5), new Point(rect.Right - 5, rect.Top + 5));
		g.DrawLine(pen2, new Point(rect.Left + 6, rect.Bottom - 5), new Point(rect.Right - 4, rect.Top + 5));
	}

	public static void PaintFloatingDropDownButton(Graphics g, Rectangle rect, Color borderColor, Color fillColor, Color buttonColor)
	{
		using (SolidBrush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(borderColor))
		{
			g.DrawRectangle(pen, rect);
		}
		Point point = new Point(rect.Left + rect.Width / 2, rect.Top + rect.Height / 2);
		Point[] points = new Point[4]
		{
			new Point(point.X - 4, point.Y - 2),
			new Point(point.X + 5, point.Y - 2),
			new Point(point.X, point.Y + 3),
			new Point(point.X - 4, point.Y - 2)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		using (graphicsPath)
		{
			using Brush brush2 = new SolidBrush(buttonColor);
			g.FillPath(brush2, graphicsPath);
		}
	}

	public static void PaintDropDownButtonOfficeXP(Graphics g, Rectangle rect, bool bRTL, bool bVertical, bool bShowChevron, Color borderColor, Color fillColor, Color chevronColor, bool bShowArrow)
	{
		using (Brush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(borderColor))
		{
			g.DrawRectangle(pen, rect);
		}
		if (bShowArrow)
		{
			PaintDropDownArrowOfficeXP(g, rect, bRTL, bVertical);
		}
		if (bShowChevron)
		{
			PaintChevronOfficeXP(g, rect, bRTL, bVertical, chevronColor);
		}
	}

	public static void PaintDropDownArrowsThemed(Graphics g, Rectangle rect, bool bRTL, bool bVertical, bool bShowChevron, Color chevronColor, bool bShowArrow)
	{
		if (bShowArrow)
		{
			PaintDropDownArrowOfficeXP(g, rect, bRTL, bVertical);
		}
		if (bShowChevron)
		{
			PaintChevronOfficeXP(g, rect, bRTL, bVertical, chevronColor);
		}
	}

	public static void PaintFloatingDropDownArrowsThemed(Graphics g, Rectangle rect, bool bRTL)
	{
		Point point = new Point(rect.Left + rect.Width / 2, rect.Top + rect.Height / 2);
		Point[] points = new Point[4]
		{
			new Point(point.X - 4, point.Y - 2),
			new Point(point.X + 5, point.Y - 2),
			new Point(point.X, point.Y + 3),
			new Point(point.X - 4, point.Y - 2)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		using (graphicsPath)
		{
			using Brush brush = new SolidBrush(Color.White);
			g.FillPath(brush, graphicsPath);
		}
	}

	public static void PaintControlBarBackground(Graphics g, Rectangle rect, Rectangle captionRect, bool bRTL, bool bContainFocus, Color borderColor, Color captionLightColor, Color captionDarkColor, Color activeLightColor, Color activeDarkColor)
	{
		Rectangle rect2 = Rectangle.Inflate(rect, -2, -2);
		Region clip = g.Clip;
		g.ExcludeClip(rect2);
		using (SolidBrush brush = new SolidBrush(borderColor))
		{
			g.FillRectangle(brush, rect);
		}
		g.Clip = clip;
		if (bContainFocus)
		{
			using (Brush brush2 = new LinearGradientBrush(captionRect, activeLightColor, activeDarkColor, LinearGradientMode.Vertical))
			{
				g.FillRectangle(brush2, captionRect);
				return;
			}
		}
		using LinearGradientBrush brush3 = new LinearGradientBrush(captionRect, captionLightColor, captionDarkColor, LinearGradientMode.Vertical);
		g.FillRectangle(brush3, captionRect);
	}

	public static void PaintControlBarDropDown(Graphics g, Rectangle rect, bool bRTL, Color borderColor, Color fillColor)
	{
		using (Brush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(borderColor))
		{
			g.DrawRectangle(pen, rect);
		}
		Point point = (bRTL ? new Point(rect.Left + 9, rect.Top + rect.Height / 2) : new Point(rect.Left + rect.Width - 9, rect.Top + rect.Height / 2));
		Point[] points = new Point[4]
		{
			new Point(point.X - 4, point.Y - 2),
			new Point(point.X + 5, point.Y - 2),
			new Point(point.X, point.Y + 3),
			new Point(point.X - 4, point.Y - 2)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		using (graphicsPath)
		{
			using Brush brush2 = new SolidBrush(SystemColors.ControlText);
			g.FillPath(brush2, graphicsPath);
		}
	}

	public static void PaintControlBarCloseButton(Graphics g, Rectangle rect, Color borderColor, Color fillColor)
	{
		using (Brush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using (Pen pen = new Pen(borderColor))
		{
			g.DrawRectangle(pen, rect);
		}
		using Pen pen2 = new Pen(SystemColors.ControlText);
		g.DrawLine(pen2, new Point(rect.Left + 5, rect.Top + 5), new Point(rect.Right - 5, rect.Bottom - 5));
		g.DrawLine(pen2, new Point(rect.Left + 6, rect.Top + 5), new Point(rect.Right - 4, rect.Bottom - 5));
		g.DrawLine(pen2, new Point(rect.Left + 5, rect.Bottom - 5), new Point(rect.Right - 5, rect.Top + 5));
		g.DrawLine(pen2, new Point(rect.Left + 6, rect.Bottom - 5), new Point(rect.Right - 4, rect.Top + 5));
	}

	public static void PaintControlBarDropDownThemed(Graphics g, Rectangle rect, Color borderColor, Color fillColor)
	{
		using (Brush brush = new SolidBrush(fillColor))
		{
			g.FillRectangle(brush, rect);
		}
		using Pen pen = new Pen(borderColor);
		g.DrawRectangle(pen, rect);
	}

	private static void PaintChevronOfficeXP(Graphics g, Rectangle rect, bool bRTL, bool bVertical, Color chevronColor)
	{
		Pen pen = new Pen(chevronColor);
		if (bVertical)
		{
			int dy = ((!bRTL) ? 1 : (-1));
			int dy2 = (bRTL ? 1 : (-1));
			Point pt = (bRTL ? new Point(rect.Right - 9, rect.Y + 4) : new Point(rect.Right - 9, rect.Y + 2));
			Point pt2 = new Point(pt.X, pt.Y + 1);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt.X, pt.Y + 4, pt2.X, pt2.Y + 4);
			pt.Offset(1, dy);
			pt2.Offset(1, dy);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt.X, pt.Y + 4, pt2.X, pt2.Y + 4);
			pt.Offset(1, dy);
			pt2.Offset(1, dy);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt.X, pt.Y + 4, pt2.X, pt2.Y + 4);
			pt.Offset(1, dy2);
			pt2.Offset(1, dy2);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt.X, pt.Y + 4, pt2.X, pt2.Y + 4);
			pt.Offset(1, dy2);
			pt2.Offset(1, dy2);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt.X, pt.Y + 4, pt2.X, pt2.Y + 4);
		}
		else
		{
			int dx = ((!bRTL) ? 1 : (-1));
			int dx2 = (bRTL ? 1 : (-1));
			Point pt3 = (bRTL ? new Point(rect.X + 3, rect.Y + 3) : new Point(rect.X + 1, rect.Y + 3));
			Point pt4 = new Point(pt3.X + 1, pt3.Y);
			g.DrawLine(pen, pt3, pt4);
			g.DrawLine(pen, pt3.X + 4, pt3.Y, pt4.X + 4, pt4.Y);
			pt3.Offset(dx, 1);
			pt4.Offset(dx, 1);
			g.DrawLine(pen, pt3, pt4);
			g.DrawLine(pen, pt3.X + 4, pt3.Y, pt4.X + 4, pt4.Y);
			pt3.Offset(dx, 1);
			pt4.Offset(dx, 1);
			g.DrawLine(pen, pt3, pt4);
			g.DrawLine(pen, pt3.X + 4, pt3.Y, pt4.X + 4, pt4.Y);
			pt3.Offset(dx2, 1);
			pt4.Offset(dx2, 1);
			g.DrawLine(pen, pt3, pt4);
			g.DrawLine(pen, pt3.X + 4, pt3.Y, pt4.X + 4, pt4.Y);
			pt3.Offset(dx2, 1);
			pt4.Offset(dx2, 1);
			g.DrawLine(pen, pt3, pt4);
			g.DrawLine(pen, pt3.X + 4, pt3.Y, pt4.X + 4, pt4.Y);
		}
		pen.Dispose();
	}

	private static void PaintDropDownArrowOfficeXP(Graphics g, Rectangle rect, bool bRTL, bool bVertical)
	{
		if (bVertical)
		{
			Point point = new Point(rect.Left + 7, rect.Top + 2);
			Point point2 = new Point(rect.Left + 7, rect.Top + 8);
			Point point3 = new Point(rect.Left + 4, rect.Top + 5);
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(new Point[3] { point, point2, point3 });
			g.FillPath(SystemBrushes.ControlText, graphicsPath);
		}
		else
		{
			Point point4 = new Point(rect.Left + 3, rect.Bottom - 7);
			Point point5 = new Point(rect.Left + 8, rect.Bottom - 7);
			Point point6 = new Point(rect.Left + 5, rect.Bottom - 4);
			GraphicsPath graphicsPath2 = new GraphicsPath();
			graphicsPath2.AddLines(new Point[3] { point4, point5, point6 });
			g.FillPath(SystemBrushes.ControlText, graphicsPath2);
		}
	}

	private static void PaintDropDownVertical(Graphics g, Rectangle rect, bool bRTL, Color lightColor, Color darkColor)
	{
		using LinearGradientBrush brush = new LinearGradientBrush(rect, lightColor, darkColor, LinearGradientMode.Horizontal);
		using GraphicsPath path = GetDropDownVerticalPath(rect, bRTL);
		g.FillPath(brush, path);
	}

	private static void PaintDropDownHorizontal(Graphics g, Rectangle rect, bool bRTL, Color lightColor, Color darkColor)
	{
		using LinearGradientBrush brush = new LinearGradientBrush(rect, lightColor, darkColor, LinearGradientMode.Vertical);
		using GraphicsPath path = GetDropDownHorizontalPath(rect, bRTL);
		g.FillPath(brush, path);
	}

	private static void PaintDockedBackgroundHorizontal(Graphics g, bool bRTL, Rectangle clientRect, Color barColorLight, Color barColorDark, Color barBorderColor)
	{
		Region clip = g.Clip;
		SetCommadBarExcludeClip(g, clientRect);
		using (LinearGradientBrush brush = new LinearGradientBrush(clientRect, barColorLight, barColorDark, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush, clientRect);
		}
		Pen pen = new Pen(barBorderColor);
		Point pt = (bRTL ? new Point(clientRect.Left - 1, clientRect.Bottom - 1) : new Point(clientRect.Left, clientRect.Bottom - 1));
		Point pt2 = (bRTL ? new Point(clientRect.Right, clientRect.Bottom - 1) : new Point(clientRect.Right - 1, clientRect.Bottom - 1));
		using (pen)
		{
			g.DrawLine(pen, pt, pt2);
		}
		g.Clip = clip;
	}

	private static void PaintDockedBackgroundVertical(Graphics g, bool bRTL, Rectangle clientRect, Color barColorLight, Color barColorDark, Color barBorderColor)
	{
		Region clip = g.Clip;
		SetCommadBarExcludeClip(g, clientRect);
		if (clientRect.Width > 0 && clientRect.Height > 0)
		{
			using LinearGradientBrush brush = (bRTL ? new LinearGradientBrush(clientRect, barColorDark, barColorLight, LinearGradientMode.Horizontal) : new LinearGradientBrush(clientRect, barColorLight, barColorDark, LinearGradientMode.Horizontal));
			g.FillRectangle(brush, clientRect);
		}
		int num = clientRect.Right - 1;
		using (Pen pen = new Pen(barBorderColor))
		{
			g.DrawLine(pen, num, clientRect.Top, num, clientRect.Bottom);
		}
		g.Clip = clip;
	}

	private static void PaintChevronHorizontal(Graphics g, Rectangle rect, bool bRTL, Color chevronColor)
	{
		Pen pen = new Pen(chevronColor);
		Pen white = Pens.White;
		int num = -1;
		int num2 = -1;
		int num3 = 4;
		Point empty = Point.Empty;
		Point pt = (bRTL ? new Point(rect.X + rect.Width - 6, rect.Y + 6) : new Point(rect.X + 5, rect.Y + 6));
		for (int i = 0; i < 2; i++)
		{
			Point pt2 = new Point(pt.X, pt.Y + 2);
			Point pt3 = new Point(pt.X, pt.Y + 1);
			empty = (bRTL ? new Point(pt.X - 1, pt.Y + 1) : new Point(pt.X + 1, pt.Y + 1));
			g.DrawLine(white, pt, pt2);
			g.DrawLine(white, pt3, empty);
			num2 = (bRTL ? 1 : (-1));
			pt.Offset(num2, num);
			pt2.Offset(num2, num);
			pt3.Offset(num2, num);
			empty.Offset(num2, num);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt3, empty);
			num3 = (bRTL ? (-4 - num2) : (4 - num2));
			pt.Offset(num3, -num);
		}
		pen.Dispose();
	}

	private static void PaintChevronVertical(Graphics g, Rectangle rect, bool bRTL, Color chevronColor)
	{
		Pen pen = new Pen(chevronColor);
		Pen white = Pens.White;
		int num = 1;
		Point empty = Point.Empty;
		Point pt = (bRTL ? new Point(rect.X + rect.Width - 7, rect.Y + 3) : new Point(rect.X + 6, rect.Y + 6));
		for (int i = 0; i < 2; i++)
		{
			Point pt2 = new Point(pt.X + 2, pt.Y);
			Point pt3 = new Point(pt.X + 1, pt.Y);
			empty = new Point(pt.X + 1, pt.Y + 1);
			g.DrawLine(white, pt, pt2);
			g.DrawLine(white, pt3, empty);
			pt.Offset(-num, -num);
			pt2.Offset(-num, -num);
			pt3.Offset(-num, -num);
			empty.Offset(-num, -num);
			g.DrawLine(pen, pt, pt2);
			g.DrawLine(pen, pt3, empty);
			pt.Offset(num, 4 + num);
		}
		pen.Dispose();
	}

	private static void PaintDropDownHorizontalArrow(Graphics g, Rectangle rect, bool bRTL)
	{
		rect.X += ((!bRTL) ? 2 : 0);
		Point pt = new Point(rect.Left + 2, rect.Bottom - 10);
		Point pt2 = new Point(pt.X + 4, pt.Y);
		g.DrawLine(SystemPens.ControlText, pt, pt2);
		pt.Offset(1, 1);
		pt2.Offset(1, 1);
		g.DrawLine(Pens.White, pt, pt2);
		Point point = new Point(rect.Left + 3, rect.Bottom - 6);
		Point point2 = new Point(rect.Left + 8, rect.Bottom - 6);
		Point point3 = new Point(rect.Left + 5, rect.Bottom - 3);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(new Point[3] { point, point2, point3 });
		g.FillPath(Brushes.White, graphicsPath);
		graphicsPath.Reset();
		point.Offset(-1, -1);
		point2.Offset(-1, -1);
		point3.Offset(-1, -1);
		graphicsPath.AddLines(new Point[3] { point, point2, point3 });
		g.FillPath(SystemBrushes.ControlText, graphicsPath);
	}

	private static void PaintDropDownVerticalArrow(Graphics g, Rectangle rect, bool bRTL)
	{
		if (bRTL)
		{
			Point pt = new Point(rect.Left + 10, rect.Top + 3);
			Point pt2 = new Point(pt.X, pt.Y + 4);
			g.DrawLine(SystemPens.ControlText, pt, pt2);
			pt.Offset(-1, 1);
			pt2.Offset(-1, 1);
			g.DrawLine(Pens.White, pt, pt2);
			Point point = new Point(rect.Left + 6, rect.Top + 3);
			Point point2 = new Point(rect.Left + 6, rect.Top + 9);
			Point point3 = new Point(rect.Left + 3, rect.Top + 6);
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(new Point[3] { point, point2, point3 });
			g.FillPath(Brushes.White, graphicsPath);
			graphicsPath.Reset();
			point.Offset(1, -1);
			point2.Offset(1, -1);
			point3.Offset(1, -1);
			graphicsPath.AddLines(new Point[3] { point, point2, point3 });
			g.FillPath(SystemBrushes.ControlText, graphicsPath);
		}
		else
		{
			rect.Y -= 2;
			Point pt3 = new Point(rect.Right - 10, rect.Bottom - 2);
			Point pt4 = new Point(pt3.X, pt3.Y - 4);
			g.DrawLine(SystemPens.ControlText, pt3, pt4);
			pt3.Offset(1, 1);
			pt4.Offset(1, 1);
			g.DrawLine(Pens.White, pt3, pt4);
			Point point4 = new Point(rect.Right - 6, rect.Bottom);
			Point point5 = new Point(rect.Right - 6, rect.Bottom - 6);
			Point point6 = new Point(rect.Right - 3, rect.Bottom - 3);
			GraphicsPath graphicsPath2 = new GraphicsPath();
			graphicsPath2.AddLines(new Point[3] { point4, point5, point6 });
			g.FillPath(Brushes.White, graphicsPath2);
			graphicsPath2.Reset();
			point4.Offset(-1, -1);
			point5.Offset(-1, -1);
			point6.Offset(-1, -1);
			graphicsPath2.AddLines(new Point[3] { point4, point5, point6 });
			g.FillPath(SystemBrushes.ControlText, graphicsPath2);
		}
	}

	private static GraphicsPath GetDropDownHorizontalPath(Rectangle rect, bool bRTL)
	{
		int left = rect.Left;
		int right = rect.Right;
		int top = rect.Top;
		int bottom = rect.Bottom;
		Point[] array = null;
		array = ((!bRTL) ? new Point[8]
		{
			new Point(left, top),
			new Point(right - 2, top),
			new Point(right, top + 2),
			new Point(right, bottom - 2 - 1),
			new Point(right - 2 - 1, bottom),
			new Point(left - 1, bottom),
			new Point(left + 2, bottom - 2 - 1),
			new Point(left + 2, top + 2)
		} : new Point[8]
		{
			new Point(left, top + 2),
			new Point(left + 2, top),
			new Point(right, top),
			new Point(right - 2, top + 2),
			new Point(right - 2, bottom - 2 - 1),
			new Point(right, bottom),
			new Point(left + 2 + 1, bottom),
			new Point(left, bottom - 2 - 1)
		});
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(array);
		return graphicsPath;
	}

	private static GraphicsPath GetDropDownVerticalPath(Rectangle rect, bool bRTL)
	{
		int left = rect.Left;
		int right = rect.Right;
		int top = rect.Top;
		int bottom = rect.Bottom;
		Point[] array = null;
		array = ((!bRTL) ? new Point[8]
		{
			new Point(left, top),
			new Point(left + 2 + 1, top + 2 + 1),
			new Point(right - 2 - 1, top + 2 + 1),
			new Point(right, top),
			new Point(right, bottom - 2 - 1),
			new Point(right - 2 - 1, bottom),
			new Point(left + 2 + 1, bottom),
			new Point(left, bottom - 2 - 1)
		} : new Point[8]
		{
			new Point(left, top + 2),
			new Point(left + 2, top),
			new Point(right - 2, top),
			new Point(right, top + 2),
			new Point(right, bottom),
			new Point(right - 2, bottom - 2),
			new Point(left + 2, bottom - 2),
			new Point(left, bottom)
		});
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(array);
		return graphicsPath;
	}

	private static void SetCommadBarExcludeClip(Graphics gph, Rectangle rect)
	{
		Rectangle rectangle = rect;
		Point[] array = new Point[4]
		{
			new Point(rectangle.Left, rectangle.Top),
			new Point(rectangle.Left + 2, rectangle.Top),
			new Point(rectangle.Left, rectangle.Top + 2),
			new Point(rectangle.Left, rectangle.Top)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(array);
		gph.ExcludeClip(new Region(graphicsPath));
		graphicsPath.Reset();
		ref Point reference = ref array[0];
		reference = new Point(rectangle.Right, rectangle.Top);
		ref Point reference2 = ref array[1];
		reference2 = new Point(rectangle.Right, rectangle.Top + 2);
		ref Point reference3 = ref array[2];
		reference3 = new Point(rectangle.Right - 2, rectangle.Top);
		ref Point reference4 = ref array[3];
		reference4 = new Point(rectangle.Right, rectangle.Top);
		graphicsPath.AddLines(array);
		gph.ExcludeClip(new Region(graphicsPath));
		graphicsPath.Reset();
		ref Point reference5 = ref array[0];
		reference5 = new Point(rectangle.Right, rectangle.Bottom);
		ref Point reference6 = ref array[1];
		reference6 = new Point(rectangle.Right - 3, rectangle.Bottom);
		ref Point reference7 = ref array[2];
		reference7 = new Point(rectangle.Right, rectangle.Bottom - 3);
		ref Point reference8 = ref array[3];
		reference8 = new Point(rectangle.Right, rectangle.Bottom);
		graphicsPath.AddLines(array);
		gph.ExcludeClip(new Region(graphicsPath));
		graphicsPath.Reset();
		ref Point reference9 = ref array[0];
		reference9 = new Point(rectangle.Left, rectangle.Bottom);
		ref Point reference10 = ref array[1];
		reference10 = new Point(rectangle.Left, rectangle.Bottom - 3);
		ref Point reference11 = ref array[2];
		reference11 = new Point(rectangle.Left + 2, rectangle.Bottom);
		ref Point reference12 = ref array[3];
		reference12 = new Point(rectangle.Left, rectangle.Bottom);
		graphicsPath.AddLines(array);
		gph.ExcludeClip(new Region(graphicsPath));
	}

	private static int GetsNumberGripperPoints(int gripperSize)
	{
		int result = 0;
		if (gripperSize > 0)
		{
			decimal num = gripperSize;
			num = (num - 10m) / 4m;
			result = decimal.ToInt32(decimal.Round(num));
		}
		return result;
	}
}
