using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("10430092-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class GroupIDFactoryClass : IGroupIDFactory, GroupIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744333)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GroupID Create([In] int idNum);
}
