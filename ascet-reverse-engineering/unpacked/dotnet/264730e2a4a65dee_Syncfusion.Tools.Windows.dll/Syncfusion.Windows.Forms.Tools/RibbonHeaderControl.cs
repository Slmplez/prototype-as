using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[Designer(typeof(RibbonHeaderControlDesigner))]
public class RibbonHeaderControl : UserControl, IRibbonHeaderControl
{
	private const int DEF_EMPTY_GROUP_WIDTH = 80;

	private const int DEF_TOOLSTRIPCONTROLHOST_ADD_WIDTH = 2;

	private Office12ToolStripRenderer m_renderer;

	private TabGroupsCollection m_groups = new TabGroupsCollection();

	private RibbonTabItem m_activetTab;

	private bool m_bTabChanging;

	private bool m_bFillWidthWithItems;

	private Color m_clrCaption1 = RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR1;

	private Color m_clrCaption2 = RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR2;

	private Color m_clrGroupsCaptionFont = RibbonTabGroup.DEF_INITIAL_CAPTION_FONT_COLOR;

	private IContainer components;

	public TabGroupsCollection Groups => m_groups;

	[DefaultValue(false)]
	public bool FillWidthWithItems
	{
		get
		{
			return m_bFillWidthWithItems;
		}
		set
		{
			if (m_bFillWidthWithItems != value)
			{
				m_bFillWidthWithItems = value;
				PerformLayout();
			}
		}
	}

	public Color GroupsCaptionColor1
	{
		get
		{
			return m_clrCaption1;
		}
		set
		{
			m_clrCaption1 = value;
			foreach (RibbonTabGroup group in Groups)
			{
				group.CaptionColor1 = m_clrCaption1;
			}
		}
	}

	public Color GroupsCaptionColor2
	{
		get
		{
			return m_clrCaption2;
		}
		set
		{
			m_clrCaption2 = value;
			foreach (RibbonTabGroup group in Groups)
			{
				group.CaptionColor2 = m_clrCaption2;
			}
		}
	}

	public Color GroupsCaptionFontColor
	{
		get
		{
			return m_clrGroupsCaptionFont;
		}
		set
		{
			m_clrGroupsCaptionFont = value;
			foreach (RibbonTabGroup group in Groups)
			{
				group.CaptionFontColor = m_clrGroupsCaptionFont;
			}
		}
	}

	public event RibbonTabItemEventHandler RibbonTabItemAdded;

	public event RibbonTabItemChangingEventHandler TabChanging;

	public event RibbonTabItemChangedEventHandler TabChanged;

	public RibbonHeaderControl()
	{
		m_renderer = new Office12ToolStripRenderer(Office12ToolStripRenderer.ERENDERTYPE.TabBar);
		m_groups.GroupAdded += OnGroupAdded;
		m_groups.GroupRemoved += OnGroupRemoved;
	}

	public RibbonTabGroup AddGroup()
	{
		return AddGroup(new RibbonTabGroup());
	}

	public RibbonTabGroup AddGroup(RibbonTabGroup group)
	{
		if (group != null)
		{
			m_groups.Add(group);
		}
		return group;
	}

	public RibbonTabItem AddTabItem()
	{
		return (RibbonTabItem)AddItem(new RibbonTabItem());
	}

	public ToolStripItem AddItem(ToolStripItem item)
	{
		if (item != null)
		{
			return AddItem(item, AddGroup());
		}
		return null;
	}

	public RibbonTabItem AddTabItem(RibbonTabGroup group)
	{
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		return (RibbonTabItem)AddItem(new RibbonTabItem(), group);
	}

	public ToolStripItem AddItem(ToolStripItem item, RibbonTabGroup group)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		group.Items.Add(item);
		return item;
	}

	public Control GetParentForChildsTransparentRendering()
	{
		if (base.Parent is IRibbonHeaderControl ribbonHeaderControl)
		{
			return ribbonHeaderControl.GetParentForChildsTransparentRendering();
		}
		return this;
	}

	public Control GetTabsHeader()
	{
		return this;
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		int i = 0;
		int num = 0;
		for (int count = m_groups.Count; i < count; i++)
		{
			if (m_groups[i] is RibbonTabGroup ribbonTabGroup)
			{
				int num2 = ribbonTabGroup.GetPreferredSize(Size.Empty).Width;
				ribbonTabGroup.Height = base.ClientSize.Height;
				ribbonTabGroup.Width = num2;
				ribbonTabGroup.Left = num;
				num += num2;
			}
		}
		Invalidate(invalidateChildren: true);
	}

	protected virtual bool OnTabChanging(RibbonTabItem oldTab, RibbonTabItem newTab)
	{
		RibbonTabItemChangingEventArgs e = new RibbonTabItemChangingEventArgs(oldTab, newTab);
		if (this.TabChanging != null)
		{
			this.TabChanging(this, e);
		}
		return !e.Cancel;
	}

	protected virtual void OnTabChanged(RibbonTabItem oldTab, RibbonTabItem newTab)
	{
		if (oldTab != null && oldTab.Page != null)
		{
			oldTab.Page.Visible = false;
		}
		if (newTab != null && newTab.Page != null)
		{
			newTab.Page.Visible = true;
		}
		if (this.TabChanged != null)
		{
			this.TabChanged(this, new RibbonTabItemChangedEventArgs(oldTab, newTab));
		}
	}

	private void InitItem(RibbonTabItem ribbonTabItem)
	{
		if (ribbonTabItem != null)
		{
			ribbonTabItem.CheckStateChanged += OnTabItemCheckStateChanged;
			if (ribbonTabItem.CheckState == CheckState.Checked)
			{
				OnTabItemCheckStateChanged(ribbonTabItem, EventArgs.Empty);
			}
			else if (m_activetTab == null)
			{
				ribbonTabItem.CheckState = CheckState.Checked;
			}
			if (this.RibbonTabItemAdded != null)
			{
				this.RibbonTabItemAdded(this, new RibbonTabItemEventArgs(ribbonTabItem));
			}
		}
	}

	public void OnTabItemCheckStateChanged(object sender, EventArgs e)
	{
		if (!(sender is RibbonTabItem ribbonTabItem) || m_bTabChanging)
		{
			return;
		}
		m_bTabChanging = true;
		if (ribbonTabItem.CheckState == CheckState.Checked)
		{
			RibbonTabItem activetTab = m_activetTab;
			if (OnTabChanging(activetTab, ribbonTabItem))
			{
				if (activetTab != null)
				{
					activetTab.Checked = false;
				}
				m_activetTab = ribbonTabItem;
				OnTabChanged(activetTab, ribbonTabItem);
			}
			else
			{
				ribbonTabItem.CheckState = CheckState.Unchecked;
			}
		}
		else
		{
			ribbonTabItem.CheckState = CheckState.Checked;
		}
		m_bTabChanging = false;
	}

	public void OnGroupAdded(object sender, RibbonTabGroupEventArgs args)
	{
		RibbonTabGroup ribbonTabGroup = args.Group;
		if (ribbonTabGroup == null)
		{
			return;
		}
		ribbonTabGroup.Renderer = m_renderer;
		ribbonTabGroup.ItemAdded += OnItemAdded;
		ribbonTabGroup.ItemRemoved += OnItemRemoved;
		foreach (ToolStripItem item in ribbonTabGroup.Items)
		{
			InitItem(item as RibbonTabItem);
		}
		base.Controls.Add(ribbonTabGroup);
	}

	public void OnGroupRemoved(object sender, RibbonTabGroupEventArgs args)
	{
	}

	public void OnItemAdded(object sender, ToolStripItemEventArgs e)
	{
		if (e.Item is RibbonTabItem ribbonTabItem)
		{
			InitItem(ribbonTabItem);
		}
	}

	public void OnItemRemoved(object sender, ToolStripItemEventArgs e)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.Name = "RibbonHeaderControl";
		base.Size = new System.Drawing.Size(517, 41);
		base.ResumeLayout(false);
	}
}
