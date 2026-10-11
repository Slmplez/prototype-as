using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridModelBanneredRangesEditor : UITypeEditor
{
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context == null || context.Instance == null || provider == null)
		{
			return value;
		}
		object instance = context.Instance;
		RangesList rangesList = new RangesList();
		rangesList.AllowNew = true;
		rangesList.AllowEdit = true;
		GridModelBanneredRanges gridModelBanneredRanges = (GridModelBanneredRanges)value;
		foreach (GridRangeInfo item in gridModelBanneredRanges)
		{
			rangesList.Add(new GridRangeInfoItem(item));
		}
		GridRangeInfoListEditor gridRangeInfoListEditor = new GridRangeInfoListEditor(rangesList);
		gridRangeInfoListEditor.Text = "Bannered Ranges";
		gridRangeInfoListEditor.label1.Text = "Bannered Ranges";
		if (gridRangeInfoListEditor.ShowDialog() == DialogResult.OK)
		{
			IComponentChangeService componentChangeService = null;
			PropertyDescriptor member = null;
			if (provider != null)
			{
				componentChangeService = provider.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
				member = TypeDescriptor.GetProperties(instance)["BanneredRanges"];
			}
			componentChangeService?.OnComponentChanging(instance, member);
			gridModelBanneredRanges.Clear();
			foreach (GridRangeInfoItem item2 in rangesList)
			{
				gridModelBanneredRanges.Add(item2.GetRangeInfo());
			}
			componentChangeService?.OnComponentChanged(instance, member, gridModelBanneredRanges, gridModelBanneredRanges);
			gridModelBanneredRanges.UpdateList();
			gridModelBanneredRanges.Model.Modified |= gridModelBanneredRanges.Count > 0;
			gridModelBanneredRanges.Model.Refresh();
			return value;
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		return false;
	}
}
