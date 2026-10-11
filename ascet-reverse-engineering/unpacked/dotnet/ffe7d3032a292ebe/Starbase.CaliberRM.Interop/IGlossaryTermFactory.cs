using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043007B-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IGlossaryTermFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744308)]
	[return: MarshalAs(UnmanagedType.Interface)]
	GlossaryTerm Create1([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] GlossaryID glossID, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
