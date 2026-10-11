using System;
using System.Collections;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools;

internal class TreeViewAdvStyleInfoIdentity : StyleInfoIdentityBase
{
	private TreeViewAdv _tree;

	private TreeNodeAdv _node;

	public TreeViewAdv TreeView
	{
		get
		{
			if (_tree != null)
			{
				return _tree;
			}
			return _node.TreeView;
		}
	}

	public TreeNodeAdv Node => _node;

	public override void Dispose()
	{
		_tree = null;
		_node = null;
		GC.SuppressFinalize(this);
	}

	public TreeViewAdvStyleInfoIdentity(TreeViewAdv tree)
	{
		_tree = tree;
	}

	public TreeViewAdvStyleInfoIdentity(TreeNodeAdv node)
	{
		_node = node;
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo thisStyleInfo)
	{
		TreeNodeAdvStyleInfo treeNodeAdvStyleInfo = (TreeNodeAdvStyleInfo)thisStyleInfo;
		ArrayList arrayList = new ArrayList();
		TreeViewAdv treeView = TreeView;
		if (treeView != null)
		{
			if (treeNodeAdvStyleInfo.HasBaseStyle && treeView.BaseStyles.Contains(treeNodeAdvStyleInfo.BaseStyle))
			{
				TreeNodeAdvStyleInfoIdentity.AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles[treeNodeAdvStyleInfo.BaseStyle] as TreeNodeAdvStyleInfo);
			}
			if (Node != null && Node.TreeView == treeView)
			{
				string nodeLevelStyleBaseName = TreeViewAdv.NodeLevelStyleBaseName;
				nodeLevelStyleBaseName += Node.Level + 1;
				if (treeView.BaseStyles.Contains(nodeLevelStyleBaseName))
				{
					TreeNodeAdvStyleInfoIdentity.AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles[nodeLevelStyleBaseName] as TreeNodeAdvStyleInfo);
				}
			}
			if (treeView.BaseStyles.Contains(TreeViewAdv.DefaultBaseStyleName))
			{
				TreeNodeAdvStyleInfoIdentity.AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles[TreeViewAdv.DefaultBaseStyleName] as TreeNodeAdvStyleInfo);
			}
			arrayList.Add(treeView.BoundStyle);
		}
		if (arrayList.Count > 0)
		{
			IStyleInfo[] array = new IStyleInfo[arrayList.Count];
			for (int i = 0; i < arrayList.Count; i++)
			{
				array[i] = arrayList[i] as IStyleInfo;
			}
			return array;
		}
		return new IStyleInfo[0];
	}

	public override string ToString()
	{
		return base.ToString();
	}

	public override void OnStyleChanged(StyleInfoBase style, StyleInfoProperty sip)
	{
	}
}
