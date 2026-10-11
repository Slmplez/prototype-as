using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043014C-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class CaliberObjectCacheFactoryClass : ICaliberObjectCacheFactory, CaliberObjectCacheFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744693)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObjectCache createCache([In][MarshalAs(UnmanagedType.BStr)] string className);
}
