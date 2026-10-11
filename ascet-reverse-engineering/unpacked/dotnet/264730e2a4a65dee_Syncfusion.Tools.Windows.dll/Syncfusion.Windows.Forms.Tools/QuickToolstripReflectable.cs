using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
[Designer("System.Windows.Forms.Design.ToolStripItemDesigner, System.Design")]
public class QuickToolstripReflectable : CustomDropDownButtonBase, IQuickItem
{
	private ToolStripEx m_reflectedToolStrip;

	internal override ToolStripEx ToolStrip => m_reflectedToolStrip;

	public ToolStripEx ReflectedToolStrip
	{
		get
		{
			return m_reflectedToolStrip;
		}
		set
		{
			if (m_reflectedToolStrip != null)
			{
				m_reflectedToolStrip.ImageChanged -= OnReflectedToolStripImageChanged;
				base.Panel.ToolStrip.LauncherClick -= OnPanelToolStripLauncherClick;
				base.Panel.Items.Clear();
			}
			m_reflectedToolStrip = value;
			if (m_reflectedToolStrip != null)
			{
				m_reflectedToolStrip.ImageChanged += OnReflectedToolStripImageChanged;
				base.Panel.ToolStrip.LauncherClick += OnPanelToolStripLauncherClick;
			}
			Reset();
		}
	}

	public Component ReflectedComponent => m_reflectedToolStrip;

	public QuickToolstripReflectable()
	{
		base.AutoSize = true;
	}

	public QuickToolstripReflectable(ToolStripEx reflectedToolStrip)
		: this()
	{
		ReflectedToolStrip = reflectedToolStrip;
	}

	protected override void OnDropDownShow(EventArgs e)
	{
		base.OnDropDownShow(e);
		base.Panel.Items.Clear();
		if (m_reflectedToolStrip != null)
		{
			List<ToolStripItem> reflectableItems = GetReflectableItems(m_reflectedToolStrip, bExactCopy: true);
			base.Panel.Items.AddRange(reflectableItems.ToArray());
			base.Panel.RightToLeft = m_reflectedToolStrip.RightToLeft;
		}
	}

	protected override void Dispose(bool disposing)
	{
		base.Panel.Items.Clear();
		base.Dispose(disposing);
	}

	private void OnReflectedToolStripImageChanged(object sender, EventArgs e)
	{
		if (m_reflectedToolStrip != null)
		{
			Image = m_reflectedToolStrip.Image;
			Invalidate();
		}
	}

	private void OnPanelToolStripLauncherClick(object sender, EventArgs e)
	{
		if (m_reflectedToolStrip != null)
		{
			m_reflectedToolStrip.PerformLauncherClick();
		}
	}

	public static ToolStripItem GetItemToReflect(Component comp)
	{
		return GetItemToReflect(comp, bExactCopy: false);
	}

	public static ToolStripItem GetItemToReflect(Component comp, bool bExactCopy)
	{
		ToolStripItem result = null;
		if (comp is ToolStripCheckBox)
		{
			result = new QuickCheckBoxReflectable((ToolStripCheckBox)comp, bExactCopy);
		}
		else if (comp is ToolStripRadioButton)
		{
			result = new QuickRadioButtonReflectable((ToolStripRadioButton)comp, bExactCopy);
		}
		else if (comp is ToolStripButton)
		{
			result = new QuickButtonReflectable((ToolStripButton)comp, bExactCopy);
		}
		else if (comp is ToolStripDropDownButton)
		{
			result = ((!(comp is CustomDropDownButtonBase)) ? ((ToolStripItem)new QuickDropDownButtonReflectable((ToolStripDropDownButton)comp, bExactCopy)) : ((ToolStripItem)new QuickToolstripReflectable(((CustomDropDownButtonBase)comp).ToolStrip)));
		}
		else if (comp is ToolStripSplitButton)
		{
			result = new QuickSplitButtonReflectable((ToolStripSplitButton)comp, bExactCopy);
		}
		else if (comp is ToolStripSplitButtonEx)
		{
			result = new QuickSplitButtonEx((ToolStripSplitButtonEx)comp, bExactCopy);
		}
		else if (comp is ToolStripTextBox)
		{
			result = new QuickTextboxReflectable((ToolStripTextBox)comp, bExactCopy);
		}
		else if (comp is ToolStripComboBox)
		{
			result = new QuickComboboxReflectable((ToolStripComboBox)comp, bExactCopy);
		}
		else if (comp is ToolStripComboBoxEx)
		{
			result = new QuickComboBoxEx((ToolStripComboBoxEx)comp, bExactCopy);
		}
		else if (comp is ToolStripProgressBar)
		{
			result = new ProgressbarReflectable((ToolStripProgressBar)comp, bExactCopy);
		}
		else if (comp is ToolStripSeparator)
		{
			result = new ToolStripSeparator();
		}
		else if (comp is ToolStripLabel)
		{
			ToolStripLabel toolStripLabel = (ToolStripLabel)comp;
			ToolStripLabel toolStripLabel2 = new ToolStripLabel(toolStripLabel.Text, toolStripLabel.Image, toolStripLabel.IsLink);
			toolStripLabel2.Font = toolStripLabel.Font;
			toolStripLabel2.ForeColor = toolStripLabel.ForeColor;
			result = toolStripLabel2;
		}
		else if (comp is ToolStripPanelItem)
		{
			ToolStripPanelItem toolStripPanelItem = comp as ToolStripPanelItem;
			ToolStripPanelItem toolStripPanelItem2 = new ToolStripPanelItem();
			toolStripPanelItem2.RowCount = toolStripPanelItem.RowCount;
			toolStripPanelItem2.GroupedButtons = toolStripPanelItem.GroupedButtons;
			toolStripPanelItem2.ToolStrip.Items.AddRange(GetReflectableItems(toolStripPanelItem.ToolStrip, bExactCopy: true).ToArray());
			result = toolStripPanelItem2;
		}
		else if (comp is ToolStripGallery)
		{
			result = new QuickGallery((ToolStripGallery)comp);
		}
		else if (comp is ToolStripEx)
		{
			result = new QuickToolstripReflectable((ToolStripEx)comp);
		}
		return result;
	}

	private static List<ToolStripItem> GetReflectableItems(ToolStripEx reflectedToolStrip)
	{
		return GetReflectableItems(reflectedToolStrip, bExactCopy: false);
	}

	private static List<ToolStripItem> GetReflectableItems(ToolStripEx reflectedToolStrip, bool bExactCopy)
	{
		List<ToolStripItem> list = new List<ToolStripItem>();
		ToolStripItemCollection items = reflectedToolStrip.GetItems();
		foreach (ToolStripItem item in items)
		{
			ToolStripItem itemToReflect = GetItemToReflect(item, bExactCopy);
			if (itemToReflect != null)
			{
				list.Add(itemToReflect);
			}
		}
		return list;
	}

	public void Reset()
	{
		if (m_reflectedToolStrip != null)
		{
			Image = m_reflectedToolStrip.Image;
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedToolStrip;
	}
}
