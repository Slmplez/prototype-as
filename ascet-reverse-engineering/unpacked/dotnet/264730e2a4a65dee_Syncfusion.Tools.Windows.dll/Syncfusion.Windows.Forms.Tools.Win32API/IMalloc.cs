using System;
using System.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Win32API;

[ComImport]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
[CLSCompliant(false)]
[Guid("00000002-0000-0000-C000-000000000046")]
public interface IMalloc
{
	[PreserveSig]
	IntPtr Alloc(uint cb);

	[PreserveSig]
	IntPtr Realloc(IntPtr pv, uint cb);

	[PreserveSig]
	void Free(IntPtr pv);

	[PreserveSig]
	uint GetSize(IntPtr pv);

	[PreserveSig]
	short DidAlloc(IntPtr pv);

	[PreserveSig]
	void HeapMinimize();
}
