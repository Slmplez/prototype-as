using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430033-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IBaselineTreeNode : ITreeNode
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744155)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new TreeNode getChildAt([In] int childIndex);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744156)]
	[return: MarshalAs(UnmanagedType.BStr)]
	new string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744157)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744158)]
	new int getIndexOfChild([In][MarshalAs(UnmanagedType.Interface)] TreeNode node);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744159)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new TreeNode findNode([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744160)]
	new bool isNodeAncestor([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744161)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new TreeNode findRequirementNode([In] int requirementIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744162)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744163)]
	new void addChildSansModification([In][MarshalAs(UnmanagedType.Interface)] TreeNode newChild);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744164)]
	new bool isNodeSameRequirementType([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);

	[DispId(1610744154)]
	new CaliberObjectID AssociatedObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744154)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744149)]
	new Collection AvailableRequirementVersions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744149)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744143)]
	new int ChildCount
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744143)]
		get;
	}

	[DispId(1610744153)]
	new Collection Children
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744153)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744147)]
	new bool HasChildren
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744147)]
		get;
	}

	[DispId(1610744150)]
	new string HierarchyNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744150)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744151)]
	new int Level
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744151)]
		get;
	}

	[DispId(1610744145)]
	new string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744145)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744139)]
	new TreeNode Parent
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744139)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744146)]
	new bool ProjectNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744146)]
		get;
	}

	[DispId(1610744140)]
	new bool RequirementNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744140)]
		get;
	}

	[DispId(1610744152)]
	new Tree RequirementTree
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744152)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744148)]
	new RequirementTypeID RequirementTypeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744148)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744144)]
	new bool RequirementTypeNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744144)]
		get;
	}

	[DispId(1610744141)]
	new string RequirementTypeTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744141)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744142)]
	new string SerialNumberTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744142)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744165)]
	bool IncludedInBaseline
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744165)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744165)]
		[param: In]
		set;
	}

	[DispId(1610744166)]
	Version Version
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744166)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744166)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}
}
