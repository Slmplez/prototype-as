using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar.Design;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;

namespace Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar;

[ToolboxItem(false)]
[Designer(typeof(RibbonTabBarHeaderDesigner))]
public class RibbonTabBarHeader : UserControl, IRibbonHeaderControl
{
	private IContainer components;

	private ToolStrip pnlLeft;

	private ToolStrip pnlTop;

	private RibbonHeaderControl ribbonHeader;

	protected internal RibbonHeaderControl TabHeaderControl => ribbonHeader;

	public ToolStrip LeftPanel => pnlLeft;

	public ToolStrip TopPanel => pnlTop;

	public TabGroupsCollection Groups => ribbonHeader.Groups;

	public bool FillWidthWithItems
	{
		get
		{
			return ribbonHeader.FillWidthWithItems;
		}
		set
		{
			ribbonHeader.FillWidthWithItems = value;
		}
	}

	public Color GroupsCaptionColor1
	{
		get
		{
			return ribbonHeader.GroupsCaptionColor1;
		}
		set
		{
			ribbonHeader.GroupsCaptionColor1 = value;
		}
	}

	public Color GroupsCaptionColor2
	{
		get
		{
			return ribbonHeader.GroupsCaptionColor2;
		}
		set
		{
			ribbonHeader.GroupsCaptionColor2 = value;
		}
	}

	public Color GroupsCaptionFontColor
	{
		get
		{
			return ribbonHeader.GroupsCaptionFontColor;
		}
		set
		{
			ribbonHeader.GroupsCaptionFontColor = value;
		}
	}

	public event RibbonTabItemEventHandler RibbonTabItemAdded
	{
		add
		{
			ribbonHeader.RibbonTabItemAdded += value;
		}
		remove
		{
			ribbonHeader.RibbonTabItemAdded -= value;
		}
	}

	public event RibbonTabItemChangingEventHandler TabChanging
	{
		add
		{
			ribbonHeader.TabChanging += value;
		}
		remove
		{
			ribbonHeader.TabChanging -= value;
		}
	}

	public event RibbonTabItemChangedEventHandler TabChanged
	{
		add
		{
			ribbonHeader.TabChanged += value;
		}
		remove
		{
			ribbonHeader.TabChanged -= value;
		}
	}

	public RibbonTabBarHeader()
	{
		InitializeComponent();
		pnlLeft.Renderer = new RibbonTabBarRenderer();
		pnlTop.Renderer = new RibbonTabBarRenderer();
	}

	public RibbonTabGroup AddGroup()
	{
		return ribbonHeader.AddGroup();
	}

	public RibbonTabGroup AddGroup(RibbonTabGroup group)
	{
		return ribbonHeader.AddGroup(group);
	}

	public RibbonTabItem AddTabItem()
	{
		return ribbonHeader.AddTabItem();
	}

	public ToolStripItem AddItem(ToolStripItem item)
	{
		return ribbonHeader.AddItem(item);
	}

	public RibbonTabItem AddTabItem(RibbonTabGroup group)
	{
		return ribbonHeader.AddTabItem(group);
	}

	public ToolStripItem AddItem(ToolStripItem item, RibbonTabGroup group)
	{
		return ribbonHeader.AddItem(item, group);
	}

	public Control GetParentForChildsTransparentRendering()
	{
		return this;
	}

	public Control GetTabsHeader()
	{
		return ribbonHeader;
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
		this.pnlLeft = new System.Windows.Forms.ToolStrip();
		this.pnlTop = new System.Windows.Forms.ToolStrip();
		this.ribbonHeader = new Syncfusion.Windows.Forms.Tools.RibbonHeaderControl();
		base.SuspendLayout();
		this.pnlLeft.AutoSize = false;
		this.pnlLeft.CanOverflow = false;
		this.pnlLeft.Dock = System.Windows.Forms.DockStyle.Left;
		this.pnlLeft.ForeColor = System.Drawing.Color.MidnightBlue;
		this.pnlLeft.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
		this.pnlLeft.ImageScalingSize = new System.Drawing.Size(60, 60);
		this.pnlLeft.Location = new System.Drawing.Point(0, 0);
		this.pnlLeft.Name = "pnlLeft";
		this.pnlLeft.Size = new System.Drawing.Size(80, 89);
		this.pnlLeft.TabIndex = 0;
		this.pnlTop.AutoSize = false;
		this.pnlTop.ForeColor = System.Drawing.Color.MidnightBlue;
		this.pnlTop.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden;
		this.pnlTop.Location = new System.Drawing.Point(80, 0);
		this.pnlTop.Name = "pnlTop";
		this.pnlTop.Size = new System.Drawing.Size(815, 30);
		this.pnlTop.TabIndex = 1;
		this.ribbonHeader.Dock = System.Windows.Forms.DockStyle.Fill;
		this.ribbonHeader.FillWidthWithItems = false;
		this.ribbonHeader.Location = new System.Drawing.Point(80, 30);
		this.ribbonHeader.Name = "ribbonHeader";
		this.ribbonHeader.Size = new System.Drawing.Size(815, 59);
		this.ribbonHeader.TabIndex = 2;
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.Controls.Add(this.ribbonHeader);
		base.Controls.Add(this.pnlTop);
		base.Controls.Add(this.pnlLeft);
		base.Name = "RibbonTabBarHeader";
		base.Size = new System.Drawing.Size(895, 89);
		base.ResumeLayout(false);
	}
}
