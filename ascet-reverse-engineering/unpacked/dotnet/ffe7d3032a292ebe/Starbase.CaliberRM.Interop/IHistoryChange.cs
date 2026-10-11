using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430099-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IHistoryChange
{
	[DispId(1610744349)]
	bool Attribute
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744349)]
		get;
	}

	[DispId(1610744345)]
	int CHANGE_TYPE_CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744345)]
		get;
	}

	[DispId(1610744346)]
	int CHANGE_TYPE_DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744346)]
		get;
	}

	[DispId(1610744347)]
	int CHANGE_TYPE_MODIFIED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744347)]
		get;
	}

	[DispId(1610744348)]
	int CHANGE_TYPE_MOVED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744348)]
		get;
	}

	[DispId(1610744351)]
	int ChangeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744351)]
		get;
	}

	[DispId(1610744353)]
	string FieldName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744353)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744352)]
	object NewValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744352)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744350)]
	object OldValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744350)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}
}
