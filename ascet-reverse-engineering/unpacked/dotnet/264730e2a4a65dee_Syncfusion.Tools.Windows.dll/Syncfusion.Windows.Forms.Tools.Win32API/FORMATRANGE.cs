using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct FORMATRANGE
{
	public IntPtr hdc;

	public IntPtr hdcTarget;

	public RECT rc;

	public RECT rcPage;

	public CHARRANGE chrg;
}
