using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300FF-72AE-11D5-B316-0800309CC2CE")]
public interface ITraceIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744549)]
	[return: MarshalAs(UnmanagedType.Interface)]
	traceID Create([In] int idNum);
}
