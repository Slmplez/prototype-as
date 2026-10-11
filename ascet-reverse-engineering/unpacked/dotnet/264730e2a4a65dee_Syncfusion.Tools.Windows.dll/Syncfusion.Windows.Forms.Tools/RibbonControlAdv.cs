using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Core.Licensing;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[ProvideProperty("UseInQuickAccessMenu", typeof(Component))]
[ProvideProperty("Description", typeof(Component))]
[Localizable(true)]
[Description("Provides advanced options to create Office 2007 Style Ribbon.")]
[ToolboxBitmap(typeof(RibbonControlAdv), "ToolboxIcons.RibbonControlAdv.bmp")]
[ProvideProperty("UseInCustomQuickAccessDialog", typeof(Component))]
[Designer(typeof(RibbonControlAdvDesigner))]
public class RibbonControlAdv : ContainerControl, IOffice12Settings, IDockExtended, IExtenderProvider, ISupportInitialize, IMessageFilter
{
	private class RibbonControlLayout : LayoutEngine
	{
		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			if (container is RibbonControlAdv ribbonControlAdv)
			{
				_ = ribbonControlAdv.ClientRectangle;
				Rectangle displayRectangle = ribbonControlAdv.DisplayRectangle;
				Size preferredSize = ribbonControlAdv.HeaderInternal.GetPreferredSize(Size.Empty);
				int num = displayRectangle.Height - preferredSize.Height;
				if (ribbonControlAdv.BottomToolstripVisible)
				{
					BottomToolstrip bottomToolstrip = ribbonControlAdv.BottomToolstrip;
					int num2 = bottomToolstrip.Height + bottomToolstrip.Margin.Vertical;
					int y = displayRectangle.Bottom - num2 + bottomToolstrip.Margin.Top;
					bottomToolstrip.Width = displayRectangle.Width - bottomToolstrip.Margin.Horizontal;
					bottomToolstrip.Location = new Point(displayRectangle.X + bottomToolstrip.Margin.Left, y);
					num -= num2;
				}
				if (num >= 0)
				{
					if (ribbonControlAdv.ShowPanel && !ribbonControlAdv.MinimizePanel)
					{
						Rectangle bounds = new Rectangle(displayRectangle.X + 4, displayRectangle.Y + preferredSize.Height, displayRectangle.Width - 8, num);
						foreach (Control control in ribbonControlAdv.Controls)
						{
							if (control is RibbonPanel && control.Visible)
							{
								control.Bounds = bounds;
							}
						}
					}
					else
					{
						preferredSize.Height += num;
					}
				}
				ribbonControlAdv.HeaderInternal.Bounds = new Rectangle(displayRectangle.X, displayRectangle.Y, displayRectangle.Width, preferredSize.Height);
				return ribbonControlAdv.AutoSize;
			}
			return base.Layout(container, layoutEventArgs);
		}
	}

	internal class RibbonControlPopup : Control, IOffice12Settings
	{
		private RibbonControlAdv m_owner;

		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams createParams = base.CreateParams;
				createParams.Style |= int.MinValue;
				return createParams;
			}
		}

		internal RibbonControlAdv Owner => m_owner;

		LauncherStyle IOffice12Settings.LauncherStyle
		{
			get
			{
				return m_owner.LauncherStyle;
			}
			set
			{
				m_owner.LauncherStyle = value;
			}
		}

		bool IOffice12Settings.ShowCaption
		{
			get
			{
				return m_owner.ShowCaption;
			}
			set
			{
				m_owner.ShowCaption = value;
			}
		}

		bool IOffice12Settings.ShowLauncher
		{
			get
			{
				return m_owner.ShowLauncher;
			}
			set
			{
				m_owner.ShowLauncher = value;
			}
		}

		CaptionStyle IOffice12Settings.CaptionStyle
		{
			get
			{
				return m_owner.CaptionStyle;
			}
			set
			{
				m_owner.CaptionStyle = value;
			}
		}

		CaptionTextStyle IOffice12Settings.CaptionTextStyle
		{
			get
			{
				return m_owner.CaptionTextStyle;
			}
			set
			{
				m_owner.CaptionTextStyle = value;
			}
		}

		CaptionAlignment IOffice12Settings.CaptionAlignment
		{
			get
			{
				return m_owner.CaptionAlignment;
			}
			set
			{
				m_owner.CaptionAlignment = value;
			}
		}

		Font IOffice12Settings.CaptionFont
		{
			get
			{
				return m_owner.CaptionFont;
			}
			set
			{
				m_owner.CaptionFont = value;
			}
		}

		int IOffice12Settings.CaptionMinHeight
		{
			get
			{
				return m_owner.CaptionMinHeight;
			}
			set
			{
				m_owner.CaptionMinHeight = value;
			}
		}

		ToolStripBorderStyle IOffice12Settings.BorderStyle
		{
			get
			{
				return m_owner.BorderStyle;
			}
			set
			{
				m_owner.BorderStyle = value;
			}
		}

		ToolStripEx.ColorScheme IOffice12Settings.OfficeColorScheme
		{
			get
			{
				return m_owner.OfficeColorScheme;
			}
			set
			{
				m_owner.OfficeColorScheme = value;
			}
		}

		public RibbonControlPopup(RibbonControlAdv owner)
		{
			m_owner = owner;
			SetStyle(ControlStyles.ContainerControl, value: true);
		}

		protected override void OnLayout(LayoutEventArgs levent)
		{
			foreach (Control control in base.Controls)
			{
				if (control.Visible)
				{
					control.SetBounds(0, 0, base.Width, base.Height);
				}
			}
		}

		protected override void WndProc(ref Message m)
		{
			switch ((Msg)m.Msg)
			{
			case Msg.WM_SIZE:
				UpdateRegion(WindowsAPI.LOW_ORDER((int)m.LParam), WindowsAPI.HIGH_ORDER((int)m.LParam));
				break;
			case Msg.WM_MOUSEACTIVATE:
				m.Result = (IntPtr)3L;
				return;
			}
			base.WndProc(ref m);
		}

		private void UpdateRegion(int width, int height)
		{
			Region region = null;
			if (width > 0 && height > 0)
			{
				region = RendererUtils.GetRoundedRegion(new Rectangle(0, 0, width, height), 2);
			}
			base.Region = region;
		}

		internal void CreateHandleInternal()
		{
			CreateHandle();
			m_owner.Focus();
		}
	}

	public delegate void OnRightClick(object sender, ContextMenuEventArgs e);

	private const int BORDER_TOP = 1;

	private const int BORDER_BOTTOM = 1;

	private const int PANEL_MARGIN = 4;

	internal const int DEF_MENU_BUTTON_WIDTH = 40;

	private const SetWindowPosFlags SWP_SHOWPOPUP = SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_SHOWWINDOW;

	private const SetWindowPosFlags SWP_HIDEPOPUP = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_HIDEWINDOW;

	private const RedrawWindowFlags rdwUpdate = (RedrawWindowFlags)257;

	private bool m_ShowQuickItemsDropDownButton = true;

	private RibbonForm m_parent;

	private RibbonControlAdvHeader m_header;

	private RibbonControlPopup m_popup;

	private LauncherStyle m_LauncherStyle = LauncherStyle.Office2007;

	private bool m_bShowCaption = true;

	private bool m_bShowLauncher = true;

	private bool m_bShowPanelOnMouseHove;

	private bool m_bMinimizePanel;

	private bool m_bShowPanel = true;

	private bool m_bVisiblePanel = true;

	private bool m_bCollapsedPanel;

	private bool m_bAllowCollapse = true;

	private bool m_bMouseWheelSupport = true;

	private int m_panelHeight;

	private CaptionStyle m_CaptionStyle = CaptionStyle.Bottom;

	private CaptionTextStyle m_CaptionTextStyle = CaptionTextStyle.Plain;

	private CaptionAlignment m_CaptionAlignment = CaptionAlignment.Center;

	private Font m_CaptionFont = Control.DefaultFont;

	private int m_nCaptionMinHeight;

	private ToolStripEx.ColorScheme m_ColorScheme;

	private ToolStripBorderStyle m_BorderStyle = ToolStripBorderStyle.Etched;

	private RibbonControlLayout m_layoutEngine;

	private DockStyleEx m_Dock = DockStyleEx.TopMost;

	private RibbonSystemText m_systemText;

	private static Hashtable m_ColorTables;

	private Dictionary<Component, string> m_descriptions;

	private List<Component> m_useInQMenuExtProp;

	private List<Component> m_useInCustomQDialog;

	private CallWndProcHook m_callWndProcHook;

	private ToolStripSeparator m_contextMenuSep;

	private ToolStripSeparator m_contextMenuSep2;

	private ToolStripSeparator m_contextMenuSep3;

	private ToolStripMenuItem m_contextMenuAddToQuick;

	private ToolStripMenuItem m_contextMenuRemoveFromQuick;

	private ToolStripMenuItem m_contextMenuCustomize;

	private ToolStripMenuItem m_contextMenuShowBelow;

	private ToolStripMenuItem m_contextMenuMinimize;

	private ContextMenuStripEx m_contextMenuStrip;

	private List<ToolStripItem> m_contextMenuItems;

	private BottomToolstrip m_bottomToolstrip;

	private ToolStripItem m_pressedItem;

	private RightToLeft m_rightToLeft = RightToLeft.Inherit;

	private bool m_bUpdateUIOnAppIdle;

	private ArrayList m_mergedTabs = new ArrayList();

	private ToolStripItem m_lastSelectedTab;

	private bool m_bSortTabItems;

	private bool scaleMenuButtonImage = true;

	[Description("Specifies the style of the launcher button.")]
	public LauncherStyle LauncherStyle
	{
		get
		{
			return m_LauncherStyle;
		}
		set
		{
			if (m_LauncherStyle != value)
			{
				m_LauncherStyle = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies whether the caption should be shown.")]
	public virtual bool ShowCaption
	{
		get
		{
			return m_bShowCaption;
		}
		set
		{
			if (m_bShowCaption != value)
			{
				m_bShowCaption = value;
				UpdatePanels();
			}
		}
	}

	[Description("Gets or sets a value indicating whether the launcher buttons are visible.")]
	public virtual bool ShowLauncher
	{
		get
		{
			return m_bShowLauncher;
		}
		set
		{
			if (m_bShowLauncher != value)
			{
				m_bShowLauncher = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the style (Top, Bottom) of caption")]
	public virtual CaptionStyle CaptionStyle
	{
		get
		{
			return m_CaptionStyle;
		}
		set
		{
			if (m_CaptionStyle != value)
			{
				m_CaptionStyle = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the style of caption text.")]
	public virtual CaptionTextStyle CaptionTextStyle
	{
		get
		{
			return m_CaptionTextStyle;
		}
		set
		{
			if (m_CaptionTextStyle != value)
			{
				m_CaptionTextStyle = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the alignment of caption in the control")]
	public virtual CaptionAlignment CaptionAlignment
	{
		get
		{
			return m_CaptionAlignment;
		}
		set
		{
			if (m_CaptionAlignment != value)
			{
				m_CaptionAlignment = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the caption font.")]
	public virtual Font CaptionFont
	{
		get
		{
			return m_CaptionFont;
		}
		set
		{
			if (m_CaptionFont != value)
			{
				m_CaptionFont = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the minimum height of caption.")]
	public virtual int CaptionMinHeight
	{
		get
		{
			return m_nCaptionMinHeight;
		}
		set
		{
			if (m_nCaptionMinHeight != value)
			{
				m_nCaptionMinHeight = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the borderstyle.")]
	public virtual ToolStripBorderStyle BorderStyle
	{
		get
		{
			return m_BorderStyle;
		}
		set
		{
			if (m_BorderStyle != value)
			{
				m_BorderStyle = value;
				UpdatePanels();
			}
		}
	}

	[Description("Specifies the color scheme (Silver, Blue).")]
	public virtual ToolStripEx.ColorScheme OfficeColorScheme
	{
		get
		{
			if (m_ColorScheme == ToolStripEx.ColorScheme.Default)
			{
				if (!(base.Parent is RibbonForm ribbonForm))
				{
					return ToolStripEx.ColorScheme.Managed;
				}
				return GetOfficeColorScheme(ribbonForm.ColorScheme);
			}
			return m_ColorScheme;
		}
		set
		{
			if (m_ColorScheme != value)
			{
				m_ColorScheme = value;
				UpdateRenderers();
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether ToolStripTabItems need to be sorted.")]
	[Category("Appearance")]
	public bool SortTabItems
	{
		get
		{
			return m_bSortTabItems;
		}
		set
		{
			if (m_bSortTabItems != value)
			{
				m_bSortTabItems = value;
				if (value && m_header != null && m_header.MainItems.Count > 0)
				{
					m_header.SortTabs();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies whether QuickItemsDropDownButton need to be shown.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public bool ShowQuickItemsDropDownButton
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
				if (HeaderInternal != null)
				{
					HeaderInternal.ShowQuickItemsDropDownButton = value;
				}
				if (BottomToolstrip != null)
				{
					BottomToolstrip.ShowQuickItemsDropDownButton = value;
				}
				Refresh();
			}
		}
	}

	[DefaultValue(false)]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public override bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			base.AutoSize = value;
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_layoutEngine == null)
			{
				m_layoutEngine = new RibbonControlLayout();
			}
			return m_layoutEngine;
		}
	}

	[Description("Gets or sets which control borders are docked to its parent control and determines how a control is resized with its parent.")]
	[DefaultValue(typeof(DockStyleEx), "TopMost")]
	public new DockStyleEx Dock
	{
		get
		{
			return m_Dock;
		}
		set
		{
			if (m_Dock != value)
			{
				m_Dock = value;
				switch (value)
				{
				case DockStyleEx.Top:
					base.Dock = DockStyle.Top;
					break;
				case DockStyleEx.Bottom:
					base.Dock = DockStyle.Bottom;
					break;
				case DockStyleEx.Left:
					base.Dock = DockStyle.Left;
					break;
				case DockStyleEx.Right:
					base.Dock = DockStyle.Right;
					break;
				case DockStyleEx.Fill:
					base.Dock = DockStyle.Fill;
					break;
				default:
					base.Dock = DockStyle.None;
					break;
				}
			}
		}
	}

	public override Rectangle DisplayRectangle
	{
		get
		{
			Rectangle displayRectangle = base.DisplayRectangle;
			displayRectangle.Y++;
			displayRectangle.Height -= 2;
			return displayRectangle;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			Size minimumSize = base.MinimumSize;
			Size preferredSize = HeaderInternal.GetPreferredSize(Size.Empty);
			if (minimumSize.Height < preferredSize.Height || !m_bVisiblePanel)
			{
				minimumSize.Height = preferredSize.Height;
			}
			return minimumSize;
		}
		set
		{
			base.MinimumSize = value;
		}
	}

	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_rightToLeft == RightToLeft.Inherit)
			{
				if (IsFormManager)
				{
					if (Form.RightToLeftLayout)
					{
						return Form.RightToLeft;
					}
				}
				else
				{
					Control control = base.Parent;
					if (control != null)
					{
						return control.RightToLeft;
					}
				}
				return RightToLeft.No;
			}
			return m_rightToLeft;
		}
		set
		{
			if (m_rightToLeft != value)
			{
				m_rightToLeft = value;
				OnRightToLeftChanged(EventArgs.Empty);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public IRibbonHeader Header => HeaderInternal;

	[DefaultValue(true)]
	[Browsable(false)]
	public bool MouseWheelSupport
	{
		get
		{
			return m_bMouseWheelSupport;
		}
		set
		{
			if (m_bMouseWheelSupport != value)
			{
				m_bMouseWheelSupport = value;
			}
		}
	}

	[DefaultValue(null)]
	[Description("Gets or sets the image to be displayed in the menu button.")]
	[Category("Menu Button")]
	public Image MenuButtonImage
	{
		get
		{
			return HeaderInternal.MenuButtonImage;
		}
		set
		{
			HeaderInternal.MenuButtonImage = value;
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether the menu button image should be scaled")]
	[Category("Menu Button")]
	public bool ScaleMenuButtonImage
	{
		get
		{
			return scaleMenuButtonImage;
		}
		set
		{
			if (scaleMenuButtonImage != value)
			{
				scaleMenuButtonImage = value;
			}
			HeaderInternal.Invalidate();
		}
	}

	[TypeConverter(typeof(MenuDropDownTypeConverter))]
	[Category("Menu Button")]
	[Description("Gets or sets the ToolStripDropDown to be displayed when menu button is clicked.")]
	public ToolStripDropDown MenuButtonDropDown
	{
		get
		{
			return HeaderInternal.MenuButtonDropDown;
		}
		set
		{
			HeaderInternal.MenuButtonDropDown = value;
		}
	}

	[Description("Gets the MenuDropDown to be displayed when menu button is clicked.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Menu Button")]
	[TypeConverter(typeof(ExpandableObjectConverter))]
	public MenuDropDown OfficeMenu => HeaderInternal.MenuButtonDropDown as MenuDropDown;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Menu Button")]
	public ToolStripItemCollection MenuButtonDropDownItems => HeaderInternal.MenuButton.DropDownItems;

	[Description("Gets or sets the menu button width.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(40)]
	[Category("Menu Button")]
	public int MenuButtonWidth
	{
		get
		{
			return HeaderInternal.MenuButtonWidth;
		}
		set
		{
			HeaderInternal.MenuButtonWidth = value;
		}
	}

	[DefaultValue(true)]
	[Localizable(true)]
	[Description("Gets or sets visibility of menu button.")]
	[Category("Menu Button")]
	public bool MenuButtonVisible
	{
		get
		{
			return HeaderInternal.MenuButtonVisible;
		}
		set
		{
			HeaderInternal.MenuButtonVisible = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets or Sets whether the form title bar should be removed and replaced with built in RibbonControlAdv system buttons")]
	public bool IsFormManager
	{
		get
		{
			RibbonForm form = Form;
			if (form != null)
			{
				return form.Appearance == RibbonForm.AppearanceType.Office2007;
			}
			return false;
		}
		set
		{
			RibbonForm form = Form;
			if (form != null)
			{
				form.Appearance = (value ? RibbonForm.AppearanceType.Office2007 : RibbonForm.AppearanceType.Normal);
			}
		}
	}

	[Browsable(false)]
	[Description("Gets or sets whether the panel is minimized.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool MinimizePanel
	{
		get
		{
			return m_bMinimizePanel;
		}
		set
		{
			if (m_bMinimizePanel != value && (m_bAllowCollapse || !value))
			{
				SetVisiblePanelCore(bVisible: false);
				m_bMinimizePanel = value;
				if (base.Parent != null)
				{
					base.Parent.SuspendLayout();
				}
				OnMinimizePanelChanged();
				if (base.Parent != null)
				{
					base.Parent.ResumeLayout(performLayout: false);
					base.Parent.PerformLayout();
				}
			}
		}
	}

	[Description("Gets or sets whether the panel can be shown for the ToolStripTabItem.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool ShowPanel
	{
		get
		{
			return m_bShowPanel;
		}
		set
		{
			if (m_bShowPanel != value)
			{
				m_bShowPanel = value;
				OnShowPanelChanged();
			}
		}
	}

	internal bool VisiblePanel
	{
		get
		{
			return m_bVisiblePanel;
		}
		set
		{
			if (m_bVisiblePanel != value)
			{
				SetVisiblePanelCore(value);
				OnVisiblePanelChanged();
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates whether the user can expand or collapse the RibbonPanel.")]
	[DefaultValue(true)]
	public bool AllowCollapse
	{
		get
		{
			return m_bAllowCollapse;
		}
		set
		{
			if (value != m_bAllowCollapse)
			{
				m_bAllowCollapse = value;
				OnAllowCollapseChanged();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates whether the Minimized RibbonPanel will be shown on mouse hover.")]
	public bool ShowPanelOnMouseHove
	{
		get
		{
			return m_bShowPanelOnMouseHove;
		}
		set
		{
			if (m_bShowPanelOnMouseHove != value)
			{
				m_bShowPanelOnMouseHove = value;
			}
		}
	}

	[Description("Gets or sets the form title alignment in RibbonControlAdv header.")]
	[DefaultValue(typeof(TextAlignment), "Left")]
	public TextAlignment TitleAlignment
	{
		get
		{
			return HeaderInternal.TitleAlignment;
		}
		set
		{
			HeaderInternal.TitleAlignment = value;
		}
	}

	[Description("Gets or sets the font settings of the title.")]
	public Font TitleFont
	{
		get
		{
			return HeaderInternal.TitleFont;
		}
		set
		{
			HeaderInternal.TitleFont = value;
		}
	}

	[Description("Specifies the text for the items in the Quick Access Toolbar Editor.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public RibbonSystemText SystemText
	{
		get
		{
			if (m_systemText == null)
			{
				m_systemText = new RibbonSystemText();
			}
			return m_systemText;
		}
	}

	protected Office12ColorTable ColorTable => m_ColorTables[OfficeColorScheme] as Office12ColorTable;

	internal RibbonForm Form => base.Parent as RibbonForm;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Collection of tab groups.")]
	public TabGroupCollection TabGroups => HeaderInternal.Groups;

	[Category("Layout")]
	[Description("Gets or sets visibility of quick panel.")]
	[DefaultValue(true)]
	public bool QuickPanelVisible
	{
		get
		{
			return HeaderInternal.QuickPanelVisible;
		}
		set
		{
			if (HeaderInternal.QuickPanelVisible != value)
			{
				HeaderInternal.QuickPanelVisible = value;
				BottomToolstripVisible = value && ShowQuickPanelBelowRibbon;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Layout")]
	[Description("Indicates whether quick access toolbar should be shown below ribbon.")]
	public bool ShowQuickPanelBelowRibbon
	{
		get
		{
			return HeaderInternal.ShowQuickPanelBelowRibbon;
		}
		set
		{
			if (HeaderInternal.ShowQuickPanelBelowRibbon != value)
			{
				SuspendLayout();
				HeaderInternal.ShowQuickPanelBelowRibbon = value;
				BottomToolstripVisible = value && QuickPanelVisible;
				ResumeLayout(performLayout: true);
			}
		}
	}

	[Description("Specifies whether the UpdateUI event should be fired in the next Application Idle event.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool UpdateUIOnAppIdle
	{
		get
		{
			return m_bUpdateUIOnAppIdle;
		}
		set
		{
			if (m_bUpdateUIOnAppIdle != value)
			{
				m_bUpdateUIOnAppIdle = value;
				if (m_bUpdateUIOnAppIdle)
				{
					Application.Idle += OnApplicationIdle;
				}
				else
				{
					Application.Idle -= OnApplicationIdle;
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
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

	[Description("Returns control's height")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Obsolete("Use Height property instead")]
	public int OccupiedHeight => base.Height;

	[DefaultValue(true)]
	[Description(" Gets or sets value indicating whether should show the context menu in Ribbon header.")]
	public bool ShowContextMenu
	{
		get
		{
			return HeaderInternal.ShowContextMenu;
		}
		set
		{
			HeaderInternal.ShowContextMenu = value;
		}
	}

	[TypeConverter(typeof(ReferenceConverter))]
	[DefaultValue(null)]
	public SuperAccelerator SuperAccelerator
	{
		get
		{
			return HeaderInternal.SuperAccelerator;
		}
		set
		{
			HeaderInternal.SuperAccelerator = value;
		}
	}

	internal RibbonControlAdvHeader HeaderInternal
	{
		get
		{
			if (m_header == null)
			{
				m_header = new RibbonControlAdvHeader(this);
				m_header.ItemAdded += OnHeaderItemAdded;
				m_header.ItemRemoved += OnHeaderItemRemoved;
				m_header.DoubleClick += OnHeaderDoubleClick;
				m_header.SizeChanged += OnHeaderSizeChanged;
				m_header.QuickAccessButton.DropDownOpening += DropDown_Opening;
				m_header.QuickAccessButton.DropDownOpened += DropDown_Opened;
				m_header.SelectedTabChanged += m_header_SelectedTabChanged;
				base.Controls.Add(m_header);
			}
			return m_header;
		}
	}

	internal RibbonControlPopup RibbonPopup
	{
		get
		{
			if (m_popup == null)
			{
				m_popup = new RibbonControlPopup(this);
			}
			return m_popup;
		}
	}

	internal List<Component> ItemsToShowInQuickMenu => m_useInQMenuExtProp;

	internal List<Component> ItemsToHideInCustomQuickDialog => m_useInCustomQDialog;

	internal BottomToolstrip BottomToolstrip
	{
		get
		{
			if (m_bottomToolstrip == null)
			{
				m_bottomToolstrip = new BottomToolstrip((RibbonControlAdvHeader.QuickItemsCollection)HeaderInternal.QuickItems);
				m_bottomToolstrip.Visible = ShowQuickPanelBelowRibbon;
				m_bottomToolstrip.Renderer = new Office12ToolStripRenderer(new OfficeBlack());
				base.Controls.Add(m_bottomToolstrip);
			}
			return m_bottomToolstrip;
		}
	}

	internal bool BottomToolstripVisible
	{
		get
		{
			return BottomToolstrip.Visible;
		}
		set
		{
			Control bottomToolstrip = BottomToolstrip;
			if (bottomToolstrip.Visible != value)
			{
				bottomToolstrip.Visible = value;
				if (value)
				{
					base.Height += bottomToolstrip.Height + bottomToolstrip.Margin.Vertical;
				}
				else
				{
					base.Height -= bottomToolstrip.Height + bottomToolstrip.Margin.Vertical;
				}
			}
		}
	}

	[Description("Occurs when right clicked on the Ribbon control and before context menu opens.")]
	public event OnRightClick BeforeContextMenuOpen;

	[Description("Occurs when the user double-clicks the Menu button.")]
	public event EventHandler MenuButtonDoubleClick
	{
		add
		{
			HeaderInternal.MenuButton.DoubleClick += value;
		}
		remove
		{
			HeaderInternal.MenuButton.DoubleClick -= value;
		}
	}

	[Description("Occurs when the user clicks the Menu button.")]
	public event EventHandler MenuButtonClick
	{
		add
		{
			HeaderInternal.MenuButton.Click += value;
		}
		remove
		{
			HeaderInternal.MenuButton.Click -= value;
		}
	}

	[Description("Occurs when the mouse pointer hovers over the Menu button.")]
	public event EventHandler MenuButtonHover
	{
		add
		{
			HeaderInternal.MenuButton.MouseHover += value;
		}
		remove
		{
			HeaderInternal.MenuButton.MouseHover -= value;
		}
	}

	[Description("Occurs when the RibbonControlAdv.UpdateUIOnAppIdle is set to true.")]
	[Category("Appearance")]
	public event EventHandler UpdateUI;

	[Description("Occurs before the DropDown of QuickItemsDropDownButton is shown.")]
	public event DropDownEventHandler BeforeCustomizeDropDownPopup;

	[Description("Occurs after the DropDown of QuickItemsDropDownButton is shown.")]
	public event EventHandler AfterCustomizeDropDownPopup;

	[Description("Occurs when selected(checked) ToolStripTabItem has changed.")]
	public event SelectedTabChangedEventHandler SelectedTabItemChanged;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler Click
	{
		add
		{
			base.Click += value;
		}
		remove
		{
			base.Click -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseClick
	{
		add
		{
			base.MouseClick += value;
		}
		remove
		{
			base.MouseClick -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseDoubleClick
	{
		add
		{
			base.MouseDoubleClick += value;
		}
		remove
		{
			base.MouseDoubleClick -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseDown
	{
		add
		{
			base.MouseDown += value;
		}
		remove
		{
			base.MouseDown -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event MouseEventHandler MouseUp
	{
		add
		{
			base.MouseUp += value;
		}
		remove
		{
			base.MouseUp -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseWheel
	{
		add
		{
			base.MouseWheel += value;
		}
		remove
		{
			base.MouseWheel -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseEnter
	{
		add
		{
			base.MouseEnter += value;
		}
		remove
		{
			base.MouseEnter -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event EventHandler MouseHover
	{
		add
		{
			base.MouseHover += value;
		}
		remove
		{
			base.MouseHover -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseLeave
	{
		add
		{
			base.MouseLeave += value;
		}
		remove
		{
			base.MouseLeave -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event MouseEventHandler MouseMove
	{
		add
		{
			base.MouseMove += value;
		}
		remove
		{
			base.MouseMove -= value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public new event EventHandler MouseCaptureChanged
	{
		add
		{
			base.MouseCaptureChanged += value;
		}
		remove
		{
			base.MouseCaptureChanged -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event KeyEventHandler KeyDown
	{
		add
		{
			base.KeyDown += value;
		}
		remove
		{
			base.KeyDown -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event KeyPressEventHandler KeyPress
	{
		add
		{
			base.KeyPress += value;
		}
		remove
		{
			base.KeyPress -= value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new event KeyEventHandler KeyUp
	{
		add
		{
			base.KeyUp += value;
		}
		remove
		{
			base.KeyUp -= value;
		}
	}

	static RibbonControlAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(RibbonControlAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		m_ColorTables = new Hashtable();
		m_ColorTables[ToolStripEx.ColorScheme.Managed] = Office12ColorTable.ManagedColors;
		m_ColorTables[ToolStripEx.ColorScheme.Silver] = new Office12ColorTable();
		m_ColorTables[ToolStripEx.ColorScheme.Blue] = new OfficeBlue();
		m_ColorTables[ToolStripEx.ColorScheme.Black] = new OfficeBlack();
	}

	public RibbonControlAdv()
		: this(new Size(100, 100))
	{
	}

	public RibbonControlAdv(Size size)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(RibbonControlAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		m_descriptions = new Dictionary<Component, string>();
		m_useInQMenuExtProp = new List<Component>();
		m_useInCustomQDialog = new List<Component>();
		base.Dock = DockStyle.None;
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		m_contextMenuStrip = new ContextMenuStripEx();
		m_contextMenuSep = new ToolStripSeparator();
		m_contextMenuSep2 = new ToolStripSeparator();
		m_contextMenuSep3 = new ToolStripSeparator();
		m_contextMenuAddToQuick = new ToolStripMenuItem(null, null, OnAddToQuickPanelMenuItemClick);
		m_contextMenuRemoveFromQuick = new ToolStripMenuItem(null, null, OnRemoveFromQuickPanelMenuItemClick);
		m_contextMenuCustomize = new ToolStripMenuItem(null, null, OnCustomizeMenuItemClick);
		m_contextMenuShowBelow = new ToolStripMenuItem(null, null, OnShowBelowMenuItemClick);
		m_contextMenuMinimize = new ToolStripMenuItem();
		m_contextMenuMinimize.CheckOnClick = true;
		m_contextMenuMinimize.CheckStateChanged += OnContextMenuMinimizeCheckStateChanged;
		m_contextMenuItems = new List<ToolStripItem>();
		TabStop = false;
	}

	private void OnBeforeContextMenuOpen(object sender, ContextMenuEventArgs e)
	{
		if (this.BeforeContextMenuOpen != null)
		{
			this.BeforeContextMenuOpen(sender, e);
		}
	}

	private void OnHeaderItemAdded(object sender, ToolStripItemEventArgs e)
	{
		if (e.Item is ToolStripTabItem toolStripTabItem)
		{
			toolStripTabItem.Panel.Parent = (MinimizePanel ? ((Control)RibbonPopup) : ((Control)this));
		}
	}

	private void OnHeaderItemRemoved(object sender, ToolStripItemEventArgs e)
	{
		if (e.Item is ToolStripTabItem toolStripTabItem)
		{
			toolStripTabItem.Panel.Parent = null;
		}
	}

	private void OnParentStyleChanged(object sender, EventArgs e)
	{
		HeaderInternal.UpdateSystemButtons();
	}

	private void OnParentStateChanged(object sender, EventArgs e)
	{
		WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)257);
		WindowsAPI.RedrawWindow(HeaderInternal.Handle, IntPtr.Zero, IntPtr.Zero, (RedrawWindowFlags)257);
	}

	private void OnParentMdiChildActivate(object sender, EventArgs e)
	{
		if (sender is Form { ActiveMdiChild: var activeMdiChild })
		{
			activeMdiChild.TextChanged += mdiChild_TextChanged;
			activeMdiChild.Deactivate += mdiChild_Deactivate;
			if (activeMdiChild != null && activeMdiChild.WindowState == FormWindowState.Maximized)
			{
				HeaderInternal.Invalidate();
			}
		}
	}

	private void mdiChild_Deactivate(object sender, EventArgs e)
	{
		Form form = sender as Form;
		form.TextChanged -= mdiChild_TextChanged;
		form.Deactivate -= mdiChild_Deactivate;
	}

	private void mdiChild_TextChanged(object sender, EventArgs e)
	{
		Form form = sender as Form;
		if (form.WindowState == FormWindowState.Maximized)
		{
			HeaderInternal.PerformLayout();
			HeaderInternal.Invalidate();
		}
	}

	private void OnParentShowSystemMenu(object sender, EventArgs e)
	{
		HeaderInternal.ShowSystemMenu();
	}

	private void OnParentRegionChanged(object sender, EventArgs e)
	{
		UpdateRegion(sender as Control);
	}

	private void OnParentGetMinSize(ref Size szProposal)
	{
		Size minimumSize = HeaderInternal.GetMinimumSize();
		minimumSize.Height = base.Height;
		if (szProposal.Width < minimumSize.Width)
		{
			szProposal.Width = minimumSize.Width;
		}
		if (szProposal.Height < minimumSize.Height)
		{
			szProposal.Height = minimumSize.Height;
		}
	}

	private void OnParentGetMargins(ref Padding pdMargings)
	{
		if (Dock == DockStyleEx.TopMost)
		{
			RibbonControlAdvHeader headerInternal = HeaderInternal;
			pdMargings.Top = headerInternal.Top + headerInternal.DisplayRectangle.Top + headerInternal.QuickPanelHeight + 1;
		}
	}

	private void OnHeaderDoubleClick(object sender, EventArgs e)
	{
		if (e is MouseEventArgs { Button: MouseButtons.Left } e2 && HeaderInternal.GetItemAt(e2.Location) is ToolStripTabItem { Checked: not false })
		{
			MinimizePanel = !MinimizePanel;
		}
	}

	private void OnAddToQuickPanelMenuItemClick(object sender, EventArgs e)
	{
		if (((ToolStripMenuItem)sender).Tag is Component comp)
		{
			ToolStripItem itemToReflect = QuickToolstripReflectable.GetItemToReflect(comp);
			if (itemToReflect != null)
			{
				Header.AddQuickItem(itemToReflect);
			}
		}
	}

	private void OnRemoveFromQuickPanelMenuItemClick(object sender, EventArgs e)
	{
		if (((ToolStripMenuItem)sender).Tag is ToolStripItem value)
		{
			HeaderInternal.QuickItems.Remove(value);
		}
	}

	private void OnCustomizeMenuItemClick(object sender, EventArgs e)
	{
		ShowCustomizeDialog();
	}

	private void OnContextMenuMinimizeCheckStateChanged(object sender, EventArgs e)
	{
		MinimizePanel = m_contextMenuMinimize.Checked;
	}

	private void OnShowBelowMenuItemClick(object sender, EventArgs e)
	{
		ShowQuickPanelBelowRibbon = !ShowQuickPanelBelowRibbon;
	}

	private void OnHeaderSizeChanged(object sender, EventArgs e)
	{
		if (sender is Control { Height: var num } && base.Height < num)
		{
			base.Height = num;
		}
	}

	private void OnApplicationIdle(object sender, EventArgs e)
	{
		if (m_bUpdateUIOnAppIdle)
		{
			OnUpdateUIOnAppIdle(EventArgs.Empty);
		}
	}

	private void OnUpdateUIOnAppIdle(EventArgs args)
	{
		if (this.UpdateUI != null)
		{
			this.UpdateUI(this, args);
		}
	}

	private void DropDown_Opened(object sender, EventArgs e)
	{
		OnAfterCustomizeDropDownPopup(e);
	}

	private void DropDown_Opening(object sender, EventArgs e)
	{
		DropDownEventArgs args = new DropDownEventArgs((sender as ToolStripDropDownButton).DropDown);
		OnBeforeCustomizeDropDownPopup(args);
	}

	private void m_header_SelectedTabChanged(object sender, SelectedTabChangedEventArgs e)
	{
		OnSelectedTabItemChanged(e);
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Size preferredSize = HeaderInternal.GetPreferredSize(Size.Empty);
		if (!MinimizePanel && ShowPanel)
		{
			Size empty = Size.Empty;
			foreach (ToolStripTabItem mainItem in HeaderInternal.MainItems)
			{
				RibbonPanel panel = mainItem.Panel;
				if (panel != null)
				{
					Size preferredSize2 = panel.GetPreferredSize(Size.Empty);
					if (empty.Width < preferredSize2.Width)
					{
						empty.Width = preferredSize2.Width;
					}
					if (empty.Height < preferredSize2.Height)
					{
						empty.Height = preferredSize2.Height;
					}
				}
			}
			if (preferredSize.Width < empty.Width)
			{
				preferredSize.Width = empty.Width;
			}
			preferredSize.Height += empty.Height;
		}
		if (ShowQuickPanelBelowRibbon)
		{
			Control bottomToolstrip = BottomToolstrip;
			preferredSize.Height += bottomToolstrip.Height + bottomToolstrip.Margin.Vertical;
		}
		preferredSize.Height += 2;
		if (Dock == DockStyleEx.TopMost || Dock == DockStyleEx.BottomMost)
		{
			preferredSize.Width = base.Width;
		}
		return preferredSize;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (e.Control is RibbonPanel ribbonPanel)
		{
			ribbonPanel.Visible = m_bVisiblePanel && ribbonPanel.TabItem.Checked;
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			DetachParent();
			m_contextMenuAddToQuick.Click -= OnAddToQuickPanelMenuItemClick;
			m_contextMenuRemoveFromQuick.Click -= OnRemoveFromQuickPanelMenuItemClick;
			m_contextMenuCustomize.Click -= OnCustomizeMenuItemClick;
			m_contextMenuShowBelow.Click -= OnShowBelowMenuItemClick;
			m_contextMenuMinimize.CheckStateChanged -= OnContextMenuMinimizeCheckStateChanged;
			if (m_header != null)
			{
				m_header.ItemAdded -= OnHeaderItemAdded;
				m_header.ItemRemoved -= OnHeaderItemRemoved;
				m_header.DoubleClick -= OnHeaderDoubleClick;
				m_header.SizeChanged -= OnHeaderSizeChanged;
				m_header.QuickAccessButton.DropDownOpening -= DropDown_Opening;
				m_header.QuickAccessButton.DropDownOpened -= DropDown_Opened;
				m_header.SelectedTabChanged -= m_header_SelectedTabChanged;
				m_header = null;
			}
			if (m_contextMenuStrip != null)
			{
				m_contextMenuStrip.Dispose();
				m_contextMenuStrip = null;
			}
			if (m_bUpdateUIOnAppIdle)
			{
				Application.Idle -= OnApplicationIdle;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnParentChanged(EventArgs e)
	{
		base.OnParentChanged(e);
		UpdateParent();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		UpdateRegion(base.Parent);
	}

	protected override void OnLocationChanged(EventArgs e)
	{
		base.OnLocationChanged(e);
		UpdateRegion(base.Parent);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Application.AddMessageFilter(this);
		m_callWndProcHook = new CallWndProcHook(CallWndProc);
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		Application.RemoveMessageFilter(this);
		m_callWndProcHook.Dispose();
		m_callWndProcHook = null;
		base.OnHandleDestroyed(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		Rectangle clipRectangle = e.ClipRectangle;
		using (Brush brush = new SolidBrush(ColorTable.RibbonBorder))
		{
			graphics.FillRectangle(brush, clipRectangle);
		}
		if (m_parent == null || !m_parent.CompositionEnabled)
		{
			if (m_parent != null && !m_parent.ActiveState)
			{
				using (Brush brush2 = new SolidBrush(ColorTable.RibbonBorderInactive))
				{
					Rectangle clientRectangle = m_parent.ClientRectangle;
					clientRectangle.Offset(-base.Location.X, -base.Location.Y);
					Padding bordersInternal = m_parent.BordersInternal;
					graphics.FillRectangle(brush2, clientRectangle.Left, clientRectangle.Top, bordersInternal.Left, clientRectangle.Height);
					graphics.FillRectangle(brush2, clientRectangle.Right - bordersInternal.Right, clientRectangle.Top, bordersInternal.Right, clientRectangle.Height);
				}
			}
		}
		else
		{
			Rectangle clientRectangle2 = m_parent.ClientRectangle;
			graphics.FillRectangle(Brushes.Black, clientRectangle2.Left - base.Left, clientRectangle2.Top - base.Top, clientRectangle2.Width, 1);
		}
	}

	protected override void WndProc(ref Message m)
	{
		Msg msg = (Msg)m.Msg;
		if (msg == Msg.WM_NCHITTEST)
		{
			m.Result = (IntPtr)(-1L);
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected virtual void OnMinimizePanelChanged()
	{
		SuspendLayout();
		VisiblePanel = false;
		Control control = (MinimizePanel ? ((Control)RibbonPopup) : ((Control)this));
		int count = HeaderInternal.MainItems.Count;
		for (int i = 0; i < count; i++)
		{
			if (HeaderInternal.MainItems[i] is ToolStripTabItem toolStripTabItem)
			{
				toolStripTabItem.Panel.Parent = control;
			}
		}
		if (!MinimizePanel)
		{
			Rectangle displayRectangle = DisplayRectangle;
			displayRectangle.X += 4;
			displayRectangle.Y += HeaderInternal.GetPreferredSize(Size.Empty).Height;
			displayRectangle.Width -= 8;
			displayRectangle.Height = m_panelHeight;
			foreach (ToolStripItem mainItem in HeaderInternal.MainItems)
			{
				if (mainItem is ToolStripTabItem toolStripTabItem2)
				{
					toolStripTabItem2.Panel.Bounds = displayRectangle;
				}
			}
			VisiblePanel = m_bShowPanel;
		}
		if (BottomToolstripVisible)
		{
			Rectangle displayRectangle2 = DisplayRectangle;
			BottomToolstrip bottomToolstrip = BottomToolstrip;
			int num = bottomToolstrip.Height + bottomToolstrip.Margin.Vertical;
			int num2 = displayRectangle2.Bottom - num + bottomToolstrip.Margin.Top;
			bottomToolstrip.Location = new Point(displayRectangle2.X + bottomToolstrip.Margin.Left, num2);
		}
		m_contextMenuMinimize.Checked = MinimizePanel;
		ResumeLayout(performLayout: false);
	}

	protected virtual void OnShowPanelChanged()
	{
		VisiblePanel = m_bShowPanel && !MinimizePanel;
	}

	protected virtual void OnVisiblePanelChanged()
	{
	}

	protected override void OnPaddingChanged(EventArgs e)
	{
		base.OnPaddingChanged(e);
		int num = GetMinimumSize().Height;
		if (base.Height < num || !m_bShowPanel)
		{
			base.Height = num;
		}
	}

	protected virtual void OnAllowCollapseChanged()
	{
		if (!m_bAllowCollapse)
		{
			MinimizePanel = false;
		}
		m_contextMenuMinimize.Enabled = m_bAllowCollapse;
	}

	private void SetVisiblePanelCore(bool bVisible)
	{
		m_bVisiblePanel = bVisible;
		if (m_bVisiblePanel)
		{
			if (!MinimizePanel && m_bCollapsedPanel)
			{
				base.Height += m_panelHeight;
				m_bCollapsedPanel = false;
			}
		}
		else if (!m_bCollapsedPanel)
		{
			int num = GetMinimumSize().Height;
			m_panelHeight = base.Height - num;
			base.Height = num;
			m_bCollapsedPanel = true;
		}
		ShowPanels(bVisible);
		HeaderInternal.Invalidate(invalidateChildren: false);
	}

	private void ShowPanels(bool bShow)
	{
		foreach (ToolStripItem mainItem in HeaderInternal.MainItems)
		{
			if (mainItem is ToolStripTabItem toolStripTabItem)
			{
				toolStripTabItem.ShowPanel = bShow;
			}
		}
		if (MinimizePanel)
		{
			ShowRibbonPopup(bShow);
		}
	}

	private void ShowRibbonPopup(bool bShow)
	{
		if (!RibbonPopup.IsHandleCreated)
		{
			RibbonPopup.CreateHandleInternal();
		}
		if (bShow)
		{
			RibbonControlAdvHeader headerInternal = HeaderInternal;
			ToolStripTabItem selectedTab = headerInternal.SelectedTab;
			if (selectedTab != null)
			{
				_ = selectedTab.Panel;
				Rectangle ribbonPopupBounds = GetRibbonPopupBounds(headerInternal);
				WindowsAPI.SetWindowPos(RibbonPopup.Handle, (IntPtr)(-1L), ribbonPopupBounds.X, ribbonPopupBounds.Y, ribbonPopupBounds.Width, ribbonPopupBounds.Height, SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_SHOWWINDOW);
			}
		}
		else
		{
			WindowsAPI.SetWindowPos(RibbonPopup.Handle, IntPtr.Zero, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_HIDEWINDOW);
		}
	}

	private Rectangle GetRibbonPopupBounds(RibbonControlAdvHeader header)
	{
		Rectangle empty = Rectangle.Empty;
		Rectangle rect = RectangleToScreen(header.Bounds);
		Screen screen = Screen.FromRectangle(rect);
		Rectangle workingArea = screen.WorkingArea;
		empty.Height = m_panelHeight;
		empty.Y = ((rect.Bottom + empty.Height > workingArea.Height) ? (rect.Y + header.QuickPanelHeight - empty.Height) : rect.Bottom);
		empty.X = rect.X + 4;
		empty.Width = rect.Width - 8;
		return empty;
	}

	private void ShowPanelCore(bool bShow)
	{
		VisiblePanel = bShow;
	}

	private void UpdatePanels()
	{
		foreach (Control control in base.Controls)
		{
			if (control is RibbonPanel { Visible: not false } ribbonPanel)
			{
				ribbonPanel.UpdateCaptions();
			}
		}
	}

	private void UpdateParent()
	{
		AttachParent(Form);
		UpdateRenderers();
		UpdateRegion(m_parent);
	}

	private void AttachParent(RibbonForm form)
	{
		if (m_parent != form)
		{
			DetachParent();
			m_parent = form;
			if (m_parent != null)
			{
				m_parent.StyleChanged += OnParentStyleChanged;
				m_parent.RegionChanged += OnParentRegionChanged;
				m_parent.GetMinSize += OnParentGetMinSize;
				m_parent.GetMargins += OnParentGetMargins;
				m_parent.Activated += OnParentStateChanged;
				m_parent.Deactivate += OnParentStateChanged;
				m_parent.MdiChildActivate += OnParentMdiChildActivate;
				m_parent.ShowSystemMenu += OnParentShowSystemMenu;
				HeaderInternal.Form = m_parent;
			}
		}
	}

	private void DetachParent()
	{
		if (m_parent != null)
		{
			m_parent.StyleChanged -= OnParentStyleChanged;
			m_parent.RegionChanged -= OnParentRegionChanged;
			m_parent.GetMinSize -= OnParentGetMinSize;
			m_parent.GetMargins -= OnParentGetMargins;
			m_parent.Activated -= OnParentStateChanged;
			m_parent.Deactivate -= OnParentStateChanged;
			m_parent.MdiChildActivate -= OnParentMdiChildActivate;
			m_parent.ShowSystemMenu -= OnParentShowSystemMenu;
			m_parent = null;
			if (m_header != null)
			{
				m_header.Form = null;
			}
		}
	}

	private void UpdateRegion(Control parent)
	{
		if (parent != null && Dock == DockStyleEx.TopMost)
		{
			Region region = parent.Region;
			if (region != null)
			{
				Region region2 = new Region(base.Bounds);
				region2.Translate(-1, -1);
				region2.Intersect(region);
				region2.Translate(2, 0);
				region2.Intersect(region);
				region2.Translate(0, 2);
				region2.Intersect(region);
				region2.Translate(-2, 0);
				region2.Intersect(region);
				region2.Translate(-base.Left + 1, -base.Top - 1);
				base.Region = region2;
			}
			else
			{
				base.Region = null;
			}
			Invalidate();
		}
	}

	private Size GetMinimumSize()
	{
		Size minimumSize = HeaderInternal.GetMinimumSize();
		minimumSize.Height += 2;
		minimumSize.Height += base.Padding.Vertical;
		if (ShowQuickPanelBelowRibbon)
		{
			minimumSize.Height += BottomToolstrip.Height + BottomToolstrip.Margin.Vertical;
		}
		return minimumSize;
	}

	private bool CanBeInQuickPanel(ToolStripItem item)
	{
		bool result = false;
		if (item != null)
		{
			result = item is ToolStripButton || item is ToolStripDropDownButton || item is ToolStripSplitButton || item is ToolStripTextBox || item is ToolStripComboBox || item is ToolStripComboBoxEx;
		}
		return result;
	}

	private ToolStripItem GetItemAtToolstrip(ToolStrip ts, Point p)
	{
		ToolStripItem toolStripItem = null;
		if (ts != null)
		{
			Point point = ts.PointToClient(p);
			toolStripItem = ts.GetItemAt(point);
			if (toolStripItem is ToolStripPanelItem)
			{
				toolStripItem = GetItemAtToolstrip(((ToolStripPanelItem)toolStripItem).ToolStrip, p);
			}
		}
		return toolStripItem;
	}

	private void UpdateContextMenu(IntPtr hWnd, POINT point)
	{
		Control control = Control.FromHandle(hWnd);
		if (control == null)
		{
			return;
		}
		Point p = point;
		ToolStripGalleryDropDown toolStripGalleryDropDown = null;
		bool flag = false;
		bool flag2 = control.GetType() == typeof(ToolStripGalleryDropDown);
		if (flag2)
		{
			toolStripGalleryDropDown = (ToolStripGalleryDropDown)control;
			if (GetChildAtPoint(PointToClient(toolStripGalleryDropDown.Bounds.Location), GetChildAtPointSkip.Invisible) is ToolStrip toolStrip)
			{
				flag = toolStrip.GetType() == typeof(RibbonControlAdvHeader);
			}
		}
		if (!IsChild(this, hWnd) && !IsChild(RibbonPopup, hWnd) && (!flag2 || flag))
		{
			return;
		}
		flag = false;
		m_contextMenuSep.Owner = null;
		m_contextMenuSep2.Owner = null;
		m_contextMenuSep3.Owner = null;
		m_contextMenuAddToQuick.Owner = null;
		m_contextMenuRemoveFromQuick.Owner = null;
		m_contextMenuCustomize.Owner = null;
		m_contextMenuShowBelow.Owner = null;
		m_contextMenuMinimize.Owner = null;
		if (flag2 && toolStripGalleryDropDown != null)
		{
			point = toolStripGalleryDropDown.Bounds.Location;
		}
		if (!UpdateContextMenuItems(point))
		{
			return;
		}
		int count = m_contextMenuItems.Count;
		int count2 = m_contextMenuItems.Count;
		ContextMenuEventArgs e = new ContextMenuEventArgs(m_contextMenuItems);
		OnBeforeContextMenuOpen(this, e);
		count2 = e.ContextMenuItems.Count;
		if (e.Cancel)
		{
			return;
		}
		Control control2 = Control.FromHandle(hWnd);
		List<ToolStripItem> list = new List<ToolStripItem>();
		if (control2 == null)
		{
			return;
		}
		if (control2.ContextMenuStrip == null)
		{
			control2.ContextMenuStrip = m_contextMenuStrip;
		}
		if (flag2)
		{
			ToolStripItem itemAt = toolStripGalleryDropDown.GetItemAt(toolStripGalleryDropDown.PointToClient(p));
			if (control2.ContextMenuStrip != null)
			{
				control2.ContextMenuStrip.OwnerItem = itemAt;
			}
		}
		if (count2 > count)
		{
			while (count < count2)
			{
				list.Add(e.ContextMenuItems[count]);
				e.ContextMenuItems.RemoveAt(count);
				count2 = e.ContextMenuItems.Count;
			}
		}
		ToolStripItemCollection items = control2.ContextMenuStrip.Items;
		if (list.Count > 0)
		{
			items.AddRange(list.ToArray());
			items.Add(m_contextMenuSep);
		}
		items.AddRange(m_contextMenuItems.ToArray());
	}

	private bool UpdateContextMenuItems(Point p)
	{
		bool flag = false;
		m_contextMenuItems.Clear();
		Point pt = PointToClient(p);
		RibbonPanel ribbonPanel = GetChildAtPoint(pt, GetChildAtPointSkip.Invisible) as RibbonPanel;
		if (ribbonPanel == null && RibbonPopup.IsHandleCreated)
		{
			ribbonPanel = RibbonPopup.GetChildAtPoint(RibbonPopup.PointToClient(p), GetChildAtPointSkip.Invisible) as RibbonPanel;
		}
		if (ribbonPanel != null)
		{
			Point pt2 = ribbonPanel.PointToClient(p);
			if (ribbonPanel.GetChildAtPoint(pt2, GetChildAtPointSkip.Invisible) is ToolStripEx toolStripEx)
			{
				Component component = toolStripEx;
				ToolStripItem itemAtToolstrip = GetItemAtToolstrip(toolStripEx, p);
				if (CanBeInQuickPanel(itemAtToolstrip))
				{
					component = itemAtToolstrip;
				}
				bool enabled = true;
				foreach (ToolStripItem quickItem2 in HeaderInternal.QuickItems)
				{
					if (quickItem2 is IQuickItem quickItem && quickItem.ReflectedComponent == component)
					{
						enabled = false;
						break;
					}
				}
				m_contextMenuAddToQuick.Text = SystemText.QuickAccessAddItemText;
				m_contextMenuAddToQuick.Tag = component;
				m_contextMenuAddToQuick.Enabled = enabled;
				m_contextMenuItems.Add(m_contextMenuAddToQuick);
				m_contextMenuStrip.Renderer = toolStripEx.Renderer;
				flag = true;
			}
		}
		else if (GetChildAtPoint(pt, GetChildAtPointSkip.Invisible) is ToolStrip toolStrip)
		{
			ToolStripItem itemAtToolstrip2 = GetItemAtToolstrip(toolStrip, p);
			if (itemAtToolstrip2 is IQuickItem)
			{
				m_contextMenuRemoveFromQuick.Text = SystemText.QuickAccessRemoveItemText;
				m_contextMenuRemoveFromQuick.Tag = itemAtToolstrip2;
				m_contextMenuItems.Add(m_contextMenuRemoveFromQuick);
				flag = true;
			}
			else if (!(itemAtToolstrip2 is RibbonControlAdvHeader.QuickItemsDropDownButton) && !(itemAtToolstrip2 is RibbonControlAdvHeader.SystemButton))
			{
				flag = true;
			}
			if (flag)
			{
				m_contextMenuStrip.Renderer = toolStrip.Renderer;
			}
		}
		if (flag)
		{
			if (m_contextMenuItems.Count > 0)
			{
				m_contextMenuItems.Add(m_contextMenuSep2);
			}
			m_contextMenuCustomize.Text = SystemText.QuickAccessCustomizeMenuText;
			m_contextMenuItems.Add(m_contextMenuCustomize);
			m_contextMenuShowBelow.Text = (ShowQuickPanelBelowRibbon ? SystemText.QuickAccessPlaceAboveText : SystemText.QuickAccessPlaceBelowText);
			m_contextMenuItems.Add(m_contextMenuShowBelow);
			m_contextMenuItems.Add(m_contextMenuSep3);
			m_contextMenuMinimize.Text = SystemText.QuickAccessMinimizeRibbon;
			m_contextMenuItems.Add(m_contextMenuMinimize);
		}
		return flag;
	}

	private ToolStripEx.ColorScheme GetOfficeColorScheme(RibbonForm.ColorSchemeType type)
	{
		return type switch
		{
			RibbonForm.ColorSchemeType.Silver => ToolStripEx.ColorScheme.Silver, 
			RibbonForm.ColorSchemeType.Black => ToolStripEx.ColorScheme.Black, 
			RibbonForm.ColorSchemeType.Blue => ToolStripEx.ColorScheme.Blue, 
			_ => ToolStripEx.ColorScheme.Managed, 
		};
	}

	private IntPtr CallWndProc(IntPtr hWnd, int nMsg, IntPtr wParam, IntPtr lParam)
	{
		switch ((Msg)nMsg)
		{
		case Msg.WM_ACTIVATE:
			OnActivate(hWnd, wParam, lParam);
			break;
		case Msg.WM_MDIACTIVATE:
			OnWmMdiActivate(hWnd, wParam, lParam);
			break;
		case Msg.WM_CONTEXTMENU:
			OnWmContextMenu(hWnd, lParam);
			break;
		case Msg.WM_SYSCOMMAND:
			OnWmSysCommand(wParam);
			break;
		}
		return IntPtr.Zero;
	}

	private void OnActivate(IntPtr hWnd, IntPtr wParam, IntPtr lParam)
	{
		if (!MinimizePanel)
		{
			return;
		}
		Control topLevelControl = base.TopLevelControl;
		if (topLevelControl != null && topLevelControl.Handle == hWnd && wParam == IntPtr.Zero)
		{
			Control ribbonPopup = RibbonPopup;
			if (ribbonPopup.IsHandleCreated && ribbonPopup.Handle != lParam)
			{
				VisiblePanel = false;
			}
		}
	}

	private void OnWmMdiActivate(IntPtr hWnd, IntPtr wParam, IntPtr lParam)
	{
		Control control = base.Parent;
		if (control == null || !control.IsHandleCreated || !WindowsAPI.IsChild(control.Handle, hWnd) || (!(wParam == IntPtr.Zero) && !(wParam == hWnd)))
		{
			return;
		}
		HeaderInternal.SuspendLayout();
		List<ToolStripTabItem> list = new List<ToolStripTabItem>();
		Control childForm = GetChildForm(lParam);
		if (childForm != null)
		{
			object[] array = new object[childForm.Controls.Count];
			childForm.Controls.CopyTo(array, 0);
			object[] array2 = array;
			for (int i = 0; i < array2.Length; i++)
			{
				Control control2 = (Control)array2[i];
				if (control2 is RibbonPanelMergeContainer)
				{
					ToolStripTabItem toolStripTabItem = new ToolStripTabItem();
					toolStripTabItem.Text = control2.Text;
					toolStripTabItem.Panel = control2 as RibbonPanelMergeContainer;
					Header.AddMainItem(toolStripTabItem);
					list.Add(toolStripTabItem);
				}
			}
			if (list.Count > 0)
			{
				list[0].Checked = true;
			}
		}
		Control control3 = Control.FromHandle(wParam);
		if (control3 != null)
		{
			foreach (ToolStripTabItem mergedTab in m_mergedTabs)
			{
				HeaderInternal.MainItems.Remove(mergedTab);
				mergedTab.Panel.TabItem = null;
				mergedTab.Panel.Visible = false;
				mergedTab.Panel.Parent = control3;
				mergedTab.Dispose();
			}
		}
		m_mergedTabs.Clear();
		m_mergedTabs.AddRange(list);
		HeaderInternal.ResumeLayout();
		WindowsAPI.PostMessage(HeaderInternal.Handle, 1025, 0, 0);
	}

	private void OnWmContextMenu(IntPtr hWnd, IntPtr lParam)
	{
		UpdateContextMenu(hWnd, WindowsAPI.GetPointFromLPARAM(lParam));
	}

	private void OnWmSysCommand(IntPtr wParam)
	{
		switch ((SystemCommand)((int)wParam & 0xFFF0))
		{
		case SystemCommand.SC_MINIMIZE:
		case SystemCommand.SC_MAXIMIZE:
		case SystemCommand.SC_NEXTWINDOW:
		case SystemCommand.SC_PREVWINDOW:
		case SystemCommand.SC_CLOSE:
		case SystemCommand.SC_RESTORE:
		case SystemCommand.SC_CONTEXTHELP:
			WindowsAPI.PostMessage(HeaderInternal.Handle, 1025, 0, 0);
			break;
		}
	}

	private bool OnMouseWheelMsg(ref Message m)
	{
		bool result = false;
		if (m_bMouseWheelSupport && Form == System.Windows.Forms.Form.ActiveForm && WindowsAPI.LOW_ORDER(m.WParam) == 0)
		{
			Point pt = PointToClient(WindowsAPI.GetPointFromLPARAM(m.LParam));
			if (base.Bounds.Contains(pt))
			{
				int delta = WindowsAPI.HIGH_ORDER(m.WParam);
				HeaderInternal.CheckNextTab(delta);
				m.Result = (IntPtr)0;
				result = true;
			}
		}
		return result;
	}

	private void OnWmMouseMove(ref Message m)
	{
		ToolStripTabItem toolStripTabItem = null;
		if (ShowPanelOnMouseHove && base.TopLevelControl is Form form && form.Handle == GetForegroundWindow() && m.HWnd == HeaderInternal.Handle)
		{
			Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM(m.LParam);
			toolStripTabItem = HeaderInternal.GetItemAt(pointFromLPARAM) as ToolStripTabItem;
			if (toolStripTabItem != null && toolStripTabItem != m_lastSelectedTab && MinimizePanel && ShowPanel && !VisiblePanel)
			{
				if (!toolStripTabItem.Checked)
				{
					toolStripTabItem.Checked = true;
				}
				VisiblePanel = true;
			}
		}
		m_lastSelectedTab = toolStripTabItem;
	}

	private void OnWmLButtonDown(ref Message m)
	{
		if (!MinimizePanel || !ShowPanel)
		{
			return;
		}
		bool visiblePanel = false;
		if (m.HWnd == HeaderInternal.Handle)
		{
			Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM(m.LParam);
			if (HeaderInternal.GetItemAt(pointFromLPARAM) is ToolStripTabItem toolStripTabItem)
			{
				if (!toolStripTabItem.Checked)
				{
					toolStripTabItem.Checked = true;
					visiblePanel = true;
				}
				else
				{
					visiblePanel = !VisiblePanel;
				}
			}
		}
		else if (IsPanelWnd(HeaderInternal.SelectedTab, m.HWnd))
		{
			if (Control.FromHandle(m.HWnd) is ToolStrip toolStrip)
			{
				m_pressedItem = toolStrip.GetItemAt(WindowsAPI.GetPointFromLPARAM(m.LParam));
			}
			visiblePanel = true;
		}
		else if (IsPopupWnd(m.HWnd))
		{
			return;
		}
		VisiblePanel = visiblePanel;
	}

	private void OnWmLButtonUp(ref Message m)
	{
		if (MinimizePanel && VisiblePanel && IsPanelWnd(HeaderInternal.SelectedTab, m.HWnd) && Control.FromHandle(m.HWnd) is ToolStrip toolStrip)
		{
			ToolStripItem itemAt = toolStrip.GetItemAt(WindowsAPI.GetPointFromLPARAM(m.LParam));
			if (itemAt == m_pressedItem && (itemAt is ToolStripButton || (itemAt is ToolStripDropDownItem && !((ToolStripDropDownItem)itemAt).DropDown.Visible)))
			{
				VisiblePanel = false;
			}
		}
		m_pressedItem = null;
	}

	private void OnWmRButtonDown(ref Message m)
	{
		if (MinimizePanel && ShowPanel && !IsPanelWnd(HeaderInternal.SelectedTab, m.HWnd) && !IsPopupWnd(m.HWnd))
		{
			VisiblePanel = false;
		}
	}

	private void OnWmKeyDown(ref Message m)
	{
		if (MinimizePanel && (int)m.WParam == 27)
		{
			VisiblePanel = false;
		}
	}

	public void PerformUpdateUI()
	{
		OnUpdateUIOnAppIdle(EventArgs.Empty);
	}

	private Control GetChildForm(IntPtr lParam)
	{
		Control control = Control.FromHandle(lParam);
		if (control is DockingWrapperForm)
		{
			control = ((control.Controls.Count > 0) ? control.Controls[0] : null);
		}
		return control;
	}

	private static bool IsChild(Control parent, IntPtr hWnd)
	{
		if (parent.IsHandleCreated)
		{
			return WindowsAPI.IsChild(parent.Handle, hWnd);
		}
		return false;
	}

	private Hashtable GetReflectableItems()
	{
		Hashtable hashtable = new Hashtable();
		ArrayList reflectableItems = GetReflectableItems(MenuButtonDropDown.Items);
		foreach (ToolStripTabItem mainItem in Header.MainItems)
		{
			RibbonPanel panel = mainItem.Panel;
			if (panel == null)
			{
				continue;
			}
			foreach (Control control in panel.Controls)
			{
				if (control is ToolStripEx { Name: var name } toolStripEx)
				{
					if (!string.IsNullOrEmpty(name))
					{
						hashtable[name] = toolStripEx;
					}
					reflectableItems.AddRange(GetReflectableItems(toolStripEx.GetItems()));
				}
			}
		}
		foreach (ToolStripItem item in reflectableItems)
		{
			string name2 = item.Name;
			if (!string.IsNullOrEmpty(name2))
			{
				hashtable[name2] = item;
			}
		}
		return hashtable;
	}

	private ArrayList GetReflectableItems(ICollection items)
	{
		ArrayList arrayList = new ArrayList();
		foreach (ToolStripItem item in items)
		{
			if (item is ToolStripPanelItem)
			{
				arrayList.AddRange(GetReflectableItems(((ToolStripPanelItem)item).ToolStrip.GetItems()));
			}
			else
			{
				arrayList.Add(item);
			}
		}
		return arrayList;
	}

	internal void UpdateRenderers()
	{
		HeaderInternal.UpdateRenderer();
		foreach (ToolStripItem mainItem in HeaderInternal.MainItems)
		{
			if (mainItem is ToolStripTabItem { Panel: { } panel })
			{
				panel.UpdateRenderers();
			}
		}
		BottomToolstrip.UpdateRenderer();
	}

	[Description("Gets a value indicating whether a control can be extended.")]
	public bool CanExtend(object extendee)
	{
		if (extendee is ToolStrip ctl)
		{
			return Contains(ctl);
		}
		if (extendee is ToolStripItem toolStripItem && CanBeInQuickPanel(toolStripItem))
		{
			ToolStrip owner = toolStripItem.Owner;
			if (owner != null)
			{
				if (owner is MenuDropDown.IPanel panel)
				{
					owner = panel.Owner;
				}
				if (!Contains(owner) && owner != MenuButtonDropDown)
				{
					return MenuButtonDropDown.Contains(owner);
				}
				return true;
			}
		}
		return false;
	}

	[Description("Gets or sets text displayed with component in quick panel customizing dialog.")]
	[Category("Appearance")]
	public string GetDescription(Component component)
	{
		if (m_descriptions.ContainsKey(component))
		{
			return m_descriptions[component];
		}
		return string.Empty;
	}

	[Description("Gets or sets text displayed with component in quick panel customizing dialog.")]
	[Category("Appearance")]
	public void SetDescription(Component component, string value)
	{
		if (!string.IsNullOrEmpty(value))
		{
			m_descriptions[component] = value;
		}
		else
		{
			m_descriptions.Remove(component);
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether component should be available in quick access menu.")]
	public bool GetUseInQuickAccessMenu(Component component)
	{
		return m_useInQMenuExtProp.Contains(component);
	}

	[Category("Appearance")]
	[Description("Indicates whether component should be available in quick access menu.")]
	public void SetUseInQuickAccessMenu(Component component, bool value)
	{
		if (value)
		{
			if (!m_useInQMenuExtProp.Contains(component))
			{
				m_useInQMenuExtProp.Add(component);
			}
		}
		else
		{
			m_useInQMenuExtProp.Remove(component);
		}
	}

	[Description("Indicates whether component should be available in custom quick access dialog.")]
	[Category("Appearance")]
	public bool GetUseInCustomQuickAccessDialog(Component component)
	{
		return !m_useInCustomQDialog.Contains(component);
	}

	[Category("Appearance")]
	[Description("Indicates whether component should be available in custom quick access dialog.")]
	public void SetUseInCustomQuickAccessDialog(Component component, bool value)
	{
		if (!value)
		{
			if (!m_useInCustomQDialog.Contains(component))
			{
				m_useInCustomQDialog.Add(component);
			}
		}
		else if (m_useInCustomQDialog.Contains(component))
		{
			m_useInCustomQDialog.Remove(component);
		}
	}

	private bool ShouldSerializeUseInCustomQuickAccessDialog(Component component)
	{
		if (component != null)
		{
			return m_useInCustomQDialog.Contains(component);
		}
		return false;
	}

	private void ResetUseInCustomQuickAccessDialog(Component component)
	{
		m_useInCustomQDialog.Add(component);
	}

	private bool ShouldSerializeDescription(Component component)
	{
		if (component != null)
		{
			return m_descriptions.ContainsKey(component);
		}
		return false;
	}

	private void ResetDescription(Component component)
	{
		SetDescription(component, string.Empty);
	}

	private bool ShouldSerializeUseInQuickAccessMenu(Component component)
	{
		if (component != null)
		{
			return m_useInQMenuExtProp.Contains(component);
		}
		return false;
	}

	private void ResetUseInQuickAccessMenu(Component component)
	{
		m_useInQMenuExtProp.Remove(component);
	}

	[Description("Performs starting of RibbonControl initialization.")]
	public void BeginInit()
	{
		OfficeMenu.SuspendLayout();
	}

	[Description("Performs completing of RibbonControl initialization.")]
	public void EndInit()
	{
		if (OfficeMenu != null)
		{
			OfficeMenu.ResumeLayout(performLayout: false);
		}
		if (!(HeaderInternal.QuickItems is RibbonControlAdvHeader.QuickItemsCollection quickItemsCollection))
		{
			return;
		}
		foreach (ToolStripItem item in quickItemsCollection)
		{
			if (item is IQuickItem quickItem)
			{
				quickItem.Reset();
				SuperToolTip.SetToolTips(item, quickItem.ReflectedComponent);
			}
		}
		quickItemsCollection.UpdateAccelerators(null);
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_MOUSEMOVE:
			OnWmMouseMove(ref m);
			break;
		case Msg.WM_NCLBUTTONDOWN:
		case Msg.WM_LBUTTONDOWN:
			OnWmLButtonDown(ref m);
			break;
		case Msg.WM_NCRBUTTONDOWN:
		case Msg.WM_NCMBUTTONDOWN:
		case Msg.WM_RBUTTONDOWN:
		case Msg.WM_MBUTTONDOWN:
			OnWmRButtonDown(ref m);
			break;
		case Msg.WM_LBUTTONUP:
			OnWmLButtonUp(ref m);
			break;
		case Msg.WM_KEYDOWN:
			OnWmKeyDown(ref m);
			break;
		case Msg.WM_MOUSEWHEEL:
			return OnMouseWheelMsg(ref m);
		case Msg.WM_SYSCOMMAND:
			OnWmSysCommand(m.WParam);
			break;
		}
		return false;
	}

	private bool IsPanelWnd(ToolStripTabItem tabItem, IntPtr hWnd)
	{
		bool result = false;
		if (tabItem != null)
		{
			Control panel = tabItem.Panel;
			if (panel != null && panel.IsHandleCreated && (hWnd == panel.Handle || WindowsAPI.IsChild(panel.Handle, hWnd)))
			{
				result = true;
			}
		}
		return result;
	}

	private bool IsPopupWnd(IntPtr hWnd)
	{
		bool result = false;
		Control topLevelControl = base.TopLevelControl;
		if (topLevelControl != null)
		{
			while (hWnd != IntPtr.Zero && (WindowsAPI.GetWindowLong(hWnd, -16) & 0x40000000) != 0)
			{
				hWnd = WindowsAPI.GetParent(hWnd);
			}
			result = hWnd != topLevelControl.Handle;
		}
		return result;
	}

	private bool ShouldSerializeLauncherStyle()
	{
		return m_LauncherStyle != LauncherStyle.Office2007;
	}

	private void ResetLauncherStyle()
	{
		LauncherStyle = LauncherStyle.Office2007;
	}

	private bool ShouldSerializeShowCaption()
	{
		return !m_bShowCaption;
	}

	private void ResetShowCaption()
	{
		m_bShowCaption = true;
	}

	private bool ShouldSerializeShowLauncher()
	{
		return !m_bShowLauncher;
	}

	private void ResetShowLauncher()
	{
		m_bShowLauncher = true;
		UpdatePanels();
	}

	private bool ShouldSerializeCaptionStyle()
	{
		return m_CaptionStyle != CaptionStyle.Bottom;
	}

	private void ResetCaptionStyle()
	{
		CaptionStyle = CaptionStyle.Bottom;
	}

	private bool ShouldSerializeCaptionTextStyle()
	{
		return m_CaptionTextStyle != CaptionTextStyle.Plain;
	}

	private void ResetCaptionTextStyle()
	{
		CaptionTextStyle = CaptionTextStyle.Shadow;
	}

	private bool ShouldSerializeCaptionAlignment()
	{
		return m_CaptionAlignment != CaptionAlignment.Center;
	}

	private void ResetCaptionAlignment()
	{
		CaptionAlignment = CaptionAlignment.Center;
	}

	private bool ShouldSerializeCaptionFont()
	{
		return m_CaptionFont != Control.DefaultFont;
	}

	private void ResetCaptionFont()
	{
		CaptionFont = Control.DefaultFont;
	}

	private bool ShouldSerializeCaptionMinHeight()
	{
		return m_nCaptionMinHeight != 0;
	}

	private void ResetCaptionMinHeight()
	{
		CaptionMinHeight = 0;
	}

	private bool ShouldSerializeBorderStyle()
	{
		return m_BorderStyle != ToolStripBorderStyle.Etched;
	}

	private void ResetBorderStyle()
	{
		BorderStyle = ToolStripBorderStyle.Etched;
	}

	private bool ShouldSerializeOfficeColorScheme()
	{
		return m_ColorScheme != ToolStripEx.ColorScheme.Default;
	}

	private void ResetOfficeColorScheme()
	{
		OfficeColorScheme = ToolStripEx.ColorScheme.Default;
	}

	private bool ShouldSerializeTitleFont()
	{
		return HeaderInternal.ShouldSerializeTitleFont();
	}

	private void ResetTitleFont()
	{
		HeaderInternal.ResetTitleFont();
	}

	private bool ShouldSerializeMenuButtonDropDown()
	{
		return !MenuButtonDropDown.IsAutoGenerated;
	}

	private bool ShouldSerializeOfficeMenu()
	{
		return MenuButtonDropDown.IsAutoGenerated;
	}

	private bool ShouldSerializeMinimumSize()
	{
		Size preferredSize = HeaderInternal.GetPreferredSize(Size.Empty);
		Size minimumSize = base.MinimumSize;
		if (minimumSize.Width <= 0)
		{
			return minimumSize.Height > preferredSize.Height;
		}
		return true;
	}

	private void ResetMinimumSize()
	{
		base.MinimumSize = Size.Empty;
	}

	private bool ShouldSerializeRightToLeft()
	{
		return m_rightToLeft != RightToLeft.Inherit;
	}

	private new void ResetRightToLeft()
	{
		RightToLeft = RightToLeft.Inherit;
	}

	private void OnAfterCustomizeDropDownPopup(EventArgs args)
	{
		if (this.AfterCustomizeDropDownPopup != null)
		{
			this.AfterCustomizeDropDownPopup(this, args);
		}
	}

	private void OnBeforeCustomizeDropDownPopup(DropDownEventArgs args)
	{
		if (this.BeforeCustomizeDropDownPopup != null)
		{
			this.BeforeCustomizeDropDownPopup(this, args);
		}
	}

	private void OnSelectedTabItemChanged(SelectedTabChangedEventArgs args)
	{
		if (this.SelectedTabItemChanged != null)
		{
			this.SelectedTabItemChanged(this, args);
		}
	}

	public void ShowCustomizeDialog()
	{
		CustomizeQuickItemsDialog.Execute(HeaderInternal);
		HeaderInternal.PerformLayout();
	}

	public void SaveState()
	{
		SaveState(AppStateSerializer.GetSingleton());
	}

	public void LoadState()
	{
		LoadState(AppStateSerializer.GetSingleton());
	}

	public void SaveState(AppStateSerializer serializer)
	{
		RibbonControlAdvStateInfo ribbonControlAdvStateInfo = new RibbonControlAdvStateInfo();
		ribbonControlAdvStateInfo.MinimizePanel = MinimizePanel;
		ribbonControlAdvStateInfo.ShowQuickPanelBelowRibbon = ShowQuickPanelBelowRibbon;
		foreach (IQuickItem quickItem in Header.QuickItems)
		{
			string value = null;
			Component reflectedComponent = quickItem.ReflectedComponent;
			if (reflectedComponent is ToolStripItem)
			{
				value = ((ToolStripItem)reflectedComponent).Name;
			}
			else if (reflectedComponent is Control)
			{
				value = ((Control)reflectedComponent).Name;
			}
			if (!string.IsNullOrEmpty(value))
			{
				ribbonControlAdvStateInfo.QuickItems.Add(value);
			}
		}
		serializer.SerializeObject(base.Name, ribbonControlAdvStateInfo);
	}

	public void LoadState(AppStateSerializer serializer)
	{
		if (!(serializer.DeserializeObject(base.Name) is RibbonControlAdvStateInfo ribbonControlAdvStateInfo))
		{
			return;
		}
		MinimizePanel = ribbonControlAdvStateInfo.MinimizePanel;
		ShowQuickPanelBelowRibbon = ribbonControlAdvStateInfo.ShowQuickPanelBelowRibbon;
		Hashtable reflectableItems = GetReflectableItems();
		if (reflectableItems.Count <= 0)
		{
			return;
		}
		HeaderInternal.SuspendLayout();
		HeaderInternal.QuickItems.Clear();
		foreach (string quickItem in ribbonControlAdvStateInfo.QuickItems)
		{
			if (reflectableItems.ContainsKey(quickItem))
			{
				ToolStripItem itemToReflect = QuickToolstripReflectable.GetItemToReflect(reflectableItems[quickItem] as Component);
				if (itemToReflect != null)
				{
					HeaderInternal.AddQuickItem(itemToReflect);
				}
			}
		}
		HeaderInternal.ResumeLayout();
	}

	[DllImport("user32.dll")]
	private static extern IntPtr GetForegroundWindow();
}
