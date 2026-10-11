using System;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Microsoft.Win32;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
public class BarControlInternal : Control, IBarControl, IThemedControl, IBarItemContainerControl
{
	private const int DEF_SYS_MENU_VERTICAL_OFFSET = 3;

	protected internal BarRenderer barRenderer;

	private Bar bar;

	private IBarHost barHost;

	private Form hostedForm;

	private MdiSysMenuProvider smProvider;

	protected internal bool forceMultiline;

	private ThemedToolBarDrawing themedDrawing;

	private bool themesEnabled;

	private Font font;

	private VisualStyle style = VisualStyle.OfficeXP;

	private ToolBarAccessibleObject tbao;

	private static Font menuFont;

	private IPopupParent popupParent;

	internal BarControlInternalWeakContainer barControlInternalWeakContainer;

	private bool m_bInDesignMode;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IBarHost BarHost
	{
		get
		{
			return barHost;
		}
		set
		{
			barHost = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IBarRenderer Renderer => barRenderer;

	[Description("Specifies the visual style of this Control.")]
	[DefaultValue(VisualStyle.OfficeXP)]
	[Category("Appearance")]
	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style != value)
			{
				style = value;
				InitBackColor();
				if (barRenderer != null)
				{
					barRenderer.Style = Style;
				}
				if (smProvider != null)
				{
					smProvider.Style = Style;
				}
				UpdateColorScheme();
			}
		}
	}

	private bool IsMainMenu
	{
		get
		{
			if ((Bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				return true;
			}
			return false;
		}
	}

	[DocumentationExclude]
	protected bool UseThemes
	{
		get
		{
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
			{
				return true;
			}
			return false;
		}
	}

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[DocumentationExclude]
	protected internal bool IsRTL => ((IBarControl)this).IsRightToLeft;

	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
	[DefaultValue(false)]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				barRenderer.ThemesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
				InitBackColor();
			}
		}
	}

	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool DesignMode
	{
		get
		{
			if (!base.DesignMode)
			{
				return InDesignMode;
			}
			return true;
		}
	}

	protected internal virtual bool InDesignMode
	{
		get
		{
			return m_bInDesignMode;
		}
		set
		{
			m_bInDesignMode = value;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	public virtual IPopupParent PopupParent
	{
		get
		{
			return popupParent;
		}
		set
		{
			popupParent = value;
		}
	}

	public override Font Font
	{
		get
		{
			if (font == null)
			{
				return menuFont;
			}
			return font;
		}
		set
		{
			if (font != value)
			{
				font = value;
				OnFontChanged(EventArgs.Empty);
				if (barRenderer != null)
				{
					barRenderer.InvalidateCachedTextSizes();
				}
				OnBarBoundsAffected();
			}
		}
	}

	[DocumentationExclude]
	public bool HintViaHotKeyPrefix
	{
		set
		{
			if (barRenderer != null)
			{
				barRenderer.HintViaHotKeyPrefix = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public CommandBarDockState Alignment
	{
		get
		{
			return barRenderer.Alignment;
		}
		set
		{
			barRenderer.Alignment = value;
		}
	}

	ThemedToolBarDrawing IBarControl.ThemedDrawing => themedDrawing;

	bool IBarControl.UseControlForeColor => GetUseControlForeColor();

	[Browsable(false)]
	public virtual bool LargeIcons
	{
		get
		{
			if (Bar != null && Bar.Manager != null)
			{
				return Bar.Manager.LargeIcons;
			}
			return false;
		}
		set
		{
		}
	}

	bool IBarControl.IsRightToLeft
	{
		get
		{
			bool flag = false;
			if (Bar != null && Bar.Manager != null)
			{
				return Bar.Manager.IsRTL;
			}
			return RightToLeft.Yes == RightToLeft;
		}
	}

	[Description("Gets or Sets the Bar.")]
	[DocumentationExclude]
	public virtual Bar Bar
	{
		get
		{
			return bar;
		}
		set
		{
			if (bar == value)
			{
				return;
			}
			if (bar != null)
			{
				bar.PropertyChanged -= Bar_PropertyChanged;
			}
			bar = value;
			if (bar != null)
			{
				bar.PropertyChanged += Bar_PropertyChanged;
			}
			if (tbao != null)
			{
				tbao.SetBarItemContainer(bar);
			}
			if (bar == null)
			{
				RendererChanged(null);
			}
			else
			{
				if (!UpdateRendererOnBarChange())
				{
					barRenderer.Bar = bar;
				}
				SynthesizeName();
			}
			if (bar != null)
			{
				BarManager manager = bar.Manager;
				if (manager != null && manager.MainFrameBarManager != null)
				{
					barRenderer.ActivateFormFromBar = manager.MainFrameBarManager.ActivateFormFromBar;
				}
			}
		}
	}

	[DocumentationExclude]
	protected virtual Form HostedForm
	{
		get
		{
			return hostedForm;
		}
		set
		{
			if (hostedForm != value)
			{
				if (hostedForm != null)
				{
					hostedForm.Deactivate -= FormDeactivated;
				}
				hostedForm = value;
				if (hostedForm != null)
				{
					hostedForm.Deactivate += FormDeactivated;
				}
			}
		}
	}

	internal bool XPMenuActive
	{
		get
		{
			if (barRenderer == null)
			{
				return false;
			}
			return barRenderer.XPMenuActive;
		}
		set
		{
			if (barRenderer != null)
			{
				barRenderer.XPMenuActive = value;
			}
		}
	}

	[Description("This event will be fired when the ThemesEnabled property is changed.")]
	public event EventHandler ThemeChanged;

	static BarControlInternal()
	{
		menuFont = SystemInformation.MenuFont;
		SystemEvents.UserPreferenceChanged += System_UserPreferenceChanged;
	}

	private static void System_UserPreferenceChanged(object sender, UserPreferenceChangedEventArgs e)
	{
		menuFont = SystemInformation.MenuFont;
	}

	public BarControlInternal()
	{
		SetStyle(ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		AllowDrop = true;
		base.TabStop = false;
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedToolBarDrawing(this, "TOOLBAR");
		}
		barControlInternalWeakContainer = new BarControlInternalWeakContainer(this);
		MenuColors.MenuColorsChanged += barControlInternalWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += barControlInternalWeakContainer.Office2003ColorsChangedWeakEventHandler;
		SystemEvents.UserPreferenceChanged += System_UPChanged;
	}

	internal void System_UPChanged(object sender, UserPreferenceChangedEventArgs e)
	{
		if (barRenderer != null)
		{
			barRenderer.InvalidateCachedTextSizes();
		}
		OnBarBoundsAffected();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SystemEvents.UserPreferenceChanged -= System_UserPreferenceChanged;
			MenuColors.MenuColorsChanged -= MenuColorsChanged;
			Office2003Colors.MenuColorsChanged -= MenuColorsChanged;
			SystemEvents.UserPreferenceChanged -= System_UPChanged;
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
			if (barRenderer != null)
			{
				barRenderer.Dispose();
				barRenderer = null;
			}
			if (smProvider != null)
			{
				smProvider.NeedMenuButtonsChanged -= SysMenuProvider_NeedMenuButtonsChanged;
				smProvider = null;
			}
			if (hostedForm != null)
			{
				if (hostedForm != null)
				{
					hostedForm.Deactivate -= FormDeactivated;
				}
				hostedForm = null;
			}
			barHost = null;
			if (tbao != null)
			{
				tbao.SetBarItemContainer(null);
				tbao = null;
			}
		}
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	protected override AccessibleObject CreateAccessibilityInstance()
	{
		if (Bar != null)
		{
			tbao = new ToolBarAccessibleObject(Bar, this);
			return tbao;
		}
		return null;
	}

	private void InitBackColor()
	{
		if ((UseThemes && style != VisualStyle.Office2007 && style != VisualStyle.Office2007Outlook) || style == VisualStyle.OfficeXP || style == VisualStyle.Default)
		{
			InitThemedOrXPBackColor();
		}
		else
		{
			Init2003BackColor();
		}
	}

	[DocumentationExclude]
	protected virtual void Init2003BackColor()
	{
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		if (HostedForm != null && HostedForm is CommandBarForm)
		{
			BackColor = HostedForm.BackColor;
		}
		else
		{
			BackColor = Color.Transparent;
		}
	}

	[DocumentationExclude]
	protected virtual void InitThemedOrXPBackColor()
	{
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: false);
		ResetBackColor();
	}

	[DocumentationExclude]
	public override void ResetBackColor()
	{
		base.ResetBackColor();
	}

	protected bool ShouldSerializeBackColor()
	{
		if (style == VisualStyle.Office2003 && BackColor == Color.Transparent)
		{
			return false;
		}
		MethodInfo method = typeof(Control).GetMethod("ShouldSerializeBackColor", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			return (bool)method.Invoke(this, new object[0]);
		}
		return true;
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	[DocumentationExclude]
	public virtual void GetPreferredSize(ref SizeF preferredSize)
	{
		if (barRenderer == null)
		{
			preferredSize = new SizeF(2f, 20f);
			return;
		}
		GraphicsProvider graphicsProvider = new GraphicsProvider(this);
		barRenderer.GetPreferredSize(graphicsProvider, ref preferredSize);
		graphicsProvider.Dispose();
		if (bar != null && (bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None && smProvider != null && smProvider.NeedMenuButtons)
		{
			preferredSize.Width += MdiSysMenuProvider.ButtonHeight * 3 + 20 + 2;
			if (preferredSize.Height < 20f)
			{
				preferredSize.Height = 20f;
			}
		}
	}

	[DocumentationExclude]
	protected bool UpdateRendererOnBarChange()
	{
		bool flag = barRenderer is MultilineBarRenderer;
		if (barRenderer == null || ((bar.BarStyle & BarStyle.MultiLine) > BarStyle.None && !flag) || ((bar.BarStyle & BarStyle.MultiLine) == 0 && flag))
		{
			RendererChanged(null);
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected internal virtual void RendererChanged(BarRenderer rendererNew)
	{
		if (barRenderer != null)
		{
			barRenderer.Detach();
			barRenderer.Dispose();
			barRenderer = null;
		}
		if (rendererNew != null)
		{
			barRenderer = rendererNew;
		}
		else if (bar != null)
		{
			if ((bar.BarStyle & BarStyle.MultiLine) == 0 && !forceMultiline)
			{
				barRenderer = new SingleLineBarRenderer(this);
			}
			else
			{
				barRenderer = new MultilineBarRenderer(this);
			}
		}
		if (bar != null)
		{
			barRenderer.Bar = bar;
		}
		if (barRenderer != null)
		{
			barRenderer.Style = Style;
		}
		OnBarBoundsAffected();
	}

	[DocumentationExclude]
	public bool ShouldSerializeFont()
	{
		if (font == null)
		{
			return false;
		}
		return true;
	}

	[DocumentationExclude]
	public override void ResetFont()
	{
		Font = null;
	}

	[DocumentationExclude]
	public void StartKeyboardBasedNavigation()
	{
		barRenderer.StartKeyboardNavigation();
	}

	[DocumentationExclude]
	public bool CanStartKeybardBasedNavigation()
	{
		if ((Bar.BarStyle & BarStyle.IsStatusBar) > BarStyle.None || !base.Visible || !barRenderer.CanStartKeyboardNavigation())
		{
			return false;
		}
		return true;
	}

	[DocumentationExclude]
	public void StopKeyboardBasedNavigation()
	{
		barRenderer.StopKeyboardNavigation();
	}

	[DocumentationExclude]
	public bool IsKeyboardNavigationOn()
	{
		return barRenderer.IsKeyboardNavigationOn();
	}

	bool IBarControl.RequiresActiveFormForMouseTrack()
	{
		return RequiresActiveFormForMouseTrack();
	}

	[DocumentationExclude]
	protected virtual bool RequiresActiveFormForMouseTrack()
	{
		return true;
	}

	[DocumentationExclude]
	protected virtual bool GetUseControlForeColor()
	{
		return false;
	}

	private void SynthesizeName()
	{
		if (Bar != null)
		{
			string text = "BarControl_" + Bar.BarName;
			text = text.Replace(' ', '_');
			base.Name = text;
		}
	}

	[DocumentationExclude]
	protected virtual void Bar_PropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "BarStyle")
		{
			UpdateRendererOnBarChange();
		}
		else if (e.PropertyName == "BarName")
		{
			SynthesizeName();
		}
	}

	[DocumentationExclude]
	public void OnBarBoundsAffected()
	{
		if (barHost != null)
		{
			barHost.OnBarBoundsChanged();
		}
	}

	[DocumentationExclude]
	public virtual bool ShouldPreProcessTab()
	{
		return true;
	}

	[DocumentationExclude]
	public virtual bool NeedKey(Keys key)
	{
		return false;
	}

	[DocumentationExclude]
	public void OnRepaint(RectangleF affectedRect)
	{
		Rectangle rc = Rectangle.Ceiling(affectedRect);
		if ((float)rc.Y > affectedRect.Y)
		{
			rc.Inflate(0, 1);
		}
		Invalidate(rc, invalidateChildren: true);
	}

	[DocumentationExclude]
	public Graphics GetGraphics()
	{
		return CreateGraphics();
	}

	[DocumentationExclude]
	public Control GetControl()
	{
		return this;
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (barRenderer != null && base.IsHandleCreated)
		{
			GraphicsProvider graphicsProvider = new GraphicsProvider(this);
			Layout(graphicsProvider);
			graphicsProvider.Dispose();
		}
		base.OnLayout(levent);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		OnLayout(new LayoutEventArgs(this, "Bounds"));
		base.OnHandleCreated(e);
	}

	internal void MenuColorsChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
		Refresh();
	}

	[DocumentationExclude]
	protected new virtual void Layout(IGraphicsProvider gp)
	{
		Rectangle rectangle = base.ClientRectangle;
		if (smProvider != null && smProvider.NeedMenuButtons)
		{
			bool isRTL = IsRTL;
			int buttonHeight = MdiSysMenuProvider.ButtonHeight;
			bool flag = Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right;
			if (flag)
			{
				rectangle = new Rectangle(rectangle.Top, rectangle.Left, rectangle.Height, rectangle.Width);
			}
			smProvider.IsVertical = flag;
			smProvider.SystemIconRect = new Rectangle(isRTL ? (rectangle.Right - 1 - buttonHeight) : (rectangle.Left + 1), rectangle.Top + 3, buttonHeight, buttonHeight);
			rectangle.X++;
			if (!isRTL)
			{
				rectangle.X += buttonHeight;
			}
			rectangle.Width -= buttonHeight + 1;
			if (smProvider.WndActiveChild != null)
			{
				int num = 0;
				if (!smProvider.CloseButtonHidden)
				{
					num = buttonHeight;
					if (!smProvider.MinimizeButtonHidden)
					{
						num = (buttonHeight + 1) * 3;
					}
					if (isRTL)
					{
						smProvider.ControlBoxRect = new Rectangle(rectangle.Left + 1, rectangle.Top + 3, num, buttonHeight);
					}
					else
					{
						smProvider.ControlBoxRect = new Rectangle(rectangle.Right - num - 1, rectangle.Top + 3, num, buttonHeight);
					}
				}
				if (isRTL)
				{
					rectangle.X += num;
					rectangle.Width += num;
				}
				else
				{
					rectangle.Width -= num;
				}
			}
			if (flag)
			{
				rectangle = new Rectangle(rectangle.Top, rectangle.Left, rectangle.Height, rectangle.Width);
			}
		}
		barRenderer.Bounds = rectangle;
		barRenderer.Layout(gp);
		Invalidate(invalidateChildren: false);
	}

	protected virtual void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		UpdateColorScheme();
		if (barRenderer != null)
		{
			barRenderer.OnPaint(e.Graphics, e.ClipRectangle);
		}
		if (smProvider != null)
		{
			smProvider.HandlePaint(e.Graphics);
		}
		base.OnPaint(e);
	}

	public virtual bool ShouldDelegateBGDrawingToParentWhenThemed()
	{
		return true;
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		HostedForm = FindForm();
	}

	private void FormDeactivated(object sender, EventArgs e)
	{
		if (Focused)
		{
			barRenderer.OnFormDeactivated();
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 && bar != null && FindForm() != null)
		{
			if (bar.Manager == null || bar.Manager.MainFrameBarManager == null)
			{
				if (Form.ActiveForm != FindForm() && (Form.ActiveForm == null || Form.ActiveForm.ActiveMdiChild != FindForm()))
				{
					m.Result = (IntPtr)3;
				}
				return;
			}
			if (!bar.Manager.DesignMode && bar.Manager.MainFrameBarManager.Form != FindForm())
			{
				m.Result = (IntPtr)3;
				return;
			}
		}
		base.WndProc(ref m);
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (barRenderer.ProcessCmdKey(ref msg, keyData))
		{
			return true;
		}
		return base.ProcessCmdKey(ref msg, keyData);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		if (base.IsHandleCreated)
		{
			barRenderer.OnMouseUp(e);
			if (smProvider != null)
			{
				smProvider.HandleMouseUp(new Point(e.X, e.Y));
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		barRenderer.OnMouseMove(e);
		if (smProvider != null)
		{
			smProvider.HandleMouseMove(new Point(e.X, e.Y));
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (barRenderer != null)
		{
			barRenderer.OnMouseLeave(e);
		}
		if (smProvider != null)
		{
			smProvider.HandleMouseLeave();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (!barRenderer.OnMouseDown(e))
		{
			XPMenuActive = true;
			if (smProvider != null)
			{
				smProvider.HandleMouseDown(new Point(e.X, e.Y));
			}
			base.OnMouseDown(e);
		}
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		base.OnMouseWheel(e);
		barRenderer.OnMouseWheel(e);
	}

	protected override void OnMouseDoubleClick(MouseEventArgs e)
	{
		if (base.IsHandleCreated)
		{
			barRenderer.OnMouseDoubleClick(e);
			if (smProvider != null)
			{
				smProvider.HandleMouseDoubleClick(PointToClient(Control.MousePosition));
			}
		}
		base.OnMouseDoubleClick(e);
	}

	[DocumentationExclude]
	protected internal virtual void ProcessDragOver(DragEventArgs drgevent)
	{
		barRenderer.OnDragOver(drgevent);
	}

	protected override void OnDragOver(DragEventArgs drgevent)
	{
		ProcessDragOver(drgevent);
		base.OnDragOver(drgevent);
	}

	[DocumentationExclude]
	protected internal virtual void ProcessDragDrop(DragEventArgs e)
	{
		barRenderer.OnDragDrop(e);
	}

	protected override void OnDragDrop(DragEventArgs e)
	{
		ProcessDragDrop(e);
		base.OnDragDrop(e);
	}

	[DocumentationExclude]
	protected internal virtual void ProcessDragLeave(EventArgs e)
	{
		barRenderer.OnDragLeave(e);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		ProcessDragLeave(e);
		base.OnDragLeave(e);
	}

	[DocumentationExclude]
	protected virtual void ProcessGiveFeedback(GiveFeedbackEventArgs gfbevent)
	{
		barRenderer.OnGiveFeedback(gfbevent);
	}

	protected override void OnGiveFeedback(GiveFeedbackEventArgs gfbevent)
	{
		ProcessGiveFeedback(gfbevent);
		base.OnGiveFeedback(gfbevent);
	}

	[DocumentationExclude]
	public void ActLikeMainMenu(Form mdiParent, bool designTime)
	{
		if (mdiParent != null)
		{
			if (mdiParent.IsMdiContainer && !designTime && smProvider == null)
			{
				smProvider = MdiSysMenuManager.GetProviderForForm(mdiParent);
				smProvider.NeedMenuButtonsChanged += SysMenuProvider_NeedMenuButtonsChanged;
				smProvider.PerformingTransform += smProvider_PerformingTransform;
				smProvider.ActivateProvider(this);
				smProvider.Style = Style;
			}
		}
		else if (smProvider != null)
		{
			smProvider.NeedMenuButtonsChanged -= SysMenuProvider_NeedMenuButtonsChanged;
			smProvider.DeactivateProvider();
			smProvider = null;
		}
	}

	AccessibleStates IBarItemContainerControl.GetAccessibilityState(BarItem item)
	{
		AccessibleStates accessibleStates = AccessibleStates.None;
		if (item.Checked)
		{
			accessibleStates |= AccessibleStates.Checked;
		}
		accessibleStates = ((!item.Enabled) ? (accessibleStates | AccessibleStates.Unavailable) : (accessibleStates | AccessibleStates.Focusable));
		if (barRenderer != null && barRenderer.CurrentHotTrackItem == item)
		{
			accessibleStates = ((!barRenderer.IsKeyboardNavigationOn()) ? (accessibleStates | AccessibleStates.HotTracked) : (accessibleStates | AccessibleStates.Focused));
		}
		return accessibleStates;
	}

	[DocumentationExclude]
	public Rectangle GetBoundsOf(BarItem item)
	{
		if (barRenderer != null)
		{
			return RectangleToScreen(barRenderer.GetBoundsOf(item));
		}
		return Rectangle.Empty;
	}

	public BarItem HitTest(int x, int y)
	{
		if (barRenderer != null)
		{
			bool beforeOrAfter = false;
			return barRenderer.HitTestBarItem(PointToClient(new Point(x, y)), ref beforeOrAfter);
		}
		return null;
	}

	private void SysMenuProvider_NeedMenuButtonsChanged(object sender, EventArgs e)
	{
		OnBarBoundsAffected();
	}

	[DocumentationExclude]
	public bool ProcessShortcut(char c)
	{
		bool result = false;
		if (base.Visible)
		{
			Form form = FindForm();
			Control control = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus());
			Form form2 = ((control != null) ? control.FindForm() : Form.ActiveForm);
			if (form == form2 || (form2 != null && ((form2.IsMdiChild && form2.MdiParent == form) || (form2.Parent != null && form == form2.Parent.FindForm()) || (form != null && form.Parent == form2))) || form == form2.Owner)
			{
				result = barRenderer.ProcessShortcut(c);
			}
		}
		return result;
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		return barRenderer.ProcessMnemonic(charCode);
	}

	private void smProvider_PerformingTransform(object sender, TransformEventArgs e)
	{
		if (barRenderer != null && (Alignment == CommandBarDockState.Left || Alignment == CommandBarDockState.Right))
		{
			e.TransformOffsetY = (int)barRenderer.Bounds.Width - 3;
		}
	}
}
