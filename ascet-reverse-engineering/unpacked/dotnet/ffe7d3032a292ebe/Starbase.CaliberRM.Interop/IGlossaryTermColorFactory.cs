using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430081-72AE-11D5-B316-0800309CC2CE")]
public interface IGlossaryTermColorFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744320)]
	[return: MarshalAs(UnmanagedType.Interface)]
	GlossaryTermColor Create1([In] int ired, [In] int igreen, [In] int iblue);
}
