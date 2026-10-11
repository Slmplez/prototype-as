using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043015F-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IEventSource
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744716)]
	void removeDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744717)]
	void fireObjectModified([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744718)]
	void removeContainmentListener([In][MarshalAs(UnmanagedType.Interface)] ContainmentListener l);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744719)]
	void fireDiscussionMessageRead([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744720)]
	void fireObjectUnlocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744721)]
	void addRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744722)]
	void fireObjectCreated([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744723)]
	void fireDiscussionMessageRepliedTo([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744724)]
	void fireObjectDeleted([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744725)]
	void fireObjectLocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744726)]
	void removeRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744727)]
	void addDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744728)]
	void fireDiscussionMessagePosted([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);
}
