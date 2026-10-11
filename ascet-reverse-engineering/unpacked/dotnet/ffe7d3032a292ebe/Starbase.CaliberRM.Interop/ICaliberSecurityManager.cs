using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104301BB-72AE-11D5-B316-0800309CC2CE")]
public interface ICaliberSecurityManager
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744817)]
	void checkReqReadPermission([In][MarshalAs(UnmanagedType.Interface)] RequirementID reqID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744818)]
	void checkUserCanModify([In][MarshalAs(UnmanagedType.Interface)] CaliberObject calObj, [In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744819)]
	bool isTreeTypeNodeViewable([In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744820)]
	void checkReqModPermission2([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In] int attribIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744821)]
	void checkReqCreatePermission([In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744822)]
	void checkUserCanCreate([In][MarshalAs(UnmanagedType.Interface)] CaliberObject calObj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744823)]
	void checkReqModPermission1([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In][MarshalAs(UnmanagedType.Interface)] AttributeID attribID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744824)]
	void checkReqDeletePermission([In][MarshalAs(UnmanagedType.Interface)] RequirementID reqID, [In][MarshalAs(UnmanagedType.Interface)] RequirementTypeID typeID, [In][MarshalAs(UnmanagedType.Interface)] ProjectID projID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744825)]
	void checkUserIsAdministrator();

	[DispId(1610744812)]
	int ACTION_CREATE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744812)]
		get;
	}

	[DispId(1610744813)]
	int ACTION_DELETE
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744813)]
		get;
	}

	[DispId(1610744814)]
	int ACTION_EDIT
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744814)]
		get;
	}

	[DispId(1610744815)]
	int ACTION_READ
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744815)]
		get;
	}

	[DispId(1610744816)]
	bool UserAdministrator
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744816)]
		get;
	}
}
