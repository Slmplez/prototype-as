using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430126-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class UDADateValueClass : IUDADateValue, UDADateValue
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

	[DispId(1610744628)]
	public virtual extern UDADate AttributeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744628)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744627)]
	public virtual extern bool Blank
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744627)]
		get;
	}

	[DispId(1610744626)]
	public virtual extern double OLEDate
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744626)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744626)]
		[param: In]
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
	[DispId(1610744629)]
	public virtual extern void setBlank();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744630)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
