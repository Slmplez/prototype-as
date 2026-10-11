using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class ColorBorderPainter : CustomBorderPainter
{
	private FloatingControl borderControl;

	private Brush brush;

	private Graphics graphics;

	private PaintInfo paintInfo = default(PaintInfo);

	private bool paintStarted;

	private bool startupSettings;

	private float opacity = 1f;

	public float Opacity
	{
		get
		{
			return opacity;
		}
		set
		{
			if (opacity != value)
			{
				opacity = value;
				UpdateLayeredWindow();
			}
		}
	}

	public Color BrushColor
	{
		set
		{
			brush = new SolidBrush(value);
		}
	}

	public Brush Brush
	{
		set
		{
			brush = value;
		}
	}

	protected ColorBorderPainter()
	{
		CreateForm();
	}

	public ColorBorderPainter(Brush brush)
		: this()
	{
		this.brush = brush;
	}

	public ColorBorderPainter(Color color)
		: this()
	{
		brush = new SolidBrush(color);
	}

	public override void StartPaint()
	{
		if (!paintStarted)
		{
			borderControl.ShowFloating();
			if (!startupSettings)
			{
				UpdateLayeredWindow();
				startupSettings = true;
			}
			paintStarted = true;
		}
	}

	public override void EndPaint()
	{
		if (paintStarted)
		{
			borderControl.Hide();
			paintStarted = false;
		}
	}

	private void CreateForm()
	{
		borderControl = new FloatingControl();
		graphics = Graphics.FromHwnd(borderControl.Handle);
		borderControl.Paint += borderForm_Paint;
		borderControl.Size = new Size(0, 0);
		borderControl.Update();
	}

	public override void DrawFrame(Rectangle rectangle)
	{
		if (rectangle != Rectangle.Empty)
		{
			SetFormPosition(rectangle);
			SetPaintInfo(PaintFigure.Frame, rectangle);
			ForceRepaint();
		}
	}

	public override void DrawTabFrame(Rectangle rectangle, DockTabAlignmentStyle alignment)
	{
		if (rectangle != Rectangle.Empty)
		{
			SetFormPosition(rectangle);
			SetPaintInfo(PaintFigure.TabFrame, rectangle);
			ForceRepaint();
		}
	}

	public override void DrawRectangle(Rectangle rectangle)
	{
		if (rectangle != Rectangle.Empty)
		{
			SetFormPosition(rectangle);
			SetPaintInfo(PaintFigure.Rectangle, rectangle);
			ForceRepaint();
		}
	}

	protected void borderForm_Paint(object Sender, PaintEventArgs e)
	{
		graphics = e.Graphics;
		Rectangle borderRectangle = paintInfo.BorderRectangle;
		switch (paintInfo.PaintFigure)
		{
		case PaintFigure.Rectangle:
			graphics.FillRectangle(brush, 0, 0, borderRectangle.Width, borderRectangle.Height);
			break;
		case PaintFigure.Frame:
			graphics.FillRectangle(brush, 0, 0, borderRectangle.Width - 4, 4);
			graphics.FillRectangle(brush, borderRectangle.Width - 4, 0, 4, borderRectangle.Height - 4);
			graphics.FillRectangle(brush, 4, borderRectangle.Height - 4, borderRectangle.Width - 4, 4);
			graphics.FillRectangle(brush, 0, 4, 4, borderRectangle.Height - 4);
			break;
		case PaintFigure.TabFrame:
		{
			graphics.FillRectangle(brush, 0, 0, borderRectangle.Width - 4, 4);
			graphics.FillRectangle(brush, 0, 4, 4, borderRectangle.Height - 4 - base.TabHeight);
			graphics.FillRectangle(brush, borderRectangle.Width - 4, 0, 4, borderRectangle.Height - base.TabHeight);
			int num = ((borderRectangle.Width > 100) ? 45 : (borderRectangle.Width / 2));
			int num2 = (base.IsMirrored ? (borderRectangle.Width - num - 8) : 8);
			graphics.FillRectangle(brush, num2, borderRectangle.Height - base.TabHeight, 4, base.TabHeight);
			graphics.FillRectangle(brush, num2 + num, borderRectangle.Height - base.TabHeight, 4, base.TabHeight);
			graphics.FillRectangle(brush, num2, borderRectangle.Height - 4, num, 4);
			graphics.FillRectangle(brush, 0, borderRectangle.Height - base.TabHeight - 4, num2 + 4, 4);
			graphics.FillRectangle(brush, num2 + num, borderRectangle.Height - base.TabHeight - 4, borderRectangle.Width - num2, 4);
			break;
		}
		}
	}

	private void SetPaintInfo(PaintFigure paintFigure, Rectangle rectangle)
	{
		paintInfo.PaintFigure = paintFigure;
		paintInfo.BorderRectangle = rectangle;
	}

	private void SetFormPosition(Rectangle rectangle)
	{
		borderControl.Location = rectangle.Location;
		borderControl.Size = rectangle.Size;
	}

	private void ForceRepaint()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(borderControl.Handle, 15, IntPtr.Zero, IntPtr.Zero);
	}

	private void UpdateLayeredWindow()
	{
		IntPtr handle = borderControl.Handle;
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowLong(handle, -20, (IntPtr)(Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(handle, -20) | 0x80000));
		Color backColor = borderControl.BackColor;
		int crKey = Syncfusion.Runtime.InteropServices.NativeMethods.RGBToCOLORREF(65536 * backColor.R + 256 * backColor.G + backColor.B);
		Syncfusion.Runtime.InteropServices.NativeMethods.SetLayeredWindowAttributes(handle, (uint)crKey, (byte)(255f * opacity), 3);
	}
}
