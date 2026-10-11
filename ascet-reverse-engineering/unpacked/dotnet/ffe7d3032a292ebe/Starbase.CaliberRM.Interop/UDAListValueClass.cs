using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430140-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class UDAListValueClass : IUDAListValue, UDAListValue
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

	[DispId(1610744667)]
	public virtual extern UDAList AttributeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744667)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744671)]
	public virtual extern int Count
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744671)]
		get;
	}

	[DispId(1610744672)]
	public virtual extern int FirstHiddenIndex
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744672)]
		get;
	}

	[DispId(1610744677)]
	public virtual extern int HiddenSize
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744677)]
		get;
	}

	[DispId(1610744670)]
	public virtual extern Collection ListEntries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744670)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744669)]
	public virtual extern int SelectedIndex
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744669)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744669)]
		[param: In]
		set;
	}

	[DispId(1610744676)]
	public virtual extern Collection SelectedIndices
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744676)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744676)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744675)]
	public virtual extern Collection SelectedObjects
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744675)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744674)]
	public virtual extern int SelectedOriginalArrayIndex
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744674)]
		get;
	}

	[DispId(1610744673)]
	public virtual extern object SelectedValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744673)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744668)]
	public virtual extern int VisibleSize
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744668)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744610)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744611)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744678)]
	public virtual extern bool isSelected([In] int Index);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744679)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object get([In] int Index);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744680)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
