using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300E1-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementType : ILockableCaliberObject
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744070)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object getFieldValue([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744071)]
	new int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744072)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744073)]
	[return: MarshalAs(UnmanagedType.BStr)]
	new string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744074)]
	new bool isField([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744075)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object Clone();

	[DispId(1610744064)]
	new int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744064)]
		get;
	}

	[DispId(1610744065)]
	new string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744065)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744067)]
	new CaliberObjectID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744067)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744068)]
	new CaliberObjectManager Manager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744068)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744066)]
	new string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744066)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744066)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744069)]
	new Session Session
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744069)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744069)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744082)]
	new void rollback();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744083)]
	new void Remove();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744084)]
	new void resetID([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID newID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744085)]
	new void save();

	[DispId(1610744080)]
	new bool Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744080)]
		get;
	}

	[DispId(1610744078)]
	new bool New
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744078)]
		get;
	}

	[DispId(1610744079)]
	new object RemoteModification
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744079)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744081)]
	new object RemoteNewInstance
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744081)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744087)]
	new void @lock();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744088)]
	new void unlock();

	[DispId(1610744086)]
	new bool LockedByCurrentUser
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744086)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744487)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getRequirements3([In][MarshalAs(UnmanagedType.Interface)] Project proj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744488)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Collection getRequirements2([In][MarshalAs(UnmanagedType.Interface)] Baseline @base);

	[DispId(1610744486)]
	Collection Attributes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744486)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744482)]
	Collection CustomTabs
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744482)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744482)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744485)]
	string Description
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744485)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744485)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744478)]
	int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744478)]
		get;
	}

	[DispId(1610744479)]
	int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744479)]
		get;
	}

	[DispId(1610744480)]
	int MAX_TAG_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744480)]
		get;
	}

	[DispId(1610744481)]
	RequirementTypeID RequirementTypeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744481)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744483)]
	string Tag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744483)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744483)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744484)]
	int Version
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744484)]
		get;
	}
}
