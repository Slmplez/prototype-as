using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeNodeAdvBaseStylesEditor : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	private IServiceProvider serviceProvider;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			serviceProvider = provider;
			if (edSvc != null && context.Instance is TreeViewAdv)
			{
				TreeViewAdvBaseStylesEditorForm dialog = new TreeViewAdvBaseStylesEditorForm(context.Instance as TreeViewAdv);
				edSvc.ShowDialog(dialog);
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
