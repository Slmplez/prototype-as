using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonTabGroupDesigner : ControlDesigner
{
	private RibbonTabGroup m_control;

	private DesignerVerbCollection m_verbs = new DesignerVerbCollection();

	private TabGroupGlyph m_groupGlyph;

	private TabGroupBehavior m_groupBehavior;

	public override DesignerVerbCollection Verbs => m_verbs;

	public event AddNewToolStripItemEventHandler AddNewToolStripItem;

	public event ToolStripItemEventHandler GroupClicked
	{
		add
		{
			m_groupBehavior.GroupClicked += value;
		}
		remove
		{
			m_groupBehavior.GroupClicked -= value;
		}
	}

	public event NewItemDroppedAtSingleItemGroupEventHandler AddNewSingleItem
	{
		add
		{
			m_groupBehavior.NewItemDroppedAtSingleItemGroup += value;
		}
		remove
		{
			m_groupBehavior.NewItemDroppedAtSingleItemGroup -= value;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonTabGroup)component;
		m_verbs.Add(new DesignerVerb("Add tab item", AddTabItem));
		m_verbs.Add(new DesignerVerb("Add toolstrip button", AddButton));
		m_verbs.Add(new DesignerVerb("Add toolstrip label", AddLabel));
		m_verbs.Add(new DesignerVerb("Add toolstrip separator", AddSeparator));
		m_verbs.Add(new DesignerVerb("Add toolstrip combobox", AddCombobox));
		m_verbs.Add(new DesignerVerb("Add toolstrip textbox", AddTextbox));
		m_verbs.Add(new DesignerVerb("Add toolstrip progressbar", AddProgressBar));
		m_groupBehavior = new TabGroupBehavior(m_control, base.BehaviorService);
		m_groupGlyph = new TabGroupGlyph(m_control, base.BehaviorService, m_groupBehavior);
		ToolStripExService.Get(component.Site);
	}

	protected override bool GetHitTest(Point point)
	{
		return true;
	}

	public override GlyphCollection GetGlyphs(GlyphSelectionType selectiontype)
	{
		GlyphCollection glyphs = base.GetGlyphs(selectiontype);
		glyphs.Add(m_groupGlyph);
		return glyphs;
	}

	public void AddTabItem(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(RibbonTabItem)));
		}
	}

	public void AddButton(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripButton)));
		}
	}

	public void AddLabel(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripLabel)));
		}
	}

	public void AddSeparator(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripSeparator)));
		}
	}

	public void AddCombobox(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripComboBox)));
		}
	}

	public void AddTextbox(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripTextBox)));
		}
	}

	public void AddProgressBar(object sender, EventArgs e)
	{
		if (this.AddNewToolStripItem != null)
		{
			this.AddNewToolStripItem(m_control, new AddNewToolStripItemEventArgs(typeof(ToolStripProgressBar)));
		}
	}
}
