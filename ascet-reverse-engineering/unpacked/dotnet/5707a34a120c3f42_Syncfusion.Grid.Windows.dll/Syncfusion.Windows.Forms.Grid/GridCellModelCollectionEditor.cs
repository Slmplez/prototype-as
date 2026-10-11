using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Security.Permissions;

namespace Syncfusion.Windows.Forms.Grid;

[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
internal class GridCellModelCollectionEditor : CollectionEditor
{
	private ArrayList list;

	private GridCellModelCollection cellModels;

	public GridCellModelCollectionEditor(Type type)
		: base(type)
	{
		cellModels = null;
	}

	protected override Type CreateCollectionItemType()
	{
		return typeof(GridCellModelBase);
	}

	protected override bool CanRemoveInstance(object value)
	{
		return false;
	}

	protected override object CreateInstance(Type itemType)
	{
		return null;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		cellModels = value as GridCellModelCollection;
		GridCellModelBase[] array = new GridCellModelBase[cellModels.Count];
		cellModels.CopyTo(array, 0);
		list = new ArrayList(array);
		return base.EditValue(context, provider, (object)list);
	}
}
