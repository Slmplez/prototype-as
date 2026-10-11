using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewAdvImageListIndexUITypeEditor : DropDownUITypeEditor
{
	protected enum ImageListType
	{
		State,
		Right,
		Left,
		NodeState
	}

	private ImageListType m_type;

	protected TreeColumnAdv TreeColumn => base.Context.Instance as TreeColumnAdv;

	protected TreeNodeAdvSubItem TreeNodeSubItem => base.Context.Instance as TreeNodeAdvSubItem;

	protected TreeNodeAdv TreeNode => base.Context.Instance as TreeNodeAdv;

	protected MultiColumnTreeView TreeView
	{
		get
		{
			if (TreeColumn != null)
			{
				return TreeColumn.TreeView;
			}
			if (TreeNodeSubItem != null)
			{
				return TreeNodeSubItem.TreeView;
			}
			if (TreeNode != null)
			{
				return TreeNode.TreeView;
			}
			return base.Context.Instance as MultiColumnTreeView;
		}
	}

	protected TreeViewAdvImageListIndexUITypeEditor(ImageListType type)
	{
		m_type = type;
		base.ListBox.DrawItem += ListBox_DrawItem;
		base.ListBox.ItemHeight = 22;
		base.ListBox.DrawMode = DrawMode.OwnerDrawFixed;
	}

	protected override object GetSelectionValue(int index)
	{
		return (int)base.ListBox.Items[index];
	}

	protected override int GetSelectionIndex(object value)
	{
		ImageList chosenImageList = GetChosenImageList();
		if (value != null && chosenImageList != null)
		{
			int num = (int)value;
			num = ((num >= 0) ? (num + 1) : 0);
			return Math.Max(-1, Math.Min(num, chosenImageList.Images.Count));
		}
		return -1;
	}

	protected override object[] GetListItemsCollection()
	{
		ImageList chosenImageList = GetChosenImageList();
		ArrayList arrayList = new ArrayList();
		arrayList.Add(-1);
		if (chosenImageList != null)
		{
			for (int i = 0; i < chosenImageList.Images.Count; i++)
			{
				arrayList.Add(i);
			}
		}
		return arrayList.ToArray();
	}

	private ImageList GetChosenImageList()
	{
		ImageList result = null;
		if (TreeView != null)
		{
			switch (m_type)
			{
			case ImageListType.State:
				result = TreeView.StateImageList;
				break;
			case ImageListType.Right:
				result = TreeView.RightImageList;
				break;
			case ImageListType.Left:
				result = TreeView.LeftImageList;
				break;
			case ImageListType.NodeState:
				result = TreeView.NodeStateImageList;
				break;
			}
		}
		return result;
	}

	private void ListBox_DrawItem(object sender, DrawItemEventArgs e)
	{
		ImageList chosenImageList = GetChosenImageList();
		int num = (int)base.ListBox.Items[e.Index];
		Graphics graphics = e.Graphics;
		Rectangle bounds = e.Bounds;
		e.DrawBackground();
		if (e.State == DrawItemState.Selected)
		{
			e.DrawFocusRectangle();
		}
		if (num >= 0 && num < chosenImageList.Images.Count)
		{
			graphics.DrawImage(chosenImageList.Images[num], bounds.Left + 3, bounds.Top + 3, 16, 16);
		}
		graphics.DrawRectangle(Pens.Black, bounds.Left + 2, bounds.Top + 2, 16, 16);
		graphics.DrawString(num.ToString(), e.Font, SystemBrushes.WindowText, bounds.Left + 22, bounds.Top + 3);
	}
}
