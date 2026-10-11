using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DefaultProperty("TabPages")]
[Description("Manages a set of tab pages.")]
[DefaultEvent("SelectedIndexChanged")]
[Designer(typeof(TabControlAdvDesigner), typeof(IDesigner))]
[DefaultChildType(typeof(TabPageAdv))]
[ToolboxBitmap(typeof(TabControlAdv), "ToolboxIcons.TabControlExt.bmp")]
public class TabControlAdv : Control, ITabControl, ISupportInitialize, ISupportOffice2007Theme
{
	[DocumentationExclude]
	public new class ControlCollection : Control.ControlCollection
	{
		private TabControlAdv tabControl;

		public ControlCollection(TabControlAdv tabControl)
			: base(tabControl)
		{
			this.tabControl = tabControl;
		}

		public override void Remove(Control value)
		{
			base.Remove(value);
			if (value is TabPageAdv && tabControl.TabPages.IndexOf(value) != -1)
			{
				tabControl.TabPages.Remove(value);
			}
		}

		public override void Add(Control value)
		{
			if (!(value is TabPageAdv) && !(value is LabelEdit) && !(value is ScrollButtons))
			{
				throw new ArgumentException("Invalid TabPageAdv Type:" + value.GetType().Name);
			}
			if (value is TabPageAdv && tabControl.TabPages.IndexOf(value) == -1)
			{
				tabControl.TabPages.Add((TabPageAdv)value);
			}
			base.Add(value);
		}

		public override void AddRange(Control[] controls)
		{
			base.AddRange(controls);
		}
	}

	internal class TabPanelDefaultPropertiesReflected : ITabPanelDefaultProperties
	{
		private ITabPanelDefaultProperties tabPanelDefaultProperties;

		internal ITabPanelDefaultProperties TabPanelDefaultProperties
		{
			set
			{
				tabPanelDefaultProperties = value;
			}
		}

		public Color DefaultActiveTabColor()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultActiveTabColor();
			}
			return Color.Empty;
		}

		public Font DefaultActiveTabFont()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultActiveTabFont();
			}
			return Control.DefaultFont;
		}

		public Color DefaultInactiveTabColor()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultInactiveTabColor();
			}
			return Color.Empty;
		}

		public Color DefaultTabForeColor()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultTabForeColor();
			}
			return SystemColors.WindowText;
		}

		public Color DefaultFixedSingleBorderColor()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultFixedSingleBorderColor();
			}
			return Color.Empty;
		}

		public Font DefaultInactiveTabFont()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultInactiveTabFont();
			}
			return Control.DefaultFont;
		}

		public Color DefaultTabPanelBackgroundColor()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultTabPanelBackgroundColor();
			}
			return Color.Empty;
		}

		public Font DefaultTabPanelFont()
		{
			if (tabPanelDefaultProperties != null)
			{
				return tabPanelDefaultProperties.DefaultTabPanelFont();
			}
			return Control.DefaultFont;
		}
	}

	private const string DEF_PERSIST_ID = "TabControlAdvInfo";

	private const int DEF_SCROLL_BUTTONS_GRADIENT_OFFSET = 5;

	private const int DEF_SCROLL_BUTTONS_OFFICE2003_OFFSET = 1;

	private const int DEF_ADJUST_POS = 1;

	private const int c_defaultBorderWidth = 5;

	private const int c_cornerCut = 3;

	private const int c_CLOSE_BUTTON_PADDING = 5;

	private const int DEF_LABEL_EDIT_WIDTH_OFFSET = 5;

	private const int DEF_MIN_EDIT_TEXT_LENGTH = 8;

	private const string DEF_EMPTY_TEXT = "XXXXXXXX";

	private const int c_iPrimitivesHostlIndent = 2;

	private Color DEF_ONENOTESTYLE_COLOR = Color.FromArgb(158, 190, 245);

	private bool m_bPersistTabState;

	private bool m_bRotateTabsWhenRTL = true;

	private bool m_bMultilineText;

	private TabPrimitivesHost m_tabPrimitivesHost;

	internal static readonly Point DEFAULT_PADDING;

	private static readonly Size m_sizeScrollButtonsSize;

	private bool m_bLabelEdit;

	private ThemedTabDrawing m_themedDrawing;

	private TabPanelData m_tabPanelData;

	protected ITabPanelRenderer m_tabPanelRenderer;

	private TabPanelDefaultPropertiesReflected m_tabPanelDefaultProperties;

	private RectangleF m_internalTabPanelBounds;

	private TabPageAdvCollection m_tabPagesCollection;

	private bool m_needLayout;

	private Graphics m_currentGraphics;

	private TabPageAdv m_currentTabPage;

	private TabPageAdv m_previousTabPage;

	private bool m_bShowScroll = true;

	private bool m_bCachedShowScroll = true;

	private bool m_vsLikeScrollButton;

	private bool m_themesEnabled;

	private bool m_focusOnTabClick = true;

	private bool m_switchPagesForDialogKeys = true;

	private bool m_useMnemonic = true;

	protected ScrollButtons m_sbScrollButtons;

	private bool m_bMirrored;

	private bool dockJustChanged;

	private bool m_bShowCloseButton;

	private bool m_bShowCloseButtonForActiveTabOnly;

	private int m_iPrevActiveTabIndex = int.MinValue;

	private ValidateStatus m_validateStatus;

	internal TabControlAdvWeakContainer m_tabControlAdvWeakContainer;

	private Office2007Theme m_Office2007ColorScheme;

	private Office2007Colors m_office2007ColorTable;

	private int m_borderWidth = 5;

	private bool m_borderVisible;

	private Color m_borderColor = SystemColors.Control;

	private bool m_bIsInitializing;

	private bool m_bReserveTabSpace;

	private int m_reservedSpace;

	private ScrollIncrement scrollIncrement;

	private bool m_bIsDisposing;

	private LabelEdit m_txtLabel;

	private bool m_bIsEditing;

	private bool m_bPrevRotateTextWhenVertical;

	private string m_strTextBeforeEdit;

	private int m_prevSelectedIndex = -1;

	private Point m_pt = Point.Empty;

	private string m_tabPageText = string.Empty;

	private ArrayList childControls;

	[Category("Behavior")]
	[Description("Gets or Sets, whether Tabs State (ActivePage, TabOrder, Text) should be automatically persisted or not.")]
	[DefaultValue(false)]
	public bool PersistTabState
	{
		get
		{
			return m_bPersistTabState;
		}
		set
		{
			if (value != m_bPersistTabState)
			{
				m_bPersistTabState = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets should rotate tabs are drawn in RightToLeft mode.")]
	[Category("Appearance")]
	public bool RotateTabsWhenRTL
	{
		get
		{
			return m_bRotateTabsWhenRTL;
		}
		set
		{
			if (m_bRotateTabsWhenRTL != value)
			{
				Type typeFromHandle = typeof(TabRendererWhidbey);
				Type typeFromHandle2 = typeof(OneNoteStyleRenderer);
				Type typeFromHandle3 = typeof(TabRendererDockingWhidbeyBeta);
				Type typeFromHandle4 = typeof(TabRendererDockingWhidbey);
				Type typeFromHandle5 = typeof(TabRendererVS2008);
				if (TabStyle == typeFromHandle2 || TabStyle == typeFromHandle || TabStyle == typeFromHandle3 || TabStyle == typeFromHandle4 || TabStyle == typeFromHandle5 || m_bIsInitializing)
				{
					m_bRotateTabsWhenRTL = value;
					ComputeTabPanelBounds();
					Invalidate();
				}
				else if (base.DesignMode)
				{
					throw new ArgumentException("Only VS2005Style, OneNoteStyle and DockingWhidbey styles support RotateTabsWhenRTL property.");
				}
			}
		}
	}

	[Description("Gets or sets indicate multiline text.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool MultilineText
	{
		get
		{
			return m_bMultilineText;
		}
		set
		{
			if (m_bMultilineText != value)
			{
				m_bMultilineText = value;
				ComputeTabPanelBounds();
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets a value indicating whether the control interprets an ampersand character (&) to be an access key prefix character.")]
	[DefaultValue(true)]
	public bool UseMnemonic
	{
		get
		{
			return m_useMnemonic;
		}
		set
		{
			if (m_useMnemonic != value)
			{
				m_useMnemonic = value;
				Invalidate();
			}
		}
	}

	[Description("Gets the navigation control used to navigate through tabs.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TabPrimitivesHost TabPrimitivesHost => m_tabPrimitivesHost;

	internal bool IsDesignMode => base.DesignMode;

	[DocumentationExclude]
	protected internal bool IsInitializing => m_bIsInitializing;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected virtual bool NeedLayout
	{
		get
		{
			bool flag = m_needLayout;
			if (m_tabPanelRenderer != null)
			{
				flag |= m_tabPanelRenderer.NeedLayout;
			}
			return flag;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ITabPanelRenderer Renderer => m_tabPanelRenderer;

	[DocumentationExclude]
	protected internal virtual TabPanelData TabPanelData
	{
		get
		{
			return m_tabPanelData;
		}
		set
		{
			if (m_tabPanelData != value)
			{
				if (m_tabPanelData != null)
				{
					m_tabPanelData.PropertyChanged -= TabPanel_PropertyChanged;
					m_tabPanelData.SelectedIndexChanging -= TabPanel_SelectedIndexChanging;
				}
				m_tabPanelData = value;
				if (m_tabPanelData != null)
				{
					m_tabPanelData.PropertyChanged += TabPanel_PropertyChanged;
					m_tabPanelData.SelectedIndexChanging += TabPanel_SelectedIndexChanging;
				}
			}
		}
	}

	[MergableProperty(false)]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The TabPages in the TabControl.")]
	public virtual TabPageAdvCollection TabPages => m_tabPagesCollection;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Gets the number of tabs in the tab strip.")]
	[Browsable(false)]
	public int TabCount => m_tabPanelData.TabsData.Count;

	internal ValidateStatus ValidateStatus => m_validateStatus;

	protected ITabPanelDefaultProperties CurDefaultTabPanelProperties => m_tabPanelDefaultProperties;

	internal Office2007Colors Office2007ColorTable
	{
		get
		{
			if (m_office2007ColorTable == null)
			{
				m_office2007ColorTable = Office2007Colors.GetColorTable(Office2007ColorScheme);
			}
			return m_office2007ColorTable;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Specifies whether close button should be visible for tab only if mouse is over it.")]
	public bool ShowCloseButtonForActiveTabOnly
	{
		get
		{
			return m_bShowCloseButtonForActiveTabOnly;
		}
		set
		{
			if (value != m_bShowCloseButtonForActiveTabOnly)
			{
				m_bShowCloseButtonForActiveTabOnly = value;
				OnShowCloseButtonChanged();
			}
		}
	}

	[Description("Specifies whether close button should be visible for each tab.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ShowTabCloseButton
	{
		get
		{
			return m_bShowCloseButton;
		}
		set
		{
			if (m_bShowCloseButton != value)
			{
				m_bShowCloseButton = value;
				OnShowCloseButtonChanged();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance")]
	[Description("Indicates, reserve space for TabPage's or not, when there is no Tab pages. ")]
	public int ReservedSpace
	{
		get
		{
			return m_reservedSpace;
		}
		set
		{
			if (value != m_reservedSpace)
			{
				if (value < 0 || value > base.Height)
				{
					throw new ArgumentOutOfRangeException("value");
				}
				m_reservedSpace = value;
				ComputeTabPanelBounds();
				InvalidatePanel();
			}
		}
	}

	[Description("Indicates, reserve space for TabPage's or not, when there is no Tab pages. ")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ReserveTabSpace
	{
		get
		{
			return m_bReserveTabSpace;
		}
		set
		{
			if (value != m_bReserveTabSpace)
			{
				m_bReserveTabSpace = value;
				ComputeTabPanelBounds();
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Localizable(true)]
	[Description("Specifies whether the scroll buttons should be drawn in the Visual Studio MDI child tabs like flat look.")]
	public bool VSLikeScrollButton
	{
		get
		{
			return m_vsLikeScrollButton;
		}
		set
		{
			if (m_vsLikeScrollButton != value)
			{
				m_vsLikeScrollButton = value;
				if (m_sbScrollButtons != null)
				{
					m_sbScrollButtons.VSLikeButton = m_vsLikeScrollButton;
				}
			}
		}
	}

	[Category("Appearance")]
	[Localizable(true)]
	[Description("Show or Hide Scroll Buttons when there is not enough space for the tabs in Single Line mode.")]
	[DefaultValue(true)]
	public virtual bool ShowScroll
	{
		get
		{
			return m_bShowScroll;
		}
		set
		{
			if (m_bShowScroll != value)
			{
				m_bShowScroll = value;
				m_bCachedShowScroll = value;
				DestroyScrollButtons(multilineChanged: false);
				SetNeedLayout(value: true);
				Invalidate(invalidateChildren: false);
			}
		}
	}

	protected override Size DefaultSize => new Size(200, 100);

	protected bool IsDockingWhidbeyStyleBeta => TabStyle == typeof(TabRendererDockingWhidbeyBeta);

	protected bool IsDockingWhidbeyStyle => TabStyle == typeof(TabRendererDockingWhidbey);

	protected virtual bool IsOffice2007Style
	{
		get
		{
			if (TabStyle == typeof(TabRendererOffice2007))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected virtual bool IsVS2008 => TabStyle == typeof(TabRendererVS2008);

	protected virtual bool IsVS2010 => TabStyle == typeof(TabRendererVS2010);

	protected virtual bool IsIE7Style
	{
		get
		{
			if (TabStyle == typeof(TabRendererIE7))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected virtual bool IsBlendDarkStyle
	{
		get
		{
			if (TabStyle == typeof(TabRendererBlendDark))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected virtual bool IsBlendLightStyle
	{
		get
		{
			if (TabStyle == typeof(TabRendererBlendLight))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected virtual bool IsWhidbeyStyle
	{
		get
		{
			if (TabStyle == typeof(TabRendererWhidbey))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected virtual bool IsOffice2003Style
	{
		get
		{
			if (TabStyle == typeof(TabRendererOffice2003))
			{
				return !ShouldDrawThemed;
			}
			return false;
		}
	}

	protected bool IsOneNoteStyle => TabStyle == typeof(OneNoteStyleRenderer);

	protected bool IsOneNoteStyleFlatTabs => TabStyle == typeof(OneNoteStyleFlatTabsRenderer);

	internal new bool IsMirrored
	{
		get
		{
			return m_bMirrored;
		}
		set
		{
			m_bMirrored = value;
		}
	}

	protected bool Is2DStyle => TabStyle == typeof(TabRenderer2D);

	internal bool IsVistaOS => Environment.OSVersion.Version.Major >= 6;

	[Description("Indicates whether the tabs are painted as 2D, 3D(regular), WorkbookMode or other registered tab types.")]
	[Category("Appearance")]
	[Editor(typeof(TabStyleEditor), typeof(UITypeEditor))]
	[TypeConverter(typeof(TabStyleConverter))]
	[DefaultValue(typeof(TabRenderer3D))]
	public virtual Type TabStyle
	{
		get
		{
			return ReflectionHelper.GetTabTypeFromName(m_tabPanelData.TabStyle);
		}
		set
		{
			if (!(m_tabPanelData.TabStyle != ReflectionHelper.GetTabNameFromType(value)))
			{
				return;
			}
			if (GetType() == typeof(TabControlAdv) && !IsValidRendererType(value))
			{
				throw new ArgumentException("Invalid Renderer used");
			}
			Type typeFromHandle = typeof(TabRendererOffice2003);
			Type typeFromHandle2 = typeof(TabRendererWhidbey);
			Type typeFromHandle3 = typeof(OneNoteStyleRenderer);
			Type typeFromHandle4 = typeof(TabRendererDockingWhidbeyBeta);
			Type typeFromHandle5 = typeof(TabRendererDockingWhidbey);
			Type typeFromHandle6 = typeof(TabRendererVS2008);
			if (value != typeFromHandle3 && value != typeFromHandle2 && value != typeFromHandle4 && value != typeFromHandle5 && value != typeFromHandle6 && !RotateTabsWhenRTL)
			{
				if (base.DesignMode)
				{
					throw new ArgumentException("Only vs2005Style, oneNoteStyle, dockingWhidbey and dockingWhidbeyType2 styles support disabled RotateTabsWhenRTL propety");
				}
				return;
			}
			if (ThemesEnabled && (value == typeFromHandle || value == typeFromHandle2))
			{
				if (base.DesignMode)
				{
					throw new ArgumentException("With Office2003 or VS2005 styles Themes must be disabled", "TabStyle");
				}
				return;
			}
			m_tabPanelData.TabStyle = ReflectionHelper.GetTabNameFromType(value);
			if (value == typeof(OneNoteStyleRenderer) || value == typeFromHandle)
			{
				TextAlignment = StringAlignment.Near;
			}
			else
			{
				TextAlignment = StringAlignment.Center;
			}
			OnStyleChanged();
		}
	}

	[DefaultValue(BorderStyle.Fixed3D)]
	[Category("Appearance")]
	[Description("Specifies the border style for the tab control.")]
	public virtual BorderStyle BorderStyle
	{
		get
		{
			return m_tabPanelData.BorderStyle;
		}
		set
		{
			if (BorderStyle != value)
			{
				m_tabPanelData.BorderStyle = value;
				SetNeedLayout(value: true);
			}
		}
	}

	[Description("Specifies the border color when the BorderStyle is FixedSingle")]
	[Category("Appearance")]
	public virtual Color FixedSingleBorderColor
	{
		get
		{
			Color fixedSingleBorderColor = m_tabPanelData.FixedSingleBorderColor;
			if (fixedSingleBorderColor == Color.Empty)
			{
				return m_tabPanelDefaultProperties.DefaultFixedSingleBorderColor();
			}
			return fixedSingleBorderColor;
		}
		set
		{
			m_tabPanelData.FixedSingleBorderColor = value;
		}
	}

	[DefaultValue(TabAlignment.Top)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Determines whether the tabs appear on the top, bottom, left, or right side of the Control.")]
	[Category("Appearance")]
	[Localizable(true)]
	public virtual TabAlignment Alignment
	{
		get
		{
			return m_tabPanelData.Alignment;
		}
		set
		{
			m_tabPanelData.Alignment = value;
			SetRegion();
			if (base.IsHandleCreated)
			{
				ComputeTabPositions();
			}
			UpdateScrollButtonsStyle();
			PerformLayout(this, "Bounds");
		}
	}

	[DefaultValue(TabVerticalAlignment.Default)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[Description("Specifies whether the tabs are vertically aligned to the top, bottom, or based on the RightToLeft property\r\nwhen aligned vertically.")]
	[Localizable(true)]
	public virtual TabVerticalAlignment VerticalAlignment
	{
		get
		{
			return m_tabPanelData.VerticalAlignment;
		}
		set
		{
			m_tabPanelData.VerticalAlignment = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			if (base.BackgroundImage != value)
			{
				base.BackgroundImage = value;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public override Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			base.ForeColor = value;
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[Description("Gets or sets the size of the control's tabs.")]
	public virtual Size ItemSize
	{
		get
		{
			Size size = m_tabPanelData.TabSize.ToSize();
			if (size == Size.Empty)
			{
				size = GetItemPreferredSize();
			}
			return size;
		}
		set
		{
			if (value.Width < 0 || value.Height < 0)
			{
				throw new ArgumentOutOfRangeException("Size of the TabControlAdv's tab pages can't be negative.");
			}
			m_tabPanelData.TabSize = value;
		}
	}

	bool ITabControl.ThemesEnabled => m_themesEnabled;

	ThemedTabDrawing ITabControl.ThemedDrawing => m_themedDrawing;

	[Localizable(true)]
	[DefaultValue(0)]
	[Description("Specifies the space between tabs in Single Line Mode.")]
	[Category("Appearance")]
	public virtual int TabGap
	{
		get
		{
			return m_tabPanelData.TabGap;
		}
		set
		{
			m_tabPanelData.TabGap = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Localizable(true)]
	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates if more than one row of tabs is allowed.")]
	public virtual bool Multiline
	{
		get
		{
			return m_tabPanelData.Multiline;
		}
		set
		{
			m_tabPanelData.Multiline = value;
			if (m_tabPanelData.Multiline && SizeMode == TabSizeMode.ShrinkToFit)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("TabSizeMode will now be set to TabSizeMode.Normal.", "Auto Property Reset");
				}
				SizeMode = TabSizeMode.Normal;
			}
		}
	}

	[Description("Specifies whether the selected tab should be moved to the front row when in multiline mode.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public virtual bool KeepSelectedTabInFrontRow
	{
		get
		{
			return m_tabPanelData.KeepSelectedTabInFrontRow;
		}
		set
		{
			m_tabPanelData.KeepSelectedTabInFrontRow = value;
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(TabSizeMode.Normal)]
	[Category("Behavior")]
	[Description("Indicates how tabs are sized.")]
	public virtual TabSizeMode SizeMode
	{
		get
		{
			return m_tabPanelData.SizeMode;
		}
		set
		{
			if (value == TabSizeMode.ShrinkToFit && Multiline)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("The Multiline Property will now be set to false.", "Auto Property Reset");
				}
				Multiline = false;
			}
			m_tabPanelData.SizeMode = value;
		}
	}

	[Localizable(true)]
	[Description("Indicates how much extra space should be added around the text or image in the tab.")]
	[Category("Appearance")]
	public new virtual Point Padding
	{
		get
		{
			return m_tabPanelData.Padding;
		}
		set
		{
			if (value.X < 0 || value.Y < 0)
			{
				throw new ArgumentException("Value cannot be negative.");
			}
			m_tabPanelData.Padding = value;
			if (base.IsHandleCreated)
			{
				ComputeTabPositions();
			}
		}
	}

	[Description("Background Color of the tab panel and tabs. The tab's Color will be overriden by individual Tab BackColor, if any.")]
	[Category("Appearance")]
	public virtual Color TabPanelBackColor
	{
		get
		{
			Color backColor = m_tabPanelData.BackColor;
			if (backColor == Color.Empty)
			{
				return m_tabPanelDefaultProperties.DefaultTabPanelBackgroundColor();
			}
			return backColor;
		}
		set
		{
			m_tabPanelData.BackColor = value;
			UpdateScrollButtonsStyle();
			InvalidatePanel();
		}
	}

	public override Font Font
	{
		get
		{
			return base.Font;
		}
		set
		{
			m_tabPanelData.Font = value;
			base.Font = value;
			if (base.IsHandleCreated)
			{
				ComputeTabPositions();
			}
		}
	}

	[Category("Appearance")]
	[Localizable(true)]
	[Description("The font used to display text in the Active Tabs. Will be overriden by individual Tab's Fonts.")]
	[AmbientValue(null)]
	public virtual Font ActiveTabFont
	{
		get
		{
			Font font = m_tabPanelData.ActiveTabFont;
			if (font == null)
			{
				font = m_tabPanelDefaultProperties.DefaultActiveTabFont();
			}
			return font;
		}
		set
		{
			m_tabPanelData.ActiveTabFont = value;
			if (base.IsHandleCreated)
			{
				ComputeTabPositions();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
	public bool ThemesEnabled
	{
		get
		{
			return m_themesEnabled;
		}
		set
		{
			if (m_themesEnabled == value)
			{
				return;
			}
			if (value && (IsOffice2003Style || IsWhidbeyStyle))
			{
				if (base.DesignMode)
				{
					throw new ArgumentException("Themes must be disabled with Office2003 or VS2005 styles", "ThemesEnabled");
				}
				return;
			}
			m_themesEnabled = value;
			if (m_sbScrollButtons != null)
			{
				m_sbScrollButtons.ThemesEnabled = m_themesEnabled;
				UpdateScrollButtonsStyle();
			}
			SetRegion();
			SetNeedLayout(value: true);
			Invalidate(invalidateChildren: true);
		}
	}

	[Category("Appearance")]
	[Description("Color of the active Tabs. Will be overriden by any individual Tab BackColor.")]
	public virtual Color ActiveTabColor
	{
		get
		{
			Color activeTabColor = m_tabPanelData.ActiveTabColor;
			if (activeTabColor == Color.Empty)
			{
				return m_tabPanelDefaultProperties.DefaultActiveTabColor();
			}
			return activeTabColor;
		}
		set
		{
			m_tabPanelData.ActiveTabColor = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Color of the inactive Tabs. Will be overriden by any individual Tab BackColor.")]
	public virtual Color InactiveTabColor
	{
		get
		{
			Color inactiveTabColor = m_tabPanelData.InactiveTabColor;
			if (inactiveTabColor == Color.Empty)
			{
				return m_tabPanelDefaultProperties.DefaultInactiveTabColor();
			}
			return inactiveTabColor;
		}
		set
		{
			m_tabPanelData.InactiveTabColor = value;
		}
	}

	[DefaultValue(null)]
	[Description("The ImageList object from which this tab takes its images.")]
	[Category("Appearance")]
	public virtual ImageList ImageList
	{
		get
		{
			return m_tabPanelData.ImageList;
		}
		set
		{
			m_tabPanelData.ImageList = value;
		}
	}

	[DefaultValue(-1)]
	[Description("The zero based index of the currently selected item. Returns -1 if no tabs are available.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior")]
	[Browsable(false)]
	public virtual int SelectedIndex
	{
		get
		{
			if (!base.Disposing && !base.IsDisposed)
			{
				return m_tabPanelData.SelectedIndex;
			}
			return -1;
		}
		set
		{
			if (value != m_tabPanelData.SelectedIndex)
			{
				foreach (TabRendererBase renderer in Renderer.Renderers)
				{
					renderer.ShowCloseButton = ShouldDrawCloseButton(value);
				}
			}
			m_tabPanelData.SelectedIndex = value;
			if (TabPages != null && TabPages.Count > 0)
			{
				InvalidatePanel();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(null)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The currently selected tab page.")]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	public virtual TabPageAdv SelectedTab
	{
		get
		{
			if (SelectedIndex == -1)
			{
				return null;
			}
			return TabPageAdvCollection.GetTabPageAdvOfTabData(m_tabPagesCollection, (ITabData)m_tabPanelData.TabsData[SelectedIndex]);
		}
		set
		{
			int num = m_tabPanelData.TabsData.IndexOf(value.TabData);
			if (num != -1)
			{
				SelectedIndex = num;
			}
		}
	}

	[Description("Determines the horizontal text alignment of the Tab within the layout rectangle.")]
	[Category("Appearance")]
	[Localizable(true)]
	[DefaultValue(StringAlignment.Center)]
	public virtual StringAlignment TextAlignment
	{
		get
		{
			return m_tabPanelData.TextAlignment;
		}
		set
		{
			m_tabPanelData.TextAlignment = value;
		}
	}

	[Description("Determines the vertical line alignment of the Text in the Tab in the layout rectangle.")]
	[Localizable(true)]
	[Category("Appearance")]
	[DefaultValue(StringAlignment.Center)]
	public virtual StringAlignment TextLineAlignment
	{
		get
		{
			return m_tabPanelData.TextLineAlignment;
		}
		set
		{
			m_tabPanelData.TextLineAlignment = value;
		}
	}

	[Localizable(true)]
	[Description("The relative alignment of the Image with respect to the text.")]
	[Category("Appearance")]
	[DefaultValue(RelativeImageAlignment.LeftOfText)]
	public virtual RelativeImageAlignment ImageAlignmentR
	{
		get
		{
			return m_tabPanelData.ImageAlignmentR;
		}
		set
		{
			m_tabPanelData.ImageAlignmentR = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Gets or sets value whether image should be disabled when TabPage is not selected.")]
	public virtual bool DisableInactivePageImage
	{
		get
		{
			return m_tabPanelData.DisableInactivePageImage;
		}
		set
		{
			m_tabPanelData.DisableInactivePageImage = value;
		}
	}

	[Description("Adjusts y-position of the image.")]
	[Category("Appearance")]
	[DefaultValue(0)]
	public virtual int ImageOffset
	{
		get
		{
			return m_tabPanelData.ImageOffset;
		}
		set
		{
			if (m_tabPanelData.ImageOffset != value)
			{
				m_tabPanelData.ImageOffset = value;
			}
		}
	}

	[Description("Adjusts the gap between the tabControlAdv's top and the tabs.")]
	[DefaultValue(0)]
	[Category("Appearance")]
	public virtual int AdjustTopGap
	{
		get
		{
			return m_tabPanelData.AdjustTopGap;
		}
		set
		{
			if (m_tabPanelData.AdjustTopGap != value)
			{
				if (value < 0)
				{
					m_tabPanelData.AdjustTopGap = 0;
				}
				else
				{
					m_tabPanelData.AdjustTopGap = value;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether the text and the image should be in the same level.")]
	[DefaultValue(false)]
	public bool LevelTextAndImage
	{
		get
		{
			return m_tabPanelData.LevelTextAndImage;
		}
		set
		{
			if (m_tabPanelData.LevelTextAndImage != value)
			{
				m_tabPanelData.LevelTextAndImage = value;
			}
		}
	}

	[Description("Indicates width of the custom borders.")]
	[Category("Appearance")]
	[DefaultValue(5)]
	public int BorderWidth
	{
		get
		{
			return m_borderWidth;
		}
		set
		{
			if (m_borderWidth != value)
			{
				m_borderWidth = value;
				if (m_borderWidth < 0)
				{
					m_borderWidth = 0;
				}
				if (TabStyle == typeof(TabRendererVS2008))
				{
					ComputeTabPositions();
				}
				ComputeTabPanelBounds();
				Invalidate();
			}
		}
	}

	[Description("Indicates visibility of the custom borders.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool BorderVisible
	{
		get
		{
			return m_borderVisible;
		}
		set
		{
			if (m_borderVisible != value)
			{
				m_borderVisible = value;
				SetRegion();
				ComputeTabPanelBounds();
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Indicates color of the custom borders.")]
	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Rotates the text in the tabs when the tab strip is aligned to the left of right so that the text is always drawn horizontal.")]
	[Category("Appearance")]
	public virtual bool RotateTextWhenVertical
	{
		get
		{
			return TabPanelData.RotateTextWhenVertical;
		}
		set
		{
			if (value != m_tabPanelData.RotateTextWhenVertical)
			{
				m_tabPanelData.RotateTextWhenVertical = value;
				ComputeTabPanelBounds();
				UpdateScrollButtonsStyle();
			}
		}
	}

	protected bool NeedRotateTextWhenVertical
	{
		get
		{
			if (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right)
			{
				return RotateTextWhenVertical;
			}
			return false;
		}
	}

	[DocumentationExclude]
	internal bool RotateText180WhenLeftAligned
	{
		get
		{
			return TabPanelData.RotateText180WhenLeftAligned;
		}
		set
		{
			m_tabPanelData.RotateText180WhenLeftAligned = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates whether the tabs change in appearance when the mouse passes over them.")]
	public virtual bool HotTrack
	{
		get
		{
			return m_tabPanelData.HotTrack;
		}
		set
		{
			m_tabPanelData.HotTrack = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Specifies whether or not the tab control takes focus when a tab is clicked.")]
	public virtual bool FocusOnTabClick
	{
		get
		{
			return m_focusOnTabClick;
		}
		set
		{
			m_focusOnTabClick = value;
		}
	}

	[Description("Specifies if the Control should switch tab pages on Ctrl+Tab or Ctrl+Shift+Tab.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public virtual bool SwitchPagesForDialogKeys
	{
		get
		{
			return m_switchPagesForDialogKeys;
		}
		set
		{
			m_switchPagesForDialogKeys = value;
		}
	}

	[DefaultValue(false)]
	[Localizable(true)]
	[Description("Specifies whether tooltips should be shown for tabs that have their tooltips set.")]
	[Category("Behavior")]
	public virtual bool ShowToolTips
	{
		get
		{
			return m_tabPanelData.ShowToolTips;
		}
		set
		{
			if (m_tabPanelData.ShowToolTips != value)
			{
				m_tabPanelData.ShowToolTips = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Localizable(true)]
	[Description("Specifies whether SuperToolTips should be shown for tabs that have their tooltips set.")]
	public virtual bool ShowSuperToolTips
	{
		get
		{
			return m_tabPanelData.ShowSuperToolTips;
		}
		set
		{
			if (m_tabPanelData.ShowSuperToolTips != value)
			{
				m_tabPanelData.ShowSuperToolTips = value;
			}
		}
	}

	[Description("Specifies whether users can change tab position within the tab control by drag and drop.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public virtual bool UserMoveTabs
	{
		get
		{
			return m_tabPanelData.UserMoveTabs;
		}
		set
		{
			m_tabPanelData.UserMoveTabs = value;
		}
	}

	[DefaultValue(ScrollIncrement.Tab)]
	[Category("Behavior")]
	[Description("Specify whether to Scroll in tabs or pages.")]
	public virtual ScrollIncrement ScrollIncrement
	{
		get
		{
			return scrollIncrement;
		}
		set
		{
			scrollIncrement = value;
		}
	}

	protected ScrollButtons ScrollButtons => m_sbScrollButtons;

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[Description("Background Color of the tab panel and tabs. The tab's Color will be overriden by individual Tab BackColor, if any.")]
	[Bindable(false)]
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

	[DefaultValue(false)]
	[Description("Indicates, if TabPage's captions are editable or not.")]
	public bool LabelEdit
	{
		get
		{
			return m_bLabelEdit;
		}
		set
		{
			if (value != m_bLabelEdit)
			{
				m_bLabelEdit = value;
				OnLabelEdit();
			}
		}
	}

	[Description("Specifies color scheme for the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	[Browsable(true)]
	[Category("Appearance")]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_Office2007ColorScheme;
		}
		set
		{
			if (m_Office2007ColorScheme != value)
			{
				m_Office2007ColorScheme = value;
				OnOffice2007ColorSchemeChanged();
			}
		}
	}

	protected bool IsEditing => m_bIsEditing;

	public override Rectangle DisplayRectangle
	{
		get
		{
			if (!base.IsHandleCreated || base.ClientRectangle == Rectangle.Empty)
			{
				return Rectangle.Empty;
			}
			Rectangle result = Rectangle.Round(GetBorderRect());
			if (!BorderVisible && BorderStyle != BorderStyle.None)
			{
				result.Inflate(-1, -1);
				if (BorderStyle == BorderStyle.Fixed3D)
				{
					result.Height--;
					result.Width--;
					if (IsMirrored)
					{
						result.X++;
					}
				}
			}
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
			{
				result.Inflate(-2, -2);
			}
			else if (BorderVisible)
			{
				result.Inflate(-BorderWidth, -BorderWidth);
				switch (Alignment)
				{
				case TabAlignment.Top:
					result.Y -= BorderWidth - 1;
					result.Height += BorderWidth - 1;
					break;
				case TabAlignment.Bottom:
					result.Y--;
					result.Height += BorderWidth - 1;
					break;
				case TabAlignment.Left:
					result.X -= BorderWidth - 1;
					result.Width += BorderWidth - 1;
					break;
				case TabAlignment.Right:
					result.X--;
					result.Width += BorderWidth - 1;
					break;
				}
			}
			if (result.Height < 0)
			{
				result.Height = 0;
			}
			if (result.Width < 0)
			{
				result.Width = 0;
			}
			return result;
		}
	}

	internal bool IsDesignerLoading
	{
		get
		{
			bool flag = false;
			return GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.Loading;
		}
	}

	[DocumentationExclude]
	protected internal bool ShouldDrawThemed => XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled;

	Office2007Theme ISupportOffice2007Theme.Office2007ColorTheme
	{
		get
		{
			return Office2007ColorScheme;
		}
		set
		{
			Office2007ColorScheme = value;
		}
	}

	[Description("Occurs before navigation button click.")]
	[Category("Action")]
	public event TabPrimitiveClick TabPrimitiveClick;

	[Description("Occurs whenever a particular item/area needs to be painted.")]
	[Category("Action")]
	public event DrawTabEventHandler DrawItem;

	[Description("Occurs whenever the 'SelectedIndex' property for this control changes.")]
	[Category("Action")]
	public event EventHandler SelectedIndexChanged;

	[Category("Action")]
	[Description("Occurs before the 'SelectedIndex' property for this control changes.")]
	public event SelectedIndexChangingEventHandler SelectedIndexChanging;

	[Description("Occurs when Editing TabPage's text ha been changed after TabPage's Caption editing")]
	public event EventHandler LabelEditTextChanged;

	[Description("Occurs when the LabelEdit property is changed.")]
	public event EventHandler LabelEditChanged;

	[Description("Occurs before Editing TabPage's Caption editing")]
	public event EditEventHandler BeforeEdit;

	[Description("Occurs after Editing TabPage's Caption editing")]
	public event EditEventHandler AfterEdit;

	[Description("Occurs on moving TabPage")]
	public event TabMovingEventHandler TabMoving;

	[Description("Occurs when the order of tabs is changed.")]
	public event EventHandler TabsOrderChanged;

	public virtual void LoadState()
	{
		LoadState(AppStateSerializer.GetSingleton());
	}

	public virtual void SaveState()
	{
		SaveState(AppStateSerializer.GetSingleton());
	}

	public virtual void LoadState(AppStateSerializer serializer)
	{
		if (serializer == null)
		{
			throw new ArgumentNullException("serializer");
		}
		if (TabPages.Count <= 0 || !(serializer.DeserializeObject("TabControlAdvInfo") is TabControlInfo tabControlInfo))
		{
			return;
		}
		int selectedIndex = -1;
		Hashtable hashtable = new Hashtable();
		m_tabPanelData.TabsData.Clear();
		int i = 0;
		for (int count = TabPages.Count; i < count; i++)
		{
			TabPageAdv tabPageAdv = TabPages[i];
			TabPageInfo tabPageInfo = tabControlInfo.GetTabPageInfo(TabPages[i].Name);
			if (tabPageInfo != null)
			{
				tabPageAdv.Text = tabPageInfo.Text;
				hashtable[tabPageInfo.Order] = tabPageAdv;
				if (tabPageInfo.IsSelected)
				{
					selectedIndex = tabPageInfo.Order;
				}
			}
		}
		int j = 0;
		for (int count2 = TabPages.Count; j < count2; j++)
		{
			TabPageAdv tabPageAdv2 = (TabPageAdv)hashtable[j];
			if (tabPageAdv2 == null)
			{
				tabPageAdv2 = TabPages[j];
			}
			m_tabPanelData.TabsData.Add(tabPageAdv2.TabData);
		}
		SelectedIndex = selectedIndex;
	}

	public virtual void SaveState(AppStateSerializer serializer)
	{
		if (serializer == null)
		{
			throw new ArgumentNullException("serializer");
		}
		if (TabPages.Count > 0)
		{
			serializer.SerializeObject("TabControlAdvInfo", new TabControlInfo(this));
		}
	}

	protected internal virtual void OnTabPrimitiveClick(TabPrimitiveClickEventArgs e)
	{
		if (this.TabPrimitiveClick != null)
		{
			this.TabPrimitiveClick(this, e);
		}
	}

	void ISupportInitialize.BeginInit()
	{
		BeginInit();
		m_bIsInitializing = true;
	}

	void ISupportInitialize.EndInit()
	{
		m_bIsInitializing = false;
		Type typeFromHandle = typeof(TabRendererWhidbey);
		Type typeFromHandle2 = typeof(OneNoteStyleRenderer);
		Type typeFromHandle3 = typeof(TabRendererDockingWhidbeyBeta);
		Type typeFromHandle4 = typeof(TabRendererDockingWhidbey);
		Type typeFromHandle5 = typeof(TabRendererVS2008);
		if (TabStyle != typeFromHandle2 && TabStyle != typeFromHandle && TabStyle != typeFromHandle3 && TabStyle != typeFromHandle4 && TabStyle != typeFromHandle5 && !RotateTabsWhenRTL)
		{
			throw new ArgumentException("Only vs2005Style, oneNoteStyle, dockingWhidbey and dockingWhidbeyBeta styles support disabled RotateTabsWhenRTL propety");
		}
		Color rendererBorderColor = GetRendererBorderColor();
		if (rendererBorderColor != Color.Empty)
		{
			m_borderColor = rendererBorderColor;
		}
		EndInit();
	}

	protected virtual void BeginInit()
	{
	}

	protected virtual void EndInit()
	{
		if (base.Parent != null)
		{
			base.Parent.MouseDown += Parent_MouseDown;
		}
		if (PersistTabState)
		{
			LoadState();
		}
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_Office2007ColorScheme);
	}

	protected internal void SetNeedLayout(bool value)
	{
		m_needLayout = value;
	}

	public TabControlAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(TabControlAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		Init();
	}

	private void Parent_MouseDown(object sender, MouseEventArgs e)
	{
		if (IsEditing)
		{
			m_tabPageText = SelectedTab.Text;
			if (m_tabPageText != m_txtLabel.Text)
			{
				EndLabelEdit(success: true);
			}
			else
			{
				EndLabelEdit(success: false);
			}
		}
	}

	static TabControlAdv()
	{
		DEFAULT_PADDING = new Point(6, 3);
		m_sizeScrollButtonsSize = new Size(30, 15);
		TabRenderer2D.RegisterTabType();
		TabRenderer3D.RegisterTabType();
		TabRendererWorkbookMode.RegisterTabType();
		OneNoteStyleRenderer.RegisterTabType();
		TabRendererOffice2003.RegisterTabType();
		TabRendererWhidbey.RegisterTabType();
		TabRendererIE7.RegisterTabType();
		TabRendererOffice2007.RegisterTabType();
		TabRendererDockingWhidbeyBeta.RegisterTabType();
		TabRendererDockingWhidbey.RegisterTabType();
		TabRendererVS2008.RegisterTabType();
		TabRendererBlendDark.RegisterTabType();
		TabRendererBlendLight.RegisterTabType();
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 794)
		{
			if (m_themedDrawing != null)
			{
				SetNeedLayout(value: true);
			}
			WindowsXPThemeColors.UpdateColors();
			Color rendererBorderColor = GetRendererBorderColor();
			if (rendererBorderColor != Color.Empty)
			{
				m_borderColor = rendererBorderColor;
			}
			UpdateScrollButtonsStyle();
		}
		base.WndProc(ref m);
	}

	protected virtual void Init()
	{
		m_tabPrimitivesHost = new TabPrimitivesHost(this);
		if (TabPanelData == null)
		{
			TabPanelData = new TabPanelData(this);
		}
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: false);
		SetStyle(ControlStyles.ContainerControl, value: true);
		if (m_tabPanelDefaultProperties == null)
		{
			m_tabPanelDefaultProperties = new TabPanelDefaultPropertiesReflected();
		}
		RendererChanged(null);
		m_tabPagesCollection = new TabPageAdvCollection(m_tabPanelData, this, m_tabPanelDefaultProperties);
		base.ControlAdded += TabControlAdv_ControlAdded;
		base.ControlRemoved += TabControlAdv_ControlRemoved;
		base.Size = new Size(200, 100);
		if (XPThemes.IsThemedOS)
		{
			m_themedDrawing = new ThemedTabDrawing(this, "TAB");
		}
		m_tabControlAdvWeakContainer = new TabControlAdvWeakContainer(this);
		Office2003Colors.MenuColorsChanged += m_tabControlAdvWeakContainer.Office2003ColorsChangedWeakEventHandler;
		SetNeedLayout(value: true);
		m_sbScrollButtons = new ScrollButtons();
		m_sbScrollButtons.Visible = false;
		base.Controls.Add(m_sbScrollButtons);
		Office2007Colors.ManagedColorsApplied += Office2007Colors_ManagedColorsApplied;
	}

	public void RemoveAll()
	{
		m_tabPanelData.TabsData.Clear();
	}

	public void BringSelectedTabToView()
	{
		if (m_tabPanelRenderer != null)
		{
			m_tabPanelRenderer.ValidateScrollOffset(makeSelectedTabVisible: true, invalidate: true);
		}
	}

	public void ValidateSelectedIndex()
	{
		if (SelectedTab == null || (SelectedTab.TabEnabled && SelectedTab.TabVisible))
		{
			return;
		}
		int tabCount = TabCount;
		int num = SelectedIndex;
		bool flag = false;
		while (!flag)
		{
			num = (num + 1) % tabCount;
			if (num == SelectedIndex)
			{
				break;
			}
			if (TabPanelData.IsTabSelectable(num, visually: true))
			{
				flag = true;
			}
		}
		if (flag)
		{
			SelectedIndex = num;
		}
	}

	protected virtual void OnShowCloseButtonChanged()
	{
		if (Renderer == null)
		{
			return;
		}
		ArrayList renderers = Renderer.Renderers;
		if (renderers == null || renderers.Count <= 0)
		{
			return;
		}
		TabRendererBase tabRendererBase = null;
		int i = 0;
		for (int count = renderers.Count; i < count; i++)
		{
			if (renderers[i] is TabRendererBase tabRendererBase2)
			{
				tabRendererBase2.ShowCloseButton = ShouldDrawCloseButton(i);
			}
		}
		ComputeTabPositions();
		ComputeTabPanelBounds();
		InvalidatePanel();
	}

	[DocumentationExclude]
	protected internal bool ShouldDrawCloseButton(int pTabIndex)
	{
		bool flag = m_bShowCloseButton;
		if (m_bShowCloseButtonForActiveTabOnly)
		{
			flag = flag && SelectedIndex == pTabIndex;
		}
		return flag;
	}

	private void SetCloseButtonForTab(int tabIndex, bool bShowCloseButton)
	{
		if (Renderer != null && Renderer.Renderers != null && tabIndex >= 0 && tabIndex < Renderer.Renderers.Count && Renderer.Renderers[tabIndex] is TabRendererBase tabRendererBase)
		{
			tabRendererBase.ShowCloseButton = bShowCloseButton;
		}
	}

	private void UpdateCloseButtons(Point mousePos)
	{
		int num = HitTestTabs(mousePos);
		if (num != m_iPrevActiveTabIndex)
		{
			SetCloseButtonForTab(m_iPrevActiveTabIndex, bShowCloseButton: false);
			SetCloseButtonForTab(num, bShowCloseButton: true);
			m_iPrevActiveTabIndex = num;
			ComputeTabPositions();
			ComputeTabPanelBounds();
			InvalidatePanel();
		}
	}

	private void UpdateCloseButtons(int newIndex)
	{
		SetCloseButtonForTab(m_iPrevActiveTabIndex, bShowCloseButton: false);
		SetCloseButtonForTab(newIndex, bShowCloseButton: true);
		m_iPrevActiveTabIndex = newIndex;
		ComputeTabPositions();
		ComputeTabPanelBounds();
		InvalidatePanel();
	}

	protected virtual void OnStyleChanged()
	{
		if (m_bIsInitializing)
		{
			return;
		}
		TabGap = (IsOffice2007Style ? 10 : 0);
		if (ActiveTabFont == null)
		{
			ActiveTabFont = m_tabPanelDefaultProperties.DefaultActiveTabFont();
		}
		if (IsIE7Style)
		{
			TabPanelBackColor = Color.FromKnownColor(KnownColor.Control);
			ActiveTabFont = FontUtil.CreateFont(ActiveTabFont, FontStyle.Regular);
		}
		else if (IsDockingWhidbeyStyle)
		{
			TabPanelBackColor = StyleRendererPropertyDockingWhidbey.BackgroundColor;
			ActiveTabFont = FontUtil.CreateFont(ActiveTabFont, FontStyle.Regular);
		}
		else if (TabStyle == typeof(TabRendererOffice2007))
		{
			TabPanelBackColor = Office2007ColorTable.TabPanelBackColor;
			ActiveTabFont = FontUtil.CreateFont(ActiveTabFont, FontStyle.Regular);
		}
		else if (IsDockingWhidbeyStyleBeta || IsWhidbeyStyle)
		{
			TabPanelBackColor = Color.FromKnownColor(KnownColor.Control);
			ActiveTabFont = FontUtil.CreateFont(ActiveTabFont, FontStyle.Bold);
		}
		else if (IsOneNoteStyle || IsOneNoteStyleFlatTabs || IsOffice2003Style)
		{
			TabPanelBackColor = Office2003Colors.DockBarColorDark;
			ActiveTabFont = FontUtil.CreateFont(ActiveTabFont, FontStyle.Bold);
		}
		else if (IsBlendDarkStyle)
		{
			TabPanelBackColor = BlendDarkRendererProperty.BackgroundColor;
		}
		else if (IsBlendLightStyle)
		{
			TabPanelBackColor = BlendLightRendererProperty.BackgroundColor;
		}
		else
		{
			if (m_tabPanelData.TabStyle != TabRendererOffice2007.TabStyleName)
			{
				TabPanelBackColor = Color.Empty;
			}
			Padding = new Point(Padding.X, Padding.Y);
			ActiveTabFont = m_tabPanelDefaultProperties.DefaultActiveTabFont();
		}
		UpdateScrollButtonsStyle();
		InvalidatePanel();
		Color rendererBorderColor = GetRendererBorderColor();
		if (rendererBorderColor != Color.Empty)
		{
			m_borderColor = rendererBorderColor;
		}
		ComputeTabPositions();
	}

	internal bool GetIsMirroredForVerticalAlignment()
	{
		bool flag = IsMirrored;
		if ((TabAlignment.Right == Alignment || TabAlignment.Left == Alignment) && ((TabVerticalAlignment.Bottom == VerticalAlignment && !flag) || (TabVerticalAlignment.Top == VerticalAlignment && flag)))
		{
			flag = !flag;
		}
		return flag;
	}

	[DocumentationExclude]
	protected internal static bool IsValidRendererType(Type rendererType)
	{
		bool result = true;
		if (rendererType == null)
		{
			result = false;
		}
		else
		{
			Type type = rendererType.GetInterface(typeof(ITabGroupRenderer).FullName);
			if (type != null)
			{
				result = false;
			}
		}
		return result;
	}

	[Browsable(false)]
	[DocumentationExclude]
	public bool ShouldSerializeFixedSingleBorderColor()
	{
		return FixedSingleBorderColor != m_tabPanelDefaultProperties.DefaultFixedSingleBorderColor();
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void ResetFixedSingleBorderColor()
	{
		m_tabPanelData.FixedSingleBorderColor = Color.Empty;
	}

	[DocumentationExclude]
	protected void ComputeTabPositions()
	{
		if (Renderer is TabPanelRenderer tabPanelRenderer)
		{
			using Graphics g = CreateGraphics();
			tabPanelRenderer.ComputeTabPositions(g);
		}
	}

	protected virtual bool ShouldSerializeItemSize()
	{
		return !m_tabPanelData.TabSize.IsEmpty;
	}

	public virtual void ResetItemSize()
	{
		m_tabPanelData.TabSize = Size.Empty;
	}

	private Size GetItemPreferredSize()
	{
		Size result = Size.Empty;
		if (m_tabPanelRenderer != null && m_tabPanelRenderer.Renderers != null && SelectedIndex >= 0 && SelectedIndex < m_tabPanelRenderer.Renderers.Count && m_tabPanelRenderer.Renderers[SelectedIndex] is ITabRenderer tabRenderer && base.IsHandleCreated)
		{
			using Graphics g = CreateGraphics();
			result = tabRenderer.GetPreferredSize(g).ToSize();
		}
		return result;
	}

	protected virtual bool ShouldSerializePadding()
	{
		return !Padding.Equals(DEFAULT_PADDING);
	}

	protected virtual bool ShouldSerializeTabPanelBackColor()
	{
		return TabPanelBackColor != m_tabPanelDefaultProperties.DefaultTabPanelBackgroundColor();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetTabPanelBackColor()
	{
		if (TabStyle == typeof(TabRendererOffice2007))
		{
			TabPanelBackColor = Office2007ColorTable.TabPanelBackColor;
		}
		else
		{
			TabPanelBackColor = Color.Empty;
		}
		UpdateScrollButtonsStyle();
		InvalidatePanel();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void ResetFont()
	{
		m_tabPanelData.Font = null;
		base.ResetFont();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeActiveTabFont()
	{
		Font obj = m_tabPanelDefaultProperties.DefaultActiveTabFont();
		if (ActiveTabFont.Equals(obj))
		{
			return false;
		}
		return true;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetActiveTabFont()
	{
		m_tabPanelData.ActiveTabFont = null;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeActiveTabColor()
	{
		return ActiveTabColor != m_tabPanelDefaultProperties.DefaultActiveTabColor();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetActiveTabColor()
	{
		m_tabPanelData.ActiveTabColor = Color.Empty;
		Invalidate();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool ShouldSerializeInactiveTabColor()
	{
		return InactiveTabColor != m_tabPanelDefaultProperties.DefaultInactiveTabColor();
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetInactiveTabColor()
	{
		m_tabPanelData.InactiveTabColor = Color.Empty;
	}

	protected virtual bool ShouldSerializeBorderColor()
	{
		return m_borderColor != GetRendererBorderColor();
	}

	public virtual void ResetBorderColor()
	{
		Color rendererBorderColor = GetRendererBorderColor();
		if (rendererBorderColor != Color.Empty)
		{
			m_borderColor = rendererBorderColor;
			Invalidate();
		}
	}

	private void TabPanel_SelectedIndexChanging(object sender, SelectedIndexChangingEventArgs args)
	{
		OnSelectedIndexChanging(args);
	}

	private void TabPanel_PropertyChanged(ITabPanelData sender, TabPanelPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "Multiline")
		{
			RendererChanged(null);
		}
		else if (e.PropertyName == "SelectedIndex")
		{
			OnSelectedIndexChanged(EventArgs.Empty);
		}
	}

	internal void UpdateActiveTabFont()
	{
		if (m_tabPagesCollection.Count <= 0)
		{
			return;
		}
		TabPageAdv selectedTab = SelectedTab;
		if (selectedTab == null)
		{
			return;
		}
		selectedTab.TabFont = ActiveTabFont;
		for (int i = 0; i < m_tabPagesCollection.Count; i++)
		{
			if (i != SelectedIndex)
			{
				TabPageAdv tabPageAdv = m_tabPagesCollection[i];
				Font tabFont = m_tabPanelDefaultProperties.DefaultInactiveTabFont();
				if (tabPageAdv != null)
				{
					tabPageAdv.TabFont = tabFont;
				}
			}
		}
	}

	protected virtual void OnSelectedIndexChanged(EventArgs e)
	{
		SetNeedLayout(value: true);
		if (base.IsHandleCreated)
		{
			Graphics graphics = CreateGraphics();
			Layout(graphics, fromPaint: false);
			graphics.Dispose();
		}
		InvalidatePanel();
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, e);
		}
	}

	[DocumentationExclude]
	protected void InvalidatePanel()
	{
		Invalidate(Rectangle.Round(GetPanelBounds()));
	}

	protected virtual void OnSelectedIndexChanging(SelectedIndexChangingEventArgs e)
	{
		if (this.SelectedIndexChanging != null)
		{
			this.SelectedIndexChanging(this, e);
		}
	}

	protected virtual void UpdateSelectedTabPage(bool setBounds)
	{
		int num = -1;
		if (m_currentTabPage != null)
		{
			num = m_tabPagesCollection.IndexOf(m_currentTabPage);
			if (num == -1)
			{
				TabPageAdv currentTabPage = m_currentTabPage;
				m_currentTabPage = null;
				currentTabPage.Visible = false;
			}
		}
		if (m_currentTabPage == null || m_tabPanelData.SelectedIndex != num)
		{
			if (num != -1)
			{
				TabPageAdv currentTabPage2 = m_currentTabPage;
				m_currentTabPage = null;
				currentTabPage2.Visible = false;
			}
			if (m_tabPanelData.SelectedIndex != -1)
			{
				TabPageAdv tabPageAdv = m_tabPagesCollection[m_tabPanelData.SelectedIndex];
				if (setBounds)
				{
					tabPageAdv.Bounds = DisplayRectangle;
				}
				if (base.IsHandleCreated)
				{
					tabPageAdv.Visible = true;
				}
				m_currentTabPage = tabPageAdv;
			}
		}
		else
		{
			if (setBounds)
			{
				m_currentTabPage.Bounds = DisplayRectangle;
			}
			m_currentTabPage.Visible = true;
		}
		if (ShowTabCloseButton && ShowCloseButtonForActiveTabOnly && SelectedIndex != -1)
		{
			UpdateCloseButtons(SelectedIndex);
		}
	}

	protected virtual void RendererChanged(TabPanelRenderer rendererNew)
	{
		if (m_tabPanelRenderer != null)
		{
			m_tabPanelRenderer.TabPanelData = null;
		}
		if (rendererNew != null)
		{
			m_tabPanelRenderer = rendererNew;
		}
		else if (!m_tabPanelData.Multiline)
		{
			m_tabPanelRenderer = new SingleLineTabPanelRenderer(this);
		}
		else
		{
			DestroyScrollButtons(multilineChanged: true);
			m_tabPanelRenderer = new MultilineTabPanelRenderer(this);
		}
		if (m_tabPanelDefaultProperties != null)
		{
			m_tabPanelDefaultProperties.TabPanelDefaultProperties = m_tabPanelRenderer as ITabPanelDefaultProperties;
		}
		m_tabPanelRenderer.TabPanelData = m_tabPanelData;
		OnTabPanelBoundsAffected();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && !base.IsDisposed)
		{
			m_bIsDisposing = true;
			if (PersistTabState)
			{
				SaveState();
			}
			DestroyScrollButtons(multilineChanged: false);
			if (m_sbScrollButtons != null)
			{
				m_sbScrollButtons.Dispose();
			}
			if (m_tabPanelData != null)
			{
				m_tabPanelData.ImageList = null;
				m_tabPanelData.PropertyChanged -= TabPanel_PropertyChanged;
				m_tabPanelData.SelectedIndexChanging -= TabPanel_SelectedIndexChanging;
				m_tabPanelData = null;
			}
			if (m_tabPanelRenderer != null)
			{
				m_tabPanelRenderer.TabPanelData = null;
				m_tabPanelRenderer = null;
			}
			if (m_themedDrawing != null)
			{
				m_themedDrawing.Dispose();
				m_themedDrawing = null;
			}
			if (m_tabPanelDefaultProperties != null)
			{
				m_tabPanelDefaultProperties = null;
			}
			if (m_tabPagesCollection != null)
			{
				m_tabPagesCollection.Clear();
				m_tabPagesCollection = null;
			}
			if (m_tabPrimitivesHost != null)
			{
				m_tabPrimitivesHost.Dispose();
				m_tabPrimitivesHost = null;
			}
			Office2007Colors.ManagedColorsApplied -= Office2007Colors_ManagedColorsApplied;
			Office2003Colors.MenuColorsChanged -= m_tabControlAdvWeakContainer.Office2003ColorsChangedWeakEventHandler;
			m_bIsDisposing = false;
		}
		base.Dispose(disposing);
	}

	public virtual void OnTabPanelBoundsAffected()
	{
		if (IsEditing)
		{
			EndLabelEdit(success: false);
		}
		SetNeedLayout(value: true);
		Invalidate(invalidateChildren: false);
	}

	private void RefreshLabelEdit()
	{
		if (IsEditing)
		{
			m_txtLabel.Font = ActiveTabFont;
			m_txtLabel.BackColor = m_tabPanelDefaultProperties.DefaultActiveTabColor();
			m_txtLabel.Bounds = GetLabelEditBounds();
		}
	}

	void ITabControl.OnRepaint(RectangleF affectedRect)
	{
		Invalidate(Rectangle.Ceiling(affectedRect), invalidateChildren: false);
	}

	private void Office2007Colors_ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		if (Office2007ColorScheme == Office2007Theme.Managed)
		{
			OnOffice2007ColorSchemeChanged();
		}
	}

	private void OnOffice2007ColorSchemeChanged()
	{
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_Office2007ColorScheme);
		m_sbScrollButtons.Office2007ColorScheme = m_Office2007ColorScheme;
		OnStyleChanged();
		TabPanelRenderer tabPanelRenderer = (TabPanelRenderer)m_tabPanelRenderer;
		tabPanelRenderer.OnTabStyleChanged();
	}

	protected virtual void OnLabelEdit()
	{
		if (m_bLabelEdit)
		{
			if (m_txtLabel == null)
			{
				m_txtLabel = new LabelEdit();
				m_txtLabel.BorderStyle = BorderStyle.None;
				m_txtLabel.TabStop = false;
				m_txtLabel.Visible = false;
				m_txtLabel.KeyDown += LabelEditKeyDown;
				m_txtLabel.LostFocus += m_txtLabel_LostFocus;
				base.Controls.Add(m_txtLabel);
			}
		}
		else if (m_txtLabel != null)
		{
			if (IsEditing)
			{
				EndLabelEdit(success: false);
			}
			m_txtLabel.KeyUp -= LabelEditKeyDown;
			base.Controls.Remove(m_txtLabel);
			m_txtLabel.Dispose();
			m_txtLabel = null;
		}
		RaiseLabelEditChanged();
	}

	private void m_txtLabel_LostFocus(object sender, EventArgs e)
	{
		if (IsEditing)
		{
			m_tabPageText = SelectedTab.Text;
			if (m_tabPageText != m_txtLabel.Text)
			{
				EndLabelEdit(success: true);
			}
			else
			{
				EndLabelEdit(success: false);
			}
		}
	}

	protected void RaiseLabelEditChanged()
	{
		if (this.LabelEditChanged != null)
		{
			this.LabelEditChanged(this, EventArgs.Empty);
		}
	}

	protected void RaiseTabMoving(TabMovingEventArgs e)
	{
		if (this.TabMoving != null)
		{
			this.TabMoving(this, e);
		}
	}

	protected void RaiseAfterEdit(EditEventArgs e)
	{
		if (this.AfterEdit != null)
		{
			this.AfterEdit(this, e);
		}
	}

	protected void RaiseBeforeEdit(EditEventArgs e)
	{
		if (this.BeforeEdit != null)
		{
			this.BeforeEdit(this, e);
		}
	}

	protected void RaiseLabelEditTextChanged()
	{
		if (this.LabelEditTextChanged != null)
		{
			this.LabelEditTextChanged(this, EventArgs.Empty);
		}
	}

	protected void RaiseTabsOrderChanged()
	{
		if (this.TabsOrderChanged != null)
		{
			this.TabsOrderChanged(this, EventArgs.Empty);
		}
	}

	public virtual void OnTabsOrderChanged()
	{
		RaiseTabsOrderChanged();
	}

	public virtual void OnTabMoving(TabMovingEventArgs e)
	{
		RaiseTabMoving(e);
	}

	protected virtual void OnLabelEditTextChanged()
	{
		RaiseLabelEditTextChanged();
	}

	protected virtual void OnAfterEdit(EditEventArgs e)
	{
		RaiseAfterEdit(e);
	}

	protected virtual void OnBeforeEdit(EditEventArgs e)
	{
		RaiseBeforeEdit(e);
	}

	private void LabelEditKeyDown(object sender, KeyEventArgs e)
	{
		switch (e.KeyCode)
		{
		case Keys.Return:
			EndLabelEdit(success: true);
			break;
		case Keys.Escape:
			EndLabelEdit(success: false);
			break;
		}
	}

	private Rectangle CorrectEditBounds(Rectangle bounds)
	{
		if (m_sbScrollButtons != null && m_sbScrollButtons.Visible && (Alignment == TabAlignment.Top || Alignment == TabAlignment.Bottom))
		{
			int num = 0;
			if (IsMirrored)
			{
				if (bounds.Left < m_sbScrollButtons.Right)
				{
					num = m_sbScrollButtons.Right - bounds.Left + 5;
				}
				bounds.Offset(num, 0);
			}
			else if (bounds.Right > m_sbScrollButtons.Left)
			{
				num = bounds.Right - m_sbScrollButtons.Left + 5;
			}
			bounds.Width -= num;
		}
		return bounds;
	}

	private Rectangle GetLabelEditBounds()
	{
		Rectangle result = Rectangle.Empty;
		if (SelectedTab != null && Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase)
		{
			result = CorrectEditBounds(tabRendererBase.TextBounds);
		}
		return result;
	}

	protected void StartLabelEdit()
	{
		if (this.DrawItem == null && SelectedTab != null)
		{
			m_bPrevRotateTextWhenVertical = RotateTextWhenVertical;
			m_strTextBeforeEdit = null;
			if (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right)
			{
				RotateTextWhenVertical = true;
			}
			if (Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase)
			{
				tabRendererBase.ShouldDrawText = false;
			}
			InvalidatePanel();
			m_txtLabel.Text = ((m_strTextBeforeEdit == null) ? SelectedTab.Text : m_strTextBeforeEdit);
			RefreshLabelEdit();
			NativeMethodsHelper.SetRedrawWindow(base.Handle, bRedraw: false, bForceRedraw: false);
			EditEventArgs e = new EditEventArgs(m_txtLabel.Text);
			OnBeforeEdit(e);
			if (e.EditText != m_txtLabel.Text)
			{
				m_txtLabel.Text = e.EditText;
			}
			m_txtLabel.Visible = true;
			m_txtLabel.Select();
			NativeMethodsHelper.SetRedrawWindow(base.Handle, bRedraw: true, bForceRedraw: true);
			m_bIsEditing = true;
		}
	}

	protected void EndLabelEdit(bool success)
	{
		m_bIsEditing = false;
		m_txtLabel.Visible = false;
		if (SelectedTab != null)
		{
			if (success)
			{
				EditEventArgs e = new EditEventArgs(m_txtLabel.Text);
				OnAfterEdit(e);
				SelectedTab.Text = ((e.EditText != m_txtLabel.Text) ? e.EditText : m_txtLabel.Text);
				OnLabelEditTextChanged();
			}
			else
			{
				string editText = ((m_strTextBeforeEdit == null) ? SelectedTab.Text : m_strTextBeforeEdit);
				EditEventArgs e2 = new EditEventArgs(editText);
				OnAfterEdit(e2);
				if (e2.EditText != SelectedTab.Text)
				{
					SelectedTab.Text = e2.EditText;
				}
				else if (m_strTextBeforeEdit != null)
				{
					SelectedTab.Text = m_strTextBeforeEdit;
				}
			}
			if (Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase)
			{
				tabRendererBase.ShouldDrawText = true;
			}
		}
		RotateTextWhenVertical = m_bPrevRotateTextWhenVertical;
		m_strTextBeforeEdit = null;
		InvalidatePanel();
	}

	Graphics ITabControl.GetGraphics()
	{
		if (m_currentGraphics != null)
		{
			return m_currentGraphics;
		}
		return CreateGraphics();
	}

	Control ITabControl.GetControl()
	{
		return this;
	}

	bool ITabControl.IsDesignMode()
	{
		return base.DesignMode;
	}

	public Rectangle GetTabRect(int index)
	{
		return m_tabPanelRenderer.GetTabBounds(index);
	}

	internal bool GetHitTestScroll(Point mousePos)
	{
		bool flag = false;
		if (ScrollButtons != null && ScrollButtons.Visible)
		{
			flag = ScrollButtons.Bounds.Contains(mousePos);
		}
		if (!flag && TabPrimitivesHost.Visible)
		{
			flag = TabPrimitivesHost.Bounds.Contains(mousePos);
		}
		return flag;
	}

	public virtual int HitTestTabs(Point mousePos)
	{
		return HitTestTabs(mousePos, inTransformedCoOrds: false);
	}

	[DocumentationExclude]
	protected internal virtual int HitTestTabs(Point mousePos, bool inTransformedCoOrds)
	{
		return m_tabPanelRenderer.HitTestTabs(mousePos, inTransformedCoOrds);
	}

	public virtual bool OnDrawItem(DrawTabEventArgs eventArgs)
	{
		if (this.DrawItem != null)
		{
			this.DrawItem(this, eventArgs);
			return true;
		}
		return false;
	}

	void ITabControl.OnScrollPositionChanged()
	{
		if (!m_sbScrollButtons.Visible && !Multiline && m_bShowScroll && (m_tabPanelRenderer.CanScrollLeft || m_tabPanelRenderer.CanScrollRight))
		{
			InitScrollButtons();
		}
		if (m_sbScrollButtons != null)
		{
			m_sbScrollButtons.MinButtonActive = m_tabPanelRenderer.CanScrollLeft;
			m_sbScrollButtons.MaxButtonActive = m_tabPanelRenderer.CanScrollRight;
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		if (m_tabPanelRenderer is TabPanelRenderer tabPanelRenderer)
		{
			tabPanelRenderer.OnMouseEnter(e);
		}
		base.OnMouseEnter(e);
	}

	protected override void OnMouseHover(EventArgs e)
	{
		if (m_tabPanelRenderer is TabPanelRenderer tabPanelRenderer)
		{
			tabPanelRenderer.OnMouseHover(e);
		}
		if (m_tabPrimitivesHost != null)
		{
			m_tabPrimitivesHost.HandledMouseHover(e);
		}
		base.OnMouseHover(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (!base.DesignMode && Renderer != null && Renderer.Renderers != null && SelectedIndex >= 0 && SelectedIndex <= Renderer.Renderers.Count && Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase)
		{
			Point point = new Point(e.X, e.Y);
			RectangleF rectangleF = Renderer.ApplyDrawingTransform(new RectangleF(point, SizeF.Empty), apply: true);
			if (RotateTextWhenVertical && (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right))
			{
				rectangleF = new RectangleF(point, SizeF.Empty);
			}
			point = Point.Round(rectangleF.Location);
			bool flag = false;
			if (tabRendererBase.CloseButtonHitTest(point))
			{
				if (!tabRendererBase.HitCloseButton)
				{
					flag = true;
					tabRendererBase.HitCloseButton = true;
				}
			}
			else if (tabRendererBase.HitCloseButton)
			{
				flag = true;
				tabRendererBase.HitCloseButton = false;
			}
			if (flag)
			{
				RectangleF value = Renderer.ApplyDrawingTransform(tabRendererBase.GetCurrentBounds(), apply: false);
				Invalidate(Rectangle.Ceiling(value));
			}
		}
		if (!(GetType() == typeof(DockTabControl)) || HotTrack)
		{
			m_tabPanelRenderer.OnMouseMove(e);
			m_tabPrimitivesHost.HandledMouseMove(e);
			m_sbScrollButtons.Tracking = ButtonID.None;
			base.OnMouseMove(e);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_tabPanelRenderer.OnMouseLeave(e);
		m_tabPrimitivesHost.HandledMouseLeave();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		if (base.IsHandleCreated)
		{
			m_tabPanelRenderer.OnMouseUp(e);
		}
		m_tabPrimitivesHost.HandledMouseUp(e);
		base.OnMouseUp(e);
		if (m_bLabelEdit && SelectedIndex == m_prevSelectedIndex && SelectedTab != null && e.Button == MouseButtons.Left && m_pt == point)
		{
			StartLabelEdit();
		}
		m_prevSelectedIndex = SelectedIndex;
		if (base.DesignMode || Renderer == null || Renderer.Renderers == null || SelectedIndex < 0 || SelectedIndex > Renderer.Renderers.Count || !(Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase))
		{
			return;
		}
		Point point2 = new Point(e.X, e.Y);
		RectangleF rectangleF = Renderer.ApplyDrawingTransform(new RectangleF(point2, SizeF.Empty), apply: true);
		if (RotateTextWhenVertical && (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right))
		{
			rectangleF = new RectangleF(point2, SizeF.Empty);
		}
		point2 = Point.Round(rectangleF.Location);
		if (tabRendererBase.CloseButtonHitTest(point2) && e.Button == MouseButtons.Left && tabRendererBase.CloseButtonClicked)
		{
			if (SelectedTab.Tag is Form form)
			{
				int selectedIndex = SelectedIndex;
				bool isMdiChild = form.IsMdiChild;
				form.Close();
				if (isMdiChild != form.IsMdiChild)
				{
					if (TabPages != null && selectedIndex >= 0 && selectedIndex < TabPages.Count)
					{
						SelectedIndex = selectedIndex;
					}
				}
				else if (tabRendererBase.CloseButtonClicked)
				{
					tabRendererBase.CloseButtonClicked = false;
					tabRendererBase.HitCloseButton = false;
					InvalidatePanel();
				}
			}
			else
			{
				TabPages[SelectedIndex].Close();
				if (tabRendererBase != null)
				{
					tabRendererBase.CloseButtonClicked = false;
					tabRendererBase.HitCloseButton = false;
					InvalidatePanel();
				}
			}
		}
		else if (tabRendererBase.CloseButtonClicked)
		{
			tabRendererBase.CloseButtonClicked = false;
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (!base.DesignMode && Renderer != null && Renderer.Renderers != null && SelectedIndex >= 0 && SelectedIndex <= Renderer.Renderers.Count && Renderer.Renderers[SelectedIndex] is TabRendererBase tabRendererBase && e.Button == MouseButtons.Left && tabRendererBase.HitCloseButton)
		{
			tabRendererBase.CloseButtonClicked = true;
			RectangleF value = Renderer.ApplyDrawingTransform(tabRendererBase.GetCurrentBounds(), apply: false);
			Invalidate(Rectangle.Ceiling(value));
		}
		if (IsEditing)
		{
			m_prevSelectedIndex = int.MinValue;
			m_tabPageText = SelectedTab.Text;
			if (m_tabPageText != m_txtLabel.Text)
			{
				EndLabelEdit(success: true);
			}
			else
			{
				EndLabelEdit(success: false);
			}
		}
		if (e.Clicks == 2 && GetTabRect(SelectedIndex).Contains(e.X, e.Y))
		{
			m_pt = new Point(e.X, e.Y);
		}
		m_previousTabPage = m_currentTabPage;
		m_validateStatus = ValidateStatus.None;
		if (m_focusOnTabClick && m_tabPanelRenderer.HitTestTabs(new PointF(e.X, e.Y), inTransformedCoOrds: false) != -1)
		{
			if (!Focused)
			{
				Focus();
			}
			if (Focused)
			{
				m_validateStatus = ValidateStatus.Passed;
			}
			else
			{
				m_validateStatus = ValidateStatus.Failed;
			}
		}
		m_tabPanelRenderer.OnMouseDown(e);
		FireTabPageLeaveEnter();
		m_tabPrimitivesHost.HandledMouseDown(e);
		base.OnMouseDown(e);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (!base.Disposing)
		{
			m_tabPanelRenderer.OnGotFocus(e);
			base.OnGotFocus(e);
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible && Renderer != null)
		{
			SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
			if (base.Width != 0 && base.Height != 0)
			{
				Graphics graphics = CreateGraphics();
				Layout(graphics, fromPaint: false);
				graphics.Dispose();
			}
		}
		base.OnVisibleChanged(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		switch (base.RightToLeft)
		{
		case RightToLeft.No:
			m_bMirrored = false;
			break;
		case RightToLeft.Yes:
			m_bMirrored = true;
			break;
		}
		SetNeedLayout(value: true);
		Invalidate(invalidateChildren: false);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (!base.Disposing)
		{
			m_tabPanelRenderer.OnLostFocus(e);
			base.OnLostFocus(e);
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
		if (m_themedDrawing != null)
		{
			m_themedDrawing.DetachTabControl();
		}
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		foreach (Control control in base.Controls)
		{
			if (Control.IsMnemonic(charCode, control.Text) && control is TabPageAdv)
			{
				SelectedTab = control as TabPageAdv;
				return true;
			}
		}
		return false;
	}

	public virtual bool ValidateFocusedTab()
	{
		IContainerControl containerControl = GetContainerControl();
		if (!(containerControl is ContainerControl) || !((ContainerControl)containerControl).Validate())
		{
			return false;
		}
		return true;
	}

	protected override void OnLeave(EventArgs e)
	{
		if (m_currentTabPage != null)
		{
			m_currentTabPage.FireLeave(EventArgs.Empty);
		}
		base.OnLeave(e);
	}

	protected override void OnEnter(EventArgs e)
	{
		if (m_currentTabPage != null)
		{
			m_currentTabPage.FireEnter(EventArgs.Empty);
		}
		base.OnEnter(e);
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
		VS2005Colors.UpdateStyleColors();
		WindowsXPThemeColors.UpdateColors();
		Color rendererBorderColor = GetRendererBorderColor();
		if (rendererBorderColor != Color.Empty)
		{
			m_borderColor = rendererBorderColor;
		}
		UpdateScrollButtonsStyle();
		Refresh();
	}

	internal void MenuColorsChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	protected virtual Color GetTopLeftBorderColor()
	{
		if (TabPanelData.BorderStyle == BorderStyle.Fixed3D)
		{
			return SystemColors.ControlLightLight;
		}
		if (TabPanelData.BorderStyle == BorderStyle.FixedSingle)
		{
			return FixedSingleBorderColor;
		}
		return Color.Empty;
	}

	protected virtual Color GetRightBottomBorderColor()
	{
		if (TabPanelData.BorderStyle == BorderStyle.Fixed3D)
		{
			return SystemColors.ControlDarkDark;
		}
		if (TabPanelData.BorderStyle == BorderStyle.FixedSingle)
		{
			return FixedSingleBorderColor;
		}
		return Color.Empty;
	}

	protected virtual Color GetRightBottomBorderShadeColor()
	{
		if (m_tabPanelData.BorderStyle == BorderStyle.Fixed3D)
		{
			return SystemColors.ControlDark;
		}
		return Color.Empty;
	}

	protected virtual void Draw3DBorder(Graphics g, RectangleF borderBounds)
	{
		if (borderBounds.Height == 0f || borderBounds.Width == 0f)
		{
			return;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			RectangleF value = borderBounds;
			value.Width += 2f;
			m_themedDrawing.DrawTabPane(g, Rectangle.Ceiling(value));
		}
		else if (BorderVisible)
		{
			Rectangle bounds = Rectangle.Ceiling(borderBounds);
			int borderWidth = BorderWidth;
			Rectangle rect = new Rectangle(bounds.Location, new Size(bounds.Right, borderWidth));
			Rectangle rect2 = new Rectangle(bounds.Left, bounds.Bottom - borderWidth, bounds.Right, borderWidth);
			Rectangle rect3 = new Rectangle(bounds.Location, new Size(borderWidth, bounds.Bottom - 1));
			Rectangle rect4 = new Rectangle(bounds.Right - borderWidth, bounds.Top, borderWidth, bounds.Bottom - 1);
			using (SolidBrush brush = new SolidBrush(ActiveTabColor))
			{
				g.FillRectangle(brush, rect3);
				g.FillRectangle(brush, rect2);
				g.FillRectangle(brush, rect4);
				g.FillRectangle(brush, rect);
			}
			Color borderColor = SystemColors.ControlDark;
			if (Renderer != null && Renderer.Renderers != null && SelectedIndex >= 0 && SelectedIndex < Renderer.Renderers.Count)
			{
				TabRendererBase tabRendererBase = Renderer.Renderers[SelectedIndex] as TabRendererBase;
				if (BorderColor != BackColor)
				{
					borderColor = BorderColor;
				}
				else if (tabRendererBase != null)
				{
					borderColor = tabRendererBase.TabBorderColor;
				}
			}
			Color lightBorderColor = WindowsXPThemeColors.TabControlAdvLightBorderColor;
			if (IsVistaOS)
			{
				lightBorderColor = Color.White;
			}
			switch (Alignment)
			{
			case TabAlignment.Top:
				DrawTopAlignmentBorders(g, bounds, borderColor, lightBorderColor);
				break;
			case TabAlignment.Bottom:
				DrawBottomAlignmentBorders(g, bounds, borderColor, lightBorderColor);
				break;
			case TabAlignment.Left:
				DrawLeftAlignmentBorders(g, bounds, borderColor, lightBorderColor);
				break;
			case TabAlignment.Right:
				DrawRightAlignmentBorders(g, bounds, borderColor, lightBorderColor);
				break;
			}
		}
		else
		{
			bool isMirrored = IsMirrored;
			float num = (isMirrored ? (borderBounds.Right - 1f) : borderBounds.Left);
			float num2 = (isMirrored ? borderBounds.Left : (borderBounds.Right - 1f));
			PointF[] points = new PointF[3]
			{
				new PointF(num, borderBounds.Bottom - 1f),
				new PointF(num, borderBounds.Top),
				new PointF(num2, borderBounds.Top)
			};
			float num3 = ((borderBounds.Bottom - 1f < borderBounds.Top) ? borderBounds.Top : (borderBounds.Bottom - 1f));
			PointF[] array = new PointF[3]
			{
				new PointF(num2, borderBounds.Top),
				new PointF(num2, num3),
				new PointF(num, num3)
			};
			g.DrawLines(new Pen(GetTopLeftBorderColor()), points);
			g.DrawLines(new Pen(GetRightBottomBorderColor()), array);
			if (isMirrored)
			{
				array[0].X += 1f;
				array[1].X += 1f;
				array[2].X -= 1f;
			}
			else
			{
				array[0].X -= 1f;
				array[1].X -= 1f;
				array[2].X += 1f;
			}
			array[1].Y -= 1f;
			array[2].Y -= 1f;
			g.DrawLines(new Pen(GetRightBottomBorderShadeColor()), array);
		}
	}

	protected virtual void SetRegion()
	{
		if (BorderVisible && !ThemesEnabled)
		{
			Region region = new Region(base.ClientRectangle);
			Rectangle rectangle = Rectangle.Ceiling(GetBorderRect());
			if (Alignment == TabAlignment.Bottom)
			{
				rectangle = new Rectangle(rectangle.Left, rectangle.Top - 1, rectangle.Width, rectangle.Height);
			}
			else if (Alignment == TabAlignment.Right)
			{
				rectangle = new Rectangle(rectangle.Left - 1, rectangle.Top, rectangle.Width, rectangle.Height);
			}
			Point[] points = new Point[3]
			{
				new Point(rectangle.Left, rectangle.Bottom - 3),
				new Point(rectangle.Left, rectangle.Bottom),
				new Point(rectangle.Left + 3, rectangle.Bottom)
			};
			Point[] points2 = new Point[3]
			{
				new Point(rectangle.Right, rectangle.Bottom - 3),
				new Point(rectangle.Right, rectangle.Bottom),
				new Point(rectangle.Right - 3, rectangle.Bottom)
			};
			Point[] points3 = new Point[3]
			{
				new Point(rectangle.Right, rectangle.Top + 3 - 1),
				new Point(rectangle.Right, rectangle.Top),
				new Point(rectangle.Right - 3 + 1, rectangle.Top)
			};
			Point[] points4 = new Point[3]
			{
				new Point(rectangle.Left, rectangle.Top + 3 - 1),
				new Point(rectangle.Left, rectangle.Top),
				new Point(rectangle.Left + 3 - 1, rectangle.Top)
			};
			using (GraphicsPath graphicsPath = new GraphicsPath())
			{
				switch (Alignment)
				{
				case TabAlignment.Top:
					graphicsPath.AddLines(points);
					region.Exclude(graphicsPath);
					graphicsPath.Reset();
					graphicsPath.AddLines(points2);
					region.Exclude(graphicsPath);
					break;
				case TabAlignment.Bottom:
					graphicsPath.AddLines(points4);
					region.Exclude(graphicsPath);
					graphicsPath.Reset();
					graphicsPath.AddLines(points3);
					region.Exclude(graphicsPath);
					break;
				case TabAlignment.Left:
					graphicsPath.AddLines(points2);
					region.Exclude(graphicsPath);
					graphicsPath.Reset();
					graphicsPath.AddLines(points3);
					region.Exclude(graphicsPath);
					break;
				case TabAlignment.Right:
					graphicsPath.AddLines(points);
					region.Exclude(graphicsPath);
					graphicsPath.Reset();
					graphicsPath.AddLines(points4);
					region.Exclude(graphicsPath);
					break;
				}
			}
			base.Region = region;
		}
		else
		{
			base.Region = null;
		}
	}

	private void DrawTopAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterTopAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y, bounds.Width - 2, bounds.Height - 1));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterTopAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerTopAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawBottomAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterBottomAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y + 1, bounds.Width - 2, bounds.Height - 1));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterBottomAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerBottomAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawLeftAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterLeftAlignmentBordersPath(new Rectangle(bounds.X, bounds.Y + 1, bounds.Width - 1, bounds.Height - 2));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterLeftAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerLeftAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private void DrawRightAlignmentBorders(Graphics g, Rectangle bounds, Color borderColor, Color lightBorderColor)
	{
		if (IsVS2008)
		{
			using Pen pen = new Pen(lightBorderColor);
			using GraphicsPath path = GetOuterRightAlignmentBordersPath(new Rectangle(bounds.X + 1, bounds.Y + 1, bounds.Width - 1, bounds.Height - 2));
			g.DrawPath(pen, path);
		}
		using Pen pen2 = new Pen(borderColor);
		using (GraphicsPath path2 = GetOuterRightAlignmentBordersPath(bounds))
		{
			g.DrawPath(pen2, path2);
		}
		using GraphicsPath path3 = GetInnerRightAlignmentBordersPath(bounds);
		g.DrawPath(pen2, path3);
	}

	private GraphicsPath GetOuterTopAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 3, bounds.Left + 3, bounds.Bottom);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 3 - 1);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom);
		return graphicsPath;
	}

	private GraphicsPath GetInnerTopAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = BorderWidth;
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top, bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		return graphicsPath;
	}

	private GraphicsPath GetOuterBottomAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Right, bounds.Bottom - 2, bounds.Left, bounds.Bottom - 2);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom - 2);
		graphicsPath.AddLine(bounds.Left - 1, bounds.Top + 3 - 1, bounds.Left + 3 - 1, bounds.Top - 1);
		graphicsPath.AddLine(bounds.Left, bounds.Top - 1, bounds.Right, bounds.Top - 1);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Top - 1, bounds.Right, bounds.Top + 3 - 1);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom - 2);
		return graphicsPath;
	}

	private GraphicsPath GetInnerBottomAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = BorderWidth;
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 1, bounds.Left + borderWidth - 1, bounds.Bottom - 2);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 2, bounds.Right - borderWidth, bounds.Top + borderWidth - 2);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Bottom - 2);
		return graphicsPath;
	}

	private GraphicsPath GetOuterLeftAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Left, bounds.Bottom);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right, bounds.Top);
		graphicsPath.AddLine(bounds.Right - 3, bounds.Top, bounds.Right, bounds.Top + 3);
		graphicsPath.AddLine(bounds.Right - 1, bounds.Top, bounds.Right - 1, bounds.Bottom);
		graphicsPath.AddLine(bounds.Right, bounds.Bottom - 3 - 1, bounds.Right - 3, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right, bounds.Bottom - 1);
		return graphicsPath;
	}

	private GraphicsPath GetInnerLeftAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = BorderWidth;
		graphicsPath.AddLine(bounds.Left, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Top + borderWidth - 1);
		graphicsPath.AddLine(bounds.Right - borderWidth, bounds.Top + borderWidth - 1, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - borderWidth, bounds.Right - borderWidth, bounds.Bottom - borderWidth);
		return graphicsPath;
	}

	private GraphicsPath GetOuterRightAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (!IsOffice2007Style && !IsDockingWhidbeyStyle)
		{
			graphicsPath.AddLine(bounds.Right - 2, bounds.Top, bounds.Right - 2, bounds.Bottom);
		}
		graphicsPath.AddLine(bounds.Left, bounds.Bottom - 1, bounds.Right - 2, bounds.Bottom - 1);
		graphicsPath.AddLine(bounds.Left + 3 - 1, bounds.Bottom, bounds.Left - 1, bounds.Bottom - 3);
		graphicsPath.AddLine(bounds.Left - 1, bounds.Bottom, bounds.Left - 1, bounds.Top);
		graphicsPath.AddLine(bounds.Left - 2, bounds.Top + 3, bounds.Left + 3 - 2, bounds.Top);
		graphicsPath.AddLine(bounds.Left, bounds.Top, bounds.Right - 2, bounds.Top);
		return graphicsPath;
	}

	private GraphicsPath GetInnerRightAlignmentBordersPath(Rectangle bounds)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int borderWidth = BorderWidth;
		graphicsPath.AddLine(bounds.Right - 2, bounds.Bottom - borderWidth, bounds.Left + borderWidth - 1, bounds.Bottom - borderWidth);
		graphicsPath.AddLine(bounds.Left + borderWidth - 2, bounds.Bottom - borderWidth, bounds.Left + borderWidth - 2, bounds.Top + borderWidth - 1);
		graphicsPath.AddLine(bounds.Left + borderWidth - 1, bounds.Top + borderWidth - 1, bounds.Right - 2, bounds.Top + borderWidth - 1);
		return graphicsPath;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		ValidateTabPagesVisibility();
		base.OnPaint(e);
		int num = 0;
		if (this is MDITabPanel mDITabPanel && mDITabPanel.IsCloseButtonActive())
		{
			num = 25;
		}
		int num2 = base.Width;
		if (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right)
		{
			num2 = base.Height;
		}
		if (num2 - m_sbScrollButtons.ClientRectangle.Width - num <= 0)
		{
			m_bShowScroll = false;
			DestroyScrollButtons(multilineChanged: false);
		}
		else
		{
			if (!m_bShowScroll && m_bCachedShowScroll)
			{
				InitScrollButtons();
			}
			m_bShowScroll = m_bCachedShowScroll;
		}
		if (NeedLayout)
		{
			Layout(e.Graphics, fromPaint: true);
		}
		Office2003Colors.UpdateMenuColors();
		ResetChildControls();
		DrawPanelBackground(e.Graphics);
		if (base.Width - m_sbScrollButtons.ClientRectangle.Width - num > 0)
		{
			Draw3DBorder(e.Graphics, Rectangle.Round(GetBorderRect()));
		}
		if (IsOffice2007Style)
		{
			DrawBorderForOffice2007(e.Graphics);
		}
		if (TabStyle == typeof(TabRendererVS2008))
		{
			DrawVS2008Borders(e.Graphics);
		}
		m_tabPanelRenderer.OnPaint(e.Graphics, base.ClientRectangle);
		if ((IsOffice2003Style || IsWhidbeyStyle) && !BorderVisible)
		{
			DrawAdditionalBorders(e.Graphics);
		}
		if (TabStyle == typeof(TabGroupRendererOffice2003))
		{
			DrawGroupOffice2003Borders(e.Graphics);
		}
		if (TabCount > 0)
		{
			m_tabPrimitivesHost.HandledOnPaint(e.Graphics);
		}
		if (IsEditing && SelectedTab != null)
		{
			RefreshLabelEdit();
		}
	}

	protected void DrawVS2008Borders(Graphics g)
	{
		Rectangle borderBounds = Rectangle.Round(GetPanelBounds());
		GraphicsPath graphicsPath = new GraphicsPath();
		GraphicsPath graphicsPath2 = new GraphicsPath();
		Point pt = Point.Empty;
		Point pt2 = Point.Empty;
		switch (Alignment)
		{
		case TabAlignment.Top:
			graphicsPath = GetTopAdditionalBordersPath(borderBounds, 3);
			graphicsPath2 = GetTopAdditionalBordersPath(new Rectangle(borderBounds.Left + 1, borderBounds.Top + 1, borderBounds.Right - 2, borderBounds.Bottom), 2);
			pt = new Point(borderBounds.Left + BorderWidth, borderBounds.Bottom - 1);
			pt2 = new Point(borderBounds.Right - BorderWidth, borderBounds.Bottom - 1);
			break;
		case TabAlignment.Right:
			graphicsPath = GetRightAdditionalBordersPath(borderBounds, 3);
			graphicsPath2 = GetRightAdditionalBordersPath(new Rectangle(borderBounds.Left - 1, borderBounds.Top + 1, borderBounds.Right - 1, borderBounds.Bottom - 2), 2);
			pt = new Point(borderBounds.Right - borderBounds.Width, borderBounds.Top + BorderWidth);
			pt2 = new Point(borderBounds.Right - borderBounds.Width, borderBounds.Bottom - BorderWidth);
			break;
		case TabAlignment.Bottom:
			borderBounds.Y--;
			graphicsPath = GetBottomAdditionalBordersPath(borderBounds, 3);
			graphicsPath2 = GetBottomAdditionalBordersPath(new Rectangle(borderBounds.Left + 1, borderBounds.Top - 1, borderBounds.Right - 2, borderBounds.Bottom - 2), 2);
			pt = new Point(borderBounds.Left + BorderWidth, borderBounds.Top + 1);
			pt2 = new Point(borderBounds.Right - BorderWidth, borderBounds.Top + 1);
			break;
		case TabAlignment.Left:
			borderBounds.X--;
			graphicsPath = GetLeftAdditionalBordersPath(borderBounds, 3);
			graphicsPath2 = GetLeftAdditionalBordersPath(new Rectangle(borderBounds.Left + 1, borderBounds.Top + 1, borderBounds.Right + 1, borderBounds.Bottom - 2), 2);
			pt = new Point(borderBounds.Left + borderBounds.Width, borderBounds.Top + BorderWidth);
			pt2 = new Point(borderBounds.Left + borderBounds.Width, borderBounds.Bottom - BorderWidth);
			break;
		}
		Color color = WindowsXPThemeColors.TabControlAdvActiveBorderColor;
		Color color2 = WindowsXPThemeColors.TabControlAdvLightBorderColor;
		Color color3 = WindowsXPThemeColors.TabControlAdvActiveBottomTabColor;
		if (IsVistaOS)
		{
			color = Color.FromArgb(127, 157, 185);
			color2 = Color.White;
			color3 = Color.FromArgb(210, 230, 250);
		}
		using (Brush brush = new SolidBrush(color3))
		{
			g.FillPath(brush, graphicsPath);
		}
		using (Pen pen = new Pen(color))
		{
			g.DrawPath(pen, graphicsPath);
			g.DrawLine(pen, pt, pt2);
		}
		using (Pen pen2 = new Pen(color2))
		{
			g.DrawPath(pen2, graphicsPath2);
		}
		graphicsPath.Dispose();
		graphicsPath2.Dispose();
	}

	private GraphicsPath GetTopAdditionalBordersPath(Rectangle borderBounds, int cornerCut)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] points = new PointF[6]
		{
			new PointF(borderBounds.Left, borderBounds.Bottom),
			new PointF(borderBounds.Left, borderBounds.Bottom - BorderWidth + cornerCut - 1),
			new PointF(borderBounds.Left + cornerCut - 1, borderBounds.Bottom - BorderWidth),
			new PointF(borderBounds.Right - cornerCut, borderBounds.Bottom - BorderWidth),
			new PointF(borderBounds.Right - 1, borderBounds.Bottom - BorderWidth + cornerCut - 1),
			new PointF(borderBounds.Right - 1, borderBounds.Bottom)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private GraphicsPath GetBottomAdditionalBordersPath(Rectangle borderBounds, int cornerCut)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] points = new PointF[6]
		{
			new PointF(borderBounds.Left, borderBounds.Top + 1),
			new PointF(borderBounds.Left, borderBounds.Top + BorderWidth - cornerCut + 1),
			new PointF(borderBounds.Left + cornerCut - 1, borderBounds.Top + BorderWidth),
			new PointF(borderBounds.Right - cornerCut, borderBounds.Top + BorderWidth),
			new PointF(borderBounds.Right - 1, borderBounds.Top + BorderWidth - cornerCut + 1),
			new PointF(borderBounds.Right - 1, borderBounds.Top + 1)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private GraphicsPath GetLeftAdditionalBordersPath(Rectangle borderBounds, int cornerCut)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] points = new PointF[6]
		{
			new PointF(borderBounds.Left + borderBounds.Width + 1, borderBounds.Top),
			new PointF(borderBounds.Left - BorderWidth + borderBounds.Width + cornerCut, borderBounds.Top),
			new PointF(borderBounds.Left - BorderWidth + borderBounds.Width + 1, borderBounds.Top + cornerCut - 1),
			new PointF(borderBounds.Left - BorderWidth + borderBounds.Width + 1, borderBounds.Bottom - cornerCut),
			new PointF(borderBounds.Left - BorderWidth + borderBounds.Width + cornerCut, borderBounds.Bottom - 1),
			new PointF(borderBounds.Left + borderBounds.Width + 1, borderBounds.Bottom - 1)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private GraphicsPath GetRightAdditionalBordersPath(Rectangle borderBounds, int cornerCut)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		PointF[] points = new PointF[6]
		{
			new PointF(borderBounds.Right - borderBounds.Width, borderBounds.Top),
			new PointF(borderBounds.Right + BorderWidth - borderBounds.Width - cornerCut, borderBounds.Top),
			new PointF(borderBounds.Right + BorderWidth - borderBounds.Width - 1, borderBounds.Top + cornerCut - 1),
			new PointF(borderBounds.Right + BorderWidth - borderBounds.Width - 1, borderBounds.Bottom - cornerCut),
			new PointF(borderBounds.Right + BorderWidth - borderBounds.Width - cornerCut, borderBounds.Bottom - 1),
			new PointF(borderBounds.Right - borderBounds.Width, borderBounds.Bottom - 1)
		};
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	[DocumentationExclude]
	protected void DrawGroupOffice2003Borders(Graphics g)
	{
		Rectangle rectangle = Rectangle.Round(GetPanelBounds());
		Pen pen = new Pen(Office2003Colors.SelBorderColor);
		Point pt;
		Point pt2;
		switch (Alignment)
		{
		case TabAlignment.Top:
			pt = new Point(rectangle.X, rectangle.Y);
			pt2 = new Point(rectangle.X + rectangle.Width, rectangle.Y);
			break;
		case TabAlignment.Right:
			pt = new Point(rectangle.X + rectangle.Width - 1, rectangle.Y);
			pt2 = new Point(pt.X, rectangle.Y + rectangle.Height);
			break;
		case TabAlignment.Bottom:
			pt = new Point(rectangle.X, rectangle.Y + rectangle.Height - 1);
			pt2 = new Point(pt.X + rectangle.Width - 1, pt.Y);
			break;
		case TabAlignment.Left:
			pt = new Point(rectangle.X, rectangle.Y);
			pt2 = new Point(pt.X, pt.Y + rectangle.Height);
			break;
		default:
			throw new ArgumentException("Unknown alignment!");
		}
		g.DrawLine(pen, pt, pt2);
	}

	protected void DrawBordersVS2005(Graphics g)
	{
		Rectangle rectangle = Rectangle.Round(GetPanelBounds());
		int num = 1;
		switch (Alignment)
		{
		case TabAlignment.Left:
			rectangle.Width -= num * 2;
			if (IsMirrored)
			{
				rectangle.Width -= num;
			}
			rectangle.Height -= num;
			break;
		case TabAlignment.Right:
			rectangle.Offset(num, 0);
			if (!IsMirrored)
			{
				rectangle.Offset(num, 0);
			}
			break;
		case TabAlignment.Top:
			rectangle.Height -= num * 2;
			rectangle.Width -= num;
			break;
		case TabAlignment.Bottom:
			rectangle.Height -= num * 3;
			rectangle.Width -= num;
			rectangle.Offset(0, num * 2);
			break;
		}
		using Pen pen = new Pen(TabRendererWhidbey.DEF_SELECTED_BORDER_COLOR, num);
		switch (Alignment)
		{
		case TabAlignment.Left:
			g.DrawLine(pen, rectangle.Right, rectangle.Top, rectangle.Right, rectangle.Bottom);
			break;
		case TabAlignment.Right:
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Left, rectangle.Bottom);
			break;
		case TabAlignment.Top:
			g.DrawLine(pen, rectangle.Left, rectangle.Bottom, rectangle.Right, rectangle.Bottom);
			break;
		case TabAlignment.Bottom:
			g.DrawLine(pen, rectangle.Left, rectangle.Top, rectangle.Right, rectangle.Top);
			break;
		}
	}

	protected void DrawBordersOffice2003(Graphics g)
	{
		Rectangle rect = Rectangle.Round(GetPanelBounds());
		int num = 1;
		switch (Alignment)
		{
		case TabAlignment.Left:
			rect.Width -= num * 2;
			if (IsMirrored)
			{
				rect.Width -= num;
			}
			rect.Height -= num;
			break;
		case TabAlignment.Top:
			rect.Height -= num * 2;
			rect.Width -= num;
			break;
		case TabAlignment.Bottom:
			rect.Height -= num * 3;
			rect.Width -= num;
			rect.Offset(0, num * 2);
			break;
		case TabAlignment.Right:
			rect.Width -= num * 2;
			rect.Height -= num;
			rect.Offset(num, 0);
			if (!IsMirrored)
			{
				rect.Offset(num, 0);
				rect.Width -= num;
			}
			break;
		}
		if (IsOffice2003Style)
		{
			using (Pen pen = new Pen(Office2003Colors.SelBorderColor, num))
			{
				g.DrawRectangle(pen, rect);
			}
		}
	}

	protected virtual void DrawAdditionalBorders(Graphics g)
	{
		if (IsOffice2003Style)
		{
			DrawBordersOffice2003(g);
		}
		else if (IsWhidbeyStyle)
		{
			DrawBordersVS2005(g);
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void ChildControlsRemovedByDesigner(ArrayList childControls)
	{
		this.childControls = childControls;
		Invalidate(invalidateChildren: false);
	}

	private void ResetChildControls()
	{
		if (childControls == null)
		{
			return;
		}
		if (childControls.Count > 0)
		{
			foreach (Control childControl in childControls)
			{
				base.Controls.Add(childControl);
			}
		}
		childControls.Clear();
	}

	private RectangleF GetPanelBounds()
	{
		RectangleF result = RectangleF.Empty;
		result = ((Alignment != TabAlignment.Top && Alignment != TabAlignment.Bottom) ? new RectangleF(m_internalTabPanelBounds.Left, base.ClientRectangle.Top, m_internalTabPanelBounds.Width, base.ClientRectangle.Height) : new RectangleF(base.ClientRectangle.Left, m_internalTabPanelBounds.Top, base.ClientRectangle.Width, m_internalTabPanelBounds.Height));
		return result;
	}

	private RectangleF CorrectFillRectangle(RectangleF bounds)
	{
		int num = 5;
		if (IsOffice2003Style)
		{
			switch (Alignment)
			{
			case TabAlignment.Top:
				bounds.Height -= num;
				break;
			case TabAlignment.Bottom:
				bounds.Height -= num;
				bounds.Offset(0f, num + 1);
				break;
			case TabAlignment.Left:
				bounds.Width -= num;
				bounds.Width -= 1f;
				break;
			case TabAlignment.Right:
				bounds.Width -= num;
				bounds.Offset(num, 0f);
				break;
			}
		}
		else if (IsVS2010)
		{
			num = 5;
			switch (Alignment)
			{
			case TabAlignment.Top:
				bounds.Offset(0f, bounds.Y + bounds.Height - (float)num);
				bounds.Height = num;
				break;
			case TabAlignment.Bottom:
				bounds.Height = num;
				break;
			case TabAlignment.Left:
				bounds.Offset(bounds.Width - (float)num, 0f);
				bounds.Width = num;
				break;
			case TabAlignment.Right:
				bounds.Width = num;
				break;
			}
		}
		return bounds;
	}

	protected virtual void DrawPanelBackground(Graphics g)
	{
		bool isOffice2003Style = IsOffice2003Style;
		RectangleF rectangleF = GetPanelBounds();
		if (isOffice2003Style && SelectedIndex >= 0)
		{
			using Brush brush = new SolidBrush(Office2003Colors.MenuItemHotColorDark);
			g.FillRectangle(brush, base.ClientRectangle);
		}
		else if (IsOffice2007Style)
		{
			using Brush brush2 = new SolidBrush(TabPanelBackColor);
			rectangleF = new RectangleF(rectangleF.X, rectangleF.Y + 0f, rectangleF.Width, rectangleF.Height);
			g.FillRectangle(brush2, rectangleF);
		}
		else if (IsOneNoteStyle || IsOneNoteStyleFlatTabs)
		{
			if (SelectedIndex >= 0)
			{
				rectangleF = CorrectFillRectangle(rectangleF);
			}
			if (rectangleF.Width > 0f && rectangleF.Height > 0f)
			{
				Color color = TabPanelData.BackColor;
				if (color == Color.Empty)
				{
					color = m_tabPanelDefaultProperties.DefaultTabPanelBackgroundColor();
				}
				using Brush brush3 = GetOffice2003FillBrush(rectangleF, color);
				g.FillRectangle(brush3, rectangleF);
			}
		}
		else if (IsIE7Style || IsWhidbeyStyle || IsDockingWhidbeyStyleBeta || IsDockingWhidbeyStyle)
		{
			using Brush brush4 = new SolidBrush(TabPanelBackColor);
			g.FillRectangle(brush4, rectangleF);
		}
		else if (IsVS2010)
		{
			Color color2 = Color.FromArgb(41, 57, 85);
			using Brush brush5 = new SolidBrush(color2);
			g.FillRectangle(brush5, base.ClientRectangle);
		}
		if (!(BackColor != TabPanelBackColor) || IsOneNoteStyle || IsOffice2007Style || IsOneNoteStyleFlatTabs)
		{
			return;
		}
		new Point(0, m_sbScrollButtons.Top);
		if (isOffice2003Style)
		{
			if (SelectedIndex >= 0)
			{
				rectangleF = CorrectFillRectangle(rectangleF);
			}
			if (rectangleF.Width > 0f && rectangleF.Height > 0f)
			{
				Color color3 = TabPanelData.BackColor;
				if (color3 == Color.Empty)
				{
					color3 = m_tabPanelDefaultProperties.DefaultTabPanelBackgroundColor();
				}
				using Brush brush6 = GetOffice2003FillBrush(rectangleF, color3);
				g.FillRectangle(brush6, rectangleF);
			}
		}
		else if (IsDockingWhidbeyStyle)
		{
			g.FillRectangle(new SolidBrush(TabPanelBackColor), rectangleF);
			DrawBorderForDockingWhidbey(g, rectangleF);
		}
		else if (IsVS2010)
		{
			rectangleF = CorrectFillRectangle(rectangleF);
			Color color4 = Color.FromArgb(255, 232, 166);
			g.FillRectangle(new SolidBrush(color4), rectangleF);
		}
		else
		{
			g.FillRectangle(new SolidBrush(TabPanelBackColor), rectangleF);
		}
	}

	private void DrawBorderForDockingWhidbey(Graphics pGraphics, RectangleF pRect)
	{
		PointF empty = PointF.Empty;
		PointF empty2 = PointF.Empty;
		PointF empty3 = PointF.Empty;
		PointF empty4 = PointF.Empty;
		switch (Alignment)
		{
		case TabAlignment.Top:
			empty3.X = 0f;
			empty3.Y = pRect.Bottom - 3f;
			empty4.X = pRect.Width;
			empty4.Y = pRect.Bottom - 3f;
			empty.X = 0f;
			empty.Y = pRect.Bottom - 2f;
			empty2.X = pRect.Width;
			empty2.Y = pRect.Bottom - 2f;
			break;
		case TabAlignment.Bottom:
			empty3.X = 0f;
			empty3.Y = pRect.Top + 2f;
			empty4.X = pRect.Width;
			empty4.Y = pRect.Top + 2f;
			empty.X = 0f;
			empty.Y = pRect.Top + 1f;
			empty2.X = pRect.Width;
			empty2.Y = pRect.Top + 1f;
			break;
		case TabAlignment.Right:
			empty3.X = pRect.Left + 2f;
			empty3.Y = 0f;
			empty4.X = pRect.Left + 2f;
			empty4.Y = pRect.Height;
			empty.X = pRect.Left + 1f;
			empty.Y = 0f;
			empty2.X = pRect.Left + 1f;
			empty2.Y = pRect.Height;
			break;
		case TabAlignment.Left:
			empty3.X = pRect.Right - 3f;
			empty3.Y = 0f;
			empty4.X = pRect.Right - 3f;
			empty4.Y = pRect.Height;
			empty.X = pRect.Right - 2f;
			empty.Y = 0f;
			empty2.X = pRect.Right - 2f;
			empty2.Y = pRect.Height;
			break;
		}
		using (Pen pen = new Pen(Color.FromKnownColor(KnownColor.ControlDark)))
		{
			pGraphics.DrawLine(pen, empty3, empty4);
		}
		using Pen pen2 = new Pen(Color.White);
		pGraphics.DrawLine(pen2, empty, empty2);
	}

	private void DrawBorderForOffice2007(Graphics pGraphics)
	{
		RectangleF panelBounds = GetPanelBounds();
		PointF empty = PointF.Empty;
		PointF empty2 = PointF.Empty;
		switch (Alignment)
		{
		case TabAlignment.Top:
			empty.X = 0f;
			empty.Y = panelBounds.Bottom - 1f;
			empty2.X = panelBounds.Width;
			empty2.Y = panelBounds.Bottom - 1f;
			break;
		case TabAlignment.Bottom:
			empty.X = 0f;
			empty.Y = panelBounds.Top + 1f;
			empty2.X = panelBounds.Width;
			empty2.Y = panelBounds.Top + 1f;
			break;
		case TabAlignment.Right:
			empty.X = panelBounds.Left + 1f;
			empty.Y = 0f;
			empty2.X = panelBounds.Left + 1f;
			empty2.Y = panelBounds.Height;
			break;
		case TabAlignment.Left:
			empty.X = panelBounds.Right - 1f;
			empty.Y = 0f;
			empty2.X = panelBounds.Right - 1f;
			empty2.Y = panelBounds.Height;
			break;
		}
		using Pen pen = new Pen(Office2007ColorTable.TabDefaultBorderColor);
		pGraphics.DrawLine(pen, empty, empty2);
	}

	private Brush GetOffice2003FillBrush(RectangleF rectFill, Color backColor)
	{
		Brush result = null;
		switch (Alignment)
		{
		case TabAlignment.Top:
			result = new LinearGradientBrush(rectFill, backColor, Color.White, LinearGradientMode.Vertical);
			break;
		case TabAlignment.Bottom:
			result = new LinearGradientBrush(rectFill, Color.White, backColor, LinearGradientMode.Vertical);
			break;
		case TabAlignment.Left:
			result = new LinearGradientBrush(rectFill, backColor, Color.White, LinearGradientMode.Horizontal);
			break;
		case TabAlignment.Right:
			result = new LinearGradientBrush(rectFill, Color.White, backColor, LinearGradientMode.Horizontal);
			break;
		}
		return result;
	}

	protected virtual RectangleF GetBorderRect()
	{
		RectangleF result = RectangleF.Empty;
		RectangleF rectangleF = base.ClientRectangle;
		bool isMirrored = IsMirrored;
		switch (m_tabPanelData.Alignment)
		{
		case TabAlignment.Top:
		{
			float num4 = m_internalTabPanelBounds.Bottom - 1f;
			result = new RectangleF(rectangleF.Left, num4, rectangleF.Width, rectangleF.Bottom - num4);
			break;
		}
		case TabAlignment.Bottom:
		{
			float num3 = m_internalTabPanelBounds.Top + 1f;
			result = new RectangleF(rectangleF.Left, rectangleF.Top + 1f, rectangleF.Width, num3 - rectangleF.Top);
			break;
		}
		case TabAlignment.Left:
		{
			float num5 = m_internalTabPanelBounds.Right - 1f;
			if (isMirrored && !BorderVisible)
			{
				num5 -= 1f;
			}
			float num6 = rectangleF.Right - num5;
			result = new RectangleF(num5, rectangleF.Top, num6, rectangleF.Height);
			break;
		}
		case TabAlignment.Right:
		{
			float num = m_internalTabPanelBounds.Left + 1f;
			if (isMirrored && !BorderVisible)
			{
				num -= 1f;
			}
			float num2 = num - rectangleF.Left;
			result = new RectangleF(rectangleF.Left + 1f, rectangleF.Top, num2, rectangleF.Height);
			break;
		}
		}
		return result;
	}

	protected new virtual void Layout(Graphics g, bool fromPaint)
	{
		if (!m_bIsDisposing)
		{
			SetNeedLayout(value: false);
			m_tabPanelRenderer.Layout(g, fromPaint);
			ComputeTabPanelBounds();
			UpdateSelectedTabPage(setBounds: true);
		}
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (levent.AffectedControl == this || dockJustChanged)
		{
			if (dockJustChanged)
			{
				dockJustChanged = false;
			}
			if (base.Width != 0 && base.Height != 0 && base.IsHandleCreated)
			{
				Graphics graphics = CreateGraphics();
				Layout(graphics, fromPaint: false);
				graphics.Dispose();
			}
		}
		base.OnLayout(levent);
	}

	protected override void OnDockChanged(EventArgs e)
	{
		dockJustChanged = true;
		base.OnDockChanged(e);
	}

	[DocumentationExclude]
	protected internal void ComputeTabPanelBoundsInternal()
	{
		ComputeTabPanelBounds();
	}

	protected virtual void ComputeTabPanelBounds()
	{
		RectangleF tabPanelBounds = RectangleF.Empty;
		if (!base.IsHandleCreated || base.ClientRectangle == Rectangle.Empty)
		{
			SetNeedLayout(value: true);
			m_internalTabPanelBounds = RectangleF.Empty;
			return;
		}
		SizeF size = SizeF.Empty;
		switch (m_tabPanelData.Alignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
			size = new SizeF(base.ClientRectangle.Width, base.ClientRectangle.Height);
			break;
		case TabAlignment.Left:
		case TabAlignment.Right:
			size = new SizeF(base.ClientRectangle.Height, base.ClientRectangle.Width);
			break;
		}
		RectangleF rectangleF = base.ClientRectangle;
		using (Graphics g = CreateGraphics())
		{
			m_tabPanelRenderer.GetPreferredSize(g, ref size);
		}
		switch (m_tabPanelData.Alignment)
		{
		case TabAlignment.Bottom:
			tabPanelBounds = new RectangleF(new PointF(rectangleF.Left, rectangleF.Bottom - size.Height), size);
			tabPanelBounds.Width = base.ClientRectangle.Width;
			break;
		case TabAlignment.Top:
			tabPanelBounds = new RectangleF(new PointF(rectangleF.Left, rectangleF.Top), size);
			tabPanelBounds.Width = base.ClientRectangle.Width;
			break;
		case TabAlignment.Left:
			tabPanelBounds = new RectangleF(new PointF(rectangleF.Left, rectangleF.Top), new SizeF(size.Height, size.Width));
			tabPanelBounds.Height = base.ClientRectangle.Height;
			break;
		case TabAlignment.Right:
			tabPanelBounds = new RectangleF(new PointF(rectangleF.Right - size.Height, rectangleF.Top), new SizeF(size.Height, size.Width));
			tabPanelBounds.Height = base.ClientRectangle.Height;
			break;
		}
		tabPanelBounds = AdjustTabPanelBounds(tabPanelBounds);
		if (tabPanelBounds.Height < 0f)
		{
			tabPanelBounds.Height = 0f;
		}
		if (tabPanelBounds.Width < 0f)
		{
			tabPanelBounds.Width = 0f;
		}
		if (TabPages.Count == 0 && ReserveTabSpace)
		{
			switch (Alignment)
			{
			case TabAlignment.Top:
				tabPanelBounds.Height = m_reservedSpace;
				break;
			case TabAlignment.Right:
				tabPanelBounds.Width = m_reservedSpace;
				tabPanelBounds.Offset(-m_reservedSpace, 0f);
				break;
			case TabAlignment.Left:
				tabPanelBounds.Width = m_reservedSpace;
				break;
			case TabAlignment.Bottom:
				tabPanelBounds.Height = m_reservedSpace;
				tabPanelBounds.Offset(0f, -m_reservedSpace);
				break;
			}
		}
		SetTabPanelBounds(tabPanelBounds);
	}

	protected virtual void SetTabPanelBounds(RectangleF tabPanelBounds)
	{
		Invalidate(new Region(RectangleF.Union(tabPanelBounds, m_tabPanelRenderer.Bounds)), invalidateChildren: false);
		m_tabPanelRenderer.Bounds = tabPanelBounds;
		m_internalTabPanelBounds = tabPanelBounds;
	}

	protected RectangleF GetTabPanelBounds()
	{
		return m_internalTabPanelBounds;
	}

	protected virtual RectangleF AdjustTabPanelBounds(RectangleF tabPanelBounds)
	{
		SizeF size = SizeF.Empty;
		Graphics graphics = CreateGraphics();
		m_tabPanelRenderer.GetPreferredSize(graphics, ref size);
		graphics.Dispose();
		if (m_tabPrimitivesHost.Visible)
		{
			size.Width += (m_tabPrimitivesHost.NeedRotate ? m_tabPrimitivesHost.Size.Height : m_tabPrimitivesHost.Size.Width);
		}
		if (m_tabPanelData.SizeMode != TabSizeMode.ShrinkToFit && (((m_tabPanelData.Alignment == TabAlignment.Top || m_tabPanelData.Alignment == TabAlignment.Bottom) && tabPanelBounds.Width < size.Width) || ((m_tabPanelData.Alignment == TabAlignment.Left || m_tabPanelData.Alignment == TabAlignment.Right) && tabPanelBounds.Height < size.Width)))
		{
			if (m_tabPrimitivesHost.Visible)
			{
				m_tabPrimitivesHost.SetFullModeForAllDropDownPrimitives(isFullMode: true);
			}
			if (m_bShowScroll)
			{
				if (!m_sbScrollButtons.Visible && !Multiline)
				{
					InitScrollButtons();
				}
				AdjustScrollButtonDimensions(ref tabPanelBounds, scrollNeeded: true);
			}
		}
		else
		{
			if (m_tabPrimitivesHost.Visible)
			{
				m_tabPrimitivesHost.SetFullModeForAllDropDownPrimitives(isFullMode: false);
			}
			AdjustScrollButtonDimensions(ref tabPanelBounds, scrollNeeded: false);
		}
		AdjustNavigationCtlDimensions(ref tabPanelBounds);
		return tabPanelBounds;
	}

	protected virtual void AdjustNavigationCtlDimensions(ref RectangleF tabPanelBounds)
	{
		if (!m_tabPrimitivesHost.Visible)
		{
			return;
		}
		bool flag = Alignment == TabAlignment.Left || Alignment == TabAlignment.Right;
		bool flag2 = m_tabPrimitivesHost.Alignment == TabPrimitiveHostAlignment.Far;
		if (RightToLeft == RightToLeft.Yes)
		{
			flag2 = !flag2;
		}
		m_tabPrimitivesHost.NeedLayout = true;
		m_tabPrimitivesHost.Layout();
		m_tabPrimitivesHost.RefreshPrimitiveEnabled();
		Size size = m_tabPrimitivesHost.Size;
		if (flag)
		{
			tabPanelBounds.Height -= size.Height + 2;
		}
		else
		{
			tabPanelBounds.Width -= size.Width + 2;
		}
		if (flag2)
		{
			if (flag)
			{
				m_tabPrimitivesHost.SetLocation((int)(tabPanelBounds.X + (tabPanelBounds.Width - (float)m_tabPrimitivesHost.Size.Width) / 2f), (int)(tabPanelBounds.Y + 2f));
				tabPanelBounds.Y += size.Height + 2;
			}
			else
			{
				m_tabPrimitivesHost.SetLocation((int)tabPanelBounds.X + 2, (int)(tabPanelBounds.Y + (tabPanelBounds.Height - (float)m_tabPrimitivesHost.Size.Height) / 2f));
				tabPanelBounds.X += size.Width + 2;
			}
		}
		else if (flag)
		{
			m_tabPrimitivesHost.SetLocation((int)(tabPanelBounds.X + (tabPanelBounds.Width - (float)m_tabPrimitivesHost.Size.Width) / 2f), (int)(tabPanelBounds.Y + tabPanelBounds.Height + 2f));
		}
		else
		{
			m_tabPrimitivesHost.SetLocation((int)(tabPanelBounds.X + tabPanelBounds.Width + 2f), (int)(tabPanelBounds.Y + (tabPanelBounds.Height - (float)m_tabPrimitivesHost.Size.Height) / 2f));
		}
	}

	protected virtual void AdjustScrollButtonDimensions(ref RectangleF tabPanelBounds, bool scrollNeeded)
	{
		if (m_sbScrollButtons == null)
		{
			return;
		}
		if (scrollNeeded)
		{
			if (m_tabPanelData.Alignment == TabAlignment.Top || m_tabPanelData.Alignment == TabAlignment.Bottom)
			{
				m_sbScrollButtons.Size = m_sizeScrollButtonsSize;
				m_sbScrollButtons.ScrollButtonAppearance = ScrollButtonAppearance.Horizontal;
				m_sbScrollButtons.IsReverseGradient = m_tabPanelData.Alignment == TabAlignment.Bottom;
				float num = tabPanelBounds.Top + tabPanelBounds.Height / 2f - (float)(m_sbScrollButtons.Height / 2);
				if (m_bMirrored)
				{
					m_sbScrollButtons.Location = new Point(0, (int)num);
					tabPanelBounds.X += m_sizeScrollButtonsSize.Width + 4;
				}
				else
				{
					m_sbScrollButtons.Location = new Point((int)tabPanelBounds.Right - m_sizeScrollButtonsSize.Width, (int)num);
				}
				tabPanelBounds.Width -= m_sizeScrollButtonsSize.Width + 4;
			}
			else
			{
				m_sbScrollButtons.Size = new Size(m_sizeScrollButtonsSize.Height, m_sizeScrollButtonsSize.Width);
				m_sbScrollButtons.ScrollButtonAppearance = ScrollButtonAppearance.Vertical;
				m_sbScrollButtons.IsReverseGradient = m_tabPanelData.Alignment == TabAlignment.Right;
				float num2 = tabPanelBounds.Left + tabPanelBounds.Width / 2f - (float)(m_sbScrollButtons.Width / 2);
				if (GetIsMirroredForVerticalAlignment())
				{
					m_sbScrollButtons.Location = new Point((int)num2, 0);
					tabPanelBounds.Y += m_sizeScrollButtonsSize.Width + 4;
				}
				else
				{
					m_sbScrollButtons.Location = new Point((int)num2, (int)tabPanelBounds.Bottom - 30 - 2);
				}
				tabPanelBounds.Height -= m_sizeScrollButtonsSize.Width + 4;
			}
			if (m_sbScrollButtons != null && !m_sbScrollButtons.Visible)
			{
				InitScrollButtons();
			}
			m_sbScrollButtons.MinButtonActive = m_tabPanelRenderer.CanScrollLeft;
			m_sbScrollButtons.MaxButtonActive = m_tabPanelRenderer.CanScrollRight;
			CorrectScrollButtonsLocation();
			UpdateScrollButtonState();
		}
		else if (m_sbScrollButtons != null && m_sbScrollButtons.Visible)
		{
			DestroyScrollButtons(multilineChanged: false);
		}
		UpdateScrollButtonsStyle();
	}

	private void CorrectScrollButtonsLocation()
	{
		if (m_sbScrollButtons == null || !m_sbScrollButtons.Visible)
		{
			return;
		}
		int dx = 0;
		int dy = 0;
		if (IsWhidbeyStyle && Alignment == TabAlignment.Top)
		{
			dy = -1;
		}
		else if (IsOffice2003Style)
		{
			switch (Alignment)
			{
			case TabAlignment.Top:
				dx = ((!IsMirrored) ? (-2) : 2);
				break;
			case TabAlignment.Left:
				if (IsMirrored)
				{
					dx = -1;
					dy = 2;
				}
				else
				{
					dx = -2;
				}
				break;
			case TabAlignment.Right:
				dy = 1;
				dx = ((!IsMirrored) ? 1 : 2);
				break;
			case TabAlignment.Bottom:
				dy = 1;
				dx = ((!IsMirrored) ? (-1) : 2);
				break;
			}
		}
		Point location = m_sbScrollButtons.Location;
		location.Offset(dx, dy);
		m_sbScrollButtons.Location = location;
	}

	private Brush GetScrollButtonsBackGroundBrush()
	{
		Brush result = null;
		if (IsOffice2003Style || IsOneNoteStyle || IsOneNoteStyleFlatTabs)
		{
			Color tabPanelBackColor = TabPanelBackColor;
			Color white = Color.White;
			Rectangle clientRectangle = m_sbScrollButtons.ClientRectangle;
			if (IsOneNoteStyle || IsOneNoteStyleFlatTabs)
			{
				m_sbScrollButtons.GradientInflateOffset = 5;
			}
			clientRectangle.Inflate(m_sbScrollButtons.GradientInflateOffset, m_sbScrollButtons.GradientInflateOffset);
			if (clientRectangle.Width > 0 && clientRectangle.Height > 0)
			{
				result = ((m_sbScrollButtons.ScrollButtonAppearance == ScrollButtonAppearance.Horizontal) ? ((!m_sbScrollButtons.IsReverseGradient) ? new LinearGradientBrush(clientRectangle, tabPanelBackColor, white, LinearGradientMode.Vertical) : new LinearGradientBrush(clientRectangle, white, tabPanelBackColor, LinearGradientMode.Vertical)) : ((!m_sbScrollButtons.IsReverseGradient) ? new LinearGradientBrush(clientRectangle, tabPanelBackColor, white, LinearGradientMode.Horizontal) : new LinearGradientBrush(clientRectangle, white, tabPanelBackColor, LinearGradientMode.Horizontal)));
			}
			if (IsOffice2003Style && BackColor == TabPanelBackColor)
			{
				result = new SolidBrush(Office2003Colors.MenuItemHotColorDark);
			}
		}
		else if (IsIE7Style || IsDockingWhidbeyStyleBeta || IsDockingWhidbeyStyle || IsVS2008)
		{
			result = new SolidBrush(TabPanelBackColor);
		}
		return result;
	}

	protected void UpdateScrollButtonsStyle()
	{
		if (m_sbScrollButtons != null)
		{
			m_sbScrollButtons.GradientInflateOffset = 0;
			if (Alignment == TabAlignment.Top || Alignment == TabAlignment.Bottom)
			{
				m_sbScrollButtons.ScrollButtonAppearance = ScrollButtonAppearance.Horizontal;
			}
			else
			{
				m_sbScrollButtons.ScrollButtonAppearance = ScrollButtonAppearance.Vertical;
			}
			m_sbScrollButtons.IsReverseGradient = Alignment == TabAlignment.Bottom || Alignment == TabAlignment.Right;
			if (IsOffice2007Style)
			{
				m_sbScrollButtons.BackGroundBrush = new SolidBrush(TabPanelBackColor);
				m_sbScrollButtons.Style = VisualStyle.Office2007;
				m_sbScrollButtons.ThemesEnabled = false;
			}
			else if (IsOffice2003Style)
			{
				m_sbScrollButtons.GradientInflateOffset = 5;
				m_sbScrollButtons.ThemesEnabled = false;
				m_sbScrollButtons.Style = VisualStyle.Office2003;
				m_sbScrollButtons.BackGroundBrush = GetScrollButtonsBackGroundBrush();
			}
			else if (IsWhidbeyStyle || IsDockingWhidbeyStyleBeta)
			{
				m_sbScrollButtons.ThemesEnabled = false;
				m_sbScrollButtons.Style = VisualStyle.VS2005;
				m_sbScrollButtons.BackGroundBrush = new SolidBrush(TabPanelBackColor);
			}
			else if (ThemesEnabled)
			{
				m_sbScrollButtons.ThemesEnabled = true;
				m_sbScrollButtons.Style = VisualStyle.OfficeXP;
				m_sbScrollButtons.BackGroundBrush = GetScrollButtonsBackGroundBrush();
			}
			else
			{
				m_sbScrollButtons.ThemesEnabled = true;
				m_sbScrollButtons.Style = VisualStyle.Default;
				m_sbScrollButtons.BackGroundBrush = GetScrollButtonsBackGroundBrush();
			}
			if (VSLikeScrollButton || IsOffice2003Style || IsWhidbeyStyle || IsOffice2007Style || IsOneNoteStyle || IsDockingWhidbeyStyleBeta || IsIE7Style || IsDockingWhidbeyStyle || IsVS2008)
			{
				m_sbScrollButtons.VSLikeButton = true;
			}
			else
			{
				m_sbScrollButtons.VSLikeButton = false;
			}
			if (IsVS2010)
			{
				m_sbScrollButtons.BackGroundBrush = new SolidBrush(Color.FromArgb(41, 57, 85));
				m_sbScrollButtons.Style = VisualStyle.VS2010;
				m_sbScrollButtons.VSLikeButton = true;
			}
			m_sbScrollButtons.Invalidate();
		}
	}

	protected virtual void InitScrollButtons()
	{
		m_sbScrollButtons.TabStop = false;
		UpdateScrollButtonState();
		m_sbScrollButtons.Visible = true;
		m_sbScrollButtons.BringToFront();
		m_sbScrollButtons.UpDown += UpDownEventHandler;
		m_sbScrollButtons.VSLikeButton = VSLikeScrollButton || IsOffice2007Style || IsOffice2003Style || IsWhidbeyStyle || IsVS2008 || IsVS2010;
		m_sbScrollButtons.ThemesEnabled = ThemesEnabled;
		UpdateScrollButtonsStyle();
	}

	protected void UpdateScrollButtonState()
	{
		if (m_sbScrollButtons != null)
		{
			if (m_tabPanelData.TabStyle == TabRenderer2D.TabStyleName || (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && ThemesEnabled))
			{
				m_sbScrollButtons.ButtonState = ButtonState.Flat;
			}
			else
			{
				m_sbScrollButtons.ButtonState = ButtonState.Normal;
			}
		}
	}

	protected virtual void DestroyScrollButtons(bool multilineChanged)
	{
		if (m_sbScrollButtons != null)
		{
			m_sbScrollButtons.UpDown -= UpDownEventHandler;
			m_sbScrollButtons.Visible = false;
		}
	}

	private Color GetRendererBorderColor()
	{
		Color result = Color.Empty;
		if (Renderer != null && Renderer.Renderers != null && SelectedIndex >= 0 && SelectedIndex < Renderer.Renderers.Count)
		{
			TabRendererBase tabRendererBase = Renderer.Renderers[SelectedIndex] as TabRendererBase;
			result = tabRendererBase.TabBorderColor;
		}
		return result;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		UpdateSelectedTabPage(setBounds: false);
	}

	protected override bool ProcessKeyPreview(ref Message m)
	{
		if (ProcessKeyEventArgs(ref m))
		{
			return true;
		}
		return base.ProcessKeyPreview(ref m);
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if ((keyData & Keys.Alt) == Keys.Alt)
		{
			return false;
		}
		if (keyData == Keys.Escape && m_tabPanelRenderer.IsMovingTab())
		{
			return true;
		}
		if (SwitchPagesForDialogKeys)
		{
			switch (keyData & Keys.KeyCode)
			{
			case Keys.Prior:
			case Keys.Next:
				return true;
			}
			if (Focused)
			{
				if (TabCount > 0 && (((keyData == Keys.Left || keyData == Keys.Right) && (Alignment == TabAlignment.Bottom || Alignment == TabAlignment.Top)) || ((keyData == Keys.Up || keyData == Keys.Down) && (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right))))
				{
					return true;
				}
				if (TabCount > 0 && Multiline && (keyData == Keys.Up || keyData == Keys.Down || keyData == Keys.Right || keyData == Keys.Left))
				{
					return true;
				}
			}
		}
		return base.IsInputKey(keyData);
	}

	protected override void OnKeyDown(KeyEventArgs ke)
	{
		if (m_tabPanelRenderer.IsMovingTab() && ke.KeyData == Keys.Escape)
		{
			m_tabPanelRenderer.CancelTabDrag();
			ke.Handled = true;
		}
		else if (SwitchPagesForDialogKeys)
		{
			Keys keyData = ke.KeyData;
			if (keyData == (Keys.Tab | Keys.Control) || keyData == (Keys.Next | Keys.Control) || keyData == (Keys.Tab | Keys.Shift | Keys.Control) || keyData == (Keys.Prior | Keys.Control))
			{
				bool flag = keyData == (Keys.Tab | Keys.Shift | Keys.Control) || keyData == (Keys.Next | Keys.Control);
				int num = SelectedIndex;
				if (num != -1)
				{
					int count = m_tabPanelData.TabsData.Count;
					bool flag2 = false;
					while (!flag2)
					{
						num = (flag ? ((num + count - 1) % count) : ((num + 1) % count));
						if (TabPanelData.IsTabSelectable(num, visually: true))
						{
							flag2 = true;
						}
						if (num == SelectedIndex)
						{
							break;
						}
					}
					if (ValidateFocusedTab())
					{
						SelectedIndex = num;
					}
					ke.Handled = true;
				}
			}
			if (!ke.Handled && Focused)
			{
				if (TabCount > 0 && (((keyData == Keys.Left || keyData == Keys.Right) && (Alignment == TabAlignment.Bottom || Alignment == TabAlignment.Top)) || ((keyData == Keys.Up || keyData == Keys.Down) && (Alignment == TabAlignment.Left || Alignment == TabAlignment.Right))))
				{
					m_previousTabPage = m_currentTabPage;
					int num2 = SelectedIndex;
					bool isMirroredForVerticalAlignment = GetIsMirroredForVerticalAlignment();
					bool flag3 = keyData == (Keys)(isMirroredForVerticalAlignment ? 37 : 39) || keyData == (Keys)(isMirroredForVerticalAlignment ? 38 : 40);
					bool flag4 = false;
					while (!flag4)
					{
						int num3 = num2;
						if (!flag3 && num2 > 0)
						{
							num2--;
						}
						else if (flag3 && num2 < m_tabPanelData.TabsData.Count - 1)
						{
							num2++;
						}
						if (TabPanelData.IsTabSelectable(num2, visually: true))
						{
							flag4 = true;
						}
						if (num2 == SelectedIndex || num3 == num2)
						{
							break;
						}
					}
					if (flag4)
					{
						SelectedIndex = num2;
					}
					ke.Handled = true;
					FireTabPageLeaveEnter();
				}
				else if (TabCount > 0 && Multiline && (keyData == Keys.Up || keyData == Keys.Down || keyData == Keys.Right || keyData == Keys.Left))
				{
					m_previousTabPage = m_currentTabPage;
					int num4 = SelectedIndex;
					bool flag5 = false;
					while (!flag5)
					{
						Rectangle tabRect = GetTabRect(num4);
						if (Alignment == TabAlignment.Top && keyData == Keys.Up)
						{
							num4 = HitTestTabs(new Point(tabRect.X + tabRect.Width / 2, tabRect.Y - 2));
						}
						else if (Alignment == TabAlignment.Bottom && keyData == Keys.Down)
						{
							num4 = HitTestTabs(new Point(tabRect.X + tabRect.Width / 2, tabRect.Bottom + 1));
						}
						else if (Alignment == TabAlignment.Left && keyData == Keys.Left)
						{
							num4 = HitTestTabs(new Point(tabRect.X - 2, tabRect.Y + tabRect.Height / 2));
						}
						else if (Alignment == TabAlignment.Right && keyData == Keys.Right)
						{
							num4 = HitTestTabs(new Point(tabRect.Right + 1, tabRect.Y + tabRect.Height / 2));
						}
						if (num4 == -1 || TabPanelData.IsTabSelectable(num4, visually: true))
						{
							flag5 = true;
						}
						if (num4 == SelectedIndex)
						{
							break;
						}
					}
					if (num4 != -1)
					{
						SelectedIndex = num4;
					}
					ke.Handled = true;
					FireTabPageLeaveEnter();
				}
			}
		}
		base.OnKeyDown(ke);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		SetNeedLayout(value: true);
	}

	public override string ToString()
	{
		string text = base.ToString();
		if (TabPages.Count > 0)
		{
			text = text + ", TabPages.Count: " + TabPages.Count;
			if (TabPages.Count > 0)
			{
				text = text + ", TabPages[0]: " + TabPages[0].ToString();
			}
		}
		return text;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		SetRegion();
	}

	protected void UpDownEventHandler(object source, UpDownEventArgs e)
	{
		ScrollDirection direction = ScrollDirection.Left;
		if (e.ButtonID == 1)
		{
			direction = ScrollDirection.Left;
		}
		else if (e.ButtonID == 2)
		{
			direction = ScrollDirection.Right;
		}
		m_tabPanelRenderer.Scroll(ScrollIncrement, direction);
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override Control.ControlCollection CreateControlsInstance()
	{
		return new ControlCollection(this);
	}

	private static RightToLeft GetActualRightToLeftValue(Control ctrl)
	{
		while ((ctrl = ctrl.Parent) != null)
		{
			RightToLeft rightToLeft = ctrl.RightToLeft;
			if (RightToLeft.Inherit != rightToLeft)
			{
				return rightToLeft;
			}
		}
		return RightToLeft.No;
	}

	private void TabControlAdv_ControlAdded(object sender, ControlEventArgs e)
	{
		if (e.Control is TabPageAdv tabPageAdv)
		{
			tabPageAdv.MouseDown += tabPage_MouseDown;
		}
	}

	private void tabPage_MouseDown(object sender, MouseEventArgs e)
	{
		if (IsEditing)
		{
			m_tabPageText = SelectedTab.Text;
			if (m_tabPageText != m_txtLabel.Text)
			{
				EndLabelEdit(success: true);
			}
			else
			{
				EndLabelEdit(success: false);
			}
		}
	}

	private void TabControlAdv_ControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control is TabPageAdv tabPageAdv)
		{
			tabPageAdv.IsTransparent = false;
			tabPageAdv.MouseDown -= tabPage_MouseDown;
			if (m_previousTabPage == tabPageAdv)
			{
				m_previousTabPage = null;
			}
		}
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		bool flag = false;
		if (IsEditing)
		{
			switch (keyData)
			{
			case Keys.Return:
				EndLabelEdit(success: true);
				flag = true;
				break;
			case Keys.Escape:
				EndLabelEdit(success: false);
				flag = true;
				break;
			}
		}
		if (!flag)
		{
			flag = base.ProcessCmdKey(ref msg, keyData);
		}
		return flag;
	}

	private void FireTabPageLeaveEnter()
	{
		if (m_previousTabPage != m_currentTabPage)
		{
			if (m_previousTabPage != null)
			{
				m_previousTabPage.FireLeave(EventArgs.Empty);
			}
			m_currentTabPage.FireEnter(EventArgs.Empty);
		}
	}

	private void ValidateTabPagesVisibility()
	{
		int selectedIndex = SelectedIndex;
		TabPageAdvCollection tabPages = TabPages;
		int count = tabPages.Count;
		if (base.DesignMode || selectedIndex < 0 || selectedIndex >= count || tabPages[selectedIndex].TabVisible)
		{
			return;
		}
		for (int i = 0; i < count; i++)
		{
			if (tabPages[i].TabVisible)
			{
				SelectedIndex = i;
				break;
			}
		}
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		TabStyle = typeof(TabRendererOffice2007);
	}

	[SpecialName]
	Rectangle ITabControl.get_ClientRectangle()
	{
		return base.ClientRectangle;
	}
}
