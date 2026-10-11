using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

public class ActiveXSnapshot
{
	internal enum PRF
	{
		PRF_CHECKVISIBLE = 1,
		PRF_NONCLIENT = 2,
		PRF_CLIENT = 4,
		PRF_ERASEBKGND = 8,
		PRF_CHILDREN = 0x10,
		PRF_OWNED = 0x20
	}

	private static readonly int hiMetricPerInch;

	private static Point logPixels;

	private static bool firstTime;

	private static bool forceWmPaintInPrintWindow;

	public static bool ForceWmPaintInPrintWindow
	{
		get
		{
			return forceWmPaintInPrintWindow;
		}
		set
		{
			forceWmPaintInPrintWindow = value;
		}
	}

	private static Point LogPixels
	{
		get
		{
			if (logPixels.IsEmpty)
			{
				logPixels = default(Point);
				IntPtr dC = NativeMethods.GetDC(IntPtr.Zero);
				logPixels.X = NativeMethods.GetDeviceCaps(dC, 88);
				logPixels.Y = NativeMethods.GetDeviceCaps(dC, 90);
				NativeMethods.ReleaseDC(IntPtr.Zero, dC);
			}
			return logPixels;
		}
	}

	static ActiveXSnapshot()
	{
		firstTime = true;
		forceWmPaintInPrintWindow = false;
		hiMetricPerInch = 2540;
	}

	public static Bitmap TakeSnapshot(object ocx)
	{
		bool preferViewObject = !firstTime;
		firstTime = false;
		return TakeSnapshot(ocx, preferViewObject);
	}

	public static Bitmap TakeSnapshot(object ocx, bool preferViewObject2)
	{
		NativeMethods.IViewObject2 viewObject = null;
		NativeMethods.IViewObject viewObject2 = null;
		NativeMethods.IOleObject oleObject = null;
		IntPtr intPtr = IntPtr.Zero;
		IntPtr intPtr2 = IntPtr.Zero;
		IntPtr hObject = IntPtr.Zero;
		int num = 0;
		int num2 = 0;
		NativeMethods.tagSIZEL tagSIZEL = new NativeMethods.tagSIZEL();
		NativeMethods.COMRECT cOMRECT = new NativeMethods.COMRECT();
		_ = typeof(NativeMethods.IPicture).GUID;
		new NativeMethods.PICTDESC();
		if (ocx == null)
		{
			throw new ArgumentNullException("ocx");
		}
		try
		{
			if (preferViewObject2 && ocx is NativeMethods.IViewObject2)
			{
				viewObject = (NativeMethods.IViewObject2)ocx;
			}
			viewObject2 = (NativeMethods.IViewObject)ocx;
			intPtr = NativeMethods.CreateCompatibleDC(IntPtr.Zero);
			if (viewObject != null)
			{
				viewObject.GetExtent(1, -1, null, tagSIZEL);
			}
			else
			{
				oleObject = (NativeMethods.IOleObject)ocx;
				oleObject.GetExtent(16, tagSIZEL);
			}
			Size size = new Size(HiMetricToPixel(tagSIZEL.cx, tagSIZEL.cy));
			num = size.Width;
			num2 = size.Height;
			cOMRECT.top = 0;
			cOMRECT.left = 0;
			cOMRECT.right = num;
			cOMRECT.bottom = num2;
			int deviceCaps = NativeMethods.GetDeviceCaps(intPtr, 12);
			int deviceCaps2 = NativeMethods.GetDeviceCaps(intPtr, 14);
			intPtr2 = NativeMethods.CreateBitmap(num, num2, deviceCaps2, deviceCaps, null);
			hObject = NativeMethods.SelectObject(intPtr, intPtr2);
			viewObject2.Draw(1, -1, IntPtr.Zero, null, IntPtr.Zero, intPtr, cOMRECT, null, IntPtr.Zero, 0);
			return Image.FromHbitmap(intPtr2);
		}
		catch (COMException ex)
		{
			MessageBox.Show("HResult " + ex.ErrorCode + ": " + ex.ToString());
			return null;
		}
		finally
		{
			NativeMethods.SelectObject(intPtr, hObject);
			NativeMethods.DeleteDC(intPtr);
			NativeMethods.DeleteObject(intPtr2);
			oleObject = null;
			viewObject2 = null;
			viewObject = null;
		}
	}

	public static Bitmap PrintWindow(Control control)
	{
		return PrintControl(control, 791, 62, control.Size);
	}

	public static Bitmap PrintClient(Control control)
	{
		if (ForceWmPaintInPrintWindow)
		{
			return PrintControl(control, 15, 62, control.ClientRectangle.Size);
		}
		return PrintControl(control, 792, 62, control.ClientRectangle.Size);
	}

	public static Bitmap PrintControl(Control control, int msg, int flags, Size size)
	{
		IntPtr handle = control.Handle;
		IntPtr hDC = IntPtr.Zero;
		_ = Rectangle.Empty;
		IntPtr intPtr = IntPtr.Zero;
		IntPtr intPtr2 = IntPtr.Zero;
		int num = 0;
		int num2 = 0;
		try
		{
			num2 = size.Width;
			num = size.Height;
			hDC = NativeMethods.GetWindowDC(handle);
			intPtr2 = NativeMethods.CreateCompatibleDC(hDC);
			intPtr = NativeMethods.CreateCompatibleBitmap(hDC, num2, num);
			NativeMethods.SelectObject(intPtr2, intPtr);
			NativeMethods.SendMessage(handle, msg, intPtr2, flags);
			return Image.FromHbitmap(intPtr);
		}
		finally
		{
			NativeMethods.ReleaseDC(handle, hDC);
			NativeMethods.DeleteObject(intPtr);
			NativeMethods.DeleteObject(intPtr2);
		}
	}

	private static Point HiMetricToPixel(int x, int y)
	{
		return new Point
		{
			X = (LogPixels.X * x + hiMetricPerInch / 2) / hiMetricPerInch,
			Y = (LogPixels.Y * y + hiMetricPerInch / 2) / hiMetricPerInch
		};
	}

	public static void BeginResizeNoPaint(Control c, Size size, out Rectangle bounds)
	{
		bounds = c.Bounds;
		NativeMethods.SendMessage(c.Handle, 11, 0, 0);
		c.Location = new Point(-10000, -10000);
		c.Size = size;
		NativeMethods.SendMessage(c.Handle, 11, 1, 0);
	}

	public static void EndResizeNoPaint(Control c, Rectangle savedBounds)
	{
		NativeMethods.SendMessage(c.Handle, 11, 0, 0);
		c.Size = savedBounds.Size;
		c.Location = savedBounds.Location;
		NativeMethods.SendMessage(c.Handle, 11, 1, 0);
	}

	public static void FakeLeftMouseClick(Control c, Point point)
	{
		IntPtr lparam = NativeMethods.Util.MAKELPARAM(point.X, point.Y);
		IntPtr wparam = (IntPtr)1;
		NativeMethods.PostMessage(c.Handle, 513, wparam, lparam);
		NativeMethods.PostMessage(c.Handle, 514, wparam, lparam);
	}
}
