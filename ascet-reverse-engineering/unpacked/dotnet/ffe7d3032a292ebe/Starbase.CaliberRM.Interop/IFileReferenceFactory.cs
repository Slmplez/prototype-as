using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043006B-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IFileReferenceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744284)]
	[return: MarshalAs(UnmanagedType.Interface)]
	FileReference Create([In][MarshalAs(UnmanagedType.BStr)] string sPath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744285)]
	[return: MarshalAs(UnmanagedType.Interface)]
	FileReference Create2([In][MarshalAs(UnmanagedType.BStr)] string sPath, [In][MarshalAs(UnmanagedType.BStr)] string descr, [In] bool bKey);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744286)]
	[return: MarshalAs(UnmanagedType.Interface)]
	FileReference Create1([In][MarshalAs(UnmanagedType.BStr)] string sPath, [In][MarshalAs(UnmanagedType.BStr)] string descr);
}
