using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolTipEditor : UITypeEditor
{
	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		object result = value;
		IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
		if (windowsFormsEditorService != null)
		{
			using ToolTipEditorForm toolTipEditorForm = new ToolTipEditorForm(value as ToolTipInfo, provider);
			if (windowsFormsEditorService.ShowDialog(toolTipEditorForm) == DialogResult.OK)
			{
				result = new ToolTipInfo(toolTipEditorForm.ToolTip);
			}
		}
		return result;
	}
}
