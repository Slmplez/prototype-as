using System.ComponentModel.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonTabControlActionList : DesignerActionList
{
	private RibbonTabControlDesigner m_designer;

	private DesignerActionItemCollection m_itemsList = new DesignerActionItemCollection();

	private RibbonTabControl m_control;

	public string Name
	{
		get
		{
			return m_control.Name;
		}
		set
		{
			m_control.Name = value;
		}
	}

	public DockStyle Dock
	{
		get
		{
			return m_control.Dock;
		}
		set
		{
			m_control.Dock = value;
		}
	}

	public bool FillWidthWithItems
	{
		get
		{
			return m_control.FillWidthWithItems;
		}
		set
		{
			m_control.FillWidthWithItems = value;
		}
	}

	public RibbonTabControlActionList(RibbonTabControl control, RibbonTabControlDesigner designer)
		: base(control)
	{
		m_designer = designer;
		m_control = control;
		m_itemsList.Add(new DesignerActionHeaderItem("Essential Tools - RibbonTabControl"));
		m_itemsList.Add(new DesignerActionPropertyItem("Name", "Name"));
		m_itemsList.Add(new DesignerActionPropertyItem("Dock", "Dock"));
		m_itemsList.Add(new DesignerActionPropertyItem("FillWidthWithItems", "Fill Width With Items"));
		m_itemsList.Add(new DesignerActionHeaderItem("New items", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddGroup", "Add group", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddTabItem", "Add tab item", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddButton", "Add button", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddLabel", "Add label", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddSeparator", "Add separator", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddCombobox", "Add combobox", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddTextbox", "Add textbox", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddProgressBar", "Add progress bar", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddSplitButton", "Add split button", "New Items"));
		m_itemsList.Add(new DesignerActionMethodItem(this, "AddDropdownButton", "Add dropdown button", "New Items"));
	}

	public override DesignerActionItemCollection GetSortedActionItems()
	{
		return m_itemsList;
	}

	public void AddGroup()
	{
		m_designer.AddNewGroup();
	}

	public void AddTabItem()
	{
		m_designer.AddItem(typeof(RibbonTabItem));
	}

	public void AddButton()
	{
		m_designer.AddItem(typeof(ToolStripButton));
	}

	public void AddLabel()
	{
		m_designer.AddItem(typeof(ToolStripLabel));
	}

	public void AddSeparator()
	{
		m_designer.AddItem(typeof(ToolStripSeparator));
	}

	public void AddCombobox()
	{
		m_designer.AddItem(typeof(ToolStripComboBox));
	}

	public void AddTextbox()
	{
		m_designer.AddItem(typeof(ToolStripTextBox));
	}

	public void AddProgressBar()
	{
		m_designer.AddItem(typeof(ToolStripProgressBar));
	}

	public void AddSplitButton()
	{
		m_designer.AddItem(typeof(ToolStripSplitButton));
	}

	public void AddDropdownButton()
	{
		m_designer.AddItem(typeof(ToolStripDropDownButton));
	}
}
