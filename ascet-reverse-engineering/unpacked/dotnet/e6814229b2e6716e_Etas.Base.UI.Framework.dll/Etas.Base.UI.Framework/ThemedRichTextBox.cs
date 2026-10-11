using System;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework;

public class ThemedRichTextBox : RichTextBox
{
	private Win32Helper.RECT _borderRect;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (RenderWithVisualStyles() && (createParams.ExStyle & 0x200) == 512)
			{
				createParams.ExStyle ^= 512;
			}
			return createParams;
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 133:
			WmNcpaint(ref m);
			break;
		case 131:
			WmNccalcsize(ref m);
			break;
		case 794:
			UpdateStyles();
			break;
		default:
			base.WndProc(ref m);
			break;
		}
	}

	private void WmNccalcsize(ref Message m)
	{
		if (m.WParam == IntPtr.Zero)
		{
			return;
		}
		base.WndProc(ref m);
		if (RenderWithVisualStyles())
		{
			Win32Helper.NCCALCSIZE_PARAMS nCCALCSIZE_PARAMS = (Win32Helper.NCCALCSIZE_PARAMS)Marshal.PtrToStructure(m.LParam, typeof(Win32Helper.NCCALCSIZE_PARAMS));
			IntPtr windowDC = Win32Helper.GetWindowDC(base.Handle);
			IntPtr hTheme = Win32Helper.OpenThemeData(base.Handle, "EDIT");
			if (Win32Helper.GetThemeBackgroundContentRect(hTheme, windowDC, 1, 1, ref nCCALCSIZE_PARAMS.rgrc0, out var pContentRect) == 0)
			{
				pContentRect.Inflate(-1, -1);
				_borderRect = new Win32Helper.RECT(pContentRect.Left - nCCALCSIZE_PARAMS.rgrc0.Left, pContentRect.Top - nCCALCSIZE_PARAMS.rgrc0.Top, nCCALCSIZE_PARAMS.rgrc0.Right - pContentRect.Right, nCCALCSIZE_PARAMS.rgrc0.Bottom - pContentRect.Bottom);
				nCCALCSIZE_PARAMS.rgrc0 = pContentRect;
				Marshal.StructureToPtr((object)nCCALCSIZE_PARAMS, m.LParam, fDeleteOld: false);
				m.Result = new IntPtr(768);
			}
			Win32Helper.CloseThemeData(hTheme);
			Win32Helper.ReleaseDC(base.Handle, windowDC);
		}
	}

	private void WmNcpaint(ref Message m)
	{
		base.WndProc(ref m);
		if (RenderWithVisualStyles())
		{
			int iPartId = 1;
			int iStateId = ((!base.Enabled) ? 4 : ((!base.ReadOnly) ? 1 : 6));
			Win32Helper.GetWindowRect(base.Handle, out var lpRect);
			lpRect.Right -= lpRect.Left;
			lpRect.Bottom -= lpRect.Top;
			lpRect.Top = (lpRect.Left = 0);
			IntPtr windowDC = Win32Helper.GetWindowDC(base.Handle);
			Win32Helper.RECT rECT = lpRect;
			rECT.Left += _borderRect.Left;
			rECT.Top += _borderRect.Top;
			rECT.Right -= _borderRect.Right;
			rECT.Bottom -= _borderRect.Bottom;
			Win32Helper.ExcludeClipRect(windowDC, rECT.Left, rECT.Top, rECT.Right, rECT.Bottom);
			IntPtr hTheme = Win32Helper.OpenThemeData(base.Handle, "EDIT");
			if (Win32Helper.IsThemeBackgroundPartiallyTransparent(hTheme, 1, 1) != 0)
			{
				Win32Helper.DrawThemeParentBackground(base.Handle, windowDC, ref lpRect);
			}
			Win32Helper.DrawThemeBackground(hTheme, windowDC, iPartId, iStateId, ref lpRect, IntPtr.Zero);
			Win32Helper.CloseThemeData(hTheme);
			Win32Helper.ReleaseDC(base.Handle, windowDC);
			m.Result = IntPtr.Zero;
		}
	}

	private bool VisualStylesEnabled()
	{
		Type typeFromHandle = typeof(Application);
		PropertyInfo property = typeFromHandle.GetProperty("RenderWithVisualStyles");
		if (property == null)
		{
			OperatingSystem oSVersion = Environment.OSVersion;
			if (oSVersion.Platform == PlatformID.Win32NT && ((oSVersion.Version.Major == 5 && oSVersion.Version.Minor >= 1) || oSVersion.Version.Major > 5))
			{
				Win32Helper.DLLVersionInfo version = new Win32Helper.DLLVersionInfo
				{
					cbSize = Marshal.SizeOf(typeof(Win32Helper.DLLVersionInfo))
				};
				if (Win32Helper.DllGetVersion(ref version) == 0)
				{
					if (version.dwMajorVersion > 5 && Win32Helper.IsThemeActive())
					{
						return Win32Helper.IsAppThemed();
					}
					return false;
				}
			}
			return false;
		}
		return (bool)property.GetValue(null, null);
	}

	private bool RenderWithVisualStyles()
	{
		if (base.BorderStyle == BorderStyle.Fixed3D)
		{
			return VisualStylesEnabled();
		}
		return false;
	}
}
