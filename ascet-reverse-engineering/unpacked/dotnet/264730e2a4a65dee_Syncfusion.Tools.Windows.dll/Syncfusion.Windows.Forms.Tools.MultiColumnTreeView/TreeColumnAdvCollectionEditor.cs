using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeColumnAdvCollectionEditor : UITypeEditor
{
	private IWindowsFormsEditorService edSvc;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			edSvc = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (edSvc != null && context.Instance is MultiColumnTreeView)
			{
				MultiColumnTreeView multiColumnTreeView = (MultiColumnTreeView)context.Instance;
				using ColumnsEditorForm dialog = new ColumnsEditorForm(multiColumnTreeView.Columns, provider);
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
