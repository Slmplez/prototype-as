using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class GradientPanelExtCollectionEditor : UITypeEditor
{
	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null && context.Instance is GradientPanelExt)
			{
				GradienPanelExtCollectioEditorForm dialog = new GradienPanelExtCollectioEditorForm(context.Instance as GradientPanelExt, provider);
				windowsFormsEditorService.ShowDialog(dialog);
			}
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance != null)
		{
			return UITypeEditorEditStyle.Modal;
		}
		return base.GetEditStyle(context);
	}
}
