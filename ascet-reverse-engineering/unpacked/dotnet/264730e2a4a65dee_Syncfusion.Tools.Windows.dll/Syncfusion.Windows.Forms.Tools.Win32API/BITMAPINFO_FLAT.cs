using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct BITMAPINFO_FLAT
{
	public int bmiHeader_biSize;

	public int bmiHeader_biWidth;

	public int bmiHeader_biHeight;

	public short bmiHeader_biPlanes;

	public short bmiHeader_biBitCount;

	public int bmiHeader_biCompression;

	public int bmiHeader_biSizeImage;

	public int bmiHeader_biXPelsPerMeter;

	public int bmiHeader_biYPelsPerMeter;

	public int bmiHeader_biClrUsed;

	public int bmiHeader_biClrImportant;

	[MarshalAs(UnmanagedType.ByValArray, SizeConst = 1024)]
	public byte[] bmiColors;
}
