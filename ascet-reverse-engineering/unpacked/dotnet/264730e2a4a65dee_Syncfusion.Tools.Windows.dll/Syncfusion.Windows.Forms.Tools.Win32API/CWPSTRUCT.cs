using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct CWPSTRUCT
{
	public IntPtr lparam;

	public IntPtr wparam;

	public int message;

	public IntPtr hwnd;
}
