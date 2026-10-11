using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300A1-72AE-11D5-B316-0800309CC2CE")]
public interface IImageFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744365)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Image Create([In][MarshalAs(UnmanagedType.BStr)] string sPath);
}
