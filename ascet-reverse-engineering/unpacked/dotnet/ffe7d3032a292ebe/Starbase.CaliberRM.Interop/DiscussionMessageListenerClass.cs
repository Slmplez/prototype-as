using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043015A-72AE-11D5-B316-0800309CC2CE")]
public class DiscussionMessageListenerClass : IDiscussionMessageListener, DiscussionMessageListener
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744705)]
	public virtual extern void discussionMessageRepliedTo([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744706)]
	public virtual extern void discussionMessageRead([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744707)]
	public virtual extern void discussionMessagePosted([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent dme);
}
