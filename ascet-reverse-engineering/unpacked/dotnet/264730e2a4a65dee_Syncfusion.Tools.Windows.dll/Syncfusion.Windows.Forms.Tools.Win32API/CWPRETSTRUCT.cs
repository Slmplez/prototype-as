using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct CWPRETSTRUCT
{
	public IntPtr lResult;

	public IntPtr lParam;

	public IntPtr wParam;

	public int message;

	public IntPtr hwnd;
}
