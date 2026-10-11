using System;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

public struct BITMAP
{
	public long bmType;

	public long bmWidth;

	public long bmHeight;

	public long bmWidthBytes;

	public short bmPlanes;

	public short bmBitsPixel;

	public IntPtr bmBits;
}
