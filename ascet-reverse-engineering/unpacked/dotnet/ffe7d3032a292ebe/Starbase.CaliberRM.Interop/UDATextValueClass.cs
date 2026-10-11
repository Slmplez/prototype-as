using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430146-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class UDATextValueClass : IUDATextValue, UDATextValue
{
	[DispId(1610744608)]
	public virtual extern Attribute Attribute
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744608)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744609)]
	public virtual extern AttributeID AttributeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744609)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744607)]
	public virtual extern Requirement Requirement
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

	[DispId(1610744685)]
	public virtual extern UDAText AttributeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744685)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744684)]
	public virtual extern string Value
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

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744610)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744611)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744686)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
