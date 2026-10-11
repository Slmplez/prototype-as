using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public sealed class RotatePaint
{
	public static Point RotatePoint(Point p, double angle)
	{
		return Point.Ceiling(RotatePoint(new PointF(p.X, p.Y), angle, PointF.Empty));
	}

	public static Point RotatePoint(Point p, double angle, Point origin)
	{
		return Point.Ceiling(RotatePoint(new PointF(p.X, p.Y), angle, origin));
	}

	public static Point[] RotateRectangle(Rectangle r, double angle)
	{
		return RotateRectangle(r, angle, Point.Empty);
	}

	public static Point[] RotateRectangle(Rectangle r, double angle, Point origin)
	{
		PointF origin2 = new PointF(origin.X, origin.Y);
		return new Point[4]
		{
			Point.Ceiling(RotatePoint(new PointF(r.Left, r.Top), angle, origin2)),
			Point.Ceiling(RotatePoint(new PointF(r.Left, r.Bottom), angle, origin2)),
			Point.Ceiling(RotatePoint(new PointF(r.Right, r.Bottom), angle, origin2)),
			Point.Ceiling(RotatePoint(new PointF(r.Right, r.Top), angle, origin2))
		};
	}

	public static Rectangle CalcOutsideRect(Rectangle rect, float angle)
	{
		return Rectangle.Ceiling(CalcOutsideRect(new RectangleF(rect.X, rect.Y, rect.Width, rect.Height), angle));
	}

	public static Rectangle CalcInsideRect(Rectangle rect, float angle)
	{
		return Rectangle.Ceiling(CalcInsideRect(new RectangleF(rect.X, rect.Y, rect.Width, rect.Height), angle));
	}

	public static Rectangle CenterInRect(Rectangle rect, Size size)
	{
		return Rectangle.Ceiling(CenterInRect(new RectangleF(rect.X, rect.Y, rect.Width, rect.Height), new SizeF(size.Width, size.Height)));
	}

	public static void DrawRotatedString(Graphics g, string text, Font font, Brush br, Rectangle rect, StringFormat format, float angle)
	{
		DrawRotatedString(g, text, font, br, new RectangleF(rect.X, rect.Y, rect.Width, rect.Height), format, angle);
	}

	public static PointF RotatePoint(PointF p, double angle)
	{
		return RotatePoint(p, angle, PointF.Empty);
	}

	public static PointF RotatePoint(PointF p, double angle, PointF origin)
	{
		double num;
		for (num = angle; num < 0.0; num += 360.0)
		{
		}
		while (num >= 360.0)
		{
			num -= 360.0;
		}
		double num2 = angle * Math.PI / 180.0;
		double num3 = origin.X;
		double num4 = origin.Y;
		double num5 = Math.Cos(num2);
		double num6 = Math.Sin(num2);
		double num7 = p.X - origin.X;
		double num8 = p.Y - origin.Y;
		double num9 = num3 + num7 * num5 - num8 * num6;
		double num10 = num4 + num8 * num5 + num7 * num6;
		return new PointF((float)num9, (float)num10);
	}

	public static PointF[] RotateRectangle(RectangleF r, double angle)
	{
		return RotateRectangle(r, angle, PointF.Empty);
	}

	public static PointF[] RotateRectangle(RectangleF r, double angle, PointF origin)
	{
		return new PointF[4]
		{
			RotatePoint(new PointF(r.Left, r.Top), angle, origin),
			RotatePoint(new PointF(r.Left, r.Bottom), angle, origin),
			RotatePoint(new PointF(r.Right, r.Bottom), angle, origin),
			RotatePoint(new PointF(r.Right, r.Top), angle, origin)
		};
	}

	public static RectangleF CalcOutsideRect(RectangleF rect, float angle)
	{
		RectangleF r = rect;
		PointF[] array = RotateRectangle(origin: new PointF(r.X + r.Width / 2f, r.Y + r.Height / 2f), r: r, angle: angle);
		float num = float.MaxValue;
		float num2 = 0f;
		float num3 = float.MaxValue;
		float num4 = 0f;
		PointF[] array2 = array;
		for (int i = 0; i < array2.Length; i++)
		{
			PointF pointF = array2[i];
			num = Math.Min(num, pointF.X);
			num2 = Math.Max(num2, pointF.X);
			num3 = Math.Min(num3, pointF.Y);
			num4 = Math.Max(num4, pointF.Y);
		}
		return RectangleF.FromLTRB(num, num3, num2, num4);
	}

	public static RectangleF CalcInsideRect(RectangleF rect, float angle)
	{
		RectangleF rectangleF = CalcOutsideRect(rect, angle);
		return CenterInRect(rect, new SizeF(rect.Width * (rect.Width / rectangleF.Width), rect.Height * (rect.Height / rectangleF.Height)));
	}

	public static SizeF MeasureStringBounds(SizeF sz, float angle)
	{
		float height = sz.Height;
		float width = sz.Width;
		double num = (double)angle * Math.PI / 180.0;
		double num2 = Math.Abs(Math.Cos(num));
		double num3 = Math.Abs(Math.Sin(num));
		SizeF result = new SizeF(0f, 0f);
		result.Height = (float)((double)height * num2 + (double)width * num3);
		result.Width = (float)((double)width * num2 + (double)height * num3);
		return result;
	}

	public static SizeF MeasureStringBounds(Graphics g, string sOutput, Font font, int width, StringFormat format, float angle)
	{
		SizeF sizeF = g.MeasureString(sOutput, font, width, format);
		float height = sizeF.Height;
		float width2 = sizeF.Width;
		double num = (double)angle * Math.PI / 180.0;
		double num2 = Math.Abs(Math.Cos(num));
		double num3 = Math.Abs(Math.Sin(num));
		SizeF result = new SizeF(0f, 0f);
		result.Height = (float)((double)height * num2 + (double)width2 * num3);
		result.Width = (float)((double)width2 * num2 + (double)height * num3);
		return result;
	}

	public static RectangleF CenterInRect(RectangleF rect, SizeF size)
	{
		float num = 0f;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width;
		}
		float num2 = 0f;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height;
		}
		return new RectangleF(rect.Left + num / 2f, rect.Top + num2 / 2f, Math.Min(size.Width, rect.Width), Math.Min(size.Height, rect.Height));
	}

	public static void DrawRotatedString(Graphics g, string text, Font font, Brush br, RectangleF rect, StringFormat format, float angle)
	{
		float num;
		for (num = angle; num < 0f; num += 360f)
		{
		}
		while ((double)num >= 360.0)
		{
			num -= 360f;
		}
		Region clip = g.Clip;
		g.IntersectClip(rect);
		PointF origin = new PointF(rect.X + rect.Width / 2f, rect.Y + rect.Height / 2f);
		RectangleF rectangleF = CalcOutsideRect(rect, angle);
		RotateRectangle(rectangleF, angle, origin);
		Matrix transform = g.Transform;
		g.TranslateTransform(origin.X, origin.Y);
		g.RotateTransform(num);
		rectangleF.Offset(0f - origin.X, 0f - origin.Y);
		g.DrawString(text, font, br, rectangleF, format);
		g.Transform = transform;
		g.Clip = clip;
	}
}
