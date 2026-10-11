using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.IO;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public class RichTextPaint
{
	private const EmfType EMF_TYPE = EmfType.EmfOnly;

	private static int FormatRange(RichTextBox richTextControl, NativeMethods.FORMATRANGE fr, bool display)
	{
		return (int)NativeMethods.SendMessage(richTextControl.Handle, 1081, display, fr);
	}

	private static int DisplayBand(RichTextBox richTextControl, NativeMethods.RECT rc)
	{
		return (int)NativeMethods.SendMessage(richTextControl.Handle, 1075, IntPtr.Zero, ref rc);
	}

	public static void PaintStatic(Graphics g, RichTextBox richTextControl, bool printing, Rectangle pageBounds, Rectangle targetBounds, Rectangle clipRect, Color backColor, int zoom)
	{
		RectangleF clipBounds = g.ClipBounds;
		bool flag = true;
		clipBounds.Intersect(targetBounds);
		clipBounds.Intersect(pageBounds);
		if (!clipRect.IsEmpty)
		{
			clipBounds.Intersect(clipRect);
		}
		IntPtr hdc = g.GetHdc();
		NativeMethods.RGBToCOLORREF(backColor.ToArgb());
		int deviceCaps = NativeMethods.GetDeviceCaps(hdc, 88);
		if (printing)
		{
			IntPtr dC = NativeMethods.GetDC(IntPtr.Zero);
			int deviceCaps2 = NativeMethods.GetDeviceCaps(dC, 88);
			NativeMethods.ReleaseDC(IntPtr.Zero, dC);
			NativeMethods.SetMapMode(hdc, 8);
			NativeMethods.SetWindowExtEx(hdc, deviceCaps, deviceCaps, out var _);
			NativeMethods.SetViewportExtEx(hdc, deviceCaps2, deviceCaps2, out var _);
		}
		float num = 1f;
		float num2 = 1440f / (float)deviceCaps;
		NativeMethods.RECT rcPage = new NativeMethods.RECT(pageBounds);
		NativeMethods.RECT rc = new NativeMethods.RECT(targetBounds);
		NativeMethods.RECT rECT = new NativeMethods.RECT(Rectangle.Ceiling(clipBounds));
		NativeMethods.RECT rc2 = new NativeMethods.RECT(Rectangle.Ceiling(clipBounds));
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		rcPage.left = (int)((float)rcPage.left * num2);
		rcPage.top = (int)((float)rcPage.top * num2);
		rcPage.right = (int)((float)rcPage.right * num2);
		rcPage.bottom = (int)((float)rcPage.bottom * num2);
		rc.left = (int)((float)rc.left * num2);
		rc.top = (int)((float)rc.top * num2);
		rc.right = (int)((float)rc.right * num2);
		rc.bottom = (int)((float)rc.bottom * num2);
		rc2.left = (int)((float)rc2.left * num2);
		rc2.top = (int)((float)rc2.top * num2);
		rc2.right = (int)((float)rc2.right * num2);
		rc2.bottom = (int)((float)rc2.bottom * num2);
		rECT.left = (int)((float)rECT.left * num);
		rECT.top = (int)((float)rECT.top * num);
		rECT.right = (int)((float)rECT.right * num);
		rECT.bottom = (int)((float)rECT.bottom * num);
		NativeMethods.FORMATRANGE fORMATRANGE = new NativeMethods.FORMATRANGE();
		fORMATRANGE.rcPage = rcPage;
		fORMATRANGE.rc = rc;
		fORMATRANGE.chrg = new NativeMethods.CHARRANGE
		{
			cpMin = 0,
			cpMax = -1
		};
		fORMATRANGE.hdcTarget = hdc;
		fORMATRANGE.hdc = hdc;
		if (flag)
		{
			NativeMethods.GetClipBox(hdc, ref lpRect);
			NativeMethods.IntersectClipRect(hdc, rECT.left, rECT.top, rECT.right, rECT.bottom);
		}
		richTextControl.BackColor = Color.FromArgb(255, backColor);
		FormatRange(richTextControl, null, display: false);
		FormatRange(richTextControl, fORMATRANGE, display: false);
		DisplayBand(richTextControl, rc2);
		FormatRange(richTextControl, null, display: false);
		if (flag)
		{
			NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
			NativeMethods.IntersectClipRect(hdc, lpRect.left, lpRect.top, lpRect.right, lpRect.bottom);
		}
		g.ReleaseHdc(hdc);
	}

	public static void DrawRichText(Graphics g, RichTextBox richTextControl, string rtf, bool printing, Rectangle pageBounds, Rectangle targetBounds, Rectangle clipRect, Color backColor, bool wordWrap, int zoom)
	{
		DrawRichText(g, richTextControl, rtf, printing, pageBounds, targetBounds, clipRect, backColor, wordWrap, zoom, isRightToLeft: false);
	}

	public static void DrawRichText(Graphics g, RichTextBox richTextControl, string rtf, bool printing, Rectangle pageBounds, Rectangle targetBounds, Rectangle clipRect, Color backColor, bool wordWrap, int zoom, bool isRightToLeft)
	{
		richTextControl.WordWrap = wordWrap;
		richTextControl.RightToLeft = (isRightToLeft ? RightToLeft.Yes : RightToLeft.No);
		if (IsValidRtf(rtf))
		{
			richTextControl.Rtf = rtf;
		}
		else
		{
			richTextControl.Text = rtf;
		}
		richTextControl.CreateControl();
		PaintStatic(g, richTextControl, printing, pageBounds, targetBounds, clipRect, backColor, zoom);
	}

	public static void DrawRichText(Graphics g, string rtf, bool printing, Rectangle pageBounds, Rectangle targetBounds, Color backColor, Rectangle clipRect, bool wordWrap, int zoom)
	{
		DrawRichText(g, rtf, printing, pageBounds, targetBounds, backColor, clipRect, wordWrap, zoom, isRightToLeft: false);
	}

	public static void DrawRichText(Graphics g, string rtf, bool printing, Rectangle pageBounds, Rectangle targetBounds, Color backColor, Rectangle clipRect, bool wordWrap, int zoom, bool isRightToLeft)
	{
		RichTextBox richTextBox = new RichTextBox();
		DrawRichText(g, richTextBox, rtf, printing, pageBounds, targetBounds, clipRect, backColor, wordWrap, zoom, isRightToLeft);
		richTextBox.Dispose();
	}

	public static bool IsValidRtf(string rtf)
	{
		rtf = rtf.Trim('\0', '\r', '\n', ' ', '\t');
		if (rtf.StartsWith("{\\rtf"))
		{
			return rtf.EndsWith("}");
		}
		return false;
	}

	private static int ConvertInchesToTwips(int n)
	{
		return (int)((float)n * 1440f);
	}

	private static int ConvertInchesToTwips(float f)
	{
		return (int)(f * 1440f);
	}

	private static RectangleF ConvertPixelsToInches(RectangleF rcpixels, float dpix, float dpiy)
	{
		float x = rcpixels.X / dpix;
		float y = rcpixels.Y / dpiy;
		float width = rcpixels.Width / dpix;
		float height = rcpixels.Height / dpiy;
		return new RectangleF(x, y, width, height);
	}

	public static byte[] DrawRichTextToByteArray(Graphics gphx, string text, float width, float height, Color backcolor)
	{
		RichTextBox richTextBox = new RichTextBox();
		richTextBox.AcceptsTab = true;
		richTextBox.BorderStyle = BorderStyle.FixedSingle;
		richTextBox.BackColor = Color.FromArgb(255, backcolor);
		richTextBox.Bounds = new Rectangle(0, 0, (int)width, (int)height);
		if (IsValidRtf(text))
		{
			richTextBox.Rtf = text;
		}
		else
		{
			richTextBox.Text = text;
		}
		width = ((width == 0f) ? 1f : width);
		height = ((height == 0f) ? 1f : height);
		NativeMethods.SendMessage(richTextBox.Handle, 1228, new IntPtr(4), new IntPtr(4));
		Bitmap bitmap = new Bitmap(1, 1, gphx);
		Graphics graphics = Graphics.FromImage(bitmap);
		IntPtr hdc = graphics.GetHdc();
		byte[] result = BytesFromRichText(richTextBox, hdc, 0f, 0f, width, height);
		graphics.ReleaseHdc(hdc);
		graphics.Dispose();
		bitmap.Dispose();
		richTextBox.Dispose();
		return result;
	}

	private static byte[] BytesFromRichText(RichTextBox richTextBox, IntPtr refHdc, float left, float top, float width, float height)
	{
		MemoryStream memoryStream = new MemoryStream();
		Metafile metafile = new Metafile(memoryStream, refHdc, new RectangleF(0f, 0f, width, height), MetafileFrameUnit.Pixel, EmfType.EmfOnly);
		Graphics graphics = Graphics.FromImage(metafile);
		graphics.TextRenderingHint = TextRenderingHint.AntiAliasGridFit;
		IntPtr hdc = graphics.GetHdc();
		NativeMethods.CHARRANGE chrg = default(NativeMethods.CHARRANGE);
		chrg.cpMin = 0;
		chrg.cpMax = richTextBox.TextLength;
		float dpix = NativeMethods.GetDeviceCaps(refHdc, 88);
		float dpiy = NativeMethods.GetDeviceCaps(refHdc, 90);
		RectangleF rectangleF = ConvertPixelsToInches(new RectangleF(left, top, width, height), dpix, dpiy);
		NativeMethods.RECT rECT = default(NativeMethods.RECT);
		rECT.left = ConvertInchesToTwips(rectangleF.Left);
		rECT.top = ConvertInchesToTwips(rectangleF.Top);
		rECT.right = ConvertInchesToTwips(rectangleF.Width);
		rECT.bottom = ConvertInchesToTwips(rectangleF.Height);
		NativeMethods.FORMATRANGE fORMATRANGE = new NativeMethods.FORMATRANGE();
		fORMATRANGE.chrg = chrg;
		fORMATRANGE.hdc = hdc;
		fORMATRANGE.hdcTarget = hdc;
		fORMATRANGE.rc = rECT;
		fORMATRANGE.rcPage = rECT;
		IntPtr wParam = new IntPtr(0);
		NativeMethods.SendMessage(lParam: new IntPtr(0), hWnd: richTextBox.Handle, msg: 1081, wParam: wParam);
		IntPtr intPtr = Marshal.AllocCoTaskMem(Marshal.SizeOf((object)fORMATRANGE));
		Marshal.StructureToPtr((object)fORMATRANGE, intPtr, fDeleteOld: false);
		NativeMethods.SendMessage(richTextBox.Handle, 1081, wParam, intPtr);
		Marshal.FreeCoTaskMem(intPtr);
		NativeMethods.RECT rECT2 = new NativeMethods.RECT(rECT.left, rECT.top, rECT.right, rECT.bottom);
		intPtr = Marshal.AllocCoTaskMem(Marshal.SizeOf((object)rECT2));
		Marshal.StructureToPtr((object)rECT2, intPtr, fDeleteOld: false);
		NativeMethods.SendMessage(richTextBox.Handle, 1075, new IntPtr(0), intPtr);
		Marshal.FreeCoTaskMem(intPtr);
		NativeMethods.SendMessage(wParam: new IntPtr(0), lParam: new IntPtr(0), hWnd: richTextBox.Handle, msg: 1081);
		graphics.ReleaseHdc(hdc);
		graphics.Dispose();
		memoryStream.Close();
		metafile.Dispose();
		return memoryStream.ToArray();
	}
}
