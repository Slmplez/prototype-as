using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430078-72AE-11D5-B316-0800309CC2CE")]
public class GlossaryIDFactoryClass : IGlossaryIDFactory, GlossaryIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744301)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GlossaryID Create();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744302)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GlossaryID Create1([In] int idNum);
}
