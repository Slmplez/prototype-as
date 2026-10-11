using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043010C-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class WebReferenceClass : IWebReference, WebReference
{
	[DispId(1610744276)]
	public virtual extern bool KeyReference
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744276)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744276)]
		[param: In]
		set;
	}

	[DispId(1610744562)]
	public virtual extern int MAX_URL_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744562)]
		get;
	}

	[DispId(1610744563)]
	public virtual extern string URL
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744563)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744563)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744277)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744278)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744564)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
