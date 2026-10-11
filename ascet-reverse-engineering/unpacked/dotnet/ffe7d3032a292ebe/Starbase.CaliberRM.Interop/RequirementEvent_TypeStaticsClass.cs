using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300CE-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class RequirementEvent_TypeStaticsClass : IRequirementEvent_TypeStatics, RequirementEvent_TypeStatics
{
	[DispId(1610744174)]
	public virtual extern CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744174)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744175)]
	public virtual extern CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744175)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744176)]
	public virtual extern CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744176)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744465)]
	public virtual extern RequirementEvent_Type MOVED_TO_TRASHCAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744465)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744466)]
	public virtual extern RequirementEvent_Type RESTORED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744466)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
