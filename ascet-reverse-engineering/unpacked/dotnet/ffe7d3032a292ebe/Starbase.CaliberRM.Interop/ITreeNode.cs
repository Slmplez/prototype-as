using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430031-72AE-11D5-B316-0800309CC2CE")]
public interface ITreeNode
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744155)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TreeNode getChildAt([In] int childIndex);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744156)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744157)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744158)]
	int getIndexOfChild([In][MarshalAs(UnmanagedType.Interface)] TreeNode node);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744159)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TreeNode findNode([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744160)]
	bool isNodeAncestor([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744161)]
	[return: MarshalAs(UnmanagedType.Interface)]
	TreeNode findRequirementNode([In] int requirementIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744162)]
	[return: MarshalAs(UnmanagedType.Struct)]
	object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744163)]
	void addChildSansModification([In][MarshalAs(UnmanagedType.Interface)] TreeNode newChild);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744164)]
	bool isNodeSameRequirementType([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);

	[DispId(1610744154)]
	CaliberObjectID AssociatedObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744154)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744149)]
	Collection AvailableRequirementVersions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744149)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744143)]
	int ChildCount
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744143)]
		get;
	}

	[DispId(1610744153)]
	Collection Children
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744153)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744147)]
	bool HasChildren
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744147)]
		get;
	}

	[DispId(1610744150)]
	string HierarchyNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744150)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744151)]
	int Level
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744151)]
		get;
	}

	[DispId(1610744145)]
	string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744145)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744139)]
	TreeNode Parent
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744139)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744146)]
	bool ProjectNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744146)]
		get;
	}

	[DispId(1610744140)]
	bool RequirementNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744140)]
		get;
	}

	[DispId(1610744152)]
	Tree RequirementTree
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744152)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744148)]
	RequirementTypeID RequirementTypeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744148)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744144)]
	bool RequirementTypeNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744144)]
		get;
	}

	[DispId(1610744141)]
	string RequirementTypeTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744141)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744142)]
	string SerialNumberTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744142)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}
}
