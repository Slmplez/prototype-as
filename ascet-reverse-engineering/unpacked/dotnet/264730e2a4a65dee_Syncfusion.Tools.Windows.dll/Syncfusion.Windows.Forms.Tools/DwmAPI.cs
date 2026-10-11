using System;
using System.Drawing;
using System.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class DwmAPI
{
	public enum DWMWINDOWATTRIBUTE
	{
		DWMWA_NCRENDERING_ENABLED = 1,
		DWMWA_NCRENDERING_POLICY,
		DWMWA_TRANSITIONS_FORCEDISABLED,
		DWMWA_ALLOW_NCPAINT,
		DWMWA_CAPTION_BUTTON_BOUNDS,
		DWMWA_NONCLIENT_RTL_LAYOUT,
		DWMWA_FORCE_ICONIC_REPRESENTATION,
		DWMWA_FLIP3D_POLICY,
		DWMWA_EXTENDED_FRAME_BOUNDS,
		DWMWA_LAST
	}

	public enum DttFlags
	{
		DTT_CRTEXT = 1,
		DTT_GLOWSIZE = 0x800,
		DTT_COMPOSITED = 0x2000
	}

	public struct MARGINS
	{
		public int cxLeftWidth;

		public int cxRightWidth;

		public int cyTopHeight;

		public int cyBottomHeight;
	}

	public struct DTTOPTS
	{
		public int dwSize;

		public DttFlags dwFlags;

		public int crText;

		public int crBorder;

		public int crShadow;

		public int iTextShadowType;

		public POINT ptShadowOffset;

		public int iBorderSize;

		public int iFontPropId;

		public int iColorPropId;

		public int iStateId;

		public bool fApplyOverlay;

		public int iGlowSize;

		public IntPtr pfnDrawTextCallback;

		private IntPtr lParam;
	}

	public const int WM_DWMCOMPOSITIONCHANGED = 798;

	public static bool IsCompositionEnabled
	{
		get
		{
			bool pfEnabled = false;
			if (Environment.OSVersion.Version.Major >= 6)
			{
				DwmIsCompositionEnabled(ref pfEnabled);
			}
			return pfEnabled;
		}
	}

	[DllImport("dwmapi.dll")]
	public static extern int DwmIsCompositionEnabled(ref bool pfEnabled);

	[DllImport("dwmapi.dll")]
	public static extern int DwmExtendFrameIntoClientArea(IntPtr hWnd, ref MARGINS pMarInset);

	[DllImport("dwmapi.dll")]
	public static extern int DwmDefWindowProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref IntPtr plResult);

	[DllImport("dwmapi.dll")]
	public static extern int DwmGetWindowAttribute(IntPtr hwnd, DWMWINDOWATTRIBUTE dwAttribute, ref RECT rc, int cbAttribute);

	[DllImport("uxtheme.dll")]
	public static extern IntPtr OpenThemeData(IntPtr hwnd, [MarshalAs(UnmanagedType.LPWStr)] string pszClassList);

	[DllImport("uxtheme.dll")]
	public static extern IntPtr CloseThemeData(IntPtr hTheme);

	[DllImport("uxtheme.dll")]
	public static extern int DrawThemeTextEx(IntPtr hTheme, IntPtr hdc, int iPartId, int iStateId, [MarshalAs(UnmanagedType.LPWStr)] string pszText, int iCharCount, DrawTextFormatFlags dwFlags, ref RECT pRect, ref DTTOPTS pOptions);

	public static void FillBlackRegion(Graphics g, Rectangle rc)
	{
		IntPtr hdc = g.GetHdc();
		if (hdc != IntPtr.Zero)
		{
			FillBlackRegion(hdc, rc);
			g.ReleaseHdc();
		}
	}

	public static void FillBlackRegion(IntPtr destdc, Rectangle rc)
	{
		IntPtr intPtr = WindowsAPI.CreateCompatibleDC(destdc);
		if (intPtr != IntPtr.Zero)
		{
			BITMAPINFO_FLAT bmi = new BITMAPINFO_FLAT
			{
				bmiHeader_biSize = Marshal.SizeOf(typeof(BITMAPINFOHEADER)),
				bmiHeader_biHeight = -rc.Height,
				bmiHeader_biWidth = rc.Width,
				bmiHeader_biPlanes = 1,
				bmiHeader_biBitCount = 32,
				bmiHeader_biCompression = 0
			};
			IntPtr ppvBits = IntPtr.Zero;
			IntPtr intPtr2 = WindowsAPI.CreateDIBSection(intPtr, ref bmi, 0, ref ppvBits, IntPtr.Zero, 0);
			if (intPtr2 != IntPtr.Zero)
			{
				IntPtr hObject = WindowsAPI.SelectObject(intPtr, intPtr2);
				WindowsAPI.BitBlt(destdc, rc.X, rc.Y, rc.Width, rc.Height, intPtr, 0, 0, 13369376u);
				WindowsAPI.SelectObject(intPtr, hObject);
				WindowsAPI.DeleteObject(intPtr2);
			}
			WindowsAPI.DeleteDC(intPtr);
		}
	}
}
