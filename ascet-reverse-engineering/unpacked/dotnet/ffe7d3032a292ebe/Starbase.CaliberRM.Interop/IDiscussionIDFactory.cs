using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043005D-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IDiscussionIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744257)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DiscussionID Create([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID assocObjectID);
}
