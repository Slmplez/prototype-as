using System;
using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

public class DisplayDCGraphicsProvider : Disposable
{
	private Graphics g;

	private IntPtr hdc = IntPtr.Zero;

	[ThreadStatic]
	private static WeakReference singletonRef;

	public Graphics Graphics
	{
		get
		{
			if (g == null)
			{
				hdc = NativeMethods.CreateDC("DISPLAY");
				g = Graphics.FromHdc(hdc);
			}
			return g;
		}
	}

	public static DisplayDCGraphicsProvider Singleton
	{
		get
		{
			DisplayDCGraphicsProvider displayDCGraphicsProvider = null;
			if (singletonRef != null)
			{
				displayDCGraphicsProvider = singletonRef.Target as DisplayDCGraphicsProvider;
			}
			if (displayDCGraphicsProvider == null)
			{
				displayDCGraphicsProvider = new DisplayDCGraphicsProvider();
				singletonRef = new WeakReference(displayDCGraphicsProvider);
			}
			return displayDCGraphicsProvider;
		}
	}

	private DisplayDCGraphicsProvider()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && g != null)
		{
			g.Dispose();
			g = null;
		}
		if (hdc != IntPtr.Zero)
		{
			NativeMethods.DeleteDC(hdc);
			hdc = IntPtr.Zero;
		}
		base.Dispose(disposing);
	}
}
