using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430183-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IIntegrationObjectIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744778)]
	[return: MarshalAs(UnmanagedType.Interface)]
	IntegrationObjectID Create([In] int idNum);
}
