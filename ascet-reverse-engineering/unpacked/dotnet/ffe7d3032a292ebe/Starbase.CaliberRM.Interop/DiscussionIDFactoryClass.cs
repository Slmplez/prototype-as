using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043005E-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
[ClassInterface(0)]
public class DiscussionIDFactoryClass : IDiscussionIDFactory, DiscussionIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744257)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern DiscussionID Create([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID assocObjectID);
}
