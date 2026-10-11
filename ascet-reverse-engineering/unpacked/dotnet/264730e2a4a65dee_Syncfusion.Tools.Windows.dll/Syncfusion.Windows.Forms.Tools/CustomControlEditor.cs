using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class CustomControlEditor : UITypeEditor
{
	private IWindowsFormsEditorService m_editorService;

	private ListBox m_listBox;

	public CustomControlEditor()
	{
		m_listBox = new ListBox();
		m_listBox.BorderStyle = BorderStyle.None;
		m_listBox.Click += listBox_Click;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.DropDown;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (provider != null)
		{
			m_editorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (m_editorService != null)
			{
				m_listBox.Items.Clear();
				IDesignerHost designerHost = (IDesignerHost)provider.GetService(typeof(IDesignerHost));
				if (designerHost != null)
				{
					ArrayList arrayList = new ArrayList();
					m_listBox.Items.Add("(none)");
					m_listBox.SelectedIndex = 0;
					arrayList.Add(null);
					TreeNodeAdv treeNodeAdv = (TreeNodeAdv)context.Instance;
					foreach (Component component in designerHost.Container.Components)
					{
						if (!(component is Control control))
						{
							continue;
						}
						Type type = control.GetType();
						if (type != typeof(Form) && type != typeof(TreeViewAdv))
						{
							arrayList.Add(control);
							m_listBox.Items.Add(control.Name);
							if (treeNodeAdv.CustomControl == control)
							{
								m_listBox.SelectedIndex = m_listBox.Items.Count - 1;
							}
						}
					}
					m_editorService.DropDownControl(m_listBox);
					value = arrayList[m_listBox.SelectedIndex];
				}
			}
		}
		return value;
	}

	private void listBox_Click(object sender, EventArgs e)
	{
		if (m_editorService != null)
		{
			m_editorService.CloseDropDown();
		}
	}
}
