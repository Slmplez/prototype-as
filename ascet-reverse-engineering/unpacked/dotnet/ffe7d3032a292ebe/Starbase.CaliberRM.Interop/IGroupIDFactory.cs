using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430091-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IGroupIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744333)]
	[return: MarshalAs(UnmanagedType.Interface)]
	GroupID Create([In] int idNum);
}
