using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Drawing;

internal class BrushInfoColorsCollectionEditor : CollectionEditor
{
	private BrushInfoColorArrayList coll;

	private CollectionForm collectionForm;

	public BrushInfoColorsCollectionEditor(Type type)
		: base(type)
	{
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		coll = value as BrushInfoColorArrayList;
		bool freeze = coll.Freeze;
		coll.Freeze = false;
		value = base.EditValue(context, provider, value);
		coll.Freeze = freeze;
		return value;
	}

	protected override object SetItems(object editValue, object[] value)
	{
		BrushInfoColorArrayList brushInfoColorArrayList = new BrushInfoColorArrayList();
		foreach (object obj in value)
		{
			brushInfoColorArrayList.Add((Color)obj);
		}
		return brushInfoColorArrayList;
	}

	protected override CollectionForm CreateCollectionForm()
	{
		collectionForm = base.CreateCollectionForm();
		return collectionForm;
	}

	protected override bool CanRemoveInstance(object value)
	{
		int itemsInCollectionEditorFormListBox = GetItemsInCollectionEditorFormListBox();
		if (itemsInCollectionEditorFormListBox > -1 && itemsInCollectionEditorFormListBox <= 2)
		{
			return false;
		}
		return base.CanRemoveInstance(value);
	}

	private int GetItemsInCollectionEditorFormListBox()
	{
		foreach (Control control3 in collectionForm.Controls)
		{
			foreach (Control control4 in control3.Controls)
			{
				if (control4 is ListBox)
				{
					ListBox listBox = control4 as ListBox;
					return listBox.Items.Count;
				}
			}
		}
		return -1;
	}
}
