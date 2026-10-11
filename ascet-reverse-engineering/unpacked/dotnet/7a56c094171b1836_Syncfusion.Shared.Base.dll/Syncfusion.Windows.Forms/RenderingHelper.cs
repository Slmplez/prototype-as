using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

internal sealed class RenderingHelper
{
	private const int DEF_DISABLED_TEXT_OFFSET = 1;

	private const float DEF_MIN_BRIGHTNESS = 0.5f;

	private const float DEF_MIN_BRIGHTNESS_COEF = 0.9f;

	private const float DEF_BRIGHTNESS_COEF = 1.2f;

	internal const ContentAlignment anyRight = (ContentAlignment)1092;

	internal const ContentAlignment anyBottom = (ContentAlignment)1792;

	internal const ContentAlignment anyCenter = (ContentAlignment)546;

	internal const ContentAlignment anyMiddle = (ContentAlignment)112;

	internal static readonly TextFormatFlags DT_FLAGS = TextFormatFlags.TextBoxControl | TextFormatFlags.WordBreak;

	private RenderingHelper()
	{
		throw new NotSupportedException("Instance of this class not allowed.");
	}

	public static Rectangle CalculateBackgroundImageRectangle(Rectangle bounds, Image backgroundImage, ImageLayout imageLayout)
	{
		Rectangle result = bounds;
		if (backgroundImage != null)
		{
			switch (imageLayout)
			{
			case ImageLayout.None:
				result.Size = backgroundImage.Size;
				return result;
			case ImageLayout.Tile:
				return result;
			case ImageLayout.Center:
			{
				result.Size = backgroundImage.Size;
				Size size2 = bounds.Size;
				if (size2.Width > result.Width)
				{
					result.X = (size2.Width - result.Width) / 2;
				}
				if (size2.Height > result.Height)
				{
					result.Y = (size2.Height - result.Height) / 2;
				}
				return result;
			}
			case ImageLayout.Stretch:
				result.Size = bounds.Size;
				return result;
			case ImageLayout.Zoom:
			{
				Size size = backgroundImage.Size;
				float num = (float)bounds.Width / (float)size.Width;
				float num2 = (float)bounds.Height / (float)size.Height;
				if (num < num2)
				{
					result.Width = bounds.Width;
					result.Height = (int)((double)((float)size.Height * num) + 0.5);
					if (bounds.Y >= 0)
					{
						result.Y = (bounds.Height - result.Height) / 2;
					}
					return result;
				}
				result.Height = bounds.Height;
				result.Width = (int)((double)((float)size.Width * num2) + 0.5);
				if (bounds.X >= 0)
				{
					result.X = (bounds.Width - result.Width) / 2;
				}
				return result;
			}
			}
		}
		return result;
	}

	public static void DrawImage(Graphics g, RectangleF bounds, Image image, Rectangle imageRect, DrawParams param)
	{
		float num = bounds.Left;
		float num2 = bounds.Top;
		if ((float)image.Height < bounds.Height)
		{
			num2 = (bounds.Height - (float)image.Height) / 2f;
		}
		if ((float)image.Width < bounds.Width)
		{
			num = (bounds.Width - (float)image.Width) / 2f;
		}
		if (param.Enabled)
		{
			GraphicsUnit srcUnit = GraphicsUnit.Pixel;
			g.DrawImage(image, num, num2, imageRect, srcUnit);
		}
		else
		{
			ControlPaint.DrawImageDisabled(g, image, (int)num, (int)num2, param.ControlBackColor);
		}
	}

	public static void DrawCircle(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddEllipse(bounds);
		using Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
		g.DrawPath(pen, graphicsPath);
	}

	public static void DrawDiamond(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		PointF[] points = new PointF[4]
		{
			new PointF(bounds.X + bounds.Width / 2f, bounds.Y),
			new PointF(bounds.Right, bounds.Y + bounds.Height / 2f),
			new PointF(bounds.X + bounds.Width / 2f, bounds.Bottom),
			new PointF(bounds.X, bounds.Y + bounds.Height / 2f)
		};
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		graphicsPath.CloseAllFigures();
		using Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
		g.DrawPath(pen, graphicsPath);
	}

	public static void DrawInvertedTriangle(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		PointF[] points = new PointF[3]
		{
			new PointF(bounds.X, bounds.Y),
			new PointF(bounds.Right, bounds.Y),
			new PointF(bounds.X + bounds.Width / 2f, bounds.Bottom)
		};
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		graphicsPath.CloseAllFigures();
		using Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
		g.DrawPath(pen, graphicsPath);
	}

	public static void DrawTriangle(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		PointF[] points = new PointF[3]
		{
			new PointF(bounds.X + bounds.Width / 2f, bounds.Y),
			new PointF(bounds.X, bounds.Bottom),
			new PointF(bounds.Right, bounds.Bottom)
		};
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		graphicsPath.CloseAllFigures();
		using Region region = new Region(graphicsPath);
		g.FillRegion(brush, region);
		g.DrawPath(pen, graphicsPath);
	}

	public static void DrawText(Graphics g, string str, Color textColor, Font textFont, PointF pt, DrawParams param, bool drawShadow, bool autoEllipsis)
	{
		if (autoEllipsis || drawShadow)
		{
			TextFormatFlags textFormatFlags = DT_FLAGS;
			if (param.RightToLeft)
			{
				textFormatFlags |= TextFormatFlags.RightToLeft;
			}
			if (drawShadow)
			{
				textFormatFlags |= TranslateAlignment(param.Align) | TranslateLineAlignment(param.Align);
			}
			if (autoEllipsis)
			{
				textFormatFlags |= TextFormatFlags.EndEllipsis;
			}
			if (autoEllipsis)
			{
				TextRenderer.DrawText(g, str, textFont, Rectangle.Round(param.Bounds), SystemColors.ControlText, textFormatFlags);
			}
			else
			{
				TextRenderer.DrawText(g, str, textFont, Rectangle.Round(param.Bounds), SystemColors.ControlDark, textFormatFlags);
			}
		}
		else
		{
			DrawText(g, str, textColor, textFont, pt, param);
		}
	}

	public static void DrawText(Graphics g, string str, Color textColor, Font textFont, PointF pt, DrawParams param, bool drawShadow)
	{
		if (drawShadow)
		{
			TextFormatFlags textFormatFlags = DT_FLAGS | TranslateAlignment(param.Align) | TranslateLineAlignment(param.Align);
			if (param.RightToLeft)
			{
				textFormatFlags |= TextFormatFlags.RightToLeft;
			}
			TextRenderer.DrawText(g, str, textFont, Rectangle.Round(param.Bounds), SystemColors.ControlDark, textFormatFlags);
		}
		else
		{
			DrawText(g, str, textColor, textFont, pt, param);
		}
	}

	public static void DrawText(Graphics g, string str, Color textColor, Font textFont, PointF pt, DrawParams param)
	{
		Rectangle rectangle = Rectangle.Round(param.Bounds);
		TextFormatFlags textFormatFlags = DT_FLAGS | TranslateAlignment(param.Align) | TranslateLineAlignment(param.Align);
		if (param.RightToLeft)
		{
			textFormatFlags |= TextFormatFlags.RightToLeft;
		}
		if (param.Enabled)
		{
			TextRenderer.DrawText(g, str, textFont, rectangle, textColor, textFormatFlags);
		}
		else
		{
			DrawStringDisabled(g, str, textFont, param.ControlBackColor, rectangle, textFormatFlags);
		}
	}

	public static void DrawStringDisabled(Graphics g, string s, Font font, Color color, Rectangle rc, TextFormatFlags format)
	{
		Color controlDark = SystemColors.ControlDark;
		Color controlDarkDark = SystemColors.ControlDarkDark;
		int red = (controlDark.R + controlDarkDark.R) / 2;
		int green = (controlDark.G + controlDarkDark.G) / 2;
		int blue = (controlDark.B + controlDarkDark.B) / 2;
		Color foreColor = Color.FromArgb(red, green, blue);
		rc.Offset(1, 1);
		TextRenderer.DrawText(g, s, font, rc, SystemColors.ControlLightLight, format);
		rc.Offset(-1, -1);
		TextRenderer.DrawText(g, s, font, rc, foreColor, format);
	}

	public static void DrawRightLeftButton(Graphics g, RectangleF bounds, ButtonTypes buttonImageType, Point offset, Color imageColor)
	{
		SolidBrush solidBrush = new SolidBrush(imageColor);
		try
		{
			RectangleF rectangleF = bounds;
			float num = ((rectangleF.Height > 19f) ? 8 : 7);
			float num2 = ((rectangleF.Height > 19f) ? 9 : 7);
			float num3 = rectangleF.Top + (rectangleF.Height - 9f) / 2f;
			float y = rectangleF.Top + (rectangleF.Height - num2) / 2f;
			num3 += (float)offset.Y;
			float x;
			switch (buttonImageType)
			{
			default:
				return;
			case ButtonTypes.LeftEnd:
				x = rectangleF.Left + (rectangleF.Width - num) / 2f - 1f + (float)offset.X;
				g.FillRectangle(solidBrush, x, y, 1f, num2);
				goto case ButtonTypes.Left;
			case ButtonTypes.Left:
				x = rectangleF.Left + (rectangleF.Width - num) / 2f - 1f + (float)offset.X;
				g.FillRectangle(solidBrush, x + 2f, num3 + 4f, 1f, 1f);
				g.FillRectangle(solidBrush, x + 3f, num3 + 3f, 1f, 3f);
				g.FillRectangle(solidBrush, x + 4f, num3 + 2f, 1f, 5f);
				g.FillRectangle(solidBrush, x + 5f, num3 + 1f, 1f, 7f);
				if (rectangleF.Height > 19f)
				{
					g.FillRectangle(solidBrush, x + 6f, num3, 1f, 9f);
				}
				return;
			case ButtonTypes.RightEnd:
				x = rectangleF.Right - (rectangleF.Width - num) / 2f + (float)offset.X;
				g.FillRectangle(solidBrush, x, y, 1f, num2);
				break;
			case ButtonTypes.Right:
				break;
			}
			x = rectangleF.Right - (rectangleF.Width - num) / 2f + (float)offset.X;
			g.FillRectangle(solidBrush, x - 2f, num3 + 4f, 1f, 1f);
			g.FillRectangle(solidBrush, x - 3f, num3 + 3f, 1f, 3f);
			g.FillRectangle(solidBrush, x - 4f, num3 + 2f, 1f, 5f);
			g.FillRectangle(solidBrush, x - 5f, num3 + 1f, 1f, 7f);
			if (rectangleF.Height > 19f)
			{
				g.FillRectangle(solidBrush, x - 6f, num3, 1f, 9f);
			}
		}
		finally
		{
			solidBrush.Dispose();
		}
	}

	public static void DrawUpDownButton(Graphics g, RectangleF bounds, ButtonTypes buttonImageType, Point offset, Color imageColor)
	{
		using SolidBrush brush = new SolidBrush(imageColor);
		float num = 7f;
		float num2 = 4f;
		float num3 = 0f;
		float num4 = (bounds.Width - num) / 2f;
		float num5 = (bounds.Height - num2) / 2f;
		float num6 = bounds.Left + num4 + num3;
		float num7 = bounds.Top + num5;
		switch (buttonImageType)
		{
		case ButtonTypes.Down:
			g.FillRectangle(brush, num6, num7, 7f, 1f);
			g.FillRectangle(brush, num6 + 1f, num7 + 1f, 5f, 1f);
			g.FillRectangle(brush, num6 + 2f, num7 + 2f, 3f, 1f);
			g.FillRectangle(brush, num6 + 3f, num7 + 3f, 1f, 1f);
			break;
		case ButtonTypes.Up:
			g.FillRectangle(brush, num6 + 3f, num7, 1f, 1f);
			g.FillRectangle(brush, num6 + 2f, num7 + 1f, 3f, 1f);
			g.FillRectangle(brush, num6 + 1f, num7 + 2f, 5f, 1f);
			g.FillRectangle(brush, num6, num7 + 3f, 7f, 1f);
			break;
		case ButtonTypes.ComboXPDown:
			break;
		}
	}

	public static void DrawComboXPDownButton(Graphics g, RectangleF bounds, ButtonTypes buttonImageType, Point offset, Color imageColor)
	{
		using SolidBrush brush = new SolidBrush(imageColor);
		float num = 9f;
		float num2 = 6f;
		float num3 = 0f;
		float num4 = (bounds.Width - num) / 2f;
		float num5 = (bounds.Height - num2) / 2f;
		float num6 = bounds.Left + num4 + num3;
		float num7 = bounds.Top + num5;
		if (buttonImageType == ButtonTypes.ComboXPDown)
		{
			g.FillRectangle(brush, num6 + 1f, num7, 1f, 1f);
			g.FillRectangle(brush, num6 + 7f, num7, 1f, 1f);
			g.FillRectangle(brush, num6, num7 + 1f, 3f, 1f);
			g.FillRectangle(brush, num6 + 6f, num7 + 1f, 3f, 1f);
			g.FillRectangle(brush, num6 + 1f, num7 + 2f, 3f, 1f);
			g.FillRectangle(brush, num6 + 5f, num7 + 2f, 3f, 1f);
			g.FillRectangle(brush, num6 + 2f, num7 + 3f, 5f, 1f);
			g.FillRectangle(brush, num6 + 3f, num7 + 4f, 3f, 1f);
			g.FillRectangle(brush, num6 + 4f, num7 + 5f, 1f, 1f);
		}
	}

	internal static Rectangle VAlignWithin(Size alignThis, Rectangle withinThis, ContentAlignment align)
	{
		if ((align & (ContentAlignment)1792) != 0)
		{
			withinThis.Y += withinThis.Height - alignThis.Height;
		}
		else if ((align & (ContentAlignment)112) != 0)
		{
			withinThis.Y += (withinThis.Height + alignThis.Height) / 2 - alignThis.Height;
		}
		withinThis.Height = alignThis.Height;
		return withinThis;
	}

	internal static Rectangle HAlignWithin(Size alignThis, Rectangle withinThis, ContentAlignment align)
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

	internal static TextFormatFlags TranslateAlignment(ContentAlignment align)
	{
		if ((align & (ContentAlignment)1092) != 0)
		{
			return TextFormatFlags.Right;
		}
		if ((align & (ContentAlignment)546) != 0)
		{
			return TextFormatFlags.HorizontalCenter;
		}
		return TextFormatFlags.Default;
	}

	internal static TextFormatFlags TranslateLineAlignment(ContentAlignment align)
	{
		if ((align & (ContentAlignment)1792) != 0)
		{
			return TextFormatFlags.Bottom;
		}
		if ((align & (ContentAlignment)112) != 0)
		{
			return TextFormatFlags.VerticalCenter;
		}
		return TextFormatFlags.Default;
	}
}
