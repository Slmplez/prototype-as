using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct NMHDR
{
	public IntPtr hwndFrom;

	public IntPtr idFrom;

	public int code;
}
