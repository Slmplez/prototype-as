using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabUtils
{
	public static RectangleF ApplyTransform(Graphics g, TabAlignment align, RectangleF rect, bool apply)
	{
		if (align == TabAlignment.Top)
		{
			return rect;
		}
		PointF[] array = new PointF[2];
		Matrix matrix = null;
		switch (align)
		{
		case TabAlignment.Left:
			if (apply)
			{
				g.RotateTransform(90f);
				g.ScaleTransform(-1f, 1f, MatrixOrder.Append);
				array[0].X = rect.Left;
				array[0].Y = rect.Top;
				array[1].X = rect.Right - 1f;
				array[1].Y = rect.Bottom - 1f;
			}
			else
			{
				g.ScaleTransform(-1f, 1f);
				g.RotateTransform(-90f, MatrixOrder.Append);
				array[0].X = rect.Left;
				array[0].Y = rect.Top;
				array[1].X = rect.Right - 1f;
				array[1].Y = rect.Bottom - 1f;
			}
			break;
		case TabAlignment.Right:
			if (apply)
			{
				g.RotateTransform(270f);
				array[0].X = rect.Right - 1f;
				array[0].Y = rect.Top;
				array[1].X = rect.Left;
				array[1].Y = rect.Bottom - 1f;
			}
			else
			{
				g.RotateTransform(-270f);
				array[0].X = rect.Left;
				array[0].Y = rect.Bottom - 1f;
				array[1].X = rect.Right - 1f;
				array[1].Y = rect.Top;
			}
			break;
		case TabAlignment.Bottom:
			if (apply)
			{
				g.ScaleTransform(1f, -1f);
				array[0].X = rect.Left;
				array[0].Y = rect.Bottom - 1f;
				array[1].X = rect.Right - 1f;
				array[1].Y = rect.Top;
			}
			else
			{
				g.ScaleTransform(1f, -1f);
				array[0].X = rect.Left;
				array[0].Y = rect.Bottom - 1f;
				array[1].X = rect.Right - 1f;
				array[1].Y = rect.Top;
			}
			break;
		}
		matrix = g.Transform;
		g.ResetTransform();
		matrix.TransformPoints(array);
		ref PointF reference = ref array[0];
		reference = Point.Round(array[0]);
		ref PointF reference2 = ref array[1];
		reference2 = Point.Round(array[1]);
		return new RectangleF(array[0].X, array[0].Y, array[1].X - array[0].X + 1f, array[1].Y - array[0].Y + 1f);
	}
}
