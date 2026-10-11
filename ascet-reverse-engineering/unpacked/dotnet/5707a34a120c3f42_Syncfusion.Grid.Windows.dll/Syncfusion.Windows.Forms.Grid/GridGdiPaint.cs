using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Text;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public class GridGdiPaint
{
	public static bool AllowTextOut = true;

	public static bool ForceDrawText = false;

	private bool dumpConsole;

	[ThreadStatic]
	private static GridGdiPaint instance;

	private Hashtable safedHFonts;

	private Hashtable safedHBrushs;

	private ArrayList brushes;

	private ArrayList fonts;

	public static GridGdiPaint Instance
	{
		get
		{
			if (instance == null)
			{
				instance = new GridGdiPaint();
			}
			return instance;
		}
	}

	private GridGdiPaint()
	{
		fonts = new ArrayList();
		safedHFonts = new Hashtable();
		safedHBrushs = new Hashtable();
		brushes = new ArrayList();
		Application.Idle += Application_Idle;
	}

	private void Application_Idle(object sender, EventArgs e)
	{
		brushes.Clear();
		fonts.Clear();
		safedHFonts.Clear();
		safedHBrushs.Clear();
	}

	public bool DrawText(Graphics g, string displayText, Rectangle textRectangle, GridStyleInfo style)
	{
		Rectangle clipBounds = Rectangle.Ceiling(g.ClipBounds);
		clipBounds.Intersect(textRectangle);
		return DrawText(g, displayText, textRectangle, style, clipBounds);
	}

	public bool DrawText(Graphics g, string displayText, Rectangle textRectangle, GridStyleInfo style, Rectangle clipBounds)
	{
		return DrawText(g, displayText, textRectangle, style, clipBounds, isRightToLeft: false);
	}

	public bool DrawText(Graphics g, string displayText, Rectangle textRectangle, GridStyleInfo style, Rectangle clipBounds, bool isRightToLeft)
	{
		if (style.Font.Orientation != 0)
		{
			return false;
		}
		IntPtr hdc = g.GetHdc();
		try
		{
			IntPtr zero = IntPtr.Zero;
			GridFontInfo readOnlyFont = style.ReadOnlyFont;
			if (readOnlyFont.Italic)
			{
				textRectangle.Width--;
			}
			WeakReference weakReference = (WeakReference)safedHFonts[readOnlyFont];
			if (weakReference != null && weakReference.IsAlive)
			{
				GridWeakRefHFont gridWeakRefHFont = (GridWeakRefHFont)weakReference.Target;
				GC.KeepAlive(gridWeakRefHFont);
				zero = gridWeakRefHFont.Hfont;
			}
			else
			{
				zero = CreateHFont(readOnlyFont);
				GridWeakRefHFont gridWeakRefHFont2 = new GridWeakRefHFont(safedHFonts, zero);
				GC.KeepAlive(gridWeakRefHFont2);
				safedHFonts[readOnlyFont] = new WeakReference(gridWeakRefHFont2);
				fonts.Add(gridWeakRefHFont2);
			}
			IntPtr hObject = NativeMethods.SelectObject(hdc, zero);
			int crColor = NativeMethods.SetTextColor(hdc, NativeMethods.COLORREFToRGB(style.TextColor.ToArgb()));
			int nBkMode = NativeMethods.SetBkMode(hdc, 1);
			NativeMethods.RECT lpRect = NativeMethods.RECT.FromXYWH(textRectangle.Left, textRectangle.Top, textRectangle.Width, textRectangle.Height);
			int num = 288;
			num |= 0x2000;
			bool flag = !AllowTextOut;
			bool flag2 = ForceDrawText;
			switch (style.HorizontalAlignment)
			{
			case GridHorizontalAlignment.Left:
				if (isRightToLeft)
				{
					flag = true;
					num |= 2;
				}
				break;
			case GridHorizontalAlignment.Center:
				flag = true;
				num |= 1;
				break;
			case GridHorizontalAlignment.Right:
				if (isRightToLeft)
				{
					num = num;
					break;
				}
				flag = true;
				num |= 2;
				break;
			}
			switch (style.VerticalAlignment)
			{
			case GridVerticalAlignment.Middle:
				flag = true;
				num |= 4;
				break;
			case GridVerticalAlignment.Bottom:
				flag = true;
				num |= 8;
				break;
			}
			switch (style.Trimming)
			{
			case StringTrimming.Character:
			case StringTrimming.Word:
				flag2 = true;
				num &= -257;
				break;
			case StringTrimming.EllipsisCharacter:
				flag2 = true;
				num |= 0x8000;
				break;
			case StringTrimming.EllipsisWord:
				flag2 = true;
				num |= 0x40000;
				break;
			case StringTrimming.EllipsisPath:
				flag2 = true;
				num |= 0x4000;
				break;
			}
			switch (style.HotkeyPrefix)
			{
			case HotkeyPrefix.None:
			case HotkeyPrefix.Hide:
				num |= 0x800;
				break;
			default:
				flag2 = true;
				break;
			}
			if (style.WrapText)
			{
				num |= 0x10;
				num &= -33;
				flag = true;
			}
			bool flag3 = !clipBounds.IsEmpty && !clipBounds.Contains(textRectangle);
			NativeMethods.RECT lpRect2 = default(NativeMethods.RECT);
			if (flag3)
			{
				NativeMethods.GetClipBox(hdc, ref lpRect2);
				NativeMethods.IntersectClipRect(hdc, clipBounds.X, clipBounds.Y, clipBounds.Right, clipBounds.Bottom);
				num |= 0x100;
			}
			if (flag2)
			{
				if (dumpConsole)
				{
					Console.WriteLine("DT {0}", displayText);
				}
				NativeMethods.DrawText(hdc, displayText, displayText.Length, ref lpRect, num);
			}
			else if (flag)
			{
				if (dumpConsole)
				{
					Console.WriteLine("DTE {0}", displayText);
				}
				DrawTextLikeMultiLineEdit(hdc, displayText, textRectangle, num, Rectangle.Empty);
			}
			else
			{
				if (dumpConsole)
				{
					Console.WriteLine("TO {0}", displayText);
				}
				NativeMethods.ExtTextOut(hdc, textRectangle.Left, textRectangle.Top, 0, ref lpRect, displayText, displayText.Length, null);
			}
			if (flag3)
			{
				NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
				NativeMethods.IntersectClipRect(hdc, lpRect2.left, lpRect2.top, lpRect2.right, lpRect2.bottom);
			}
			NativeMethods.SelectObject(hdc, hObject);
			NativeMethods.SetTextColor(hdc, crColor);
			NativeMethods.SetBkMode(hdc, nBkMode);
		}
		finally
		{
			g.ReleaseHdc(hdc);
		}
		return true;
	}

	public bool FillRectangle(Graphics graphics, RectangleF bounds, BrushInfo brush)
	{
		if (brush.Style != BrushStyle.Solid || brush.BackColor.A != byte.MaxValue)
		{
			return false;
		}
		int num = NativeMethods.COLORREFToRGB(brush.BackColor.ToArgb());
		IntPtr hdc = graphics.GetHdc();
		try
		{
			NativeMethods.RECT rect = NativeMethods.RECT.FromXYWH((int)bounds.Left, (int)bounds.Top, (int)bounds.Width, (int)bounds.Height);
			WeakReference weakReference = (WeakReference)safedHBrushs[num];
			IntPtr intPtr;
			if (weakReference != null && weakReference.IsAlive)
			{
				GridWeakRefHBrush gridWeakRefHBrush = (GridWeakRefHBrush)weakReference.Target;
				GC.KeepAlive(gridWeakRefHBrush);
				intPtr = gridWeakRefHBrush.Hbrush;
			}
			else
			{
				intPtr = CreateHBrush(brush);
				GridWeakRefHBrush gridWeakRefHBrush2 = new GridWeakRefHBrush(safedHBrushs, intPtr);
				GC.KeepAlive(gridWeakRefHBrush2);
				safedHBrushs[num] = new WeakReference(gridWeakRefHBrush2);
				brushes.Add(gridWeakRefHBrush2);
			}
			IntPtr hObject = NativeMethods.SelectObject(hdc, intPtr);
			if (dumpConsole)
			{
				Console.WriteLine("FR {0} {1}", bounds, brush);
			}
			NativeMethods.FillRect(hdc, ref rect, intPtr);
			NativeMethods.SelectObject(hdc, hObject);
		}
		finally
		{
			graphics.ReleaseHdc(hdc);
		}
		return true;
	}

	internal int ComputeLineBreaks(IntPtr pDC, string sz, ref Rectangle rc, int nFormat, int[] LineBreaks, int[] LineLengths, int nMaxBreaks)
	{
		if (sz.Trim().Length == 0)
		{
			return 0;
		}
		bool flag = (nFormat & 0x10) != 0;
		NativeMethods.RECT rECT = NativeMethods.RECT.FromXYWH(rc.X, rc.Y, rc.Width, rc.Height);
		int num = rc.Width + 1;
		int num2 = 0;
		int num3;
		int tmExternalLeading;
		if (Marshal.SystemDefaultCharSize == 1)
		{
			NativeMethods.TEXTMETRICA tm = default(NativeMethods.TEXTMETRICA);
			NativeMethods.GetTextMetricsA(pDC, ref tm);
			num3 = tm.tmHeight + tm.tmExternalLeading;
			tmExternalLeading = tm.tmExternalLeading;
		}
		else
		{
			NativeMethods.TEXTMETRICW tm2 = default(NativeMethods.TEXTMETRICW);
			NativeMethods.GetTextMetricsW(pDC, ref tm2);
			num3 = tm2.tmHeight + tm2.tmExternalLeading;
			tmExternalLeading = tm2.tmExternalLeading;
		}
		if (num3 <= 0)
		{
			return 0;
		}
		int num4 = ((rc.Height - num3 / 3 > num3) ? Math.Max(0, rc.Height / num3) : 0);
		int length = sz.Length;
		NativeMethods.SIZE size = default(NativeMethods.SIZE);
		int num5 = 0;
		while (num5 < length)
		{
			int num6 = 0;
			int i = num5;
			int num7 = 0;
			int num8;
			int num9;
			do
			{
				num8 = num7;
				num9 = i;
				while (i < length && sz[i] == ' ')
				{
					i++;
					num7++;
				}
				for (; i < length && " \r\n".IndexOf(sz[i]) == -1; i++)
				{
					num7++;
				}
				NativeMethods.GetTextExtentPoint32(pDC, sz.Substring(num5), num7, ref size);
				num6++;
				while (i < length && sz[i] == ' ')
				{
					i++;
					num7++;
				}
			}
			while (size.cx <= num && i < length && sz[i] != '\r' && sz[i] != '\n');
			rECT.top += size.cy + 1;
			LineBreaks[num2] = num5;
			if (i < length && sz[i] == '\r' && size.cx <= num)
			{
				NativeMethods.GetTextExtentPoint32(pDC, sz.Substring(num5), num7, ref size);
				LineLengths[num2++] = num7;
				if (sz[num5 = i + 1] == '\n')
				{
					num5++;
				}
				if (num5 == length)
				{
					LineBreaks[num2] = num5;
					LineLengths[num2++] = 0;
				}
			}
			else if (i < length && sz[i] == '\n' && size.cx <= num)
			{
				NativeMethods.GetTextExtentPoint32(pDC, sz.Substring(num5), num7, ref size);
				LineLengths[num2++] = num7;
				num5 = i + 1;
				if (num5 == length)
				{
					LineBreaks[num2] = num5;
					LineLengths[num2++] = 0;
				}
			}
			else
			{
				if (size.cx <= num)
				{
					LineLengths[num2++] = num7;
					break;
				}
				if (num6 > 1 && num4 > 0 && flag)
				{
					LineLengths[num2++] = num8;
					num5 = num9;
				}
				else
				{
					i = num5;
					num7 = 0;
					size.cx = 0;
					do
					{
						num7++;
						i++;
						NativeMethods.GetTextExtentPoint32(pDC, sz.Substring(num5), num7 + 1, ref size);
					}
					while (i < length && size.cx <= num);
					LineLengths[num2++] = num7;
					num5 = i;
				}
			}
			if (num4-- == 0 || num2 == nMaxBreaks || !flag)
			{
				break;
			}
		}
		if (rECT.top < rECT.bottom)
		{
			if ((nFormat & 4) != 0)
			{
				rc.Y += (rc.Bottom - rECT.top + tmExternalLeading) / 2;
			}
			else if ((nFormat & 8) != 0)
			{
				rc.Y += rc.Bottom - rECT.top;
			}
		}
		return num2;
	}

	internal int GetMultiLineTextBreakCount(IntPtr pDC, string lpszString, int nCount, Rectangle rc, int nFormat)
	{
		int[] lineBreaks = new int[32];
		int[] lineLengths = new int[32];
		return ComputeLineBreaks(pDC, lpszString, ref rc, nFormat, lineBreaks, lineLengths, 32);
	}

	internal int DrawTextLikeMultiLineEdit(IntPtr pDC, string lpszString, Rectangle rc, int nFormat, Rectangle lpClipRect)
	{
		int[] array = new int[32];
		int[] array2 = new int[32];
		_ = lpszString.Length;
		int num = ComputeLineBreaks(pDC, lpszString, ref rc, nFormat, array, array2, 32);
		NativeMethods.RECT lpRect = NativeMethods.RECT.FromXYWH(rc.X, rc.Y, rc.Width, rc.Height);
		if (lpClipRect.IsEmpty)
		{
			lpClipRect = rc;
		}
		int num2;
		if (Marshal.SystemDefaultCharSize == 1)
		{
			NativeMethods.TEXTMETRICA tm = default(NativeMethods.TEXTMETRICA);
			NativeMethods.GetTextMetricsA(pDC, ref tm);
			num2 = tm.tmHeight + tm.tmExternalLeading;
		}
		else
		{
			NativeMethods.TEXTMETRICW tm2 = default(NativeMethods.TEXTMETRICW);
			NativeMethods.GetTextMetricsW(pDC, ref tm2);
			num2 = tm2.tmHeight + tm2.tmExternalLeading;
		}
		if (num2 >= 20)
		{
			num2--;
		}
		for (int i = 0; i < num; i++)
		{
			int num3 = -1;
			string text = lpszString.Substring(array[i]);
			int num4 = array2[i];
			NativeMethods.SIZE size = default(NativeMethods.SIZE);
			bool flag = false;
			if (num4 == text.Length)
			{
				NativeMethods.GetTextExtentPoint32(pDC, text, num4, ref size);
				if (size.cx > lpClipRect.Width)
				{
					flag = true;
					num3 = lpClipRect.Left;
				}
				else if (size.cx > lpRect.Width)
				{
					num3 = Math.Min(lpClipRect.Right - size.cx, lpRect.left);
				}
			}
			if (num3 == -1 && (nFormat & 3) != 0)
			{
				if (size.cx == 0)
				{
					NativeMethods.GetTextExtentPoint32(pDC, text, num4, ref size);
				}
				if ((nFormat & 2) != 0)
				{
					num3 = Math.Max(lpRect.left, lpRect.right - size.cx);
				}
				else if ((nFormat & 1) != 0)
				{
					num3 = Math.Max(lpRect.left, lpRect.left + (lpRect.right - lpRect.left - size.cx) / 2);
				}
			}
			if (num3 == -1)
			{
				num3 = lpRect.left;
			}
			if (flag)
			{
				if (true)
				{
					NativeMethods.RECT lpRect2 = default(NativeMethods.RECT);
					NativeMethods.GetClipBox(pDC, ref lpRect2);
					NativeMethods.IntersectClipRect(pDC, lpClipRect.X, lpClipRect.Y, lpClipRect.Right, lpClipRect.Bottom);
					NativeMethods.ExtTextOut(pDC, num3, lpRect.top, 0, ref lpRect2, text, num4, null);
					NativeMethods.SelectClipRgn(pDC, IntPtr.Zero);
					NativeMethods.IntersectClipRect(pDC, lpRect2.left, lpRect2.top, lpRect2.right, lpRect2.bottom);
				}
			}
			else
			{
				NativeMethods.ExtTextOut(pDC, num3, lpRect.top, 0, ref lpRect, text, num4, null);
			}
			lpRect.top += num2;
		}
		return 0;
	}

	private IntPtr CreateHFont(Font font)
	{
		return font.ToHfont();
	}

	private IntPtr CreateHFont(GridFontInfo font)
	{
		return CreateHFont(font.GdipFont);
	}

	private IntPtr CreateHBrush(BrushInfo brush)
	{
		NativeMethods.LOGBRUSH lb = new NativeMethods.LOGBRUSH
		{
			lbColor = NativeMethods.COLORREFToRGB(brush.BackColor.ToArgb())
		};
		return NativeMethods.CreateBrushIndirect(ref lb);
	}
}
