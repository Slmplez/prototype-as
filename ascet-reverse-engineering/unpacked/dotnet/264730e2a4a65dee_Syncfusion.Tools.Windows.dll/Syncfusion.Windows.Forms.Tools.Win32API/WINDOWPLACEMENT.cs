using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
[CLSCompliant(false)]
public struct WINDOWPLACEMENT
{
	public uint length;

	public uint flags;

	public uint showCmd;

	public POINT ptMinPosition;

	public POINT ptMaxPosition;

	public RECT rcNormalPosition;
}
