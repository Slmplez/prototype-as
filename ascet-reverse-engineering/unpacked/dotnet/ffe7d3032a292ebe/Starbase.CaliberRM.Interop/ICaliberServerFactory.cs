using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301C3-72AE-11D5-B316-0800309CC2CE")]
public interface ICaliberServerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744851)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberServer Create([In][MarshalAs(UnmanagedType.BStr)] string strHost);
}
