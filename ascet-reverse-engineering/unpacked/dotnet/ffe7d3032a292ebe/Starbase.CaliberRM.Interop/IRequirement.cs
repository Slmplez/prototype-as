using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300BB-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirement : ILockableCaliberObject
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
	[DispId(1610744438)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Requirement getOtherVersion([In][MarshalAs(UnmanagedType.Interface)] Version ver);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744439)]
	void save([In][MarshalAs(UnmanagedType.BStr)] string sComment);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744440)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Requirement getOtherVersion2([In] int majVersion, [In] int minVersion);

	[DispId(1610744419)]
	Collection AllOtherVersions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744419)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744432)]
	AttributeValue AttributeValue
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744432)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744418)]
	Collection AttributeValues
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744418)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744426)]
	Baseline Baseline
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744426)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744425)]
	Collection ChildRequirements
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744425)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744436)]
	RequirementDescription Description
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744436)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744436)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744422)]
	Discussion Discussion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744422)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744424)]
	Collection DocumentReferences
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744424)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744424)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744404)]
	string FIELD_DESCRIPTION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744404)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744405)]
	string FIELD_DOCUMENT_REFERENCES
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744405)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744406)]
	string FIELD_OWNER
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744406)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744407)]
	string FIELD_PRIORITY
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744407)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744408)]
	string FIELD_RESPONSIBLE_USERS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744408)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744409)]
	string FIELD_STATUS
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744409)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744410)]
	string FIELD_VALIDATION
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744410)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744416)]
	History History
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744416)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744417)]
	int IDNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744417)]
		get;
	}

	[DispId(1610744411)]
	int MAX_COMMENT_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744411)]
		get;
	}

	[DispId(1610744412)]
	int MAX_DESCRIPTION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744412)]
		get;
	}

	[DispId(1610744413)]
	int MAX_NAME_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744413)]
		get;
	}

	[DispId(1610744414)]
	int MAX_VALIDATION_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744414)]
		get;
	}

	[DispId(1610744430)]
	Collection OtherVersionNumbers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744430)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744420)]
	User Owner
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744420)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744420)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744429)]
	Requirement ParentRequirement
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744429)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744435)]
	UDAListValue Priority
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744435)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744435)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744431)]
	Project Project
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744431)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744415)]
	RequirementID RequirementID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744415)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744423)]
	RequirementType RequirementType
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744423)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744428)]
	Collection Responsibilities
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744428)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744428)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744427)]
	UDAListValue Status
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744427)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744427)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744437)]
	Collection TracesFrom
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744437)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744434)]
	Collection TracesTo
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744434)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744433)]
	string Validation
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744433)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744433)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744421)]
	Version Version
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744421)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
