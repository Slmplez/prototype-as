using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300AE-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class ProjectClass : IProject, Project
{
	[DispId(1610744064)]
	public virtual extern int DEFAULT_MAXIMUM_FIELD_LENGTH
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744064)]
		get;
	}

	[DispId(1610744065)]
	public virtual extern string FIELD_NAME
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744065)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744067)]
	public virtual extern CaliberObjectID ID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744067)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744068)]
	public virtual extern CaliberObjectManager Manager
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744068)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744066)]
	public virtual extern string Name
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
	public virtual extern Session Session
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

	[DispId(1610744080)]
	public virtual extern bool Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744080)]
		get;
	}

	[DispId(1610744078)]
	public virtual extern bool New
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744078)]
		get;
	}

	[DispId(1610744079)]
	public virtual extern object RemoteModification
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744079)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744081)]
	public virtual extern object RemoteNewInstance
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744081)]
		[return: MarshalAs(UnmanagedType.Struct)]
		get;
	}

	[DispId(1610744086)]
	public virtual extern bool LockedByCurrentUser
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744086)]
		get;
	}

	[DispId(1610744379)]
	public virtual extern bool AllowsDescriptionMapping
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744379)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744379)]
		[param: In]
		set;
	}

	[DispId(1610744380)]
	public virtual extern bool AllowsDescriptionSharing
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744380)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744380)]
		[param: In]
		set;
	}

	[DispId(1610744388)]
	public virtual extern Collection AssignedGroupMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744388)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744388)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744383)]
	public virtual extern Collection Baselines
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744383)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744385)]
	public virtual extern Baseline CurrentBaseline
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744385)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744377)]
	public virtual extern DeletedBaseline DeletedBaseline
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744377)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744373)]
	public virtual extern string Description
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744373)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744373)]
		[param: In]
		[param: MarshalAs(UnmanagedType.BStr)]
		set;
	}

	[DispId(1610744384)]
	public virtual extern Discussion Discussion
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744384)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744386)]
	public virtual extern Collection DiscussionsWithUnreadMessages
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744386)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744374)]
	public virtual extern Collection Glossaries
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744374)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744374)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744382)]
	public virtual extern Collection Integrations
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744382)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744382)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744376)]
	public virtual extern ProjectID ProjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744376)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744375)]
	public virtual extern Collection RequirementTypes
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744375)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744375)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[DispId(1610744381)]
	public virtual extern bool SecurityDisabled
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744381)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744381)]
		[param: In]
		set;
	}

	[DispId(1610744387)]
	public virtual extern Collection Traces
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744387)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744378)]
	public virtual extern bool UsesSystemGroups
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744378)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744378)]
		[param: In]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744070)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object getFieldValue([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744071)]
	public virtual extern int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744072)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744073)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744074)]
	public virtual extern bool isField([In][MarshalAs(UnmanagedType.BStr)] string fldName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744075)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744082)]
	public virtual extern void rollback();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744083)]
	public virtual extern void Remove();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744084)]
	public virtual extern void resetID([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID newID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744085)]
	public virtual extern void save();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744087)]
	public virtual extern void @lock();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744088)]
	public virtual extern void unlock();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744389)]
	public virtual extern bool removeGlossary([In][MarshalAs(UnmanagedType.Interface)] Glossary gloss);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744390)]
	public virtual extern bool removeIntegration([In][MarshalAs(UnmanagedType.Interface)] Integration integr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744391)]
	public virtual extern int setGlossaryPriority([In][MarshalAs(UnmanagedType.Interface)] Glossary gloss, [In] int iPriority);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744392)]
	public virtual extern bool isUserAssigned([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744393)]
	public virtual extern bool addIntegration([In][MarshalAs(UnmanagedType.Interface)] Integration integr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744394)]
	public virtual extern bool removeRequirementType([In][MarshalAs(UnmanagedType.Interface)] RequirementType reqType);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744395)]
	public virtual extern bool addGlossary([In][MarshalAs(UnmanagedType.Interface)] Glossary gloss, [In] int Index);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744396)]
	public virtual extern bool addRequirementType([In][MarshalAs(UnmanagedType.Interface)] RequirementType reqType);
}
