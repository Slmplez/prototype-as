using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300F0-72AE-11D5-B316-0800309CC2CE")]
public class SignatureClass : ISignature, Signature
{
	[DispId(1610744532)]
	public virtual extern string Comment
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744532)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744528)]
	public virtual extern string Meaning
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744528)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744527)]
	public virtual extern double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744527)]
		get;
	}

	[DispId(1610744530)]
	public virtual extern string SignersFirstName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744530)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744531)]
	public virtual extern string SignersLastName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744531)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744529)]
	public virtual extern string SignersTitle
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744529)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744533)]
	public virtual extern string SignersUserID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744533)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744534)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744535)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
