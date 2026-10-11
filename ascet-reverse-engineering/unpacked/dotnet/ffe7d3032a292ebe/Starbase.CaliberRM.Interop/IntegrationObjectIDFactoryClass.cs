using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430184-72AE-11D5-B316-0800309CC2CE")]
public class IntegrationObjectIDFactoryClass : IIntegrationObjectIDFactory, IntegrationObjectIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744778)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern IntegrationObjectID Create([In] int idNum);
}
