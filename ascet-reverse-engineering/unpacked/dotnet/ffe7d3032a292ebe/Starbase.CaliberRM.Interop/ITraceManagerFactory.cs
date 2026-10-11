using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430103-72AE-11D5-B316-0800309CC2CE")]
public interface ITraceManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744556)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TraceManager Create([In][MarshalAs(UnmanagedType.Interface)] Session caliberSession, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectCache objectCache);
}
