using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Cfw.Logging;

[ComImport]
[Guid("9ACA988E-0513-4716-B187-1ADCA4E6A3BC")]
[InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
public interface ILogger
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	void WriteEntry([In][MarshalAs(UnmanagedType.LPWStr)] string szModName, [In] uint iThread, [In][MarshalAs(UnmanagedType.LPWStr)] string szLocation, [In] uint iLocation, [In] byte iCategory, [In][MarshalAs(UnmanagedType.LPWStr)] string szMsg);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	void Initialize();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	void Uninitialize();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	void SaveBuffer([In] int bKernelApiOnly);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	int CheckFilters([In] byte iCategory, [In][MarshalAs(UnmanagedType.LPWStr)] string szModule);
}
