using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430145-72AE-11D5-B316-0800309CC2CE")]
public interface IUDATextValue : IAttributeValue
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744610)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744611)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object Clone();

	[DispId(1610744608)]
	new Attribute Attribute
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744608)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744609)]
	new AttributeID AttributeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744609)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744607)]
	new Requirement Requirement
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744607)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744607)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744686)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744685)]
	UDAText AttributeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744685)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744684)]
	string Value
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744684)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744684)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}
}
