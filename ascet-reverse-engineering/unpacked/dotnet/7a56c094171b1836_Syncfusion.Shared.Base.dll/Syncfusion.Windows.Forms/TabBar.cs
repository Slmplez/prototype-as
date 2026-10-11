using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
[DefaultProperty("Text")]
[DefaultEvent("SelectedIndexChanged")]
[Designer(typeof(TabBarDesigner), typeof(IDesigner))]
public class TabBar : ArrowButtonBar, IInternalTabParent, IInternalTabBarParent, IInternalButtonParent, IThemedControl, IInternalSplitterParent, IScrollBarContainer
{
	private InternalTabBar tabBar;

	private Brush tabBrush = SystemBrushes.Control;

	private Font boldFont;

	private Font underlineFont;

	private int tabFolderDelta = 6;

	private Graphics tempGraphics;

	private Graphics paintGraphics;

	private Cursor overrideTabCursor;

	private Cursor overrideSplitCursor;

	private InternalSplitter splitter;

	private int splitPos = 80;

	[DocumentationExclude]
	internal Control scrollBar;

	private ImageList imageList;

	[DocumentationExclude]
	internal int selectedIndex = -1;

	private bool scrolled;

	private Office2007Theme m_colorScheme;

	private TabBarSplitterStyle m_style;

	private Office2007Colors m_office2007ColorTable;

	private bool inSelectedIndex;

	Control IScrollBarContainer.ScrollBar
	{
		get
		{
			return scrollBar;
		}
		set
		{
			if (value != scrollBar)
			{
				base.Controls.Remove(scrollBar);
				scrollBar = value;
				base.Controls.Add(scrollBar);
			}
		}
	}

	Cursor IInternalTabBarParent.OverrideCursor
	{
		get
		{
			return overrideTabCursor;
		}
		set
		{
			if (overrideTabCursor != value)
			{
				overrideTabCursor = value;
				if (!base.DesignMode && base.IsHandleCreated)
				{
					NativeMethods.SendMessage(base.Handle, 32, (int)base.Handle, 1);
				}
			}
		}
	}

	Cursor IInternalSplitterParent.OverrideCursor
	{
		get
		{
			return overrideTabCursor;
		}
		set
		{
			if (overrideSplitCursor != value)
			{
				overrideSplitCursor = value;
				if (base.IsHandleCreated)
				{
					NativeMethods.SendMessage(base.Handle, 32, (int)base.Handle, 1);
				}
			}
		}
	}

	[Description("Delta used for drawing the tabs.")]
	[Browsable(true)]
	[DefaultValue(6)]
	public int TabFolderDelta
	{
		get
		{
			return tabFolderDelta;
		}
		set
		{
			if (tabFolderDelta != value)
			{
				tabFolderDelta = value;
				Refresh();
			}
		}
	}

	[Browsable(true)]
	[Description("Scrolling tabs by pixel or whole tabs.")]
	[DefaultValue(InternalTabBarScrollBehavior.ScrollPixels)]
	public InternalTabBarScrollBehavior ScrollBehavior
	{
		get
		{
			return TabBarChild.ScrollBehavior;
		}
		set
		{
			TabBarChild.ScrollBehavior = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public InternalTabBar TabBarChild
	{
		get
		{
			if (tabBar == null)
			{
				tabBar = OnCreateTabBarChild();
				tabBar.Dirty = true;
			}
			return tabBar;
		}
		set
		{
			if (tabBar != value)
			{
				tabBar = value;
				if (tabBar != null)
				{
					tabBar.Dirty = true;
				}
				PerformLayout();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override ISite Site
	{
		get
		{
			return base.Site;
		}
		set
		{
			ISite site = Site;
			InternalTabCollection tabs = TabBarChild.Tabs;
			if (value == null && site != null)
			{
				IContainer container = site.Container;
				if (container == null)
				{
					return;
				}
				foreach (InternalTab item in tabs)
				{
					if (item != null && item.Site != null)
					{
						container.Remove(item);
					}
				}
				base.Site = value;
			}
			else
			{
				if (value == null || site != null)
				{
					return;
				}
				base.Site = value;
				IContainer container = value.Container;
				if (container == null)
				{
					return;
				}
				foreach (InternalTab item2 in tabs)
				{
					if (item2 != null && item2.Site == null)
					{
						container.Add(item2);
					}
				}
			}
		}
	}

	[Browsable(true)]
	[Description("Specify the width of the tab bar relative to the width of client bounds.")]
	[DefaultValue(80)]
	public int RelativeWidth
	{
		get
		{
			return splitPos;
		}
		set
		{
			if (splitPos != value)
			{
				splitPos = value;
				PerformLayout();
			}
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	public int SelectedIndex
	{
		get
		{
			return selectedIndex;
		}
		set
		{
			if (value < -1)
			{
				throw new ArgumentException(SR.GetString("InvalidLowBoundArgumentEx", "value", value.ToString(), "-1"));
			}
			bool flag = inSelectedIndex;
			inSelectedIndex = true;
			try
			{
				InternalTab tab = null;
				if (TabBarChild.Tabs != null && value >= 0 && value < TabBarChild.Tabs.Count)
				{
					tab = TabBarChild.Tabs[value];
				}
				if (!base.IsHandleCreated && selectedIndex != value)
				{
					if (flag || OnSelectedIndexChanging(value, tab))
					{
						selectedIndex = value;
						if (!flag)
						{
							OnSelectedIndexChanged(value, tab);
						}
					}
				}
				else
				{
					if (selectedIndex == value && TabBarChild.CurrentTab == value)
					{
						return;
					}
					BeginUpdate();
					if (!flag && !OnSelectedIndexChanging(value, tab))
					{
						OnCancelMode(EventArgs.Empty);
					}
					else
					{
						if (TabBarChild.Tabs != null && value >= 0 && value < TabBarChild.Tabs.Count)
						{
							TabBarChild.CurrentTab = value;
							selectedIndex = value;
						}
						else
						{
							selectedIndex = value;
							TabBarChild.CurrentTab = -1;
						}
						base.EnableButtonFlags = tabBar.EnableButtonFlags;
						TabBarChild.InvalidateIfDirty();
						if (!flag)
						{
							OnSelectedIndexChanged(TabBarChild.CurrentTab, tab);
						}
					}
					EndUpdate(refresh: true);
					TabBarChild.RefreshCurrentTab(scroll: true);
				}
			}
			finally
			{
				inSelectedIndex = false;
			}
		}
	}

	[Description("Enable or Disable resizing the tab bar.")]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool Resizable
	{
		get
		{
			return splitter != null;
		}
		set
		{
			if (value != Resizable)
			{
				if (!value)
				{
					splitter = null;
				}
				else
				{
					splitter = OnCreateInternalSplitter();
				}
				PerformLayout();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("List of tabs displayed in tab bar.")]
	public InternalTabCollection Tabs => TabBarChild.Tabs;

	[Description("Specifies the style with which tabBar will appear.")]
	[Category("Appearance")]
	[DefaultValue(TabBarSplitterStyle.Default)]
	public TabBarSplitterStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			if (m_style != value)
			{
				m_style = value;
				OnStyleChanged();
				PerformLayout();
				Invalidate();
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Description("Gets or sets office 2007 color scheme.")]
	[Category("Appearance")]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				OnStyleChanged();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	public override DisplayArrowButtons DisplayArrowButtons
	{
		get
		{
			return base.DisplayArrowButtons;
		}
		set
		{
			if (base.DisplayArrowButtons != value)
			{
				base.DisplayArrowButtons = value;
				InternalButton[] buttons = base.ButtonBarChild.Buttons;
				for (int i = 0; i < buttons.Length; i++)
				{
					InternalArrowButton internalArrowButton = (InternalArrowButton)buttons[i];
					internalArrowButton.Style = Style;
					internalArrowButton.Office2007ColorScheme = Office2007ColorScheme;
				}
			}
		}
	}

	[DefaultValue(null)]
	public ImageList ImageList
	{
		get
		{
			return imageList;
		}
		set
		{
			if (imageList != value)
			{
				imageList = value;
				OnImageListChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object SelectedItem
	{
		get
		{
			int num = SelectedIndex;
			if (num == -1 || num >= TabCount)
			{
				return null;
			}
			return GetItem(num);
		}
		set
		{
			int num = FindItem(value);
			SelectedIndex = num;
		}
	}

	[DefaultValue(false)]
	public new bool ShowToolTips
	{
		get
		{
			return base.ShowToolTips;
		}
		set
		{
			base.ShowToolTips = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int TabCount => TabBarChild.Tabs.Count;

	[Browsable(false)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	public event SelectedIndexEventHandler SelectedIndexChanged;

	public event SelectedIndexEventHandler SelectedIndexChanging;

	public event TabMovedEventHandler DraggingTab;

	public event EventHandler RelativeWidthChanged;

	public event EventHandler ImageListChanged;

	public TabBar()
	{
	}

	public TabBar(Control scrollBar)
	{
		this.scrollBar = scrollBar;
	}

	void IInternalButtonParent.OnClickedButton(InternalButton button)
	{
		InternalTabBar tabBarChild = TabBarChild;
		if (button is InternalArrowButton internalArrowButton)
		{
			if (tabBarChild.ScrollBehavior == InternalTabBarScrollBehavior.ScrollPixels)
			{
				tabBarChild.Scroll(internalArrowButton.Type, 4);
			}
			else
			{
				tabBarChild.ScrollTab(internalArrowButton.Type);
			}
			base.EnableButtonFlags = tabBarChild.EnableButtonFlags;
		}
		else
		{
			InternalTab tab = button as InternalTab;
			OnClickedTab(tab);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		scrolled = false;
		base.OnMouseDown(e);
	}

	protected virtual void OnClickedTab(InternalTab tab)
	{
		if (tab != null)
		{
			SelectedIndex = Tabs.IndexOf(tab);
			if (scrolled)
			{
				OnCancelMode(EventArgs.Empty);
			}
		}
	}

	void IInternalTabParent.DisposeMeasureTools()
	{
		if (tempGraphics != null)
		{
			tempGraphics.Dispose();
			tempGraphics = null;
		}
		if (boldFont != null)
		{
			boldFont.Dispose();
			boldFont = null;
		}
	}

	void IInternalTabParent.GetMeasureTools(out Graphics g, out Font font, out int delta)
	{
		if (paintGraphics != null)
		{
			g = paintGraphics;
		}
		else if (tempGraphics != null)
		{
			g = tempGraphics;
		}
		else
		{
			g = (tempGraphics = CreateGraphics());
		}
		if (boldFont == null)
		{
			boldFont = FontUtil.CreateFont(Font, FontStyle.Bold);
		}
		font = boldFont;
		delta = tabFolderDelta;
	}

	void IInternalTabParent.GetDrawingTools(InternalTab tab, out Brush fillBrush, out Color textColor, out Font font, out int delta)
	{
		TabBarPage tabBarPage = null;
		SolidBrush solidBrush = null;
		if (tab != null && tab.Cookie != null && tab.Cookie is TabBarPage)
		{
			tabBarPage = tab.Cookie as TabBarPage;
			solidBrush = new SolidBrush(tabBarPage.TabBackColor);
		}
		tabBarPage = tab.Cookie as TabBarPage;
		if (!tab.Enabled)
		{
			textColor = SystemColors.GrayText;
		}
		else
		{
			textColor = tabBarPage?.ForeColor ?? ForeColor;
		}
		if (!tabBarPage.TabEnabled)
		{
			fillBrush = SystemBrushes.Control;
			textColor = SystemColors.GrayText;
			font = tabBarPage.Font;
			delta = tabFolderDelta;
			return;
		}
		textColor = tabBarPage?.ForeColor ?? ForeColor;
		if (tab.Pushed)
		{
			fillBrush = SystemBrushes.Window;
			if (boldFont == null)
			{
				boldFont = FontUtil.CreateFont(Font, FontStyle.Bold);
			}
			font = boldFont;
		}
		else if (tab.Hovered)
		{
			fillBrush = tabBrush;
			if (underlineFont == null)
			{
				underlineFont = FontUtil.CreateFont(Font, FontStyle.Underline);
			}
			font = underlineFont;
		}
		else
		{
			font = Font;
			if (tabBarPage != null && !tabBarPage.ThemesEnabled)
			{
				fillBrush = solidBrush;
			}
			else
			{
				fillBrush = tabBrush;
			}
		}
		if (tab.DragTarget)
		{
			fillBrush = SystemBrushes.Highlight;
			textColor = SystemColors.HighlightText;
		}
		else if (tab.Checked)
		{
			fillBrush = SystemBrushes.Window;
		}
		delta = tabFolderDelta;
	}

	bool IInternalTabBarParent.OnScroll(ArrowType arrowType, int pixels)
	{
		return true;
	}

	void IInternalTabBarParent.OnScrolled()
	{
		scrolled = true;
		base.EnableButtonFlags = TabBarChild.EnableButtonFlags;
	}

	protected virtual void OnDraggingTab(TabMovedEventArgs e)
	{
		if (this.DraggingTab != null)
		{
			this.DraggingTab(this, e);
		}
	}

	bool IInternalTabBarParent.OnDraggingTab(int nTab, int nTarget)
	{
		TabMovedEventArgs e = new TabMovedEventArgs(nTab, nTarget);
		OnDraggingTab(e);
		if (e.Cancel)
		{
			return false;
		}
		InternalTabBar tabBarChild = TabBarChild;
		tabBarChild.IsDragTabMode = true;
		return true;
	}

	void IInternalTabBarParent.OnDraggedTab(int nTab, int nTarget)
	{
		InternalTabBar tabBarChild = TabBarChild;
		tabBarChild.IsDragTabMode = false;
		selectedIndex = -1;
	}

	public virtual void OnMoveSplitter(object sender, int x, int y)
	{
		if (sender == splitter)
		{
			int num = x * 100 / ComputeTabBarBounds().Width;
			if (RightToLeft == RightToLeft.Yes)
			{
				num = -num;
			}
			RelativeWidth = Math.Min(95, Math.Max(5, RelativeWidth + num));
			Update();
		}
	}

	public virtual void OnMovedSplitter(object sender)
	{
		if (sender == splitter)
		{
			OnRelativeWidthChanged(null);
		}
	}

	protected virtual void OnRelativeWidthChanged(EventArgs e)
	{
		if (this.RelativeWidthChanged != null)
		{
			this.RelativeWidthChanged(this, e);
		}
	}

	public virtual void InvalidateSplitter(object sender)
	{
	}

	[DocumentationExclude]
	protected virtual InternalSplitter OnCreateInternalSplitter()
	{
		return new InternalSplitter(this, InternalSplitterKind.HorizontalBar);
	}

	private void WmSetCursor(ref Message m)
	{
		if (m.WParam == base.Handle && ((int)m.LParam & 0xFFFF) == 1)
		{
			OnSetCursor(ref m);
		}
		else
		{
			DefWndProc(ref m);
		}
	}

	[DocumentationExclude]
	protected virtual void OnSetCursor(ref Message m)
	{
		if (overrideSplitCursor != null)
		{
			Cursor.Current = overrideSplitCursor;
		}
		else if (overrideTabCursor != null)
		{
			Cursor.Current = overrideTabCursor;
		}
		else
		{
			Cursor.Current = Cursor;
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (base.DesignMode)
		{
			base.WndProc(ref msg);
			return;
		}
		int msg2 = msg.Msg;
		if (msg2 == 32)
		{
			WmSetCursor(ref msg);
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		shouldPaintButtonBar = false;
		base.OnPaint(pe);
		lock (this)
		{
			InternalTabBar tabBarChild = TabBarChild;
			tabBarChild.Dirty = true;
			paintGraphics = pe.Graphics;
			try
			{
				if (tabBarChild.Bounds.IntersectsWith(pe.ClipRectangle))
				{
					Region clip = pe.Graphics.Clip;
					pe.Graphics.IntersectClip(tabBarChild.Bounds);
					pe.Graphics.FillRectangle(SystemBrushes.ScrollBar, tabBarChild.Bounds);
					tabBarChild.Paint(pe.Graphics, tabFolderDelta);
					pe.Graphics.Clip = clip;
					pe.Graphics.ExcludeClip(tabBarChild.Bounds);
				}
				if (splitter != null && splitter.Bounds.IntersectsWith(pe.ClipRectangle))
				{
					splitter.Style = Style;
					splitter.Paint(pe.Graphics, base.ButtonLook == ButtonLook.Flat);
					pe.Graphics.ExcludeClip(splitter.Bounds);
				}
				if (scrollBar != null && scrollBar.Visible && RightToLeft != RightToLeft.Yes && scrollBar.Bounds.Right < base.ClientRectangle.Right)
				{
					Rectangle bounds = scrollBar.Bounds;
					Rectangle rectangle = new Rectangle(bounds.Right, bounds.Top, base.ClientRectangle.Right - bounds.Right, bounds.Height);
					ControlPaint.DrawSizeGrip(pe.Graphics, SystemColors.ScrollBar, rectangle);
					pe.Graphics.ExcludeClip(rectangle);
				}
				base.ButtonBarChild.Paint(pe.Graphics);
			}
			finally
			{
				paintGraphics = null;
				((IInternalTabParent)this).DisposeMeasureTools();
				tabBarChild.Dirty = false;
			}
		}
	}

	public override void ResetToolTips()
	{
		if (tabBar != null)
		{
			tabBar.ResetToolTips();
		}
		if (splitter != null)
		{
			splitter.ResetToolTip();
		}
		base.ResetToolTips();
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (base.Size.IsEmpty)
		{
			return;
		}
		base.OnLayout(levent);
		InternalTabBar tabBarChild = TabBarChild;
		InternalButtonBar buttonBarChild = base.ButtonBarChild;
		Rectangle rectangle = ComputeTabBarBounds();
		if (rectangle.IsEmpty)
		{
			return;
		}
		BeginUpdate();
		ResetToolTips();
		Rectangle bounds = buttonBarChild.Bounds;
		tabBarChild.Bounds = ComputeTabBarChildBounds(bounds);
		tabBarChild.AdjustSize(measureTabs: true, initToolTip: false);
		if (tabBarChild.CurrentTab > tabBarChild.Tabs.Count)
		{
			selectedIndex = tabBarChild.CurrentTab;
			tabBarChild.CurrentTab = -1;
		}
		else if (selectedIndex != -1 && selectedIndex < tabBarChild.Tabs.Count)
		{
			tabBarChild.CurrentTab = selectedIndex;
		}
		Rectangle bounds2 = tabBarChild.Bounds;
		if (Resizable)
		{
			splitter.Bounds = new Rectangle(bounds2.Right, rectangle.Top, 7, rectangle.Height);
			if (scrollBar != null)
			{
				Rectangle r = new Rectangle(splitter.Bounds.Right, rectangle.Top, rectangle.Width - splitter.Bounds.Right, rectangle.Height);
				r = ReverseRectangleRTL(r);
				scrollBar.Bounds = r;
			}
		}
		else if (scrollBar != null)
		{
			Rectangle r2 = new Rectangle(bounds2.Right, rectangle.Top, rectangle.Width - tabBarChild.Bounds.Right, rectangle.Height);
			r2 = ReverseRectangleRTL(r2);
			scrollBar.Bounds = r2;
		}
		if (splitter != null)
		{
			splitter.Bounds = ReverseRectangleRTL(splitter.Bounds);
			if (RightToLeft == RightToLeft.Yes)
			{
				tabBarChild.Bounds = new Rectangle(splitter.Bounds.Right, tabBarChild.Bounds.Top, base.ClientRectangle.Width - base.ButtonBarChild.Bounds.Width - splitter.bounds.Right, tabBarChild.Bounds.Height);
				base.ButtonBarChild.Bounds = new Rectangle(tabBarChild.Bounds.Right, tabBarChild.Bounds.Top, base.ButtonBarChild.Bounds.Width, tabBarChild.Bounds.Height);
			}
		}
		base.EnableButtonFlags = tabBarChild.EnableButtonFlags;
		EndUpdate(refresh: false);
		buttonBarChild.InvalidateIfDirty();
		Rectangle rc = new Rectangle(bounds2.Right, rectangle.Top, rectangle.Width - bounds2.Width, rectangle.Height);
		if (RightToLeft == RightToLeft.Yes)
		{
			rc = base.ClientRectangle;
		}
		Invalidate(rc);
		tabBarChild.InvalidateIfDirty();
	}

	private new Rectangle ReverseRectangleRTL(Rectangle r)
	{
		if (RightToLeft == RightToLeft.Yes)
		{
			return new Rectangle(base.ClientRectangle.Right - r.Right, r.Top, r.Width, r.Height);
		}
		return r;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		if (scrollBar != null)
		{
			if (!base.Controls.Contains(scrollBar))
			{
				base.Controls.Add(scrollBar);
			}
			if (!scrollBar.IsHandleCreated)
			{
				scrollBar.CreateControl();
			}
		}
		base.OnHandleCreated(e);
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		if (tabBar != null)
		{
			tabBar.Dispose();
			tabBar = null;
		}
		base.OnHandleDestroyed(e);
	}

	protected virtual Rectangle ComputeTabBarBounds()
	{
		return base.ClientRectangle;
	}

	protected virtual Rectangle ComputeTabBarChildBounds(Rectangle buttonBarRect)
	{
		Rectangle result = ComputeTabBarBounds();
		result.X = buttonBarRect.Right;
		if (Resizable)
		{
			result.Width = (result.Width - buttonBarRect.Right) * RelativeWidth / 100;
		}
		else
		{
			result.Width -= buttonBarRect.Right;
		}
		return result;
	}

	protected override Rectangle ComputeButtonBarChildBounds()
	{
		Rectangle rectangle = ComputeTabBarBounds();
		int num = rectangle.Height;
		if (num > 20)
		{
			num = 20;
		}
		new Size(num, rectangle.Height);
		Rectangle result = rectangle;
		result.Width = num * base.ButtonBarChild.Buttons.Length;
		return result;
	}

	public override void Refresh()
	{
		if (!base.Updating && !base.Size.IsEmpty)
		{
			InternalTabBar tabBarChild = TabBarChild;
			if (selectedIndex != -1 && selectedIndex < tabBarChild.Tabs.Count)
			{
				tabBarChild.CurrentTab = selectedIndex;
			}
			tabBarChild.Dirty = true;
			PerformLayout();
			base.Refresh();
		}
	}

	protected virtual InternalTabBar OnCreateTabBarChild()
	{
		InternalTabBar internalTabBar = new InternalTabBar(this);
		internalTabBar.FlatLook = base.ButtonLook == ButtonLook.Flat;
		return internalTabBar;
	}

	protected override void OnButtonLookChanged(EventArgs e)
	{
		TabBarChild.FlatLook = base.ButtonLook == ButtonLook.Flat;
		TabBarChild.Dirty = true;
		base.OnButtonLookChanged(e);
	}

	protected virtual void OnStyleChanged()
	{
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
		InternalButton[] buttons = base.ButtonBarChild.Buttons;
		for (int i = 0; i < buttons.Length; i++)
		{
			InternalArrowButton internalArrowButton = (InternalArrowButton)buttons[i];
			internalArrowButton.Style = Style;
			internalArrowButton.Office2007ColorScheme = Office2007ColorScheme;
		}
		foreach (InternalTab tab in Tabs)
		{
			tab.Style = Style;
			tab.Office2007ColorScheme = Office2007ColorScheme;
		}
		if (splitter != null)
		{
			splitter.Style = Style;
			splitter.Office2007ColorScheme = Office2007ColorScheme;
		}
	}

	[DocumentationExclude]
	protected void RaiseSelectedIndexChangedEvent(SelectedIndexEventArgs e)
	{
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, e);
		}
	}

	[DocumentationExclude]
	protected void RaiseSelectedIndexChangingEvent(SelectedIndexEventArgs e)
	{
		if (this.SelectedIndexChanging != null)
		{
			this.SelectedIndexChanging(this, e);
		}
	}

	public int FindItem(object item)
	{
		return TabBarChild.FindTab(item);
	}

	public void RemoveItem(object item)
	{
		int num = TabBarChild.FindTab(item);
		if (num != -1)
		{
			Tabs.Remove(Tabs[num]);
		}
	}

	internal int FindItemExact(object item)
	{
		return TabBarChild.FindTab(item);
	}

	internal object GetItem(int index)
	{
		if (index < 0 || index >= TabBarChild.Tabs.Count)
		{
			throw new ArgumentException(SR.GetString("InvalidArgument", "index", index.ToString()));
		}
		return TabBarChild.Tabs[index]?.Cookie;
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		PerformLayout();
	}

	protected void RemoveAll()
	{
		base.Controls.Clear();
		TabBarChild.Tabs.Clear();
	}

	internal void RemoveItem(int index)
	{
		int count = TabBarChild.Tabs.Count;
		if (index < 0 || index >= count)
		{
			throw new ArgumentException(SR.GetString("InvalidArgument", "index", index.ToString()));
		}
		TabBarChild.Tabs.Remove(TabBarChild.Tabs[index]);
	}

	internal void UpdateSize()
	{
		PerformLayout();
	}

	protected virtual void OnImageListChanged(EventArgs e)
	{
		if (this.ImageListChanged != null)
		{
			this.ImageListChanged(this, e);
		}
	}

	protected virtual bool OnSelectedIndexChanging(int index, InternalTab tab)
	{
		SelectedIndexEventArgs e = new SelectedIndexEventArgs(index, tab);
		RaiseSelectedIndexChangingEvent(e);
		return !e.Cancel;
	}

	protected virtual void OnSelectedIndexChanged(int index, InternalTab tab)
	{
		SelectedIndexEventArgs e = new SelectedIndexEventArgs(index, tab);
		RaiseSelectedIndexChangedEvent(e);
	}

	protected override void OnCancelMode(EventArgs e)
	{
		if (tabBar != null)
		{
			tabBar.CancelMode();
		}
		base.OnCancelMode(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (splitter != null)
			{
				splitter.Dispose();
				splitter = null;
			}
			if (tabBar != null)
			{
				tabBar.Dispose();
				tabBar = null;
			}
		}
		base.Dispose(disposing);
	}
}
