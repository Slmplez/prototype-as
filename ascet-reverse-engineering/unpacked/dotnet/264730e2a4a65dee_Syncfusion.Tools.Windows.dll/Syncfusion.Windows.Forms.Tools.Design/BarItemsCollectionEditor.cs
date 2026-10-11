using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BarItemsCollectionEditor : BarManagerCollectionEditor
{
	private Type[] types;

	private CollectionForm collectionForm;

	private PropertyGridPopupMenu pgMenu;

	public BarItemsCollectionEditor(Type type)
		: base(type)
	{
		types = new Type[9]
		{
			typeof(BarItem),
			typeof(ParentBarItem),
			typeof(DropDownBarItem),
			typeof(ComboBoxBarItem),
			typeof(ListBarItem),
			typeof(StaticBarItem),
			typeof(MdiListBarItem),
			typeof(ToolbarListBarItem),
			typeof(TextBoxBarItem)
		};
	}

	protected override Type[] CreateNewItemTypes()
	{
		return types;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (collectionForm != null && collectionForm.Visible)
		{
			BarItemsCollectionEditor barItemsCollectionEditor = new BarItemsCollectionEditor(base.CollectionType);
			return barItemsCollectionEditor.EditValue(context, provider, value);
		}
		return base.EditValue(context, provider, value);
	}

	protected override CollectionForm CreateCollectionForm()
	{
		collectionForm = base.CreateCollectionForm();
		PropertyGrid propertyGridInControl = WinFormsUtils.GetPropertyGridInControl(collectionForm);
		if (propertyGridInControl != null)
		{
			pgMenu = new PropertyGridPopupMenu(propertyGridInControl);
		}
		return collectionForm;
	}
}
