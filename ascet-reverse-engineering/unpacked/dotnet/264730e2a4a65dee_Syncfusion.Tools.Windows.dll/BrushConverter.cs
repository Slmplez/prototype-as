using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.Drawing;

internal class BrushConverter
{
	internal static Brush GetBrush(Rectangle r, BrushInfo brush)
	{
		switch (brush.Style)
		{
		case BrushStyle.None:
		case BrushStyle.Solid:
			return new SolidBrush(brush.BackColor);
		case BrushStyle.Pattern:
			if (brush.PatternStyle != PatternStyle.None)
			{
				return new HatchBrush((HatchStyle)(brush.PatternStyle - 1), brush.ForeColor, brush.BackColor);
			}
			goto case BrushStyle.None;
		case BrushStyle.Gradient:
			if (brush.GradientStyle != GradientStyle.None)
			{
				return GetGradientBrush(r, brush.GradientStyle, (Color[])brush.GradientColors.ToArray(typeof(Color)));
			}
			goto case BrushStyle.None;
		default:
			return SystemBrushes.Control;
		}
	}

	internal static Brush GetGradientBrush(Rectangle r, GradientStyle gradientStyle, Color[] colors)
	{
		Brush result = null;
		PathGradientBrush pathGradientBrush = null;
		LinearGradientBrush linearGradientBrush = null;
		GraphicsPath graphicsPath = null;
		switch (gradientStyle)
		{
		case GradientStyle.ForwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.ForwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			result = linearGradientBrush;
			break;
		case GradientStyle.BackwardDiagonal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.BackwardDiagonal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			result = linearGradientBrush;
			break;
		case GradientStyle.Horizontal:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.Horizontal);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			result = linearGradientBrush;
			break;
		case GradientStyle.Vertical:
			linearGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
			linearGradientBrush.InterpolationColors = GetGenericColorBlend(colors);
			result = linearGradientBrush;
			break;
		case GradientStyle.PathRectangle:
			graphicsPath = new GraphicsPath();
			graphicsPath.AddRectangle(r);
			break;
		case GradientStyle.PathEllipse:
			graphicsPath = new GraphicsPath();
			r.Inflate(r.Width / 4, r.Height / 4);
			graphicsPath.AddEllipse(r);
			break;
		}
		if (graphicsPath != null && graphicsPath.PointCount > 0)
		{
			pathGradientBrush = new PathGradientBrush(graphicsPath);
			pathGradientBrush.CenterColor = colors[colors.Length - 1];
			Color[] array = new Color[colors.Length - 1];
			int num = 0;
			for (int num2 = colors.Length - 2; num2 >= 0; num2--)
			{
				ref Color reference = ref array[num++];
				reference = colors[num2];
			}
			pathGradientBrush.SurroundColors = array;
			result = pathGradientBrush;
		}
		return result;
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
}
