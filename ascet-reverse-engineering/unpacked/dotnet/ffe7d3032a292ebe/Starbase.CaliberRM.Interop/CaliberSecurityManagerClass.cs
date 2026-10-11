using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301BC-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class CaliberSecurityManagerClass : ICaliberSecurityManager, CaliberSecurityManager
{
	[DispId(1610744812)]
	public virtual extern int ACTION_CREATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744812)]
		get;
	}

	[DispId(1610744813)]
	public virtual extern int ACTION_DELETE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744813)]
		get;
	}

	[DispId(1610744814)]
	public virtual extern int ACTION_EDIT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744814)]
		get;
	}

	[DispId(1610744815)]
	public virtual extern int ACTION_READ
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744815)]
		get;
	}

	[DispId(1610744816)]
	public virtual extern bool UserAdministrator
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744816)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744817)]
	public virtual extern void checkReqReadPermission([In][MarshalAs(UnmanagedType.Interface)] RequirementID reqID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744818)]
	public virtual extern void checkUserCanModify([In][MarshalAs(UnmanagedType.Interface)] CaliberObject calObj, [In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744819)]
	public virtual extern bool isTreeTypeNodeViewable([In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744820)]
	public virtual extern void checkReqModPermission2([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In] int attribIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744821)]
	public virtual extern void checkReqCreatePermission([In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744822)]
	public virtual extern void checkUserCanCreate([In][MarshalAs(UnmanagedType.Interface)] CaliberObject calObj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744823)]
	public virtual extern void checkReqModPermission1([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In][MarshalAs(UnmanagedType.Interface)] AttributeID attribID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744824)]
	public virtual extern void checkReqDeletePermission([In][MarshalAs(UnmanagedType.Interface)] RequirementID reqID, [In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744825)]
	public virtual extern void checkUserIsAdministrator();
}
