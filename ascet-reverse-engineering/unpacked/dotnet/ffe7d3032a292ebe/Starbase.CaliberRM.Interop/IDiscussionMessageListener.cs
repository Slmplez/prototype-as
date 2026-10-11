using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430159-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IDiscussionMessageListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744705)]
	void discussionMessageRepliedTo([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744706)]
	void discussionMessageRead([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744707)]
	void discussionMessagePosted([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);
}
