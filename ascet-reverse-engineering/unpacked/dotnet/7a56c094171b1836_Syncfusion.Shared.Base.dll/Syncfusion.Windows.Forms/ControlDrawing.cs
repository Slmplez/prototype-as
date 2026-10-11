using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ControlDrawing
{
	public const int DrawTextFlags = 2404;

	private Point offset = default(Point);

	public Point Offset
	{
		get
		{
			return offset;
		}
		set
		{
			offset = value;
		}
	}

	public void DrawAlignedText(Graphics g, string text, Font font, Color color, Rectangle rc, ContentAlignment align)
	{
		Size size = g.MeasureString(text, font).ToSize();
		Point point = new Point(0, 0);
		int x = rc.Left + (rc.Width - size.Width) / 2;
		int x2 = rc.Right - size.Width;
		int y = rc.Top + (rc.Height - size.Height) / 2;
		int y2 = rc.Bottom - size.Height;
		switch (align)
		{
		case ContentAlignment.TopLeft:
			point = new Point(rc.Left, rc.Top);
			break;
		case ContentAlignment.TopCenter:
			point = new Point(x, rc.Top);
			break;
		case ContentAlignment.TopRight:
			point = new Point(x2, rc.Top);
			break;
		case ContentAlignment.MiddleLeft:
			point = new Point(rc.Left, y);
			break;
		case ContentAlignment.MiddleCenter:
			point = new Point(x, y);
			break;
		case ContentAlignment.MiddleRight:
			point = new Point(x2, y);
			break;
		case ContentAlignment.BottomLeft:
			point = new Point(rc.Left, y2);
			break;
		case ContentAlignment.BottomCenter:
			point = new Point(x, y2);
			break;
		case ContentAlignment.BottomRight:
			point = new Point(x2, y2);
			break;
		}
		using SolidBrush brush = new SolidBrush(color);
		g.DrawString(text, font, brush, point);
	}

	public void DrawBorder(Graphics g, Rectangle rc, BorderStyle borderStyle, Border3DStyle border3DStyle, ButtonBorderStyle borderSingle, Color borderColor)
	{
		if (borderStyle == BorderStyle.Fixed3D)
		{
			ControlPaint.DrawBorder3D(g, rc, border3DStyle);
		}
		if (borderStyle == BorderStyle.FixedSingle)
		{
			ControlPaint.DrawBorder(g, rc, borderColor, borderSingle);
		}
	}

	public void DrawBorder(Graphics g, Rectangle rc, BorderStyle borderStyle, Border3DStyle border3DStyle, ButtonBorderStyle borderSingle, Color borderColor, Border3DSide sides)
	{
		DrawBorderInternal(g, rc, borderStyle, border3DStyle, borderSingle, borderColor, sides, useTransform: false);
	}

	public void DrawFillColor(Graphics g, Rectangle rc, Color fillColor)
	{
		using SolidBrush brush = new SolidBrush(fillColor);
		g.FillRectangle(brush, new Rectangle(offset.X, offset.Y, rc.Width, rc.Height));
	}

	public void DrawVerticalGradient(Graphics g, Rectangle rc, Color color1, Color color2)
	{
		using Brush brush = GetVerticalGradientBrush(rc, color1, color2);
		g.FillRectangle(brush, new Rectangle(offset.X, offset.Y, rc.Width, rc.Height));
	}

	public void DrawGradient(Graphics g, Rectangle rc, Color color1, Color color2)
	{
		using Brush brush = GetGradientBrush(rc, color1, color2);
		g.FillRectangle(brush, new Rectangle(offset.X, offset.Y, rc.Width, rc.Height));
	}

	public Brush GetGradientBrush(Rectangle rc, Color color1, Color color2)
	{
		return new LinearGradientBrush(Point.Empty, new Point(rc.Width, 0), color1, color2);
	}

	public Brush GetVerticalGradientBrush(Rectangle rc, Color color1, Color color2)
	{
		return new LinearGradientBrush(Point.Empty, new Point(0, rc.Height), color1, color2);
	}

	public void DrawImage(Graphics g, Rectangle rc, Image img, bool stretchImage)
	{
		int width = img.Width;
		int height = img.Height;
		if (stretchImage)
		{
			g.DrawImage(img, new Rectangle(offset.X, offset.Y, rc.Width, rc.Height), 0, 0, width, height, GraphicsUnit.Pixel);
			return;
		}
		int num = rc.Width / width;
		Rectangle destRect = new Rectangle(offset.X, offset.Y, width, rc.Height);
		for (int i = 0; i < num; i++)
		{
			g.DrawImage(img, destRect, 0, 0, width, rc.Height, GraphicsUnit.Pixel);
			destRect.Offset(width, 0);
		}
		destRect.Width = rc.Width - num * width;
		g.DrawImage(img, destRect, 0, 0, rc.Width - num * width, rc.Height, GraphicsUnit.Pixel);
	}

	public void DrawTube(Graphics g, Rectangle rc, Color color1, Color color2)
	{
		using Brush brush = GetTubeBrush(color1, color2, rc);
		g.FillRectangle(brush, new Rectangle(offset.X, offset.Y, rc.Width, rc.Height));
	}

	public Brush GetTubeBrush(Color color1, Color color2, Rectangle rc)
	{
		Point[] points = new Point[6]
		{
			new Point(offset.X, offset.Y),
			new Point(offset.X + rc.Width, offset.Y),
			new Point(offset.X + rc.Width, offset.Y + rc.Height / 2),
			new Point(offset.X + rc.Width, offset.Y + rc.Height),
			new Point(offset.X, offset.Y + rc.Height),
			new Point(offset.X, offset.Y + rc.Height / 2)
		};
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		PathGradientBrush pathGradientBrush = new PathGradientBrush(graphicsPath);
		pathGradientBrush.CenterColor = color1;
		Color[] surroundColors = new Color[6] { color2, color2, color1, color2, color2, color1 };
		pathGradientBrush.SurroundColors = surroundColors;
		return pathGradientBrush;
	}

	public void DrawMultipleGradient(Graphics g, Rectangle rc, ArrayList foreColors, bool vertical)
	{
		if (foreColors.Count == 0)
		{
			return;
		}
		if (foreColors.Count == 1)
		{
			g.FillRectangle(new SolidBrush((Color)foreColors[0]), rc);
			return;
		}
		using Bitmap bitmap = new Bitmap(rc.Width, rc.Height, g);
		using (Graphics graphics = Graphics.FromImage(bitmap))
		{
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Point(0, offset.Y), new Point(bitmap.Width, offset.Y), Color.Black, Color.Black);
			ColorBlend colorBlend = new ColorBlend(foreColors.Count);
			for (int i = 0; i < foreColors.Count; i++)
			{
				colorBlend.Colors.SetValue(foreColors[i], i);
				colorBlend.Positions.SetValue((float)i / (float)(foreColors.Count - 1), i);
			}
			linearGradientBrush.InterpolationColors = colorBlend;
			graphics.FillRectangle(linearGradientBrush, new Rectangle(0, 0, bitmap.Width, bitmap.Height));
		}
		if (vertical)
		{
			bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		}
		Rectangle destRect = new Rectangle(offset.X, offset.Y, rc.Width, rc.Height);
		if (vertical)
		{
			g.DrawImage(bitmap, destRect, 0, 0, rc.Height, rc.Width, GraphicsUnit.Pixel);
		}
		else
		{
			g.DrawImage(bitmap, destRect, 0, 0, rc.Width, rc.Height, GraphicsUnit.Pixel);
		}
	}

	public static Rectangle Transform(Graphics g, Rectangle rect)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		Point[] array = new Point[2]
		{
			new Point(rect.Left, rect.Top),
			new Point(rect.Right, rect.Bottom)
		};
		g.Transform.TransformPoints(array);
		return Rectangle.FromLTRB(array[0].X, array[0].Y, array[1].X, array[1].Y);
	}

	public static Point Transform(Graphics g, Point point)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		Point[] array = new Point[1] { point };
		g.Transform.TransformPoints(array);
		return array[0];
	}

	public static void DrawBorderInternal(Graphics g, Rectangle rc, BorderStyle borderStyle, Border3DStyle border3DStyle, ButtonBorderStyle borderSingle, Color borderColor, Border3DSide sides, bool useTransform)
	{
		switch (borderStyle)
		{
		case BorderStyle.Fixed3D:
		{
			Rectangle rectangle2 = (useTransform ? Transform(g, rc) : rc);
			Region clip2 = g.Clip;
			if (useTransform)
			{
				clip2 = g.Clip;
				Rectangle rect2 = Rectangle.Inflate(rectangle2, -2, -2);
				g.SetClip(rect2, CombineMode.Exclude);
			}
			ControlPaint.DrawBorder3D(g, rectangle2, border3DStyle, sides);
			g.Clip = clip2;
			break;
		}
		case BorderStyle.FixedSingle:
		{
			ButtonBorderStyle rightStyle;
			ButtonBorderStyle topStyle;
			ButtonBorderStyle bottomStyle;
			ButtonBorderStyle leftStyle = (rightStyle = (topStyle = (bottomStyle = ButtonBorderStyle.None)));
			if ((sides & Border3DSide.Left) > (Border3DSide)0)
			{
				leftStyle = borderSingle;
			}
			if ((sides & Border3DSide.Top) > (Border3DSide)0)
			{
				topStyle = borderSingle;
			}
			if ((sides & Border3DSide.Right) > (Border3DSide)0)
			{
				rightStyle = borderSingle;
			}
			if ((sides & Border3DSide.Bottom) > (Border3DSide)0)
			{
				bottomStyle = borderSingle;
			}
			Rectangle rectangle = (useTransform ? new Rectangle(rc.X, rc.Y, rc.Width - 1, rc.Height - 1) : rc);
			Region clip = g.Clip;
			if (useTransform)
			{
				clip = g.Clip;
				Rectangle rect = Rectangle.Inflate(rectangle, -2, -2);
				g.SetClip(rect, CombineMode.Exclude);
			}
			ControlPaint.DrawBorder(g, rectangle, borderColor, 1, leftStyle, borderColor, 1, topStyle, borderColor, 1, rightStyle, borderColor, 1, bottomStyle);
			g.Clip = clip;
			break;
		}
		}
	}

	public static Size MeasureDisplayStringSize(Graphics graphics, string text, Font font, bool mirrored)
	{
		return MeasureDisplayStringSize(graphics, text, font, mirrored, -1);
	}

	public static Size MeasureDisplayStringSize(Graphics graphics, string text, Font font, bool mirrored, int width)
	{
		if (text == null || text.Length == 0)
		{
			return Size.Empty;
		}
		NativeMethods.RECT lpRect = new NativeMethods.RECT(0, 0, width, 0);
		IntPtr hdc = graphics.GetHdc();
		IntPtr hObject = font.ToHfont();
		try
		{
			IntPtr hObject2 = NativeMethods.SelectObject(hdc, hObject);
			int num;
			if (width < 0)
			{
				num = 3428;
				num &= -5;
			}
			else
			{
				num = 3136;
			}
			if (mirrored)
			{
				num |= 0x20000;
			}
			NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, num);
			hObject2 = NativeMethods.SelectObject(hdc, hObject2);
		}
		finally
		{
			graphics.ReleaseHdc(hdc);
			NativeMethods.DeleteObject(hObject);
		}
		return new Size(lpRect.Width, lpRect.Height);
	}
}
