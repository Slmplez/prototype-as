using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public abstract class DropDownUITypeEditor : UITypeEditor
{
	private IWindowsFormsEditorService m_editorService;

	private ListBox m_listBox;

	private ITypeDescriptorContext m_context;

	protected ListBox ListBox => m_listBox;

	protected ITypeDescriptorContext Context => m_context;

	public DropDownUITypeEditor()
	{
		m_listBox = new ListBox();
		m_listBox.BorderStyle = BorderStyle.None;
		m_listBox.Click += ListBox_Click;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null)
		{
			m_context = context;
		}
		if (provider != null)
		{
			m_editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (m_editorService != null)
			{
				m_listBox.Items.Clear();
				IDesignerHost designerHost = (IDesignerHost)provider.GetService(typeof(IDesignerHost));
				if (designerHost != null)
				{
					m_listBox.Items.AddRange(GetListItemsCollection());
					m_listBox.SelectedIndex = GetSelectionIndex(value);
					m_editorService.DropDownControl(m_listBox);
					value = GetSelectionValue(m_listBox.SelectedIndex);
				}
			}
		}
		return value;
	}

	private void ListBox_Click(object sender, EventArgs e)
	{
		if (m_editorService != null)
		{
			m_editorService.CloseDropDown();
		}
	}

	protected abstract object GetSelectionValue(int index);

	protected abstract int GetSelectionIndex(object value);

	protected abstract object[] GetListItemsCollection();
}
