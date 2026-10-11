using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(RibbonTabControlDesigner))]
[ToolboxBitmap(typeof(RibbonTabControl), "ToolboxIcons.RibbonTabControl.bmp")]
[ToolboxItem(false)]
public class RibbonTabControl : UserControl
{
	private IRibbonHeaderControl m_header;

	private IContainer components;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TabGroupsCollection Groups => m_header.Groups;

	public Size HeaderSize
	{
		get
		{
			return ((Control)m_header).Size;
		}
		set
		{
			((Control)m_header).Size = value;
		}
	}

	[DefaultValue(DockStyle.Top)]
	public DockStyle HeaderDock
	{
		get
		{
			return ((Control)m_header).Dock;
		}
		set
		{
			((Control)m_header).Dock = value;
		}
	}

	[DefaultValue(false)]
	public bool FillWidthWithItems
	{
		get
		{
			return m_header.FillWidthWithItems;
		}
		set
		{
			m_header.FillWidthWithItems = value;
		}
	}

	public Color GroupsCaptionColor1
	{
		get
		{
			return Header.GroupsCaptionColor1;
		}
		set
		{
			Header.GroupsCaptionColor1 = value;
		}
	}

	public Color GroupsCaptionColor2
	{
		get
		{
			return Header.GroupsCaptionColor2;
		}
		set
		{
			Header.GroupsCaptionColor2 = value;
		}
	}

	public Color GroupsCaptionFontColor
	{
		get
		{
			return Header.GroupsCaptionFontColor;
		}
		set
		{
			Header.GroupsCaptionFontColor = value;
		}
	}

	protected internal IRibbonHeaderControl Header => m_header;

	public event RibbonTabItemChangingEventHandler TabChanging
	{
		add
		{
			m_header.TabChanging += value;
		}
		remove
		{
			m_header.TabChanging -= value;
		}
	}

	public event RibbonTabItemChangedEventHandler TabChanged
	{
		add
		{
			m_header.TabChanged += value;
		}
		remove
		{
			m_header.TabChanged -= value;
		}
	}

	public RibbonTabControl()
	{
		m_header = GetHeader();
		if (!(m_header is Control control))
		{
			throw new Exception("Header must be a control.");
		}
		control.Dock = DockStyle.Top;
		control.Location = new Point(0, 0);
		control.Name = "ribbonHeaderControl";
		control.TabIndex = 0;
		m_header.RibbonTabItemAdded += OnRibbonTabItemAdded;
		base.Controls.Add(control);
	}

	public RibbonTabGroup AddGroup()
	{
		return m_header.AddGroup();
	}

	public RibbonTabGroup AddGroup(RibbonTabGroup group)
	{
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		return m_header.AddGroup(group);
	}

	public RibbonTabItem AddTabItem()
	{
		return m_header.AddTabItem();
	}

	public ToolStripItem AddItem(ToolStripItem item)
	{
		if (item == null)
		{
			throw new ArgumentNullException("item");
		}
		return m_header.AddItem(item);
	}

	public RibbonTabItem AddTabItem(RibbonTabGroup group)
	{
		if (group == null)
		{
			throw new ArgumentNullException("group");
		}
		return m_header.AddTabItem(group);
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
		return m_header.AddItem(item, group);
	}

	protected internal RibbonTabGroup GetGroupAtScreenPoint(Point p)
	{
		if (p.IsEmpty)
		{
			throw new ArgumentOutOfRangeException("p");
		}
		Point pt = ((Control)m_header).PointToClient(p);
		return ((Control)m_header).GetChildAtPoint(pt) as RibbonTabGroup;
	}

	private void HidePages()
	{
		foreach (Control control in base.Controls)
		{
			if (control is RibbonTabPage)
			{
				RibbonTabPage ribbonTabPage = (RibbonTabPage)control;
				ribbonTabPage.Visible = false;
			}
		}
	}

	protected virtual IRibbonHeaderControl GetHeader()
	{
		return new RibbonHeaderControl();
	}

	private void OnRibbonTabItemAdded(object sender, RibbonTabItemEventArgs args)
	{
		RibbonTabPage page = args.Item.Page;
		if (!base.Controls.Contains(page))
		{
			base.Controls.Add(page);
		}
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		HidePages();
		foreach (RibbonTabGroup group in Groups)
		{
			foreach (ToolStripItem item in group.Items)
			{
				if (item is RibbonTabItem { Checked: not false, Page: not null } ribbonTabItem)
				{
					ribbonTabItem.Page.Visible = true;
					return;
				}
			}
		}
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (e.Control is RibbonTabPage ribbonTabPage)
		{
			base.Controls.SetChildIndex(ribbonTabPage, 0);
			ribbonTabPage.Dock = DockStyle.Fill;
		}
		if (e.Control is RibbonHeaderControl)
		{
			base.Controls.SetChildIndex(e.Control, base.Controls.Count - 1);
		}
	}

	public bool ShouldSerializeGroupsCaptionColor1()
	{
		return GroupsCaptionColor1 != RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR1;
	}

	public void ResetGroupsCaptionColor1()
	{
		GroupsCaptionColor1 = RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR1;
	}

	public bool ShouldSerializeGroupsCaptionColor2()
	{
		return GroupsCaptionColor2 != RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR2;
	}

	public void ResetGroupsCaptionColor2()
	{
		GroupsCaptionColor2 = RibbonTabGroup.DEF_INITIAL_CAPTION_COLOR2;
	}

	public bool ShouldSerializeGroupsCaptionFontColor()
	{
		return GroupsCaptionFontColor != RibbonTabGroup.DEF_INITIAL_CAPTION_FONT_COLOR;
	}

	public void ResetGroupsCaptionFontColor()
	{
		GroupsCaptionFontColor = RibbonTabGroup.DEF_INITIAL_CAPTION_FONT_COLOR;
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
		base.Name = "RibbonTabControl";
		base.Size = new System.Drawing.Size(490, 303);
		base.ResumeLayout(false);
	}
}
