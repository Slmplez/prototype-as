using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301BD-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICaliberSecurityManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744826)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberSecurityManager Create([In][MarshalAs(UnmanagedType.Interface)] Session s);
}
