using System.Collections;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvSubItemStyleInfoIdentity : StyleInfoIdentityBase
{
	private MultiColumnTreeView m_tree;

	private TreeNodeAdv m_node;

	private TreeNodeAdvSubItem m_subitem;

	public MultiColumnTreeView TreeView
	{
		get
		{
			if (TreeNode != null)
			{
				return TreeNode.TreeView;
			}
			return m_tree;
		}
	}

	public TreeNodeAdv TreeNode
	{
		get
		{
			if (TreeNodeSubItem != null)
			{
				return TreeNodeSubItem.TreeNode;
			}
			return m_node;
		}
	}

	public TreeNodeAdvSubItem TreeNodeSubItem => m_subitem;

	public TreeNodeAdvSubItemStyleInfoIdentity(MultiColumnTreeView tree)
	{
		m_tree = tree;
	}

	public TreeNodeAdvSubItemStyleInfoIdentity(TreeNodeAdv node)
	{
		m_node = node;
	}

	public TreeNodeAdvSubItemStyleInfoIdentity(TreeNodeAdvSubItem subitem)
	{
		m_subitem = subitem;
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo info)
	{
		ArrayList arrayList = new ArrayList(4);
		if (info is TreeNodeAdvSubItemStyleInfo treeNodeAdvSubItemStyleInfo)
		{
			if (TreeView != null)
			{
				if (treeNodeAdvSubItemStyleInfo.HasBaseStyle && TreeView.BaseStyles.Contains(treeNodeAdvSubItemStyleInfo.BaseStyle))
				{
					arrayList.Add(TreeView.BaseStyles[treeNodeAdvSubItemStyleInfo.BaseStyle]);
				}
				arrayList.Add(TreeView.StandardSubItemStyle);
				arrayList.Add(TreeView.StandardStyle);
			}
			IStyleInfo[] array = new IStyleInfo[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		return new IStyleInfo[0];
	}
}
