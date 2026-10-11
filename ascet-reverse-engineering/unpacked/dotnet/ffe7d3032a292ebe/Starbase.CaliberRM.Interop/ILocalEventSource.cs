using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430161-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ILocalEventSource : IEventSource
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744716)]
	new void removeDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744717)]
	new void fireObjectModified([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744718)]
	new void removeContainmentListener([In][MarshalAs(UnmanagedType.Interface)] ContainmentListener l);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744719)]
	new void fireDiscussionMessageRead([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744720)]
	new void fireObjectUnlocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744721)]
	new void addRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744722)]
	new void fireObjectCreated([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744723)]
	new void fireDiscussionMessageRepliedTo([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744724)]
	new void fireObjectDeleted([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744725)]
	new void fireObjectLocked([In][MarshalAs(UnmanagedType.Interface)] StateEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744726)]
	new void removeRequirementTreeListener([In][MarshalAs(UnmanagedType.Interface)] RequirementTreeListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744727)]
	new void addDiscussionMessageListener([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageListener listener);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744728)]
	new void fireDiscussionMessagePosted([In][MarshalAs(UnmanagedType.Interface)] DiscussionMessageEvent e);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744729)]
	void fireObjectLocked([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744730)]
	void fireObjectCreated([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID newID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744731)]
	void fireObjectModified([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744732)]
	void fireObjectUnlocked([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744733)]
	void fireObjectDeleted([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);
}
