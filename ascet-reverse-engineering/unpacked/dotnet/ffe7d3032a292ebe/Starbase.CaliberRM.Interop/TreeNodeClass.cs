using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430032-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class TreeNodeClass : ITreeNode, TreeNode
{
	[DispId(1610744154)]
	public virtual extern CaliberObjectID AssociatedObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744154)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744149)]
	public virtual extern Collection AvailableRequirementVersions
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744149)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744143)]
	public virtual extern int ChildCount
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744143)]
		get;
	}

	[DispId(1610744153)]
	public virtual extern Collection Children
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744153)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744147)]
	public virtual extern bool HasChildren
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744147)]
		get;
	}

	[DispId(1610744150)]
	public virtual extern string HierarchyNumber
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744150)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744151)]
	public virtual extern int Level
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744151)]
		get;
	}

	[DispId(1610744145)]
	public virtual extern string Name
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744145)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744139)]
	public virtual extern TreeNode Parent
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744139)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744146)]
	public virtual extern bool ProjectNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744146)]
		get;
	}

	[DispId(1610744140)]
	public virtual extern bool RequirementNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744140)]
		get;
	}

	[DispId(1610744152)]
	public virtual extern Tree RequirementTree
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744152)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744148)]
	public virtual extern RequirementTypeID RequirementTypeID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744148)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744144)]
	public virtual extern bool RequirementTypeNode
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744144)]
		get;
	}

	[DispId(1610744141)]
	public virtual extern string RequirementTypeTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744141)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[DispId(1610744142)]
	public virtual extern string SerialNumberTag
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744142)]
		[return: MarshalAs(UnmanagedType.BStr)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744155)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TreeNode getChildAt([In] int childIndex);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744156)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744157)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744158)]
	public virtual extern int getIndexOfChild([In][MarshalAs(UnmanagedType.Interface)] TreeNode node);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744159)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TreeNode findNode([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744160)]
	public virtual extern bool isNodeAncestor([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744161)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TreeNode findRequirementNode([In] int requirementIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744162)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744163)]
	public virtual extern void addChildSansModification([In][MarshalAs(UnmanagedType.Interface)] TreeNode newChild);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744164)]
	public virtual extern bool isNodeSameRequirementType([In][MarshalAs(UnmanagedType.Interface)] TreeNode anotherNode);
}
