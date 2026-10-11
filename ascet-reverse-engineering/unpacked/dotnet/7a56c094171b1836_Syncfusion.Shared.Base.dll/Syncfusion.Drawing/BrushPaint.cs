#define TRACE
using System;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Drawing;

public sealed class BrushPaint
{
	public static void FillRectangle(Graphics g, Rectangle r, BrushInfo brush)
	{
		FillRectangle(g, (RectangleF)r, brush);
	}

	public static void FillRectangle(Graphics g, RectangleF r, BrushInfo brush)
	{
		if (r.Height == 0f || r.Width == 0f)
		{
			return;
		}
		switch (brush.Style)
		{
		case BrushStyle.None:
			g.FillRectangle(SystemBrushes.Window, r);
			break;
		case BrushStyle.Solid:
			FillRectangle(g, r, brush.BackColor);
			break;
		case BrushStyle.Pattern:
			if (brush.PatternStyle != PatternStyle.None)
			{
				FillRectangle(g, r, brush.PatternStyle, brush.ForeColor, brush.BackColor);
				break;
			}
			goto case BrushStyle.Solid;
		case BrushStyle.Gradient:
			if (brush.GradientStyle != GradientStyle.None)
			{
				FillRectangle(g, r, brush.GradientStyle, (Color[])brush.GradientColors.ToArray(typeof(Color)));
				break;
			}
			goto case BrushStyle.Solid;
		}
	}

	public static void FillRectangle(Graphics g, Rectangle r, GradientStyle gradientStyle, Color foreColor, Color backColor)
	{
		FillRectangle(g, r, gradientStyle, new Color[2] { foreColor, backColor });
	}

	public static void FillRectangle(Graphics g, RectangleF r, GradientStyle gradientStyle, Color foreColor, Color backColor)
	{
		FillRectangle(g, r, gradientStyle, new Color[2] { foreColor, backColor });
	}

	private static ColorBlend GetGenericColorBlend(Color[] colors)
	{
		ColorBlend colorBlend = new ColorBlend(colors.Length);
		Array.Reverse(colors);
		colorBlend.Colors = colors;
		float[] array = new float[colors.Length];
		array[0] = 0f;
		float num = 0f;
		for (int i = 1; i < colors.Length - 1; i++)
		{
			num = (array[i] = num + 1f / ((float)colors.Length - 1f));
		}
		array[array.Length - 1] = 1f;
		colorBlend.Positions = array;
		return colorBlend;
	}

	public static void FillRectangle(Graphics g, Rectangle r, GradientStyle gradientStyle, Color[] colors)
	{
		FillRectangle(g, (RectangleF)r, gradientStyle, colors);
	}

	public static void FillRectangle(Graphics g, RectangleF r, GradientStyle gradientStyle, Color[] colors)
	{
		Trace.Assert(colors.Length >= 2, "The colors arrayed in the call to FillRectangle should have at least 2 entries.");
		if (r.Height == 0f || r.Width == 0f)
		{
			return;
		}
		Brush brush = null;
		PathGradientBrush pathGradientBrush = null;
		LinearGradientBrush linearGradientBrush = null;
		GraphicsPath graphicsPath = null;
		RectangleF clip = RectangleF.Empty;
		switch (gradientStyle)
		{
		case GradientStyle.ForwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.ForwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			break;
		case GradientStyle.BackwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.BackwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			break;
		case GradientStyle.Horizontal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.Horizontal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			break;
		case GradientStyle.Vertical:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			break;
		case GradientStyle.PathRectangle:
			graphicsPath = new GraphicsPath();
			graphicsPath.AddRectangle(r);
			break;
		case GradientStyle.PathEllipse:
			graphicsPath = new GraphicsPath();
			clip = g.ClipBounds;
			g.IntersectClip(r);
			r.Inflate(r.Width / 4f, r.Height / 4f);
			graphicsPath.AddEllipse(r);
			break;
		}
		if (graphicsPath != null && graphicsPath.PointCount > 0)
		{
			pathGradientBrush = new PathGradientBrush(graphicsPath);
			pathGradientBrush.CenterColor = colors[colors.Length - 1];
			Color[] array = ((graphicsPath.PointCount >= colors.Length - 1) ? new Color[colors.Length - 1] : new Color[graphicsPath.PointCount]);
			int num = 0;
			int num2 = colors.Length - 2;
			while (num2 >= 0 && num < graphicsPath.PointCount)
			{
				ref Color reference = ref array[num++];
				reference = colors[num2];
				num2--;
			}
			pathGradientBrush.SurroundColors = array;
			brush = pathGradientBrush;
			pathGradientBrush = null;
		}
		if (brush != null)
		{
			g.FillRectangle(brush, r);
			graphicsPath?.Dispose();
			brush.Dispose();
			brush = null;
		}
		if (!clip.IsEmpty)
		{
			g.SetClip(clip);
		}
	}

	public static void FillRectangle(Graphics g, Rectangle r, PatternStyle hatchStyle, Color foreColor, Color backColor)
	{
		FillRectangle(g, (RectangleF)r, hatchStyle, foreColor, backColor);
	}

	public static void FillRectangle(Graphics g, RectangleF r, PatternStyle hatchStyle, Color foreColor, Color backColor)
	{
		if (r.Height != 0f && r.Width != 0f && hatchStyle != PatternStyle.None)
		{
			Brush brush = new HatchBrush((HatchStyle)(hatchStyle - 1), foreColor, backColor);
			g.FillRectangle(brush, r);
			brush.Dispose();
		}
	}

	public static void FillRectangle(Graphics g, Rectangle r, Color color)
	{
		FillRectangle(g, (RectangleF)r, color);
	}

	public static void FillRectangle(Graphics g, RectangleF r, Color color)
	{
		if (r.Height != 0f && r.Width != 0f)
		{
			Brush brush = new SolidBrush(color);
			g.FillRectangle(brush, r);
			brush.Dispose();
		}
	}

	public static void FillRegion(Graphics g, Region r, BrushInfo brush)
	{
		switch (brush.Style)
		{
		case BrushStyle.None:
			g.FillRegion(SystemBrushes.Window, r);
			break;
		case BrushStyle.Solid:
		{
			Brush brush2 = new SolidBrush(brush.BackColor);
			g.FillRegion(brush2, r);
			brush2.Dispose();
			break;
		}
		case BrushStyle.Pattern:
			if (brush.PatternStyle != PatternStyle.None)
			{
				FillRegion(g, r, brush.PatternStyle, brush.ForeColor, brush.BackColor);
				break;
			}
			goto case BrushStyle.Solid;
		case BrushStyle.Gradient:
			if (brush.GradientStyle != GradientStyle.None)
			{
				FillRegion(g, r, brush.GradientStyle, (Color[])brush.GradientColors.ToArray(typeof(Color)));
				break;
			}
			goto case BrushStyle.Solid;
		}
	}

	public static void FillRegion(Graphics g, Region r, GradientStyle gradientStyle, Color foreColor, Color backColor)
	{
	}

	public static void FillRegion(Graphics g, Region r, GradientStyle gradientStyle, Color[] colors)
	{
		Trace.Assert(colors.Length >= 2, "The colors arrayed in the call to FillRectangle should have at least 2 entries.");
		if (r.IsEmpty(g))
		{
			return;
		}
		Brush brush = null;
		LinearGradientBrush linearGradientBrush = null;
		PathGradientBrush pathGradientBrush = null;
		GraphicsPath graphicsPath = null;
		RectangleF clip = RectangleF.Empty;
		switch (gradientStyle)
		{
		case GradientStyle.ForwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r.GetBounds(g), Color.Empty, Color.Empty, LinearGradientMode.ForwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.BackwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r.GetBounds(g), Color.Empty, Color.Empty, LinearGradientMode.BackwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.Horizontal:
			linearGradientBrush = new LinearGradientBrush(r.GetBounds(g), Color.Empty, Color.Empty, LinearGradientMode.Horizontal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.Vertical:
			linearGradientBrush = new LinearGradientBrush(r.GetBounds(g), Color.Empty, Color.Empty, LinearGradientMode.Vertical);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.PathRectangle:
			graphicsPath = new GraphicsPath();
			clip = g.ClipBounds;
			g.IntersectClip(r);
			graphicsPath.AddRectangle(r.GetBounds(g));
			break;
		case GradientStyle.PathEllipse:
		{
			graphicsPath = new GraphicsPath();
			clip = g.ClipBounds;
			g.IntersectClip(r);
			Rectangle rect = Rectangle.Ceiling(r.GetBounds(g));
			rect.Inflate(rect.Width / 4, rect.Height / 4);
			graphicsPath.AddEllipse(rect);
			break;
		}
		}
		if (graphicsPath != null)
		{
			pathGradientBrush = new PathGradientBrush(graphicsPath);
			pathGradientBrush.CenterColor = colors[0];
			Color[] array = ((graphicsPath.PointCount >= colors.Length - 1) ? new Color[colors.Length - 1] : new Color[graphicsPath.PointCount]);
			int num = 0;
			int num2 = colors.Length - 2;
			while (num2 >= 0 && num < graphicsPath.PointCount)
			{
				ref Color reference = ref array[num++];
				reference = colors[num2];
				num2--;
			}
			pathGradientBrush.SurroundColors = array;
			brush = pathGradientBrush;
			pathGradientBrush = null;
		}
		if (brush != null)
		{
			g.FillRegion(brush, r);
			graphicsPath?.Dispose();
			brush.Dispose();
			brush = null;
		}
		if (!clip.IsEmpty)
		{
			g.SetClip(clip);
		}
	}

	public static void FillRegion(Graphics g, Region r, PatternStyle hatchStyle, Color foreColor, Color backColor)
	{
		if (hatchStyle != PatternStyle.None)
		{
			Brush brush = new HatchBrush((HatchStyle)(hatchStyle - 1), foreColor, backColor);
			g.FillRegion(brush, r);
			brush.Dispose();
		}
	}

	public static void FillRegion(Graphics g, Region r, Color color)
	{
		if (!r.IsEmpty(g))
		{
			Brush brush = new SolidBrush(color);
			g.FillRegion(brush, r);
			brush.Dispose();
		}
	}

	public static void FillPath(Graphics g, GraphicsPath p, Color color)
	{
		FillPath(g, p, new BrushInfo(color));
	}

	public static void FillPath(Graphics g, GraphicsPath p, BrushInfo brush)
	{
		switch (brush.Style)
		{
		case BrushStyle.None:
			g.FillPath(SystemBrushes.Window, p);
			break;
		case BrushStyle.Solid:
		{
			Brush brush2 = new SolidBrush(brush.BackColor);
			g.FillPath(brush2, p);
			brush2.Dispose();
			break;
		}
		case BrushStyle.Pattern:
			if (brush.PatternStyle != PatternStyle.None)
			{
				Brush brush3 = new HatchBrush((HatchStyle)(brush.PatternStyle - 1), brush.ForeColor, brush.BackColor);
				g.FillPath(brush3, p);
				brush3.Dispose();
				break;
			}
			goto case BrushStyle.Solid;
		case BrushStyle.Gradient:
			if (brush.GradientStyle != GradientStyle.None)
			{
				FillPath(g, p, brush.GradientStyle, (Color[])brush.GradientColors.ToArray(typeof(Color)));
				break;
			}
			goto case BrushStyle.Solid;
		}
	}

	public static void FillPath(Graphics g, GraphicsPath p, GradientStyle gradientStyle, Color[] colors)
	{
		Trace.Assert(colors.Length >= 2, "The colors arrayed in the call to FillRectangle should have at least 2 entries.");
		RectangleF bounds = p.GetBounds();
		if (bounds.Width == 0f || bounds.Height == 0f)
		{
			return;
		}
		Brush brush = null;
		LinearGradientBrush linearGradientBrush = null;
		PathGradientBrush pathGradientBrush = null;
		GraphicsPath graphicsPath = null;
		RectangleF empty = RectangleF.Empty;
		switch (gradientStyle)
		{
		case GradientStyle.ForwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(p.GetBounds(), Color.Empty, Color.Empty, LinearGradientMode.ForwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.BackwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(p.GetBounds(), Color.Empty, Color.Empty, LinearGradientMode.BackwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.Horizontal:
			linearGradientBrush = new LinearGradientBrush(p.GetBounds(), Color.Empty, Color.Empty, LinearGradientMode.Horizontal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.Vertical:
			linearGradientBrush = new LinearGradientBrush(p.GetBounds(), Color.Empty, Color.Empty, LinearGradientMode.Vertical);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			brush = linearGradientBrush;
			linearGradientBrush = null;
			break;
		case GradientStyle.PathRectangle:
			graphicsPath = new GraphicsPath();
			graphicsPath.AddRectangle(p.GetBounds());
			break;
		case GradientStyle.PathEllipse:
		{
			graphicsPath = new GraphicsPath();
			Rectangle rect = Rectangle.Ceiling(p.GetBounds());
			rect.Inflate(rect.Width / 4, rect.Height / 4);
			graphicsPath.AddEllipse(rect);
			break;
		}
		}
		if (graphicsPath != null)
		{
			pathGradientBrush = new PathGradientBrush(graphicsPath);
			pathGradientBrush.CenterColor = colors[0];
			Color[] array = ((graphicsPath.PointCount >= colors.Length - 1) ? new Color[colors.Length - 1] : new Color[graphicsPath.PointCount]);
			int num = 0;
			int num2 = colors.Length - 2;
			while (num2 >= 0 && num < graphicsPath.PointCount)
			{
				ref Color reference = ref array[num++];
				reference = colors[num2];
				num2--;
			}
			pathGradientBrush.SurroundColors = array;
			brush = pathGradientBrush;
			pathGradientBrush = null;
		}
		if (brush != null)
		{
			g.FillPath(brush, p);
			graphicsPath?.Dispose();
			brush.Dispose();
			brush = null;
		}
		if (!empty.IsEmpty)
		{
			g.SetClip(empty);
		}
	}
}
