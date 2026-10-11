using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxBitmap(typeof(CommandBar), "ToolboxIcons.XPToolBar.bmp")]
[Designer(typeof(XPToolBarDesigner), typeof(IDesigner))]
[ToolboxItem(true)]
[Description("Provides tool bar like look-and-feel to use outside XPMenus framework.")]
public class XPToolBar : BarControlInternal, IBarHost, IDesignable, IIgnoreWorkingArea
{
	private bool m_bShowChevron;

	private bool needLayout;

	private BarManager designTimeBarManager;

	private VisuallyInheritableIntList separatorList;

	private bool largeIcons;

	private Bar internalBar;

	private BrushInfo bgBrush;

	private bool _uiUpdateMFCStyle;

	private bool bBarItemActiveFormCheckOverride;

	private bool m_bShowHighlightRectangle = true;

	private bool m_bRotateWhenVertical;

	private Office2007Theme m_office2007Theme;

	private Office2007Colors m_office2007ColorTable;

	private static bool bDevEnv;

	private static bool s_isDevEnv;

	private bool m_bIsDisposing;

	private BarManager tempBarManager;

	private Hashtable m_shortcutsHash = new Hashtable();

	private bool m_bIgnoreWorkingArea;

	[Description("Indicates whether to show chevron.")]
	[DefaultValue(false)]
	public bool ShowChevron
	{
		get
		{
			return m_bShowChevron;
		}
		set
		{
			if (value != m_bShowChevron)
			{
				m_bShowChevron = value;
				RendererChanged(null);
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether to highlight BarItem when mouse moves over it.")]
	public bool ShowHighlightRectangle
	{
		get
		{
			return m_bShowHighlightRectangle;
		}
		set
		{
			if (value != m_bShowHighlightRectangle)
			{
				m_bShowHighlightRectangle = value;
			}
		}
	}

	[Description("Indicates whether items of the XPToolBar will be draws Horizontal when XPToolBar is vertical docked.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool RotateWhenVertical
	{
		get
		{
			return m_bRotateWhenVertical;
		}
		set
		{
			if (value != m_bRotateWhenVertical)
			{
				m_bRotateWhenVertical = value;
				OnRotateWhenVerticalChanged();
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	[Description("Gets or sets colorschemes for Office2007 visual style.")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (m_office2007Theme != value)
			{
				m_office2007Theme = value;
				UpdateColorScheme();
				Invalidate();
			}
		}
	}

	private Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	[Description("Specifies whether the UpdateUI event for the BarItems should be fired in a MFC style fashion.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool UpdateUIMFCStyle
	{
		get
		{
			return _uiUpdateMFCStyle;
		}
		set
		{
			if (_uiUpdateMFCStyle != value)
			{
				_uiUpdateMFCStyle = value;
				if (!_uiUpdateMFCStyle)
				{
					Application.Idle -= OnIdle;
				}
				else
				{
					Application.Idle += OnIdle;
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether the BarItems should check for ActiveForm before displaying tooltip.")]
	[DefaultValue(false)]
	public bool BarItemActiveFormCheckOverride
	{
		get
		{
			return bBarItemActiveFormCheckOverride;
		}
		set
		{
			if (bBarItemActiveFormCheckOverride != value)
			{
				bBarItemActiveFormCheckOverride = value;
			}
		}
	}

	[DefaultValue(false)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			base.TabStop = value;
		}
	}

	bool IDesignable.DesignMode => base.DesignMode;

	protected override Size DefaultSize => new Size(100, 28);

	protected override Form HostedForm
	{
		get
		{
			return base.HostedForm;
		}
		set
		{
			base.HostedForm = value;
			if (HostedForm != null && !base.DesignMode && !bDevEnv)
			{
				ContextMenuPlaceHolder contextMenuPlaceHolder = HostedForm.ContextMenu as ContextMenuPlaceHolder;
				if (contextMenuPlaceHolder == null)
				{
					contextMenuPlaceHolder = new ContextMenuPlaceHolder();
				}
				contextMenuPlaceHolder.MainMenuForm = HostedForm;
				contextMenuPlaceHolder.AddToolBar(this);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Gets or sets the bar.")]
	[DocumentationExclude]
	public override Bar Bar
	{
		get
		{
			return base.Bar;
		}
		set
		{
			if (base.Bar != value)
			{
				if (designTimeBarManager != null && value != null)
				{
					value.Manager = designTimeBarManager;
				}
				if (base.Bar != null && base.Bar.Items != null)
				{
					base.Bar.Items.CollectionChanged -= Items_CollectionChanged;
				}
				base.Bar = value;
				if (base.Bar != null && base.Bar.Items != null)
				{
					base.Bar.Items.CollectionChanged += Items_CollectionChanged;
				}
				if (base.Bar != null && base.Bar.Items != null)
				{
					base.Bar.Items.Parent = this;
				}
				if (separatorList != null)
				{
					UpdateSeparatorIndices();
				}
				internalBar = null;
			}
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[ReadOnly(true)]
	public BarItems HiddenBarItems
	{
		get
		{
			BarItems barItems = new BarItems();
			barItems.AddRange(barRenderer.InvisibleBarItems);
			if (ShowChevron && barItems.Count >= 0)
			{
				return barItems;
			}
			return new BarItems();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates the BarItems collections.")]
	public BarItems Items
	{
		get
		{
			if (Bar == null)
			{
				return null;
			}
			return Bar.Items;
		}
	}

	[Browsable(false)]
	[DefaultValue(null)]
	public IntListDesignTime UpdatedSeparatorPositions
	{
		get
		{
			return separatorList.DesignTimeChanges;
		}
		set
		{
			separatorList.DesignTimeChanges = value;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	public IntListDesignTime UpdatedBarItemPositions
	{
		get
		{
			if (Bar.Items != null)
			{
				return Bar.Items.DesignTimeChanges;
			}
			return null;
		}
		set
		{
			Bar.Items.DesignTimeChanges = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Lets you set the background color, gradient, etc. when not themed.")]
	[Category("Appearance")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return bgBrush;
		}
		set
		{
			if (bgBrush != value)
			{
				bgBrush = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Browsable(true)]
	[Description("Indicates whether the images from the LargeImageList should be used.")]
	public override bool LargeIcons
	{
		get
		{
			return largeIcons;
		}
		set
		{
			if (largeIcons == value)
			{
				return;
			}
			largeIcons = value;
			foreach (BarItem item in Items)
			{
				item.LargeIcons = value;
			}
			OnBarBoundsChanged();
		}
	}

	[Editor(typeof(SeparatorIndexCollectionEditor), typeof(UITypeEditor))]
	[DocumentationExclude]
	[Description("Gets the separator Indices.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public VisuallyInheritableIntList SeparatorIndices => separatorList;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Size PreferredSize => GetPreferredSizeInternal(base.Width, base.Height);

	private bool IsHorizontallyAligned
	{
		get
		{
			if (Dock != DockStyle.Top && Dock != DockStyle.Bottom)
			{
				return Dock == DockStyle.Fill;
			}
			return true;
		}
	}

	private bool IsVerticallyAligned
	{
		get
		{
			if (Dock != DockStyle.Left)
			{
				return Dock == DockStyle.Right;
			}
			return true;
		}
	}

	[DocumentationExclude]
	protected bool NeedLayout => needLayout;

	[Description("Provides information, whether popup is ignoring working area of the display before showing.")]
	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			if (m_bIgnoreWorkingArea == value)
			{
				return;
			}
			m_bIgnoreWorkingArea = value;
			foreach (BarItem item in Items)
			{
				if (item is IIgnoreWorkingArea ignoreWorkingArea)
				{
					ignoreWorkingArea.IgnoreWorkingArea = IgnoreWorkingArea;
				}
			}
		}
	}

	static XPToolBar()
	{
		bDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;
		s_isDevEnv = SystemInformationExt.IsDotNetApp && Application.ExecutablePath.ToLower().IndexOf("devenv.exe") < 0;
	}

	public XPToolBar()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(XPToolBar));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		TabStop = false;
		bgBrush = BrushInfo.Empty;
		Bar = new Bar(null);
		Bar.Items.Parent = this;
		internalBar = Bar;
		base.BarHost = this;
		if (!base.DesignMode)
		{
			AllowDrop = false;
		}
		separatorList = new VisuallyInheritableIntList(this);
		separatorList.CollectionChanged += SeparatorList_Changed;
	}

	protected override void UpdateColorScheme()
	{
		base.UpdateColorScheme();
		Office2007OutlookColors.UpdateMenuColors(Office2007Theme);
		m_office2007ColorTable = Office2007Colors.GetColorTable(Office2007Theme);
	}

	protected virtual void OnRotateWhenVerticalChanged()
	{
		Bar.BarStyle = (m_bRotateWhenVertical ? (Bar.BarStyle | BarStyle.RotateWhenVertical) : (Bar.BarStyle & ~BarStyle.RotateWhenVertical));
	}

	private void SetRendererDock(BarRenderer renderer, DockStyle dock)
	{
		if (renderer != null)
		{
			switch (dock)
			{
			case DockStyle.Left:
				renderer.Alignment = CommandBarDockState.Left;
				break;
			case DockStyle.Right:
				renderer.Alignment = CommandBarDockState.Right;
				break;
			case DockStyle.Top:
				renderer.Alignment = CommandBarDockState.Top;
				break;
			case DockStyle.Bottom:
				renderer.Alignment = CommandBarDockState.Bottom;
				break;
			default:
				renderer.Alignment = CommandBarDockState.Top;
				break;
			}
		}
	}

	private Size GetCorrectlySize(int preferredWidth, int preferredHeight)
	{
		int num = preferredWidth;
		int num2 = preferredHeight;
		Size preferredSizeInternal = GetPreferredSizeInternal(preferredWidth, preferredHeight);
		if (IsVerticallyAligned)
		{
			num = preferredSizeInternal.Width;
			if (num2 < preferredSizeInternal.Height && !ShowChevron)
			{
				num2 = preferredSizeInternal.Height;
			}
		}
		else
		{
			num2 = preferredSizeInternal.Height;
			if (num < preferredSizeInternal.Width && !ShowChevron)
			{
				num = preferredSizeInternal.Width;
			}
		}
		return new Size(num, num2);
	}

	private Point GetCorrectlyLocation(int x, int y, int width, int height)
	{
		Point result = new Point(x, y);
		if ((Dock == DockStyle.Bottom || Dock == DockStyle.Right) && base.Parent != null && base.Parent.ClientSize != Size.Empty)
		{
			if (IsVerticallyAligned)
			{
				result.X = base.Parent.ClientSize.Width - width;
			}
			else
			{
				result.Y = base.Parent.ClientSize.Height - height;
			}
		}
		return result;
	}

	protected override void Dispose(bool disposing)
	{
		m_bIsDisposing = true;
		base.Dispose(disposing);
		if (disposing)
		{
			if (Bar != null)
			{
				if (Items != null)
				{
					foreach (BarItem item in Items)
					{
						item.Dispose();
					}
				}
				Bar = null;
			}
			DisposeInternalBar();
			if (separatorList != null)
			{
				separatorList.CollectionChanged -= SeparatorList_Changed;
				separatorList = null;
			}
			Application.Idle -= OnIdle;
		}
		m_bIsDisposing = false;
	}

	private void DisposeInternalBar()
	{
		if (internalBar != null)
		{
			internalBar.Dispose();
			internalBar = null;
		}
	}

	private void OnIdle(object sender, EventArgs e)
	{
		if (!UpdateUIMFCStyle)
		{
			return;
		}
		foreach (BarItem item in Items)
		{
			if (item.Visible)
			{
				item.PerformUpdateUI();
			}
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		HostedForm = FindForm();
		base.OnHandleCreated(e);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 && FindForm() != null)
		{
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	private void EnsureParentHasFocus()
	{
		bool flag = true;
		IntPtr focus = Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus();
		if (focus != IntPtr.Zero)
		{
			Control control = Control.FromHandle(focus);
			if (control != null && control.FindForm() == FindForm())
			{
				flag = false;
			}
		}
		if (!flag)
		{
			return;
		}
		Form form = FindForm();
		if (form != null)
		{
			if (form.IsMdiChild)
			{
				MdiSysMenuManager.GetProviderForForm(form.MdiParent);
			}
			if (form.ParentForm != null && !form.ParentForm.ContainsFocus)
			{
				form.ParentForm.Focus();
			}
			if (!form.ContainsFocus)
			{
				form.Focus();
			}
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		EnsureParentHasFocus();
		if (!SystemInformationExt.IsDotNetApp)
		{
			Focus();
		}
		base.OnMouseDown(e);
	}

	[DocumentationExclude]
	public override bool ShouldPreProcessTab()
	{
		return false;
	}

	[DocumentationExclude]
	public override bool NeedKey(Keys key)
	{
		return base.NeedKey(key);
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		if (keyData == Keys.Down || keyData == Keys.Up || keyData == Keys.Right || keyData == Keys.Left)
		{
			return false;
		}
		return base.ProcessDialogKey(keyData);
	}

	public void ProcessShortcut(Keys keyData)
	{
		BarItem itemByShortcut = GetItemByShortcut((int)keyData);
		if (itemByShortcut != null && itemByShortcut.Enabled && itemByShortcut.Visible)
		{
			itemByShortcut.PerformClick();
		}
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		if (barRenderer.ProcessShortcut(charCode))
		{
			return true;
		}
		return base.ProcessMnemonic(charCode);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
		if (!barRenderer.IsKeyboardNavigationOn() && !barRenderer.IsShowingDropdown())
		{
			barRenderer.StartKeyboardNavigation();
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		if (!base.ContainsFocus)
		{
			barRenderer.OnFormDeactivated();
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void BeforeCodeDomSerialize()
	{
		tempBarManager = Bar.Manager;
		Bar.Manager = null;
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void AfterCodeDomSerialize()
	{
		Bar.Manager = tempBarManager;
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void InitBarFromDesigner(BarManager manager)
	{
		if (manager != designTimeBarManager)
		{
			UnSubscribeDragDrop();
			designTimeBarManager = manager;
			SubscribeDragDrop();
			if (Bar != null)
			{
				Bar bar = Bar;
				Bar = null;
				bar.Manager = designTimeBarManager;
				Bar = bar;
			}
		}
	}

	protected internal void SubscribeDragDrop()
	{
		if (designTimeBarManager != null)
		{
			designTimeBarManager.RegisterDragDropControl(this);
		}
	}

	protected internal void UnSubscribeDragDrop()
	{
		if (designTimeBarManager != null)
		{
			designTimeBarManager.UnRegisterDragDropControl(this);
		}
	}

	[DocumentationExclude]
	protected internal override void RendererChanged(BarRenderer rendererNew)
	{
		if (!m_bIsDisposing)
		{
			BarRenderer barRenderer = null;
			barRenderer = ((!m_bShowChevron) ? ((BarRenderer)new BarControlBarRenderer(this)) : ((BarRenderer)new XpToolBarChevronRenderer(this)));
			barRenderer.ThemesEnabled = base.ThemesEnabled;
			base.RendererChanged(barRenderer);
			base.barRenderer.ValidateDndHelper();
			base.barRenderer.dndHelper.AllowRecord = false;
			base.barRenderer.HintViaHotKeyPrefix = false;
			SetRendererDock(base.barRenderer, Dock);
		}
	}

	[DocumentationExclude]
	public bool IsItemHit(Point ptClient)
	{
		int num = barRenderer.HitTestBarItems(ptClient);
		if (num != -1)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected override void Bar_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		base.Bar_PropertyChanged(sender, e);
		if (base.DesignMode && (GetService(typeof(IDesignerHost)) as IDesignerHost).GetDesigner(this) is IToolbarDesigners toolbarDesigners)
		{
			toolbarDesigners.SetDirty();
		}
	}

	[DocumentationExclude]
	protected override bool GetUseControlForeColor()
	{
		return true;
	}

	[DocumentationExclude]
	protected override bool RequiresActiveFormForMouseTrack()
	{
		return s_isDevEnv;
	}

	private void ResetBackgroundColor()
	{
		BackgroundColor = BrushInfo.Empty;
	}

	private bool ShouldSerializeBackgroundColor()
	{
		if (bgBrush == BrushInfo.Empty)
		{
			return false;
		}
		return true;
	}

	private void SeparatorList_Changed(object sender, CollectionChangeEventArgs e)
	{
		Bar.ClearSeparators();
		foreach (int separator in separatorList)
		{
			if (separator < Items.Count)
			{
				Bar.BeginGroupAt(Items[separator]);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void UpdateSeparatorIndices()
	{
		separatorList.SuspendEvents();
		separatorList.Clear();
		if (Items == null)
		{
			return;
		}
		int num = -1;
		foreach (BarItem item in Items)
		{
			num++;
			if (Bar.IsGroupBeginning(item))
			{
				separatorList.Add(num);
			}
		}
		separatorList.ResumeEvents(throwEvent: false);
	}

	public void BeginGroupAt(BarItem barItem)
	{
		Bar.BeginGroupAt(barItem);
		UpdateSeparatorIndices();
	}

	public void RemoveGroupAt(BarItem barItem)
	{
		Bar.RemoveGroupAt(barItem);
		UpdateSeparatorIndices();
	}

	public bool IsGroupBeginning(BarItem barItem)
	{
		return Bar.IsGroupBeginning(barItem);
	}

	private Size GetPreferredSizeInternal(int curWidth, int curHeight)
	{
		SizeF preferredSize = new SizeF(2.1474836E+09f, 2.1474836E+09f);
		if (IsHorizontallyAligned)
		{
			preferredSize.Width = curWidth;
			preferredSize.Height = 10f;
		}
		if (IsVerticallyAligned)
		{
			preferredSize.Width = 10f;
			preferredSize.Height = curHeight;
		}
		GraphicsProvider graphicsProvider = new GraphicsProvider(this);
		barRenderer.GetPreferredSize(graphicsProvider, ref preferredSize);
		graphicsProvider.Dispose();
		preferredSize.Width += 1f;
		preferredSize.Height += 1f;
		return Size.Round(preferredSize);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		Size correctlySize = GetCorrectlySize(width, height);
		width = correctlySize.Width;
		height = correctlySize.Height;
		Point correctlyLocation = GetCorrectlyLocation(x, y, width, height);
		x = correctlyLocation.X;
		y = correctlyLocation.Y;
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnDockChanged(EventArgs e)
	{
		SetRendererDock(barRenderer, Dock);
		UpdateSize();
		base.OnDockChanged(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.FontHeight = -1;
		foreach (BarItem item in Items)
		{
			item.CustomTextFont = Font;
		}
		UpdateSize();
		base.OnFontChanged(e);
	}

	[DocumentationExclude]
	protected void SetNeedLayout(bool value)
	{
		needLayout = value;
	}

	[DocumentationExclude]
	public void OnBarBoundsChanged()
	{
		SetNeedLayout(value: true);
		Invalidate();
	}

	[DocumentationExclude]
	public void MoveMenuNavigation(bool forward)
	{
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (NeedLayout)
		{
			GraphicsProvider graphicsProvider = new GraphicsProvider(e.Graphics);
			Layout(graphicsProvider);
			graphicsProvider.Dispose();
		}
		base.OnPaint(e);
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		if (!base.UseThemes)
		{
			if (bgBrush.IsEmpty)
			{
				switch (base.Style)
				{
				case VisualStyle.Office2003:
					DrawBackgroundOffice2003(e.Graphics);
					break;
				case VisualStyle.Office2007:
				case VisualStyle.Office2007Outlook:
					DrawBackgroundOffice2007(e.Graphics);
					break;
				case VisualStyle.VS2005:
					DrawBackgroundVS2005(e.Graphics);
					break;
				default:
					base.OnPaintBackground(e);
					break;
				}
			}
			else
			{
				base.OnPaintBackground(e);
				BrushPaint.FillRectangle(e.Graphics, base.ClientRectangle, bgBrush);
			}
		}
		else
		{
			base.OnPaintBackground(e);
		}
	}

	private void DrawBackgroundOffice2003(Graphics g)
	{
		BrushInfo brush = new BrushInfo(GradientStyle.Vertical, Office2003Colors.MenuMarginColorLight, Office2003Colors.MenuMarginColorDark);
		BrushPaint.FillRectangle(g, base.ClientRectangle, brush);
	}

	private void DrawBackgroundVS2005(Graphics g)
	{
		BrushInfo brush = new BrushInfo(GradientStyle.Vertical, VS2005Colors.CommandBarLightColor, VS2005Colors.CommandBarDarkColor);
		BrushPaint.FillRectangle(g, base.ClientRectangle, brush);
	}

	private void DrawBackgroundOffice2007(Graphics g)
	{
		Color groupBarItemColorLight = Office2007ColorTable.GroupBarItemColorLight;
		Color groupBarItemColorDark = Office2007ColorTable.GroupBarItemColorDark;
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
		blend.Factors = new float[4] { 0f, 0.5f, 1f, 0.5f };
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(base.ClientRectangle, groupBarItemColorLight, groupBarItemColorDark, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = blend;
		g.FillRectangle(linearGradientBrush, base.ClientRectangle);
	}

	public override bool ShouldDelegateBGDrawingToParentWhenThemed()
	{
		return false;
	}

	[DocumentationExclude]
	protected override void Layout(IGraphicsProvider gp)
	{
		SetNeedLayout(value: false);
		UpdateSize();
		base.Layout(gp);
	}

	private void UpdateSize()
	{
		if (base.Parent != null)
		{
			base.Size = GetCorrectlySize(base.Width, base.Height);
		}
	}

	[DocumentationExclude]
	protected internal override void ProcessDragOver(DragEventArgs drgevent)
	{
		base.ProcessDragOver(drgevent);
	}

	[DocumentationExclude]
	protected internal override void ProcessDragDrop(DragEventArgs e)
	{
		base.ProcessDragDrop(e);
	}

	[DocumentationExclude]
	protected internal override void ProcessDragLeave(EventArgs e)
	{
		base.ProcessDragLeave(e);
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		base.OnDragOver(drgevent);
	}

	protected override void OnDragDrop(DragEventArgs e)
	{
		base.OnDragDrop(e);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		base.OnDragLeave(e);
	}

	private BarItem GetItemByShortcut(int shortcut)
	{
		return m_shortcutsHash[shortcut] as BarItem;
	}

	private void Items_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (!(e.Element is BarItem barItem))
		{
			return;
		}
		barItem.PropertyChanged += barItem_PropertyChanged;
		ParentBarItem parentBarItem = barItem as ParentBarItem;
		switch (e.Action)
		{
		case CollectionChangeAction.Add:
			if (parentBarItem != null)
			{
				parentBarItem.Style = base.Style;
				if (parentBarItem.Items != null)
				{
					parentBarItem.Items.CollectionChanged += Items_CollectionChanged;
				}
			}
			if (barItem is IIgnoreWorkingArea ignoreWorkingArea)
			{
				ignoreWorkingArea.IgnoreWorkingArea = IgnoreWorkingArea;
			}
			if (barItem.Shortcut != Shortcut.None)
			{
				m_shortcutsHash[(int)barItem.Shortcut] = barItem;
			}
			break;
		case CollectionChangeAction.Remove:
			if (parentBarItem != null && parentBarItem.Items != null)
			{
				parentBarItem.Items.CollectionChanged -= Items_CollectionChanged;
			}
			if (barItem.Shortcut != Shortcut.None)
			{
				m_shortcutsHash.Remove((int)barItem.Shortcut);
			}
			break;
		}
	}

	private void barItem_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "Shortcut")
		{
			if (e.OldValue != null && m_shortcutsHash[(int)e.OldValue] != null)
			{
				m_shortcutsHash.Remove((int)e.OldValue);
			}
			if (e.NewValue != null)
			{
				m_shortcutsHash[(int)e.NewValue] = sender;
			}
		}
		else if (e.PropertyName == "Visible")
		{
			LayoutEventArgs levent = new LayoutEventArgs(this, "Visible");
			OnLayout(levent);
		}
	}

	public void ShowPopup(ParentBarItem item)
	{
		barRenderer.SetCurrentTrackItem(Items.IndexOf(item), forceDropDown: true, setDefaultSelection: true);
	}

	public void HidePopup()
	{
		barRenderer.SetCurrentTrackItem(-1, forceDropDown: false, setDefaultSelection: false);
	}
}
