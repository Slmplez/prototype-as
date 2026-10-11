using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Design;

internal class AdvancedBindingEditor : UITypeEditor
{
	private AdvancedBindingPicker advancedBindingPicker;

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				if (advancedBindingPicker == null)
				{
					advancedBindingPicker = new AdvancedBindingPicker(context);
				}
				IComponentChangeService componentChangeService = (IComponentChangeService)provider.GetService(typeof(IComponentChangeService));
				Control control = ((ControlBindingsCollection)context.Instance).Control;
				componentChangeService?.OnComponentChanging(control, TypeDescriptor.GetProperties(control)["DataBindings"]);
				AdvancedBindingObject advancedBindingObject = (AdvancedBindingObject)value;
				advancedBindingObject.Changed = false;
				advancedBindingPicker.Value = advancedBindingObject;
				windowsFormsEditorService.ShowDialog(advancedBindingPicker);
				advancedBindingPicker.End();
				if (advancedBindingObject.Changed)
				{
					TypeDescriptor.Refresh(((ControlBindingsCollection)context.Instance).Control);
					componentChangeService?.OnComponentChanged(control, TypeDescriptor.GetProperties(control)["DataBindings"], null, null);
				}
			}
		}
		return value;
	}
}
