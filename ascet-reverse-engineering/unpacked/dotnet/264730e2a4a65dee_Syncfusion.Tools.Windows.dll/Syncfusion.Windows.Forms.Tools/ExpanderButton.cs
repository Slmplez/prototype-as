using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ExpanderButton
{
	private Rectangle bounds = Rectangle.Empty;

	private bool expandLAF;

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	public bool ExpandedState
	{
		get
		{
			return expandLAF;
		}
		set
		{
			expandLAF = value;
		}
	}

	internal void DrawButton(Graphics g, ThemedXPTaskBarBoxDrawing themedDrawing, bool themesEnabled)
	{
		if (!g.ClipBounds.IntersectsWith(bounds))
		{
			return;
		}
		bool flag = false;
		Color color = Color.Black;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && themesEnabled)
		{
			if (XPThemes.IsOliveGreenThemeOn && XPTaskBarBox.SimulateThemedPaintingForNonDefaultThemes)
			{
				color = Color.FromArgb(86, 102, 45);
			}
			else if (XPThemes.IsSilverThemeOn && XPTaskBarBox.SimulateThemedPaintingForNonDefaultThemes)
			{
				color = Color.FromArgb(86, 102, 45);
			}
			else
			{
				themedDrawing.DrawButton(g, Bounds, ExpandedState);
				flag = true;
			}
		}
		if (!flag)
		{
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			using (Brush brush = new SolidBrush(Color.WhiteSmoke))
			{
				g.FillEllipse(brush, bounds);
			}
			Point[] array = null;
			if (!expandLAF)
			{
				Point[] array2 = new Point[3]
				{
					new Point(bounds.Left + 5, bounds.Bottom - 8),
					new Point(bounds.Left + bounds.Width / 2, bounds.Top + 4),
					new Point(bounds.Right - 5, bounds.Bottom - 8)
				};
				array = array2;
			}
			else
			{
				Point[] array3 = new Point[3]
				{
					new Point(bounds.Left + 5, bounds.Top + 4),
					new Point(bounds.Left + bounds.Width / 2, bounds.Bottom - 8),
					new Point(bounds.Right - 5, bounds.Top + 4)
				};
				array = array3;
			}
			using (Pen pen = new Pen(color, 1f))
			{
				g.DrawLines(pen, array);
				array[0].Offset(0, 3);
				array[1].Offset(0, 3);
				array[2].Offset(0, 3);
				g.DrawLines(pen, array);
			}
			g.SmoothingMode = smoothingMode;
		}
	}

	internal void DrawOffice2007Button(Graphics g, Color arrowColor, Color backColor)
	{
		Point[] array = null;
		Point[] array2 = null;
		if (!expandLAF)
		{
			Point[] array3 = new Point[3]
			{
				new Point(bounds.Left + 5, bounds.Top + 7),
				new Point(bounds.Left + bounds.Width / 2, bounds.Top + 4),
				new Point(bounds.Right - 5, bounds.Top + 7)
			};
			array = array3;
			Point[] array4 = new Point[3]
			{
				new Point(bounds.Left + 6, bounds.Top + 7),
				new Point(bounds.Left + bounds.Width / 2, bounds.Top + 5),
				new Point(bounds.Right - 6, bounds.Top + 7)
			};
			array2 = array4;
		}
		else
		{
			Point[] array5 = new Point[3]
			{
				new Point(bounds.Left + 5, bounds.Top + 4),
				new Point(bounds.Left + bounds.Width / 2, bounds.Top + 7),
				new Point(bounds.Right - 5, bounds.Top + 4)
			};
			array = array5;
			Point[] array6 = new Point[3]
			{
				new Point(bounds.Left + 6, bounds.Top + 4),
				new Point(bounds.Left + bounds.Width / 2, bounds.Top + 6),
				new Point(bounds.Right - 6, bounds.Top + 4)
			};
			array2 = array6;
		}
		using (Pen pen = new Pen(ControlPaint.Light(backColor), 2f))
		{
			g.DrawLines(pen, array);
			g.DrawLines(pen, array2);
		}
		using (Pen pen2 = new Pen(arrowColor))
		{
			g.DrawLines(pen2, array);
			g.DrawLines(pen2, array2);
		}
		array[0].Offset(0, 4);
		array[1].Offset(0, 4);
		array[2].Offset(0, 4);
		array2[0].Offset(0, 4);
		array2[1].Offset(0, 4);
		array2[2].Offset(0, 4);
		using (Pen pen3 = new Pen(ControlPaint.Light(backColor), 2f))
		{
			g.DrawLines(pen3, array);
			g.DrawLines(pen3, array2);
		}
		using Pen pen4 = new Pen(arrowColor);
		g.DrawLines(pen4, array);
		g.DrawLines(pen4, array2);
	}
}
