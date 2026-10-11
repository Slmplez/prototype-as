using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300CC-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class RequirementEvent_TypeClass : IRequirementEvent_Type, RequirementEvent_Type
{
	[DispId(1610744167)]
	public virtual extern CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744167)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744168)]
	public virtual extern CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744168)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744169)]
	public virtual extern CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744169)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744463)]
	public virtual extern RequirementEvent_Type MOVED_TO_TRASHCAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744463)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744464)]
	public virtual extern RequirementEvent_Type RESTORED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744464)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744170)]
	public virtual extern int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744171)]
	public virtual extern int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744172)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744173)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
