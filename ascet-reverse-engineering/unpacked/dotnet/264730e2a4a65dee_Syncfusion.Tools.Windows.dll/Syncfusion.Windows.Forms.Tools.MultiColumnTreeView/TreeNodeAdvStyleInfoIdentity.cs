using System;
using System.Collections;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class TreeNodeAdvStyleInfoIdentity : StyleInfoIdentityBase
{
	private TreeNodeAdv treeNode;

	public TreeNodeAdv TreeNode => treeNode;

	public TreeNodeAdvStyleInfoIdentity(TreeNodeAdv treeNode)
	{
		this.treeNode = treeNode;
	}

	public override void Dispose()
	{
		treeNode = null;
		GC.SuppressFinalize(this);
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo thisStyleInfo)
	{
		TreeNodeAdvStyleInfo treeNodeAdvStyleInfo = (TreeNodeAdvStyleInfo)thisStyleInfo;
		ArrayList arrayList = new ArrayList(16);
		MultiColumnTreeView treeView = treeNode.TreeView;
		if (treeView != null)
		{
			string key = "NodeLevel" + treeNode.Level;
			if (treeNodeAdvStyleInfo.HasBaseStyle && treeView.BaseStyles.Contains(treeNodeAdvStyleInfo.BaseStyle))
			{
				AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles[treeNodeAdvStyleInfo.BaseStyle] as TreeNodeAdvStyleInfo);
			}
			if (treeNode.Parent != null)
			{
				AddStyleAndItsBases(treeView, arrayList, treeNode.Parent.ChildStyle);
			}
			if (treeView.BaseStyles.Contains(key))
			{
				AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles[key] as TreeNodeAdvStyleInfo);
			}
			if (treeView.BaseStyles.Contains("Standard"))
			{
				AddStyleAndItsBases(treeView, arrayList, treeView.BaseStyles["Standard"] as TreeNodeAdvStyleInfo);
			}
			arrayList.Add(treeView.BoundStyle);
		}
		if (arrayList.Count > 0)
		{
			IStyleInfo[] array = new IStyleInfo[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		return new IStyleInfo[0];
	}

	internal static void AddStyleAndItsBases(MultiColumnTreeView tree, ArrayList styles, TreeNodeAdvStyleInfo style)
	{
		if (styles.Count < 16)
		{
			styles.Add(style);
			if (style != null && style.HasBaseStyle && tree.BaseStyles.Contains(style.BaseStyle))
			{
				TreeNodeAdvStyleInfo style2 = tree.BaseStyles[style.BaseStyle] as TreeNodeAdvStyleInfo;
				AddStyleAndItsBases(tree, styles, style2);
			}
		}
	}

	public override string ToString()
	{
		return base.ToString();
	}

	public override void OnStyleChanged(StyleInfoBase style, StyleInfoProperty sip)
	{
	}
}
