using System.Collections;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class BaseStyleSelectorUITypeEditor : DropDownUITypeEditor
{
	private const string NoneStyleName = "(none)";

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

	protected override object GetSelectionValue(int index)
	{
		if (index == 0)
		{
			return string.Empty;
		}
		ArrayList arrayList = new ArrayList(GetListItemsCollection());
		return arrayList[index];
	}

	protected override int GetSelectionIndex(object value)
	{
		if (value == null || ((string)value).Length == 0)
		{
			return 0;
		}
		ArrayList arrayList = new ArrayList(GetListItemsCollection());
		return arrayList.IndexOf(value);
	}

	protected override object[] GetListItemsCollection()
	{
		ArrayList arrayList = new ArrayList();
		arrayList.Add("(none)");
		if (TreeView != null)
		{
			foreach (string key in TreeView.BaseStyles.Keys)
			{
				arrayList.Add(key);
			}
		}
		return arrayList.ToArray();
	}
}
