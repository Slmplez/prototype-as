using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Collections;

namespace Syncfusion.Windows.Forms.Tools;

internal class BottomToolstrip : ToolStrip, ILayoutSupport
{
	private class BottomToolstripLayoutEngine : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			if (container is BottomToolstrip { Parent: RibbonControlAdv { ShowQuickPanelBelowRibbon: not false } } bottomToolstrip)
			{
				bottomToolstrip.m_quickItems.Owner = bottomToolstrip;
				bottomToolstrip.ClientSize = new Size(bottomToolstrip.ClientSize.Width, RibbonControlAdvHeader.GetItemsSize(bottomToolstrip.m_quickItems).Height + bottomToolstrip.Padding.Vertical);
				Rectangle bounds = new Rectangle
				{
					Y = bottomToolstrip.Padding.Top,
					X = bottomToolstrip.Padding.Left,
					Width = bottomToolstrip.ClientSize.Width - bottomToolstrip.Padding.Horizontal,
					Height = bottomToolstrip.ClientSize.Height - bottomToolstrip.Padding.Vertical
				};
				bottomToolstrip.m_quickItems.Layout(bounds);
			}
			return false;
		}
	}

	private bool m_ShowQuickItemsDropDownButton = true;

	private ToolStripItem m_fakeHiddenItem;

	private RibbonControlAdvHeader.ToolStripItemCollectionFiltered m_filteredItems;

	private bool m_bHideItems;

	private RibbonControlAdvHeader.QuickItemsCollection m_quickItems;

	private BottomToolstripLayoutEngine m_layoutEngine;

	private bool m_bReadyForLayout;

	[DefaultValue(true)]
	internal bool ShowQuickItemsDropDownButton
	{
		get
		{
			return m_ShowQuickItemsDropDownButton;
		}
		set
		{
			if (m_ShowQuickItemsDropDownButton != value)
			{
				m_ShowQuickItemsDropDownButton = value;
				SetDisplayedItems();
			}
		}
	}

	public override Rectangle DisplayRectangle
	{
		get
		{
			Rectangle displayRectangle = base.DisplayRectangle;
			displayRectangle.Width += displayRectangle.X;
			displayRectangle.X = 0;
			return displayRectangle;
		}
	}

	public override ToolStripItemCollection Items
	{
		get
		{
			ToolStripItemCollection toolStripItemCollection = base.Items;
			if (m_bHideItems && !base.Disposing)
			{
				if (m_filteredItems == null)
				{
					m_filteredItems = new RibbonControlAdvHeader.ToolStripItemCollectionFiltered(this, toolStripItemCollection);
				}
				toolStripItemCollection = m_filteredItems;
			}
			return toolStripItemCollection;
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_bReadyForLayout)
			{
				return m_layoutEngine;
			}
			return base.LayoutEngine;
		}
	}

	public BottomToolstrip(RibbonControlAdvHeader.QuickItemsCollection quickItems)
	{
		m_quickItems = quickItems;
		m_quickItems.ItemAdded += OnQuickItemsChanged;
		m_quickItems.ItemRemoved += OnQuickItemsChanged;
		m_layoutEngine = new BottomToolstripLayoutEngine();
		m_fakeHiddenItem = new ToolStripButton();
		m_fakeHiddenItem.Available = false;
		Items.Add(m_fakeHiddenItem);
		base.Margin = new Padding(4, 2, 4, 0);
		base.Padding = new Padding(2, 2, 2, 2);
		base.CanOverflow = false;
		m_bReadyForLayout = true;
	}

	internal void UpdateRenderer()
	{
		if (base.Parent is RibbonControlAdv ribbonControlAdv)
		{
			switch (ribbonControlAdv.OfficeColorScheme)
			{
			case ToolStripEx.ColorScheme.Silver:
				base.Renderer = new Office12ToolStripRenderer(new Office12ColorTable());
				break;
			case ToolStripEx.ColorScheme.Blue:
				base.Renderer = new Office12ToolStripRenderer(new OfficeBlue());
				break;
			case ToolStripEx.ColorScheme.Black:
				base.Renderer = new Office12ToolStripRenderer(new OfficeBlack());
				break;
			default:
				base.Renderer = new Office12ToolStripRenderer(Office12ColorTable.ManagedColors);
				break;
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_filteredItems != null)
			{
				m_filteredItems.Dispose();
				m_filteredItems = null;
			}
			base.Renderer = null;
		}
		base.Dispose(disposing);
	}

	protected override void SetDisplayedItems()
	{
		m_bHideItems = true;
		base.SetDisplayedItems();
		m_bHideItems = false;
		if (base.Parent is RibbonControlAdv ribbonControlAdv)
		{
			if (ribbonControlAdv.HeaderInternal.HasOverflowItems)
			{
				DisplayedItems.Add(ribbonControlAdv.HeaderInternal.QuickOverflowButton);
			}
			else if (ShowQuickItemsDropDownButton)
			{
				DisplayedItems.Add(ribbonControlAdv.HeaderInternal.QuickAccessButton);
			}
		}
	}

	public new void SetItemLocation(ToolStripItem item, Point location)
	{
		if (item.Owner == this)
		{
			base.SetItemLocation(item, location);
		}
	}

	public ToolStripItem GetItem(ToolStripItem item)
	{
		if (RibbonControlAdvHeader.GetItemParent(item) != this)
		{
			return m_fakeHiddenItem;
		}
		return item;
	}

	private void OnQuickItemsChanged(object sender, ListItemEventArgs<ToolStripItem> e)
	{
		PerformLayout();
	}
}
