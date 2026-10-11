using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

internal struct APPBARDATA
{
	public uint cbSize;

	public IntPtr hWnd;

	public uint uCallbackMessage;

	public uint uEdge;

	public RECT rc;

	public IntPtr lParam;
}
