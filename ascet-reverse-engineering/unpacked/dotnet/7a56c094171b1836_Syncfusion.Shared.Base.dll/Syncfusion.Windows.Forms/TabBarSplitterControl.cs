using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(true)]
[Description("Provides functionality for displaying several TabBarPage controls in an Excel-like workbook control")]
[Designer(typeof(TabBarSplitterControlDesigner), typeof(IDesigner))]
[ToolboxBitmap(typeof(TabBarSplitterControl), "ToolboxIcons.TabBarSplitterControl.bmp")]
public class TabBarSplitterControl : SplitterControl, INonClientPaintingSupport
{
	internal new class ControlCollection : Control.ControlCollection
	{
		private TabBarSplitterControl owner;

		public ControlCollection(TabBarSplitterControl owner)
			: base(owner)
		{
			this.owner = owner;
		}

		public override void Add(Control value)
		{
			base.Add(value);
			if (!(value is TabBarPage tabBarPage))
			{
				return;
			}
			if (!owner.TabBarPages.Contains(tabBarPage))
			{
				owner.TabBarPages.Add(tabBarPage);
			}
			ISite site = owner.Site;
			if (site != null)
			{
				ISite site2 = tabBarPage.Site;
				if (site2 == null)
				{
					IContainer container = site.Container;
					container.Add(tabBarPage);
				}
			}
		}

		public override void Remove(Control value)
		{
			base.Remove(value);
			if (!(value is TabBarPage tabBarPage))
			{
				return;
			}
			ISite site = owner.Site;
			if (site != null)
			{
				ISite site2 = tabBarPage.Site;
				if (site2 == null)
				{
					IContainer container = site.Container;
					container.Remove(tabBarPage);
				}
			}
			owner.TabBarPages.Remove(tabBarPage);
		}
	}

	private TabBar bar;

	private TabBarPageCollection tabPages;

	private TabBarPage activePage;

	private int activePageIndex;

	private bool showIcons = true;

	private Office2007Theme m_colorScheme;

	private TabBarSplitterStyle m_style;

	private Office2007Colors m_office2007ColorTable;

	private ControlDrawing cd = new ControlDrawing();

	private Form parentForm;

	private IntPtr cachedRgn = IntPtr.Zero;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TabBar Bar
	{
		get
		{
			if (bar == null)
			{
				SuspendLayout();
				Control control = CreateScrollBar(ScrollBars.Horizontal, 0);
				bar = new TabBar(control);
				bar.SuspendLayout();
				bar.BeginUpdate();
				bar.Resizable = control != null;
				bar.DisabledColor = SystemColors.GrayText;
				bar.EnableButtonFlags = ArrowType.Previous | ArrowType.Next | ArrowType.First | ArrowType.Last;
				bar.EnabledColor = SystemColors.WindowText;
				bar.ButtonLook = base.ButtonLook;
				bar.DisplayArrowButtons = DisplayArrowButtons.All;
				bar.ShowToolTips = base.ShowToolTips;
				bar.BackColor = SystemColors.Window;
				bar.SelectedIndexChanging += BarSelectedIndexChanging;
				bar.SelectedIndexChanged += BarSelectedIndexChanged;
				bar.TabBarChild.TabMoving += TabsMoving;
				bar.TabBarChild.TabMoved += TabsMoved;
				bar.ImageList = new ImageList();
				bar.Dock = DockStyle.None;
				bar.Anchor = AnchorStyles.None;
				if (hScrollBars == null)
				{
					hScrollBars = new Control[2];
				}
				hScrollBars[0] = bar;
				bar.EndUpdate(refresh: false);
				bar.ResumeLayout(performLayout: false);
				ResumeLayout(performLayout: false);
			}
			return bar;
		}
	}

	[DefaultValue(true)]
	[Description("Indicates if Icons should be displayed in the tabs.")]
	public bool ShowIcons
	{
		get
		{
			return showIcons;
		}
		set
		{
			if (showIcons != value)
			{
				showIcons = value;
				PerformLayout();
				Refresh();
			}
		}
	}

	[DefaultValue(TabBarSplitterStyle.Default)]
	[Category("Appearance")]
	[Description("Specifies the style with which tabBarSplitterControl will appear.")]
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
				Invalidate();
			}
		}
	}

	[Description("Gets or sets office 2007 color scheme.")]
	[Category("Appearance")]
	[DefaultValue(Office2007Theme.Blue)]
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
				Invalidate();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	private BorderStyle VSBorderStyle
	{
		get
		{
			if (Style != TabBarSplitterStyle.Office2007 || ThemesEnabled)
			{
				return base.BorderStyle;
			}
			return BorderStyle.FixedSingle;
		}
	}

	public override bool Office2007ScrollBars
	{
		get
		{
			return base.Office2007ScrollBars;
		}
		set
		{
			if (Style == TabBarSplitterStyle.Office2007)
			{
				base.Office2007ScrollBars = true;
			}
			else
			{
				base.Office2007ScrollBars = value;
			}
		}
	}

	public override Office2007ColorScheme Office2007ScrollBarsColorScheme
	{
		get
		{
			return base.Office2007ScrollBarsColorScheme;
		}
		set
		{
			if (Style == TabBarSplitterStyle.Office2007)
			{
				int office2007ColorScheme = (int)Office2007ColorScheme;
				base.Office2007ScrollBarsColorScheme = (Office2007ColorScheme)office2007ColorScheme;
			}
			else
			{
				base.Office2007ScrollBarsColorScheme = value;
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled)
			{
				if (VSBorderStyle == BorderStyle.FixedSingle)
				{
					createParams.Style |= 8388608;
				}
				if (VSBorderStyle == BorderStyle.Fixed3D)
				{
					createParams.ExStyle |= 512;
				}
			}
			createParams.Style = createParams.Style | 0x2000 | 2 | (int)WhidbeyCompatibleControlStyles.DoubleBuffer;
			return createParams;
		}
	}

	[Description("Indicates the index of the active page.")]
	[DefaultValue(0)]
	public int ActivePageIndex
	{
		get
		{
			if (ActivePage != null)
			{
				return TabBarPages.IndexOf(activePage);
			}
			return activePageIndex;
		}
		set
		{
			activePageIndex = value;
			RefreshActivePage();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TabBarPage ActivePage
	{
		get
		{
			return activePage;
		}
		set
		{
			if (value == null || activePage == value)
			{
				return;
			}
			if (value.TabEnabled || base.DesignMode)
			{
				try
				{
					SuspendLayout();
					Bar.BeginUpdate();
					OnActivePageChanging(new ControlEventArgs(value));
					if (value != null)
					{
						base.ActiveControl = value;
						if (base.ActiveControl != value)
						{
							return;
						}
						base.ActiveControl = null;
					}
					InternalTabBar tabBarChild = Bar.TabBarChild;
					for (int i = 0; i < tabBarChild.Tabs.Count; i++)
					{
						if (tabBarChild.Tabs[i] != null && tabBarChild.Tabs[i].Cookie is Control control && control != value)
						{
							control.Visible = false;
						}
					}
					if (activePage != null && activePage != value)
					{
						activePage.Visible = false;
						splitterInfo = activePage.splitterInfo;
						horizontalSplitterBar.UnwireTabPage(activePage);
						verticalSplitterBar.UnwireTabPage(activePage);
						activePage.horizontalSplitterBar = null;
						activePage.verticalSplitterBar = null;
					}
					activePage = value;
					splitterInfo = oSplitterInfo;
					if (activePage != null)
					{
						splitterInfo = activePage.splitterInfo;
						horizontalSplitterBar.WireTabPage(activePage);
						verticalSplitterBar.WireTabPage(activePage);
						Rectangle bounds = ReverseRectangleRTL(base.InnerBounds);
						bounds.X = 0;
						bounds.Width = base.ClientRectangle.Width;
						activePage.Bounds = bounds;
						activePage.Visible = true;
						activePage.flatLook = base.ButtonLook == ButtonLook.Flat;
						for (int j = 0; j < vScrollBars.Length; j++)
						{
							if (vScrollBars[j] != null)
							{
								activePage.Controls.Add(vScrollBars[j]);
								vScrollBars[j].BringToFront();
							}
						}
						Bar.SelectedIndex = TabBarPages.IndexOf(activePage);
					}
					else
					{
						for (int k = 0; k < vScrollBars.Length; k++)
						{
							if (vScrollBars[k] != null)
							{
								base.Controls.Add(vScrollBars[k]);
								vScrollBars[k].BringToFront();
							}
						}
					}
					return;
				}
				catch (Exception ex)
				{
					TraceUtil.TraceExceptionCatched(ex);
					if (!ExceptionManager.RaiseExceptionCatched(this, ex))
					{
						throw;
					}
					if (activePage != null)
					{
						base.ActiveControl = activePage;
					}
					return;
				}
				finally
				{
					Bar.EndUpdate(refresh: false);
					ResumeLayout(performLayout: false);
					Bar.TabBarChild.RefreshCurrentTab(scroll: true);
					OnActivePageChanged(new ControlEventArgs(activePage));
					if (value != null)
					{
						Refresh();
					}
				}
			}
			if (value == null)
			{
				return;
			}
			value.Bounds = ReverseRectangleRTL(base.InnerBounds);
			for (int l = 0; l < vScrollBars.Length; l++)
			{
				if (vScrollBars[l] != null)
				{
					vScrollBars[l].Enabled = false;
					value.Controls.Add(vScrollBars[l]);
				}
			}
			foreach (Control control2 in value.Controls)
			{
				control2.Enabled = false;
			}
		}
	}

	[Description("Milliseconds to wait before firing scroll event.")]
	[DefaultValue(200)]
	public int RepeatClickDelay
	{
		get
		{
			return Bar.RepeatClickDelay;
		}
		set
		{
			if (Bar.scrollBar is ScrollBar scrollBar)
			{
				int repeatClickDelay = Bar.RepeatClickDelay;
				double num = (double)repeatClickDelay * 1.0 / (double)value;
				double num2 = (double)scrollBar.LargeChange * num;
				double num3 = (double)scrollBar.SmallChange * num;
				if (num2 < 1.0)
				{
					num2 = 1.0;
				}
				else if (num2 > (double)scrollBar.Maximum)
				{
					num2 = (double)scrollBar.Maximum / 2.0;
				}
				if (num3 < 1.0)
				{
					num3 = 1.0;
				}
				else if (num3 > (double)scrollBar.Maximum)
				{
					num3 = (double)scrollBar.Maximum / 10.0;
				}
				scrollBar.LargeChange = (int)num2;
				scrollBar.SmallChange = (int)num3;
			}
			Bar.RepeatClickDelay = value;
		}
	}

	[Description("The color of arrows in enabled buttons.")]
	public Color EnabledColor
	{
		get
		{
			return Bar.EnabledColor;
		}
		set
		{
			Bar.EnabledColor = value;
		}
	}

	[Description("The color of arrows in disabled buttons.")]
	public Color DisabledColor
	{
		get
		{
			return Bar.DisabledColor;
		}
		set
		{
			Bar.DisabledColor = value;
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates the list of TabBarPages displayed in the TabBar.")]
	public TabBarPageCollection TabBarPages
	{
		get
		{
			if (tabPages == null)
			{
				tabPages = OnCreateTabBarPageCollection();
			}
			return tabPages;
		}
	}

	[Description("Delta used for drawing the tabs.")]
	[Browsable(true)]
	[DefaultValue(6)]
	public int TabFolderDelta
	{
		get
		{
			return Bar.TabFolderDelta;
		}
		set
		{
			Bar.TabFolderDelta = value;
			Bar.TabBarChild.AdjustSize(measureTabs: true, initToolTip: false);
			Refresh();
		}
	}

	[Browsable(true)]
	[Description("Scrolling tabs by pixel or whole tabs.")]
	[DefaultValue(InternalTabBarScrollBehavior.ScrollPixels)]
	public InternalTabBarScrollBehavior ScrollBehavior
	{
		get
		{
			return Bar.ScrollBehavior;
		}
		set
		{
			Bar.ScrollBehavior = value;
		}
	}

	[Description("Specify the width of the tab bar relative to the width of client bounds.")]
	[Browsable(true)]
	[DefaultValue(80)]
	public int RelativeWidth
	{
		get
		{
			return Bar.RelativeWidth;
		}
		set
		{
			Bar.RelativeWidth = value;
		}
	}

	[Description("Enable or Disable resizing the tab bar.")]
	[Browsable(true)]
	[DefaultValue(true)]
	public bool Resizable
	{
		get
		{
			return Bar.Resizable;
		}
		set
		{
			Bar.Resizable = value;
		}
	}

	[DefaultValue(DisplayArrowButtons.All)]
	[Description("Specifies arrow buttons to be shown in an arrow bar.")]
	public DisplayArrowButtons ScrollButtons
	{
		get
		{
			return Bar.DisplayArrowButtons;
		}
		set
		{
			Bar.DisplayArrowButtons = value;
		}
	}

	[Description("Occurs after the active page has changed.")]
	public event ControlEventHandler ActivePageChanged;

	[Description("Occurs before the active page is changed.")]
	public event ControlEventHandler ActivePageChanging;

	protected override void InitLayout()
	{
		base.InitLayout();
		Form form = FindForm();
		if (form != null)
		{
			form.Load += ParentFormLoad;
		}
		parentForm = form;
	}

	private void ParentFormLoad(object sender, EventArgs e)
	{
		if (ActivePage == null && tabPages.Count > 0)
		{
			ActivePage = tabPages[0];
		}
		if (parentForm != null)
		{
			parentForm.Load -= ParentFormLoad;
			parentForm = null;
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (ActivePage == e.Control)
		{
			ActivePage = null;
			if (tabPages != null && tabPages.Count > 0)
			{
				ActivePage = FindNextActivePage();
			}
		}
		base.OnControlRemoved(e);
	}

	private TabBarPage FindNextActivePage()
	{
		for (int i = 0; i < tabPages.Count; i++)
		{
			if (tabPages[i].TabEnabled)
			{
				return tabPages[i];
			}
		}
		return null;
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		if (tabPages != null)
		{
			tabPages.Clear();
			tabPages = null;
		}
		if (bar != null)
		{
			bar.TabBarChild.Dispose();
			bar.TabBarChild = null;
			bar.SelectedIndexChanging -= BarSelectedIndexChanging;
			bar.SelectedIndexChanged -= BarSelectedIndexChanged;
			bar.TabBarChild.TabMoving -= TabsMoving;
			bar.TabBarChild.TabMoved -= TabsMoved;
			bar.ImageList.Dispose();
			bar.ImageList = null;
			bar.Dispose();
			bar = null;
		}
		base.OnHandleDestroyed(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SuspendLayout();
			if (parentForm != null)
			{
				parentForm.Load -= ParentFormLoad;
			}
			if (tabPages != null)
			{
				tabPages.Clear();
				tabPages = null;
			}
			parentForm = null;
		}
		base.Dispose(disposing);
	}

	protected override Control CreateScrollBarContainer(ScrollBars sbType, int index)
	{
		if (sbType == ScrollBars.Horizontal && index == 0)
		{
			return Bar;
		}
		return base.CreateScrollBarContainer(sbType, index);
	}

	public override void Refresh()
	{
		if (base.Size.IsEmpty || !base.Created)
		{
			return;
		}
		RecreateIconList();
		try
		{
			if (ActivePage == null || !TabBarPages.Contains(ActivePage))
			{
				RefreshActivePage();
			}
			if (ActivePage == null && tabPages.Count > 0)
			{
				ActivePage = tabPages[0];
			}
			else if (ActivePage != null)
			{
				ActivePage.PerformLayout();
			}
		}
		finally
		{
			Bar.PerformLayout();
			base.Refresh();
		}
	}

	private void RefreshActivePage()
	{
		if (activePageIndex >= 0 && activePageIndex < TabBarPages.Count)
		{
			ActivePage = TabBarPages[activePageIndex];
			activePageIndex = -1;
		}
		else if (TabBarPages.Count == 0)
		{
			Bar.SelectedIndex = -1;
			Bar.Tabs.Clear();
		}
	}

	public override string ToString()
	{
		return "TabBarSplitterControl: {" + Text + ", TabCount: " + Bar.TabCount + "}";
	}

	protected virtual void TabsMoving(object sender, TabMovedEventArgs e)
	{
		if (!ActivePage.Validate())
		{
			e.Cancel = true;
		}
	}

	protected virtual void TabsMoved(object sender, TabMovedEventArgs e)
	{
		RecreateIconList();
		SortControlCollection();
		Refresh();
	}

	protected virtual void OnStyleChanged()
	{
		if (Style == TabBarSplitterStyle.Office2007)
		{
			TabFolderDelta = 11;
			base.BorderStyle = BorderStyle.FixedSingle;
			Office2007ScrollBars = true;
			int office2007ColorScheme = (int)Office2007ColorScheme;
			Office2007ScrollBarsColorScheme = (Office2007ColorScheme)office2007ColorScheme;
		}
		else
		{
			TabFolderDelta = 6;
			Office2007ScrollBars = false;
		}
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
		if (Bar != null)
		{
			Bar.Style = Style;
			Bar.Office2007ColorScheme = Office2007ColorScheme;
		}
		if (tabPages != null)
		{
			foreach (TabBarPage tabPage in tabPages)
			{
				tabPage.Invalidate();
			}
		}
		InvalidateWindow();
	}

	private void InvalidateWindow()
	{
		int redrawFlags = 1281;
		NativeMethodsHelper.RedrawWindow(base.Handle, redrawFlags);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rc = displayRect;
		int num = 2;
		if (VSBorderStyle == BorderStyle.FixedSingle)
		{
			num = 1;
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rc.Location, new Size(num, rc.Height)),
			new Rectangle(rc.Location, new Size(rc.Width, num)),
			new Rectangle(rc.Width - num, rc.Y, num, rc.Height),
			new Rectangle(rc.X, rc.Height - num, rc.Width, num)
		};
		for (int i = 0; i < 4; i++)
		{
			graphics.FillRectangle(new SolidBrush(BackColor), array[i]);
		}
		Color borderColor = Color.Black;
		if (Style == TabBarSplitterStyle.Office2007)
		{
			borderColor = Office2007ColorTable.TabBarSplitterBorderColor;
		}
		cd.DrawBorder(graphics, rc, VSBorderStyle, Border3DStyle.Sunken, ButtonBorderStyle.Solid, borderColor);
		return NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (Style == TabBarSplitterStyle.Office2007 && !splitterInfo.sizeGripBounds.IsEmpty)
		{
			pe.Graphics.ResetClip();
			PaintGripOffice2007(pe.Graphics, ReverseRectangleRTL(splitterInfo.sizeGripBounds), Office2007ColorTable.TabBarSplitterSizeGripperLightColor, Office2007ColorTable.TabBarSplitterSizeGripperDarkColor, Office2007ColorTable.TabBarSplitterSizeGripperColor);
		}
	}

	private void PaintGripOffice2007(Graphics g, Rectangle rc, Color clGripLight, Color clGripDark, Color clGripBackground)
	{
		int num = 2;
		using (Brush brush = new SolidBrush(clGripBackground))
		{
			g.FillRectangle(brush, rc);
		}
		if (!base.ShowSizeGrip)
		{
			return;
		}
		using (Brush brush2 = new SolidBrush(clGripLight))
		{
			if (RightToLeft == RightToLeft.Yes)
			{
				Rectangle rect = new Rectangle(rc.Left + 2, rc.Bottom - 4, num, num);
				g.FillRectangle(brush2, rect);
				rect.X += 4;
				g.FillRectangle(brush2, rect);
				rect.X += 4;
				g.FillRectangle(brush2, rect);
				rect.X -= 4;
				rect.Y -= 4;
				g.FillRectangle(brush2, rect);
				rect.X -= 4;
				g.FillRectangle(brush2, rect);
				rect.Y -= 4;
				g.FillRectangle(brush2, rect);
			}
			else
			{
				Rectangle rect2 = new Rectangle(rc.Right - 4, rc.Bottom - 4, num, num);
				g.FillRectangle(brush2, rect2);
				rect2.X -= 4;
				g.FillRectangle(brush2, rect2);
				rect2.X -= 4;
				g.FillRectangle(brush2, rect2);
				rect2.X += 4;
				rect2.Y -= 4;
				g.FillRectangle(brush2, rect2);
				rect2.X += 4;
				g.FillRectangle(brush2, rect2);
				rect2.Y -= 4;
				g.FillRectangle(brush2, rect2);
			}
		}
		using Brush brush3 = new SolidBrush(clGripDark);
		if (RightToLeft == RightToLeft.Yes)
		{
			Rectangle rect3 = new Rectangle(rc.Left + 3, rc.Bottom - 5, num, num);
			g.FillRectangle(brush3, rect3);
			rect3.X += 4;
			g.FillRectangle(brush3, rect3);
			rect3.X += 4;
			g.FillRectangle(brush3, rect3);
			rect3.X -= 4;
			rect3.Y -= 4;
			g.FillRectangle(brush3, rect3);
			rect3.X -= 4;
			g.FillRectangle(brush3, rect3);
			rect3.Y -= 4;
			g.FillRectangle(brush3, rect3);
		}
		else
		{
			Rectangle rect4 = new Rectangle(rc.Right - 5, rc.Bottom - 5, num, num);
			g.FillRectangle(brush3, rect4);
			rect4.X -= 4;
			g.FillRectangle(brush3, rect4);
			rect4.X -= 4;
			g.FillRectangle(brush3, rect4);
			rect4.X += 4;
			rect4.Y -= 4;
			g.FillRectangle(brush3, rect4);
			rect4.X += 4;
			g.FillRectangle(brush3, rect4);
			rect4.Y -= 4;
			g.FillRectangle(brush3, rect4);
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 133 && (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled))
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		base.WndProc(ref m);
	}

	private void SortControlCollection()
	{
		int num = 0;
		for (int i = 0; i < TabBarPages.Count; i++)
		{
			TabBarPage tabBarPage = TabBarPages[i];
			if (base.Controls.Contains(tabBarPage))
			{
				tabBarPage.TabIndex = num;
				TabBarPages[i].TabStop = true;
				base.Controls.SetChildIndex(tabBarPage, num);
				num++;
			}
		}
	}

	private void RecreateIconList()
	{
		Bar.ImageList.Images.Clear();
		for (int i = 0; i < Bar.TabBarChild.Tabs.Count; i++)
		{
			InternalTab internalTab = Bar.TabBarChild.Tabs[i];
			TabBarPage tabBarPage = internalTab.Cookie as TabBarPage;
			if (showIcons && tabBarPage != null && tabBarPage.Icon != null)
			{
				Image value = TabBarPages[i].Icon.ToBitmap();
				internalTab.ImageIndex = Bar.ImageList.Images.Count;
				Bar.ImageList.Images.Add(value);
			}
			else
			{
				internalTab.ImageIndex = -1;
			}
		}
	}

	protected virtual void OnActivePageChanged(ControlEventArgs e)
	{
		try
		{
			if (this.ActivePageChanged != null)
			{
				this.ActivePageChanged(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	protected virtual void OnActivePageChanging(ControlEventArgs e)
	{
		try
		{
			if (this.ActivePageChanging != null)
			{
				this.ActivePageChanging(this, e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	private void BarSelectedIndexChanged(object sender, SelectedIndexEventArgs e)
	{
	}

	private void BarSelectedIndexChanging(object sender, SelectedIndexEventArgs e)
	{
		InternalTab tab = e.Tab;
		_ = ActivePage;
		if (!base.IsHandleCreated || tab == null || !(tab.Cookie is TabBarPage))
		{
			return;
		}
		TabBarPage tabBarPage = tab.Cookie as TabBarPage;
		if (tabBarPage.TabEnabled || base.DesignMode)
		{
			ActivePage = (TabBarPage)tab.Cookie;
			if (ActivePage != (TabBarPage)tab.Cookie)
			{
				e.Cancel = true;
			}
			else if (ActivePage.CanFocus)
			{
				ActivePage.Focus();
			}
		}
		else
		{
			e.Cancel = true;
		}
	}

	public void ResetEnabledColor()
	{
		Bar.ResetEnabledColor();
	}

	internal bool ShouldSerializeEnabledColor()
	{
		return EnabledColor != SystemColors.GrayText;
	}

	public void ResetDisabledColor()
	{
		Bar.ResetDisabledColor();
	}

	internal bool ShouldSerializeDisabledColor()
	{
		return DisabledColor != SystemColors.GrayText;
	}

	protected override void OnButtonLookChanged(EventArgs e)
	{
		if (activePage != null)
		{
			activePage.flatLook = base.ButtonLook == ButtonLook.Flat;
		}
		Bar.ButtonLook = base.ButtonLook;
		Bar.Refresh();
		base.OnButtonLookChanged(e);
	}

	protected override Control.ControlCollection CreateControlsInstance()
	{
		return new ControlCollection(this);
	}

	public virtual TabBarPageCollection OnCreateTabBarPageCollection()
	{
		return new TabBarPageCollection(this);
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (base.Size.IsEmpty || base.Disposing || !base.Created)
		{
			return;
		}
		base.OnLayout(levent);
		TabBarPage tabBarPage = ActivePage;
		if (tabBarPage != null)
		{
			tabBarPage.horizontalSplitterBar = horizontalSplitterBar;
			tabBarPage.verticalSplitterBar = verticalSplitterBar;
			Rectangle bounds = ReverseRectangleRTL(base.InnerBounds);
			bounds.X = 0;
			bounds.Width = base.ClientRectangle.Width;
			tabBarPage.Bounds = bounds;
			for (int i = 0; i < vScrollBars.Length; i++)
			{
				if (vScrollBars[i] != null)
				{
					tabBarPage.Controls.Add(vScrollBars[i]);
					vScrollBars[i].BringToFront();
				}
			}
		}
		SortControlCollection();
	}

	protected override bool ProcessDialogKey(Keys key)
	{
		if (base.IsDisposed)
		{
			return true;
		}
		Keys keys = key & Keys.KeyCode;
		_ = Control.ModifierKeys;
		_ = Control.ModifierKeys;
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		switch (keys)
		{
		case Keys.Next:
			if (flag)
			{
				ActivateNextPage(prev: false);
			}
			return true;
		case Keys.Prior:
			if (flag)
			{
				ActivateNextPage(prev: true);
			}
			return true;
		default:
			return base.ProcessDialogKey(key);
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessKeyEventArgs(ref Message m)
	{
		return base.ProcessKeyEventArgs(ref m);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override bool ProcessKeyPreview(ref Message m)
	{
		return base.ProcessKeyPreview(ref m);
	}

	protected override bool ProcessKeyMessage(ref Message m)
	{
		return base.ProcessKeyMessage(ref m);
	}

	internal void ChildKeyDown(object sender, KeyEventArgs e)
	{
		if (e.Handled)
		{
			return;
		}
		Keys keyCode = e.KeyCode;
		bool flag = (e.Modifiers & Keys.Control) != 0;
		switch (keyCode)
		{
		case Keys.Next:
			if (flag)
			{
				ActivateNextPage(prev: false);
				e.Handled = true;
			}
			break;
		case Keys.Prior:
			if (flag)
			{
				ActivateNextPage(prev: true);
				e.Handled = true;
			}
			break;
		}
	}

	public void ActivateNextPage(bool prev)
	{
		int num = ActivePageIndex;
		num = ((!prev) ? ((num < TabBarPages.Count) ? (num + 1) : 0) : ((num <= 0) ? (TabBarPages.Count - 1) : (num - 1)));
		ActivePageIndex = num;
	}

	protected override void OnCancelMode(EventArgs e)
	{
		base.OnCancelMode(e);
	}

	protected override void OnValidatingLostFocus()
	{
		if (bar != null)
		{
			bar.NotifyCancelMode();
		}
		base.OnValidatingLostFocus();
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible && ActivePage == null)
		{
			SuspendLayout();
			RefreshActivePage();
			ResumeLayout(performLayout: false);
		}
		base.OnVisibleChanged(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		Refresh();
	}

	protected override void OnShowToolTipsChanged(EventArgs e)
	{
		if (bar != null)
		{
			bar.ShowToolTips = base.ShowToolTips;
		}
		base.OnShowToolTipsChanged(e);
	}
}
