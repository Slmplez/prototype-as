using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430178-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
[ClassInterface(0)]
public class IntegrationIDFactoryClass : IIntegrationIDFactory, IntegrationIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744756)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern IntegrationID Create([In] int idNum);
}
