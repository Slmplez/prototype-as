using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043014D-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IDefaultCaliberObjectCacheFactory : ICaliberObjectCacheFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744693)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new CaliberObjectCache createCache([In][MarshalAs(UnmanagedType.BStr)] string className);
}
