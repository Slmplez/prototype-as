using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430060-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class DiscussionMessageClass : IDiscussionMessage, DiscussionMessage
{
	[DispId(1610744268)]
	public virtual extern string Body
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744268)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744260)]
	public virtual extern int Depth
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744260)]
		get;
	}

	[DispId(1610744267)]
	public virtual extern Discussion Discussion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744267)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744259)]
	public virtual extern User From
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744259)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744265)]
	public virtual extern DiscussionMessageID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744265)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744263)]
	public virtual extern int MessageBodyID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744263)]
		get;
	}

	[DispId(1610744266)]
	public virtual extern double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744266)]
		get;
	}

	[DispId(1610744264)]
	public virtual extern bool read
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744264)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744264)]
		[param: In]
		set;
	}

	[DispId(1610744262)]
	public virtual extern Collection Replies
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744262)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744261)]
	public virtual extern int ReplyCount
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744261)]
		get;
	}

	[DispId(1610744258)]
	public virtual extern string Subject
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744258)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744269)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern DiscussionMessage getReplyAt([In] int Index);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744270)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern DiscussionMessage postReply([In][MarshalAs(UnmanagedType.BStr)] string msgSubject, [In][MarshalAs(UnmanagedType.BStr)] string msgBody);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744271)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744272)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744273)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();
}
