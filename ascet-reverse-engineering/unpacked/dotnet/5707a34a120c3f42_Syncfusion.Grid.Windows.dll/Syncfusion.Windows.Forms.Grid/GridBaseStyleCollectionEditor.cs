using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBaseStyleCollectionEditor : CollectionEditor
{
	private ArrayList list;

	private GridBaseStylesMap gsim;

	private PropertyGridContextMenu pgMenu;

	public GridBaseStyleCollectionEditor(Type type)
		: base(type)
	{
		gsim = null;
	}

	protected override Type CreateCollectionItemType()
	{
		return typeof(GridBaseStyle);
	}

	protected override bool CanRemoveInstance(object value)
	{
		if (!(value is GridBaseStyle gridBaseStyle))
		{
			return base.CanRemoveInstance(value);
		}
		return !gridBaseStyle.IsSystem;
	}

	protected override object CreateInstance(Type itemType)
	{
		if (gsim != null)
		{
			string newBaseStyleName = gsim.GetNewBaseStyleName();
			return new GridBaseStyle(newBaseStyleName, isSystem: false, null, gsim);
		}
		return base.CreateInstance(itemType);
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context == null || context.Instance == null)
		{
			return IntEditValue(context, provider, value);
		}
		GridBaseStylesMap.ShowGridBaseStylesMapDialog(context.Instance, "BaseStylesMap", provider);
		return value;
	}

	public object IntEditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		gsim = value as GridBaseStylesMap;
		this.list = new ArrayList(gsim.baseStyles.Values);
		typeof(IList).IsAssignableFrom(base.CollectionType);
		object obj = base.EditValue(context, provider, (object)this.list);
		if (obj != null)
		{
			IList list = obj as IList;
			gsim.BeginUpdate();
			gsim.baseStyles.Clear();
			foreach (GridBaseStyle item in list)
			{
				gsim[item.Name] = item;
			}
			gsim.EndUpdate(notifyPending: false);
		}
		if (context != null && context.Instance is Control)
		{
			((Control)context.Instance).Refresh();
		}
		return gsim;
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
