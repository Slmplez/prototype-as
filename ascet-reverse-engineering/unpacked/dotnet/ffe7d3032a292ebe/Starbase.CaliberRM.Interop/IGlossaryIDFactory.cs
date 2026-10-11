using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430077-72AE-11D5-B316-0800309CC2CE")]
public interface IGlossaryIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744301)]
	[return: MarshalAs(UnmanagedType.Interface)]
	GlossaryID Create();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744302)]
	[return: MarshalAs(UnmanagedType.Interface)]
	GlossaryID Create1([In] int idNum);
}
