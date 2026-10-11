using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

internal abstract class GridStylesUITypeEditor : UITypeEditor
{
	internal abstract string Format(object o, int index);

	internal abstract void OnApplyChanges(object value);

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance != null)
		{
			return UITypeEditorEditStyle.Modal;
		}
		return base.GetEditStyle(context);
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = provider.GetService(typeof(IWindowsFormsEditorService)) as IWindowsFormsEditorService;
			IDesignerHost designerHost = provider.GetService(typeof(IDesignerHost)) as IDesignerHost;
			if (windowsFormsEditorService != null)
			{
				DesignerTransaction designerTransaction = null;
				if (designerHost != null)
				{
					designerTransaction = designerHost.CreateTransaction("Editing style collection");
				}
				GridCollectionEditor gridCollectionEditor = new GridCollectionEditor(value as ICollection, this);
				DialogResult dialogResult = windowsFormsEditorService.ShowDialog(gridCollectionEditor);
				if (gridCollectionEditor.Dirty)
				{
					IComponentChangeService componentChangeService = provider.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
					componentChangeService?.OnComponentChanging(context.Instance, null);
					componentChangeService?.OnComponentChanged(context.Instance, null, null, null);
				}
				if (dialogResult == DialogResult.OK)
				{
					designerTransaction?.Commit();
					return value;
				}
				designerTransaction?.Cancel();
			}
		}
		return base.EditValue(context, provider, value);
	}
}
