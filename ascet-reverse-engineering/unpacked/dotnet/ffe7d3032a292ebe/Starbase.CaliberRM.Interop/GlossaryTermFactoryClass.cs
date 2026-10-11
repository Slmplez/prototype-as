using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043007C-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class GlossaryTermFactoryClass : IGlossaryTermFactory, GlossaryTermFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744308)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GlossaryTerm Create1([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] GlossaryID glossID, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
