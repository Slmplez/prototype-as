using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043005F-72AE-11D5-B316-0800309CC2CE")]
public interface IDiscussionMessage
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744269)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DiscussionMessage getReplyAt([In] int Index);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744270)]
	[return: MarshalAs(UnmanagedType.Interface)]
	DiscussionMessage postReply([In][MarshalAs(UnmanagedType.BStr)] string msgSubject, [In][MarshalAs(UnmanagedType.BStr)] string msgBody);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744271)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744272)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744273)]
	[return: MarshalAs(UnmanagedType.Struct)]
	object Clone();

	[DispId(1610744268)]
	string Body
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744268)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744260)]
	int Depth
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744260)]
		get;
	}

	[DispId(1610744267)]
	Discussion Discussion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744267)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744259)]
	User From
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744259)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744265)]
	DiscussionMessageID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744265)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744263)]
	int MessageBodyID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744263)]
		get;
	}

	[DispId(1610744266)]
	double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744266)]
		get;
	}

	[DispId(1610744264)]
	bool read
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
	Collection Replies
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744262)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744261)]
	int ReplyCount
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744261)]
		get;
	}

	[DispId(1610744258)]
	string Subject
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744258)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
