using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430082-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class GlossaryTermColorFactoryClass : IGlossaryTermColorFactory, GlossaryTermColorFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744320)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GlossaryTermColor Create1([In] int ired, [In] int igreen, [In] int iblue);
}
