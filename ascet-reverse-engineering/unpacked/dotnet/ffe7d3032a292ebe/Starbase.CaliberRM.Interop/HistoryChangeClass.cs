using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("1043009A-72AE-11D5-B316-0800309CC2CE")]
public class HistoryChangeClass : IHistoryChange, HistoryChange
{
	[DispId(1610744349)]
	public virtual extern bool Attribute
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744349)]
		get;
	}

	[DispId(1610744345)]
	public virtual extern int CHANGE_TYPE_CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744345)]
		get;
	}

	[DispId(1610744346)]
	public virtual extern int CHANGE_TYPE_DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744346)]
		get;
	}

	[DispId(1610744347)]
	public virtual extern int CHANGE_TYPE_MODIFIED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744347)]
		get;
	}

	[DispId(1610744348)]
	public virtual extern int CHANGE_TYPE_MOVED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744348)]
		get;
	}

	[DispId(1610744351)]
	public virtual extern int ChangeType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744351)]
		get;
	}

	[DispId(1610744353)]
	public virtual extern string FieldName
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744353)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744352)]
	public virtual extern object NewValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744352)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744350)]
	public virtual extern object OldValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744350)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}
}
