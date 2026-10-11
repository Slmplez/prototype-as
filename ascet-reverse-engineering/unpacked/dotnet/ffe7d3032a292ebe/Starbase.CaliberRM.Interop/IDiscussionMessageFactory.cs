using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430061-72AE-11D5-B316-0800309CC2CE")]
public interface IDiscussionMessageFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744274)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DiscussionMessage Create2();
}
