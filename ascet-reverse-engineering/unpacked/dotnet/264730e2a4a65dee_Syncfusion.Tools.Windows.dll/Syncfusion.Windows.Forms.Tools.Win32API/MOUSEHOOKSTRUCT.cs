using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct MOUSEHOOKSTRUCT
{
	public POINT pt;

	public IntPtr hwnd;

	public int wHitTestCode;

	public IntPtr dwExtraInfo;
}
