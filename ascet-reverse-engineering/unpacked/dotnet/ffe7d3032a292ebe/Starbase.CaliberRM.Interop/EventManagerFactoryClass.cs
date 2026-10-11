using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043015E-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class EventManagerFactoryClass : IEventManagerFactory, EventManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744715)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern EventManager Create([In][MarshalAs(UnmanagedType.Interface)] Session s);
}
