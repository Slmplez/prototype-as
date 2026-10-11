using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043014F-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IDefaultCaliberObjectCacheFactoryFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744694)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DefaultCaliberObjectCacheFactory Create();
}
