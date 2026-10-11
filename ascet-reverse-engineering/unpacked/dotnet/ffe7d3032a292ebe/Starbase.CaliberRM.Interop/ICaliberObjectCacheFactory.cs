using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043014B-72AE-11D5-B316-0800309CC2CE")]
public interface ICaliberObjectCacheFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744693)]
	[return: MarshalAs(UnmanagedType.Interface)]
	CaliberObjectCache createCache([In][MarshalAs(UnmanagedType.BStr)] string className);
}
