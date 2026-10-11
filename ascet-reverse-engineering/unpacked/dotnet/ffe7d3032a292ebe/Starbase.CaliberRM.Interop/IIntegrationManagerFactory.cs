using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043017B-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IIntegrationManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744762)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IntegrationManager Create([In][MarshalAs(UnmanagedType.Interface)] Session caliberSession, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectCache objectCache);
}
