using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class MenuDropDownItemsEditor : UITypeEditor
{
	private class Context : CustomContext
	{
		protected override object Instance
		{
			get
			{
				object instance = base.BaseContext.Instance;
				if (instance is MenuDropDown.Panel panel)
				{
					return panel.ToolStrip;
				}
				return instance;
			}
		}

		public Context(ITypeDescriptorContext baseContext)
			: base(baseContext)
		{
		}
	}

	private UITypeEditor m_baseEditor;

	public MenuDropDownItemsEditor()
	{
		m_baseEditor = TypeDescriptor.GetEditor(typeof(ToolStripItemCollection), typeof(UITypeEditor)) as UITypeEditor;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return m_baseEditor.GetEditStyle(context);
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		object result = null;
		if (value != null)
		{
			TypeDescriptionProvider provider2 = AddProvider(typeof(OfficeButton));
			TypeDescriptionProvider provider3 = AddProvider(typeof(OfficeDropDownButton));
			TypeDescriptionProvider provider4 = AddProvider(typeof(OfficeSplitButton));
			result = m_baseEditor.EditValue(new Context(context), provider, value);
			TypeDescriptor.RemoveProvider(provider2, typeof(OfficeButton));
			TypeDescriptor.RemoveProvider(provider3, typeof(OfficeDropDownButton));
			TypeDescriptor.RemoveProvider(provider4, typeof(OfficeSplitButton));
		}
		return result;
	}

	private TypeDescriptionProvider AddProvider(Type type)
	{
		TypeDescriptionProvider typeDescriptionProvider = new OfficeButtonTypeDescriptionProvider(type);
		TypeDescriptor.AddProvider(typeDescriptionProvider, type);
		return typeDescriptionProvider;
	}
}
