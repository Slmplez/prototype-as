using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolStripItemsEditor : UITypeEditor
{
	private class Context : CustomContext
	{
		protected override object Instance
		{
			get
			{
				object result = null;
				if (base.BaseContext != null)
				{
					result = ((!(base.BaseContext.Instance is ToolStripPanelItem toolStripPanelItem)) ? base.BaseContext.Instance : toolStripPanelItem.Control);
				}
				return result;
			}
		}

		public Context(ITypeDescriptorContext baseContext)
			: base(baseContext)
		{
		}
	}

	private static CollectionEditor m_ToolStripCollectionEditor;

	static ToolStripItemsEditor()
	{
		Type type = Type.GetType("System.Windows.Forms.Design.ToolStripCollectionEditor, System.Design");
		if (type != null)
		{
			m_ToolStripCollectionEditor = Activator.CreateInstance(type, nonPublic: false) as CollectionEditor;
		}
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		object obj = null;
		if (m_ToolStripCollectionEditor != null)
		{
			return m_ToolStripCollectionEditor.EditValue(new Context(context), provider, value);
		}
		return base.EditValue(context, provider, value);
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (m_ToolStripCollectionEditor != null)
		{
			return m_ToolStripCollectionEditor.GetEditStyle(context);
		}
		return base.GetEditStyle(context);
	}
}
