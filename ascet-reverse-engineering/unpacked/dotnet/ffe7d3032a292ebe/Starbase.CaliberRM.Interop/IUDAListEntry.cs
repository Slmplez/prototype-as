using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043013D-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IUDAListEntry
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744664)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744665)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744666)]
	[return: MarshalAs(UnmanagedType.Struct)]
	object Clone();

	[DispId(1610744662)]
	object Object
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744662)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744663)]
	bool Selected
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744663)]
		get;
	}
}
