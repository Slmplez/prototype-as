using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class PrimitivesCollectionEditor : UITypeEditor
{
	private IWindowsFormsEditorService m_editorService;

	private IServiceProvider m_serviceProvider;

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			m_editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			m_serviceProvider = provider;
			if (m_editorService != null && context.Instance is TreeNodeAdv treeNodeAdv)
			{
				PrimitivesEditorForm primitivesEditorForm = new PrimitivesEditorForm(treeNodeAdv.Primitives);
				if (DialogResult.OK == m_editorService.ShowDialog(primitivesEditorForm))
				{
					treeNodeAdv.SetPrimitives(primitivesEditorForm.Primitives);
				}
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
