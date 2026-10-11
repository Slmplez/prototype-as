using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class NCPaintEventArgs : PaintEventArgs
{
	private Rectangle m_rcDisplay = Rectangle.Empty;

	private Rectangle m_rcWindowInScreen = Rectangle.Empty;

	private IntPtr m_ptrClipRegion;

	public Rectangle DisplayRectangle
	{
		get
		{
			return m_rcDisplay;
		}
		set
		{
			m_rcDisplay = value;
		}
	}

	public Rectangle WindowInScreenRectangle
	{
		get
		{
			return m_rcWindowInScreen;
		}
		set
		{
			m_rcWindowInScreen = value;
		}
	}

	public IntPtr ClipRegion
	{
		get
		{
			return m_ptrClipRegion;
		}
		set
		{
			m_ptrClipRegion = value;
		}
	}

	public NCPaintEventArgs(Graphics pGraphics, Rectangle pClipRegion, Rectangle pDisplay, Rectangle pWindowInScreen, IntPtr pPtrClipRegion)
		: base(pGraphics, pClipRegion)
	{
		m_rcDisplay = pDisplay;
		m_rcWindowInScreen = pWindowInScreen;
		m_ptrClipRegion = pPtrClipRegion;
	}

	protected override void Dispose(bool disposing)
	{
		if (m_ptrClipRegion != IntPtr.Zero)
		{
			NativeMethods.DeleteObject(m_ptrClipRegion);
			m_ptrClipRegion = IntPtr.Zero;
		}
		base.Dispose(disposing);
	}
}
