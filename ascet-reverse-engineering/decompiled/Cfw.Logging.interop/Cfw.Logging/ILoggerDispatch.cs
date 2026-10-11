using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Cfw.Logging;

[ComImport]
[Guid("FDE160F3-1E89-4A29-915B-EBBB367FD786")]
[TypeLibType(TypeLibTypeFlags.FDual | TypeLibTypeFlags.FDispatchable)]
public interface ILoggerDispatch
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1)]
	void WriteEntryDisp([In][MarshalAs(UnmanagedType.BStr)] string szModName, [In] uint iThread, [In][MarshalAs(UnmanagedType.BStr)] string szLocation, [In] uint iLocation, [In] byte iCategory, [In][MarshalAs(UnmanagedType.BStr)] string szMsg);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(2)]
	void InitializeDisp();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(3)]
	void UninitializeDisp();
}
