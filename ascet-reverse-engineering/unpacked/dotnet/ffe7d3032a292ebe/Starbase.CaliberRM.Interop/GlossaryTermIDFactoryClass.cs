using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430086-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class GlossaryTermIDFactoryClass : IGlossaryTermIDFactory, GlossaryTermIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744321)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GlossaryTermID Create([In] int idNum);
}
