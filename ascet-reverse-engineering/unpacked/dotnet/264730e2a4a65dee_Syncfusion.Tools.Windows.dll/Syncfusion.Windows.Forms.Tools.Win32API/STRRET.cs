using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[StructLayout(LayoutKind.Explicit)]
[CLSCompliant(false)]
public struct STRRET
{
	[FieldOffset(0)]
	public uint uType;

	[FieldOffset(4)]
	public IntPtr pOleStr;

	[FieldOffset(4)]
	public IntPtr pStr;

	[FieldOffset(4)]
	public uint uOffset;

	[FieldOffset(4)]
	public IntPtr cStr;
}
