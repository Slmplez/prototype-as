using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

public class TextRendererDC : IDeviceContext, IDisposable
{
	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
	private struct XFORM
	{
		public float eM11;

		public float eM12;

		public float eM21;

		public float eM22;

		public float eDx;

		public float eDy;

		public XFORM(float[] elements)
		{
			eM11 = elements[0];
			eM12 = elements[1];
			eM21 = elements[2];
			eM22 = elements[3];
			eDx = elements[4];
			eDy = elements[5];
		}
	}

	private const int GM_ADVANCED = 2;

	private Graphics _g;

	private IntPtr _dc;

	private IntPtr _hClipRgn;

	private int _savedDC;

	[DllImport("Gdi32")]
	private static extern int SetGraphicsMode(IntPtr hdc, int mode);

	[DllImport("Gdi32")]
	private static extern bool SetWorldTransform(IntPtr hDC, ref XFORM xform);

	[DllImport("Gdi32")]
	private static extern bool GetWorldTransform(IntPtr hdc, ref XFORM xform);

	[DllImport("Gdi32")]
	private static extern bool ModifyWorldTransform(IntPtr hdc, ref XFORM xform, int iMode);

	[DllImport("Gdi32")]
	private static extern int SelectClipRgn(IntPtr hDC, IntPtr hRgn);

	[DllImport("gdi32.dll")]
	private static extern int SaveDC(IntPtr hdc);

	[DllImport("gdi32.dll")]
	private static extern bool RestoreDC(IntPtr hdc, int nSavedDC);

	private TextRendererDC()
	{
	}

	public TextRendererDC(Graphics g)
	{
		_g = g;
	}

	public IntPtr GetHdc()
	{
		XFORM xform;
		using (Matrix matrix = _g.Transform)
		{
			xform = new XFORM(matrix.Elements);
		}
		using (Region region = _g.Clip)
		{
			_hClipRgn = region.GetHrgn(_g);
		}
		_dc = _g.GetHdc();
		_savedDC = SaveDC(_dc);
		SetTransform(ref xform);
		SetClip(_hClipRgn);
		return _dc;
	}

	public void ReleaseHdc()
	{
		if (_dc != IntPtr.Zero)
		{
			RestoreDC(_dc, _savedDC);
			_g.ReleaseHdc();
			NativeMethods.DeleteObject(_hClipRgn);
			_dc = (_hClipRgn = IntPtr.Zero);
		}
	}

	public void Dispose()
	{
		ReleaseHdc();
	}

	private void SetTransform(ref XFORM xform)
	{
		SetGraphicsMode(_dc, 2);
		SetWorldTransform(_dc, ref xform);
	}

	private void SetClip(IntPtr hRegion)
	{
		SelectClipRgn(_dc, hRegion);
	}
}
