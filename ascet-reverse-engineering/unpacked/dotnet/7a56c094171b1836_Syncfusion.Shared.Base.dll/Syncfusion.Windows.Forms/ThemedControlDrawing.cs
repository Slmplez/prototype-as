using System;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class ThemedControlDrawing : Disposable
{
	private IntPtr htheme = IntPtr.Zero;

	private string classList = string.Empty;

	private static int dpiYScreen = 96;

	private IComponent m_owner;

	private bool m_bIsMirrored;

	public IntPtr HTheme => htheme;

	[DocumentationExclude]
	public bool DrawMirrored
	{
		get
		{
			return m_bIsMirrored;
		}
		set
		{
			m_bIsMirrored = value;
		}
	}

	public ThemedControlDrawing(string classList)
	{
		this.classList = classList;
		OpenThemeData();
		XPThemes.RegisterControlDrawing(this);
		IntPtr dC = NativeMethods.GetDC(IntPtr.Zero);
		dpiYScreen = NativeMethods.GetDeviceCaps(dC, 88);
		NativeMethods.ReleaseDC(IntPtr.Zero, dC);
	}

	public ThemedControlDrawing(string classList, IComponent owner)
		: this(classList)
	{
		if (owner != null)
		{
			AdwiseOwner(owner);
		}
	}

	protected override void Dispose(bool disposing)
	{
		UnadwiseOwner();
		if (htheme != IntPtr.Zero)
		{
			NativeMethods.CloseThemeData(htheme);
			htheme = IntPtr.Zero;
		}
		base.Dispose(disposing);
	}

	public Color GetThemeSysColor(int colorId)
	{
		int rgb = (int)NativeMethods.GetThemeSysColor(HTheme, colorId);
		return Color.FromArgb(NativeMethods.GetRValue(rgb), NativeMethods.GetGValue(rgb), NativeMethods.GetBValue(rgb));
	}

	public int GetThemeSysInt(int id)
	{
		int iValue = 0;
		NativeMethods.GetThemeSysInt(HTheme, id, ref iValue);
		return iValue;
	}

	public string GetThemeSysString(int id)
	{
		string pszStringBuff = new string(' ', 256);
		NativeMethods.GetThemeSysString(HTheme, id, ref pszStringBuff, 256);
		return pszStringBuff;
	}

	public int GetThemeSysSize(int id)
	{
		return NativeMethods.GetThemeSysSize(HTheme, id);
	}

	public bool GetThemeSysBool(int id)
	{
		return NativeMethods.GetThemeSysBool(HTheme, id);
	}

	protected virtual void OpenThemeData()
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive)
		{
			htheme = NativeMethods.OpenThemeData(IntPtr.Zero, classList);
		}
	}

	protected virtual void CloseThemeData()
	{
		if (htheme != IntPtr.Zero)
		{
			NativeMethods.CloseThemeData(htheme);
			htheme = IntPtr.Zero;
		}
	}

	public void ResetThemeHandle()
	{
		CloseThemeData();
	}

	public void RefreshThemeHandle()
	{
		CloseThemeData();
		OpenThemeData();
	}

	public virtual void DrawThemeBackground(Graphics g, int partID, int stateID, Rectangle rectangle)
	{
		DrawThemeBackground(g, partID, stateID, rectangle, Rectangle.Ceiling(g.VisibleClipBounds));
	}

	public virtual void DrawThemeBackground(Graphics g, int partID, int stateID, Rectangle rectangle, Rectangle clipRect)
	{
		bool drawMirrored = DrawMirrored;
		if (g.DpiY != (float)dpiYScreen || drawMirrored)
		{
			using (CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(g, rectangle, drawMirrored))
			{
				Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
				Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
				IntPtr hdc = virtualGfx.GetHdc();
				NativeMethods.RECT rect = new NativeMethods.RECT(virtualBounds);
				NativeMethods.RECT rectClip = new NativeMethods.RECT(virtualBounds);
				DrawThemeBackground(partID, stateID, hdc, ref rect, ref rectClip);
				virtualGfx.ReleaseHdc(hdc);
				return;
			}
		}
		IntPtr hdc2 = g.GetHdc();
		NativeMethods.RECT rect2 = new NativeMethods.RECT(rectangle);
		NativeMethods.RECT rectClip2 = new NativeMethods.RECT(clipRect);
		DrawThemeBackground(partID, stateID, hdc2, ref rect2, ref rectClip2);
		g.ReleaseHdc(hdc2);
	}

	private void DrawThemeBackground(int partID, int stateID, IntPtr hdc, ref NativeMethods.RECT rect, ref NativeMethods.RECT rectClip)
	{
		if (partID == 10 && XPThemes.IsSilverThemeOn)
		{
			DrawSilverTabBody(partID, stateID, hdc, ref rect, ref rectClip);
		}
		else
		{
			NativeMethods.DrawThemeBackground(HTheme, hdc, partID, stateID, ref rect, ref rectClip);
		}
	}

	private void DrawSilverTabBody(int partID, int stateID, IntPtr hdc, ref NativeMethods.RECT rect, ref NativeMethods.RECT rectClip)
	{
		Rectangle rect2 = rect;
		rect2.Intersect(rectClip);
		if (rect2.Width > 0 && rect2.Height > 0)
		{
			NativeMethods.RECT rect3 = new NativeMethods.RECT(rect2);
			rect3.right = rect3.left + 10;
			while (rect3.left <= rect2.Right)
			{
				NativeMethods.DrawThemeBackground(HTheme, hdc, partID, stateID, ref rect3, ref rectClip);
				rect3.left += 10;
				rect3.right += 10;
			}
		}
	}

	[CLSCompliant(false)]
	public virtual void DrawThemeText(Graphics g, int partID, int stateID, string text, Rectangle bounds, uint formatFlags1, uint formatFlags2)
	{
		IntPtr hdc = g.GetHdc();
		try
		{
			NativeMethods.RECT rect = new NativeMethods.RECT(bounds);
			NativeMethods.DrawThemeText(HTheme, hdc, partID, stateID, text, text.Length, formatFlags1, formatFlags2, ref rect);
		}
		finally
		{
			g.ReleaseHdc(hdc);
		}
	}

	public void DrawThemeText(Graphics g, int partID, int stateID, string text, Rectangle bounds, int formatFlags1, int formatFlags2)
	{
		DrawThemeText(g, partID, stateID, text, bounds, (uint)formatFlags1, (uint)formatFlags2);
	}

	public virtual Size GetPartSize(Graphics g, int partId, int stateId, int sizeType)
	{
		IntPtr hdc = g.GetHdc();
		NativeMethods.SIZE psz;
		try
		{
			NativeMethods.GetThemePartSize(HTheme, hdc, partId, stateId, IntPtr.Zero, sizeType, out psz);
		}
		finally
		{
			g.ReleaseHdc(hdc);
		}
		return new Size(psz.CX, psz.CY);
	}

	internal Size GetPartSize(Graphics g, int partId, int stateId, THEMESIZE sizeType)
	{
		return GetPartSize(g, partId, stateId, (int)sizeType);
	}

	[CLSCompliant(false)]
	public virtual Rectangle GetTextExtent(Graphics g, int partId, int stateId, string text, Rectangle bounds, uint format)
	{
		IntPtr hdc = g.GetHdc();
		NativeMethods.RECT pBoundingRect = new NativeMethods.RECT(bounds);
		NativeMethods.GetThemeTextExtent(HTheme, hdc, partId, stateId, text, text.Length, format, ref pBoundingRect, out var pExtentRect);
		g.ReleaseHdc(hdc);
		return new Rectangle(pExtentRect.left, pExtentRect.top, pExtentRect.Width, pExtentRect.Height);
	}

	private void OnOwnerDisposed(object sender, EventArgs e)
	{
		if (m_owner != null)
		{
			UnadwiseOwner();
		}
	}

	private void AdwiseOwner(IComponent owner)
	{
		m_owner = owner;
		m_owner.Disposed += OnOwnerDisposed;
	}

	private void UnadwiseOwner()
	{
		if (m_owner != null)
		{
			m_owner.Disposed -= OnOwnerDisposed;
			m_owner = null;
		}
		XPThemes.UnregisterControlDrawing(this);
	}
}
