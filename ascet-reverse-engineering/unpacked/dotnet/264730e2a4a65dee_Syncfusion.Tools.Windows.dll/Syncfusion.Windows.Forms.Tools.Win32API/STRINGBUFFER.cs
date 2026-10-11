using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct STRINGBUFFER
{
	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 512)]
	public string szText;
}
