using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[TypeLibType(2)]
[Guid("10430150-72AE-11D5-B316-0800309CC2CE")]
public class DefaultCaliberObjectCacheFactoryFactoryClass : IDefaultCaliberObjectCacheFactoryFactory, DefaultCaliberObjectCacheFactoryFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744694)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern DefaultCaliberObjectCacheFactory Create();
}
