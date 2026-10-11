using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430160-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class EventSourceClass : IEventSource, EventSource
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744716)]
	public virtual extern void removeDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744717)]
	public virtual extern void fireObjectModified([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744718)]
	public virtual extern void removeContainmentListener([In][MarshalAs(UnmanagedType.Interface)] ContainmentListener l);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744719)]
	public virtual extern void fireDiscussionMessageRead([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744720)]
	public virtual extern void fireObjectUnlocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744721)]
	public virtual extern void addRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744722)]
	public virtual extern void fireObjectCreated([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744723)]
	public virtual extern void fireDiscussionMessageRepliedTo([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744724)]
	public virtual extern void fireObjectDeleted([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744725)]
	public virtual extern void fireObjectLocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744726)]
	public virtual extern void removeRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744727)]
	public virtual extern void addDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744728)]
	public virtual extern void fireDiscussionMessagePosted([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);
}
