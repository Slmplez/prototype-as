using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct CREATESTRUCT
{
	private IntPtr lpCreateParams;

	private IntPtr hInstance;

	private IntPtr hMenu;

	private IntPtr hwndParent;

	private int cy;

	private int cx;

	private int y;

	private int x;

	private int style;

	private string lpszName;

	private string lpszClass;

	private uint dwExStyle;
}
