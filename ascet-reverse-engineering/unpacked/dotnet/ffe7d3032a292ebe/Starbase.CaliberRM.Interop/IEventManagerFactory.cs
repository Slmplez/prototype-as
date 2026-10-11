using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043015D-72AE-11D5-B316-0800309CC2CE")]
public interface IEventManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744715)]
	[return: MarshalAs(UnmanagedType.Interface)]
	EventManager Create([In][MarshalAs(UnmanagedType.Interface)] Session s);
}
