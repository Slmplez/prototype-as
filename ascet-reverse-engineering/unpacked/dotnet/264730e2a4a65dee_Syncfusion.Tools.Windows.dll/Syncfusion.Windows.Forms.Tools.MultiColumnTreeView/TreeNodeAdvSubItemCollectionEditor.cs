using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

internal class TreeNodeAdvSubItemCollectionEditor : CollectionEditor
{
	private TreeNodeAdvSubItemCollection m_parent;

	private Type[] m_types = new Type[1] { typeof(TreeNodeAdvSubItem) };

	public TreeNodeAdvSubItemCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override Type[] CreateNewItemTypes()
	{
		return m_types;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		m_parent = value as TreeNodeAdvSubItemCollection;
		return base.EditValue(context, provider, value);
	}

	protected override object[] GetItems(object editValue)
	{
		if (editValue is TreeNodeAdvSubItemCollection treeNodeAdvSubItemCollection)
		{
			object obj = null;
			object[] array = new object[treeNodeAdvSubItemCollection.Count];
			((ICollection)treeNodeAdvSubItemCollection).CopyTo((Array)array, 0);
			if (array.Length > 0)
			{
				obj = array[0];
			}
			ArrayList arrayList = new ArrayList(array);
			if (obj != null)
			{
				arrayList.Remove(obj);
			}
			return (object[])arrayList.ToArray(typeof(object));
		}
		return base.GetItems(editValue);
	}
}
