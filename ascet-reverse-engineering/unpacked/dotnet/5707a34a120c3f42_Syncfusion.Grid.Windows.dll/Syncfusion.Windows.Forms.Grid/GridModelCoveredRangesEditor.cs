using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridModelCoveredRangesEditor : UITypeEditor
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
		GridModelCoveredRanges gridModelCoveredRanges = (GridModelCoveredRanges)value;
		foreach (GridRangeInfo item in gridModelCoveredRanges)
		{
			rangesList.Add(new GridRangeInfoItem(item));
		}
		GridRangeInfoListEditor gridRangeInfoListEditor = new GridRangeInfoListEditor(rangesList);
		gridRangeInfoListEditor.Text = "Covered Ranges";
		gridRangeInfoListEditor.label1.Text = "Covered Ranges";
		if (gridRangeInfoListEditor.ShowDialog() == DialogResult.OK)
		{
			IComponentChangeService componentChangeService = null;
			PropertyDescriptor member = null;
			if (provider != null)
			{
				componentChangeService = provider.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
				member = TypeDescriptor.GetProperties(instance)["CoveredRanges"];
			}
			componentChangeService?.OnComponentChanging(instance, member);
			gridModelCoveredRanges.Clear();
			foreach (GridRangeInfoItem item2 in rangesList)
			{
				gridModelCoveredRanges.Add(item2.GetRangeInfo());
			}
			componentChangeService?.OnComponentChanged(instance, member, gridModelCoveredRanges, gridModelCoveredRanges);
			gridModelCoveredRanges.UpdateList();
			gridModelCoveredRanges.Model.Modified |= gridModelCoveredRanges.Count > 0;
			gridModelCoveredRanges.Model.Refresh();
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
