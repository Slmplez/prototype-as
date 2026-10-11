using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300EF-72AE-11D5-B316-0800309CC2CE")]
public interface ISignature
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744534)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744535)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744532)]
	string Comment
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744532)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744528)]
	string Meaning
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744528)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744527)]
	double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744527)]
		get;
	}

	[DispId(1610744530)]
	string SignersFirstName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744530)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744531)]
	string SignersLastName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744531)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744529)]
	string SignersTitle
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744529)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744533)]
	string SignersUserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744533)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
