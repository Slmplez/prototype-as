using System;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellInfoCollectionEditor : CollectionEditor
{
	private PropertyGridContextMenu pgMenu;

	public GridCellInfoCollectionEditor(Type type)
		: base(type)
	{
	}

	protected override CollectionForm CreateCollectionForm()
	{
		CollectionForm collectionForm = base.CreateCollectionForm();
		PropertyGrid propertyGridInControl = WinFormsUtils.GetPropertyGridInControl(collectionForm);
		if (propertyGridInControl != null)
		{
			pgMenu = new PropertyGridContextMenu(propertyGridInControl);
		}
		return collectionForm;
	}
}
