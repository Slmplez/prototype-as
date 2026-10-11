using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential)]
public class BITMAPINFO
{
	public BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();

	[MarshalAs(UnmanagedType.ByValArray, SizeConst = 1024)]
	public byte[] bmiColors;
}
