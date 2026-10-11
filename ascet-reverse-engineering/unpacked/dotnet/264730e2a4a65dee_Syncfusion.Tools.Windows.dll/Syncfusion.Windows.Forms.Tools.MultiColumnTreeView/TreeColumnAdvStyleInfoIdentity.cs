using System;
using System.Collections;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class TreeColumnAdvStyleInfoIdentity : StyleInfoIdentityBase
{
	private MultiColumnTreeView m_tree;

	private TreeColumnAdv m_column;

	public MultiColumnTreeView TreeView
	{
		get
		{
			if (Column != null)
			{
				return Column.TreeView;
			}
			return m_tree;
		}
	}

	public TreeColumnAdv Column => m_column;

	public TreeColumnAdvStyleInfoIdentity(MultiColumnTreeView tree)
	{
		m_tree = tree;
	}

	public TreeColumnAdvStyleInfoIdentity(TreeColumnAdv column)
	{
		m_column = column;
	}

	public override void Dispose()
	{
		m_column = null;
		GC.SuppressFinalize(this);
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo info)
	{
		ArrayList arrayList = new ArrayList(4);
		if (info is TreeColumnAdvStyleInfo treeColumnAdvStyleInfo)
		{
			if (TreeView != null)
			{
				if (treeColumnAdvStyleInfo.HasBaseStyle && TreeView.BaseStyles.Contains(treeColumnAdvStyleInfo.BaseStyle))
				{
					arrayList.Add(TreeView.BaseStyles[treeColumnAdvStyleInfo.BaseStyle]);
				}
				arrayList.Add(TreeView.StandardColumnStyle);
				arrayList.Add(TreeView.StandardStyle);
			}
			IStyleInfo[] array = new IStyleInfo[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		return new IStyleInfo[0];
	}
}
