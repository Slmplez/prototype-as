using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ThemedWindowDrawing : ThemedControlDrawing, INonClientPaintingSupport
{
	private IntPtr cachedRgn = IntPtr.Zero;

	public ThemedWindowDrawing()
		: base("WINDOW")
	{
	}

	public ThemedWindowDrawing(IComponent owner)
		: base("WINDOW", owner)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (cachedRgn != IntPtr.Zero)
		{
			NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		base.Dispose(disposing);
	}

	public void DrawThemedBorderColor(Control control, ref Message msg)
	{
		if (cachedRgn != IntPtr.Zero)
		{
			NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		int windowLong = NativeMethods.GetWindowLong(msg.HWnd, -16);
		if ((windowLong & 0x800000) != 0 && XPThemes.IsThemedOS && XPThemes.IsThemeActive)
		{
			cachedRgn = DrawingUtils.NCPaintHelper(control, this, ref msg);
		}
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rectangle = displayRect;
		Color themeSysColor = GetThemeSysColor(3801);
		using (Pen pen = new Pen(themeSysColor))
		{
			graphics.DrawLine(pen, rectangle.Location, new Point(rectangle.Right, rectangle.Y));
			graphics.DrawLine(pen, rectangle.Location, new Point(rectangle.X, rectangle.Height));
			graphics.DrawLine(pen, new Point(rectangle.X, rectangle.Height - 1), new Point(rectangle.Right - 1, rectangle.Height - 1));
			graphics.DrawLine(pen, new Point(rectangle.Right - 1, rectangle.Y), new Point(rectangle.Right - 1, rectangle.Height - 1));
		}
		return NativeMethods.CreateRectRgn(windowRectInScreen.Left + 1, windowRectInScreen.Top + 1, windowRectInScreen.Right - 1, windowRectInScreen.Bottom - 1);
	}
}
