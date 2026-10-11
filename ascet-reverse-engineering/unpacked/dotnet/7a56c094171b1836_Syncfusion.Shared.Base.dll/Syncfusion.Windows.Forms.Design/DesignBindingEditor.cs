using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Design;

internal class DesignBindingEditor : UITypeEditor
{
	private DesignBindingPicker designBindingPicker;

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				if (designBindingPicker == null)
				{
					designBindingPicker = new DesignBindingPicker(context, multipleDataSources: true, selectLists: false);
				}
				designBindingPicker.Start(context, windowsFormsEditorService, null, (DesignBinding)value);
				windowsFormsEditorService.DropDownControl(designBindingPicker);
				value = designBindingPicker.SelectedItem;
				designBindingPicker.End();
			}
		}
		return value;
	}
}
