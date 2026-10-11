using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043008C-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class GroupFactoryClass : IGroupFactory, GroupFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744329)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Group Create([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
