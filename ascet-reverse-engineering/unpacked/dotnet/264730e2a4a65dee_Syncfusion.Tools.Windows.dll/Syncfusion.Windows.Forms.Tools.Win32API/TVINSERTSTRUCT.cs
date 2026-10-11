using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct TVINSERTSTRUCT
{
	private int hParent;

	private int hInsertAfter;

	private TVITEM item;
}
