using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("1043017C-72AE-11D5-B316-0800309CC2CE")]
public class IntegrationManagerFactoryClass : IIntegrationManagerFactory, IntegrationManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744762)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern IntegrationManager Create([In][MarshalAs(UnmanagedType.Interface)] Session caliberSession, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectCache objectCache);
}
