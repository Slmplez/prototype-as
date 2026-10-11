using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Reflection;
using System.Resources;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Localization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Displays a set of related controls as selectable groups or tabs.")]
[Designer(typeof(GroupBarDesigner), typeof(IDesigner))]
[DefaultProperty("GroupBarItems")]
[DefaultEvent("GroupBarItemSelected")]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.groupbar.bmp")]
public class GroupBar : Control, IIntegratedScrollContainer, IGroupBarDesignerInvoke, ISupportInitialize
{
	[DefaultProperty("Item")]
	[Description("The GroupBarItem collection in the GroupBar.")]
	public class GroupBarItemCollection : CollectionBase
	{
		[DocumentationExclude]
		protected GroupBar groupBarHost;

		[DocumentationExclude]
		protected bool bLockUpdate;

		public GroupBarItem this[int index]
		{
			get
			{
				return (GroupBarItem)base.List[index];
			}
			set
			{
				Insert(index, value);
			}
		}

		public GroupBarItemCollection(GroupBar groupbar)
		{
			groupBarHost = groupbar;
		}

		public int Add(GroupBarItem item)
		{
			return base.List.Add(item);
		}

		public void Insert(int index, GroupBarItem item)
		{
			base.List.Insert(index, item);
		}

		public new void RemoveAt(int index)
		{
			if (index < 0 || index >= base.List.Count)
			{
				throw new ArgumentOutOfRangeException("The specified index is invalid.");
			}
			Remove(this[index]);
		}

		public void Remove(GroupBarItem item)
		{
			if (!base.List.Contains(item))
			{
				throw new ApplicationException("GroupBarItem does not exist.");
			}
			groupBarHost.NotifyGroupBarOfItemRemoval(item);
			item.PropertyChanged -= groupBarHost.PropChangedHandler;
			base.List.Remove(item);
			groupBarHost.RecalculateGroupBarLayout();
			groupBarHost.SetActiveClientBounds();
			groupBarHost.Invalidate(invalidateChildren: false);
			groupBarHost.FireGroupBarItemRemovedEvent(item);
		}

		public void AddRange(GroupBarItem[] items)
		{
			bLockUpdate = true;
			foreach (GroupBarItem item in items)
			{
				Add(item);
			}
			bLockUpdate = false;
			groupBarHost.RecalculateGroupBarLayout();
			groupBarHost.SetActiveClientBounds();
			groupBarHost.Invalidate(invalidateChildren: false);
		}

		public bool Contains(GroupBarItem item)
		{
			return base.List.Contains(item);
		}

		public int IndexOf(GroupBarItem item)
		{
			return base.List.IndexOf(item);
		}

		[DocumentationExclude]
		[EditorBrowsable(EditorBrowsableState.Never)]
		public void CopyTo(GroupBarItem[] array, int index)
		{
			base.List.CopyTo(array, index);
		}

		[DocumentationExclude]
		protected override void OnInsert(int index, object value)
		{
			GroupBarItem groupBarItem = value as GroupBarItem;
			if (groupBarHost.DesignMode && groupBarItem.Text == string.Empty)
			{
				groupBarItem.Text = "GroupBarItem" + base.Count;
			}
			base.OnInsert(index, value);
		}

		[DocumentationExclude]
		protected override void OnInsertComplete(int index, object value)
		{
			base.OnInsertComplete(index, value);
			GroupBarItem groupBarItem = value as GroupBarItem;
			if (groupBarItem.GroupBar != groupBarHost)
			{
				groupBarItem.SetGroupBarControlReference(groupBarHost);
				if (groupBarItem.InDesignMode)
				{
					TypeDescriptor.Refresh(groupBarItem);
				}
			}
			if (groupBarItem.Client != null)
			{
				if (!groupBarItem.Client.IsHandleCreated)
				{
					groupBarItem.Client.CreateControl();
				}
				int nSelectedItem = groupBarHost.nSelectedItem;
				groupBarHost.nSelectedItem = -1;
				if (groupBarItem.Client.Parent == null || !groupBarItem.Client.Parent.Equals(groupBarHost))
				{
					groupBarHost.Controls.Add(groupBarItem.Client);
				}
				groupBarHost.nSelectedItem = nSelectedItem;
			}
			groupBarItem.PropertyChanged += groupBarHost.PropChangedHandler;
			groupBarHost.nHighlightItem = -1;
			groupBarHost.nContextMenuItem = -1;
			if (groupBarHost.DesignMode)
			{
				groupBarHost.nSelectedItem = base.Count - 1;
			}
			else if (groupBarHost.nSelectedItem == -1)
			{
				groupBarHost.nSelectedItem = 0;
			}
			if (!bLockUpdate)
			{
				groupBarHost.RecalculateGroupBarLayout();
				groupBarHost.SetActiveClientBounds();
				groupBarHost.Invalidate(invalidateChildren: false);
			}
			groupBarHost.FireGroupBarItemAddedEvent(groupBarItem);
		}

		protected override void OnClearComplete()
		{
			base.OnClearComplete();
			groupBarHost.nSelectedItem = -1;
			groupBarHost.RecalculateGroupBarLayout();
			groupBarHost.SetActiveClientBounds();
			groupBarHost.Invalidate(invalidateChildren: false);
		}
	}

	public class VisibleGroupBarItemsCollection : ICollection, IEnumerable
	{
		private ArrayList m_barItems;

		public GroupBarItem this[int index]
		{
			get
			{
				if (index < 0 || index >= m_barItems.Count)
				{
					throw new ArgumentOutOfRangeException("index");
				}
				return (GroupBarItem)m_barItems[index];
			}
		}

		public int Count => m_barItems.Count;

		public object SyncRoot => m_barItems.SyncRoot;

		public bool IsSynchronized => m_barItems.IsSynchronized;

		internal VisibleGroupBarItemsCollection(ArrayList barItems)
		{
			if (barItems == null)
			{
				throw new ArgumentNullException("barItems");
			}
			m_barItems = barItems;
		}

		public void CopyTo(Array array, int index)
		{
			m_barItems.CopyTo(array, index);
		}

		public IEnumerator GetEnumerator()
		{
			return m_barItems.GetEnumerator();
		}
	}

	public class BeforePopupEventArgs : CancelEventArgs
	{
		private GroupBarItem m_item;

		private Rectangle m_popupBounds = Rectangle.Empty;

		private bool m_bFlippedX;

		private bool m_bFlippedY;

		public GroupBarItem Item => m_item;

		public Rectangle PopupBounds
		{
			get
			{
				return m_popupBounds;
			}
			set
			{
				m_popupBounds = value;
			}
		}

		public bool FlippedX => m_bFlippedX;

		public bool FlippedY => m_bFlippedY;

		public BeforePopupEventArgs(GroupBarItem item, Rectangle popupBounds, bool cancel, bool flippedX, bool flippedY)
			: base(cancel)
		{
			m_item = item;
			m_popupBounds = popupBounds;
			m_bFlippedX = flippedX;
			m_bFlippedY = flippedY;
		}

		public BeforePopupEventArgs(GroupBarItem item, Rectangle popupBounds, bool flippedX, bool flippedY)
			: this(item, popupBounds, cancel: false, flippedX, flippedY)
		{
		}
	}

	public delegate void BeforePopupEventHandler(object sender, BeforePopupEventArgs args);

	[DocumentationExclude]
	protected const int nTxtOffset = 4;

	[DocumentationExclude]
	protected const int c_nIconSize = 16;

	private const int c_nOffset = 1;

	private const int c_nGroupBarItemBorders = 3;

	private const int c_nPressedOffset = 1;

	private const int c_nPressedGroupBarItemBorders = 3;

	private const int DEF_MINITEMS_COUNT = 2;

	private const int c_nDefaultCollapsedWidth = 32;

	private const int c_nCollapseButtonWidth = 18;

	private const int c_nCollapseButtonHeight = 18;

	private const int c_nCollapseButtonPadRight = 5;

	private const int c_nCollapseButtonPadTop = 5;

	private const int c_nMinCollapsedWidth = 20;

	[DocumentationExclude]
	private static readonly string s_resPath;

	[DocumentationExclude]
	protected static int nStartTick;

	[DocumentationExclude]
	protected bool bShowChevron = true;

	[DocumentationExclude]
	protected bool m_bShowImageInHeader;

	[DocumentationExclude]
	protected TextAlignment nAlignment = TextAlignment.Center;

	[DocumentationExclude]
	protected GroupLayout nLayout = GroupLayout.Vertical;

	[DocumentationExclude]
	protected bool bBarHighlight = true;

	[DocumentationExclude]
	protected bool bAnimation = true;

	[DocumentationExclude]
	protected bool bIntegratedScrolling;

	[DocumentationExclude]
	protected BorderStyle bdrStyle = BorderStyle.Fixed3D;

	[DocumentationExclude]
	protected bool bFlatLook;

	[DocumentationExclude]
	protected VisualStyle vStyle = VisualStyle.OfficeXP;

	[DocumentationExclude]
	protected Office2007Theme m_office2007Theme;

	[DocumentationExclude]
	protected Cursor gDefaultCursor;

	[DocumentationExclude]
	protected Cursor itemCursor = Cursors.Arrow;

	[DocumentationExclude]
	protected bool bStackedMode;

	[DocumentationExclude]
	protected internal ArrayList alNavPaneItems = new ArrayList();

	[DocumentationExclude]
	protected int nSplitterHeight = 6;

	[DocumentationExclude]
	protected int nHeaderHeight = 26;

	[DocumentationExclude]
	protected int nNavigationPaneHeight = 32;

	[DocumentationExclude]
	protected int nNavigationButtonWidth = 22;

	[DocumentationExclude]
	protected int nDropdownButtonWidth = 20;

	[DocumentationExclude]
	protected Point ptSplitterDragStart = new Point(-1, -1);

	[DocumentationExclude]
	protected static string s_sDropDownToolTip;

	[DocumentationExclude]
	protected static ImageList s_ilNavPaneItems;

	[DocumentationExclude]
	protected Font hdrFont;

	[DocumentationExclude]
	protected Color hdrForeColor = Color.White;

	[DocumentationExclude]
	protected Color prev_hdrForeColor = Color.White;

	[DocumentationExclude]
	protected Color hdrBackColor = SystemColors.ControlDark;

	[DocumentationExclude]
	protected int nItemHeight = 22;

	[DocumentationExclude]
	protected int nScrollThumbWidth = 18;

	[DocumentationExclude]
	protected Rectangle rcClient = Rectangle.Empty;

	[DocumentationExclude]
	protected int nSelectedItem = -1;

	[DocumentationExclude]
	protected int nHighlightItem = -1;

	[DocumentationExclude]
	protected int nContextMenuItem = -1;

	[DocumentationExclude]
	protected ButtonsState eButtonsState;

	[DocumentationExclude]
	protected bool bHighlight;

	[DocumentationExclude]
	protected Rectangle rcScrollUp = Rectangle.Empty;

	[DocumentationExclude]
	protected Rectangle rcScrollDown = Rectangle.Empty;

	[DocumentationExclude]
	protected Timer tmrScrolling;

	[DocumentationExclude]
	protected ButtonsState eInScroll;

	[DocumentationExclude]
	protected RenameTextBox ctrlRename;

	[DocumentationExclude]
	protected int nRenameItem = -1;

	[DocumentationExclude]
	protected GroupBarItemCollection cllnGroupBarItems;

	[DocumentationExclude]
	protected internal ArrayList activeItemsList = new ArrayList();

	[DocumentationExclude]
	protected bool bThemesEnabled;

	[DocumentationExclude]
	protected ThemedControlDrawing tdButton;

	[DocumentationExclude]
	protected ThemedControlDrawing tdScrollBar;

	[DocumentationExclude]
	protected ToolTip compToolTip;

	[DocumentationExclude]
	protected bool bDrawClientBorder;

	[DocumentationExclude]
	protected IContextMenuProvider menuProvider;

	private VisibleGroupBarItemsCollection m_visibleGroupBarItems;

	private bool m_bDrawingHeader;

	private Office2007Colors m_office2007ColorTable;

	[DocumentationExclude]
	private IconRenderingMode m_IconRenderingMode;

	private Color m_borderColor = Color.Empty;

	[DocumentationExclude]
	protected readonly StringFormat m_sfmtTextFormat = new StringFormat(StringFormat.GenericTypographic);

	[DocumentationExclude]
	protected readonly StringFormat m_sfmtHeaderTextFormat = new StringFormat(StringFormat.GenericDefault);

	private bool m_bIsClientSetting;

	[DocumentationExclude]
	protected GroupBarItemAccessibleObjectsIndexer gbiAccesibleObjects;

	private bool m_bInitializing;

	private static readonly string c_sDefaultCollapsedText;

	private bool m_bCollapsed;

	private bool m_bCollapsedInitValue;

	private bool m_bAllowCollapse;

	private int m_nCollapsedWidth = 32;

	private int m_nExpandedWidth;

	private int m_nItemPopupHeigth;

	private string m_sCollapsedText = c_sDefaultCollapsedText;

	private ButtonsState m_collapseButtonState;

	private ButtonsState m_collapsedClientAreaState;

	private Image m_collapseImage = s_defaultCollapseImage;

	private Image m_expandImage = s_defaultExpandImage;

	private string m_sMinimizeButtonToolTip = s_sMinimizeButtonToolTip;

	private string m_sExpandButtonToolTip = s_sExpandButtonToolTip;

	private string m_sGroupBarDropDownToolTip = s_sDropDownToolTip;

	private string m_sNavigationPaneTooltip = s_sNavigationPaneTooltip;

	private GroupBarItemPopup m_itemPopup;

	private bool m_bAllowItemPopup;

	private ImageList m_ilNavMenu;

	private ImageList m_ilAddRemove;

	private Size m_popupClientSize = Size.Empty;

	private Hashtable m_htPopupSize;

	private bool m_bShowPopupGripper;

	private PopupResizeMode m_popupResizeMode = PopupResizeMode.Both;

	private bool m_bPopupLocationFlippedX;

	private bool m_bPopupLocationFlippedY;

	private bool m_bPopupAutoClose;

	private static StringFormat s_sfCollapsedText;

	private static Image s_defaultCollapseImage;

	private static Image s_defaultExpandImage;

	private static string s_sExpandButtonToolTip;

	private static string s_sMinimizeButtonToolTip;

	private static string s_sNavigationPaneTooltip;

	private static string s_sAddRemoveButton;

	protected override Size DefaultSize => new Size(220, 300);

	[DefaultValue(IconRenderingMode.AlphaBlended)]
	[Category("Behavior")]
	[Description("Indicates the type of rendering done to icons.")]
	public IconRenderingMode IconRenderingMode
	{
		get
		{
			return m_IconRenderingMode;
		}
		set
		{
			m_IconRenderingMode = value;
		}
	}

	[Browsable(false)]
	public VisibleGroupBarItemsCollection VisibleGroupBarItems
	{
		get
		{
			if (m_visibleGroupBarItems == null)
			{
				m_visibleGroupBarItems = new VisibleGroupBarItemsCollection(activeItemsList);
			}
			return m_visibleGroupBarItems;
		}
	}

	[Description("The GroupBarItems present in the control.")]
	[Category("GroupBarItems")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GroupBarItemCollection GroupBarItems => cllnGroupBarItems;

	[Localizable(true)]
	[Description("Specifies the horizontal alignment of the GroupBarItem text.")]
	[Category("Appearance")]
	[DefaultValue(TextAlignment.Center)]
	public TextAlignment TextAlign
	{
		get
		{
			return nAlignment;
		}
		set
		{
			if (nAlignment != value)
			{
				nAlignment = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Indicates whether moving the cursor over a GroupBarItem will highlight it.")]
	public bool BarHighlight
	{
		get
		{
			return bBarHighlight;
		}
		set
		{
			bBarHighlight = value;
		}
	}

	[DefaultValue(true)]
	[Category("Behavior")]
	[Description("Indicates whether animated selection is enabled.")]
	public bool AnimatedSelection
	{
		get
		{
			return bAnimation;
		}
		set
		{
			if (bAnimation != value && (!value || !bStackedMode))
			{
				bAnimation = value;
			}
		}
	}

	[Description("The 0-based index of the current selected GroupBarItem.")]
	[Category("Behavior")]
	[DefaultValue(-1)]
	public int SelectedItem
	{
		get
		{
			return nSelectedItem;
		}
		set
		{
			if (GroupExists(value))
			{
				SelectItem(value, (nSelectedItem != value) ? nSelectedItem : (-1));
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int HighlightItem => nHighlightItem;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Returns the index of the GroupBarItem that triggered the ShowContextMenu event.")]
	public int ContextMenuItem => nContextMenuItem;

	[DefaultValue(22)]
	[Description("Determines the height for the GroupBarItems.")]
	[Localizable(true)]
	[Category("Behavior")]
	public int GroupBarItemHeight
	{
		get
		{
			return nItemHeight;
		}
		set
		{
			if (nItemHeight != value)
			{
				nItemHeight = value;
				base.Size = new Size(base.Width - 1, base.Height - 1);
				base.Size = new Size(base.Width + 1, base.Height + 1);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates whether the GroupBar should provide the scroll buttons for the client controls.")]
	public bool IntegratedScrolling
	{
		get
		{
			return bIntegratedScrolling;
		}
		set
		{
			if (bIntegratedScrolling == value)
			{
				return;
			}
			if (value)
			{
				if (bStackedMode)
				{
					return;
				}
				nAlignment = TextAlignment.Left;
			}
			bIntegratedScrolling = value;
			Invalidate();
		}
	}

	[Description("The border style of the control.")]
	[Category("Appearance")]
	[DefaultValue(BorderStyle.Fixed3D)]
	public BorderStyle BorderStyle
	{
		get
		{
			return bdrStyle;
		}
		set
		{
			if (bdrStyle != value)
			{
				if (!Enum.IsDefined(typeof(BorderStyle), value))
				{
					throw new InvalidEnumArgumentException("value", (int)value, typeof(BorderStyle));
				}
				bdrStyle = value;
				RecalculateGroupBarLayout();
				SetActiveClientBounds();
				Invalidate();
			}
		}
	}

	[Description("Specifies whether XP Themes (visual styles) should be used for drawing the control.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			return bThemesEnabled;
		}
		set
		{
			if (bThemesEnabled != value)
			{
				bThemesEnabled = value;
				Invalidate(invalidateChildren: false);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	private bool UseThemedDrawing
	{
		get
		{
			if (ThemesEnabled)
			{
				return XPThemes.IsAppThemed;
			}
			return false;
		}
	}

	[Description("Gets / sets a value indicating whether the control is displayed with a flat look.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool FlatLook
	{
		get
		{
			return bFlatLook;
		}
		set
		{
			if (bFlatLook != value)
			{
				bFlatLook = value;
				Invalidate();
			}
		}
	}

	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	[Category("Appearance")]
	[DefaultValue(VisualStyle.OfficeXP)]
	[Description("Gets or sets a value indicating the style used for drawing the control.")]
	public VisualStyle VisualStyle
	{
		get
		{
			return vStyle;
		}
		set
		{
			if (vStyle != value)
			{
				vStyle = value;
				OnStyleChanged();
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	[Description("Gets / sets a value indicating the Office2007 theme used for drawing the control.")]
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
				OnOffice2007ThemeChanged();
			}
		}
	}

	[Description("Gets / sets the cursor that is displayed when the mouse pointer is over the control.")]
	[Category("Appearance")]
	public new Cursor Cursor
	{
		get
		{
			return base.Cursor;
		}
		set
		{
			if (base.Cursor != value)
			{
				base.Cursor = value;
				gDefaultCursor = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets / sets the cursor that is displayed when the mouse pointer is over the GroupBarItems.")]
	public Cursor GroupBarItemCursor
	{
		get
		{
			return itemCursor;
		}
		set
		{
			if (itemCursor != value)
			{
				itemCursor = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Gets / sets a value indicating whether GroupBarItems are stacked.")]
	public bool StackedMode
	{
		get
		{
			return bStackedMode;
		}
		set
		{
			if (bStackedMode == value)
			{
				return;
			}
			if (!value)
			{
				Collapsed = false;
			}
			bStackedMode = value;
			if (base.DesignMode)
			{
				TypeDescriptor.Refresh(this);
			}
			if (value)
			{
				if (bIntegratedScrolling)
				{
					bIntegratedScrolling = false;
				}
				if (bAnimation)
				{
					bAnimation = false;
				}
			}
			RecalculateGroupBarLayout();
			SetActiveClientBounds();
			Invalidate();
		}
	}

	[DefaultValue(26)]
	[Description("Determines the height of the GroupBar header.")]
	[Category("Stacked Mode")]
	[Localizable(true)]
	public int HeaderHeight
	{
		get
		{
			return nHeaderHeight;
		}
		set
		{
			if (nHeaderHeight != value)
			{
				nHeaderHeight = value;
				RecalculateGroupBarLayout();
				SetActiveClientBounds();
				Invalidate();
			}
		}
	}

	[Description("Determines the font of the text displayed in the GroupBar header.")]
	[Localizable(true)]
	[Category("Stacked Mode")]
	public Font HeaderFont
	{
		get
		{
			return hdrFont;
		}
		set
		{
			if (hdrFont != value)
			{
				hdrFont = value;
				Rectangle boundedRectangle = GetBoundedRectangle();
				Invalidate(new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nHeaderHeight));
			}
		}
	}

	[Description("Determines the forecolor for the GroupBar header.")]
	[Localizable(true)]
	[Category("Stacked Mode")]
	public Color HeaderForeColor
	{
		get
		{
			return hdrForeColor;
		}
		set
		{
			if (hdrForeColor != value)
			{
				hdrForeColor = value;
				prev_hdrForeColor = value;
				Rectangle boundedRectangle = GetBoundedRectangle();
				Invalidate(new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nHeaderHeight));
			}
		}
	}

	[Description("Determines the background color for the GroupBar header.")]
	[Category("Stacked Mode")]
	[Localizable(true)]
	public Color HeaderBackColor
	{
		get
		{
			return hdrBackColor;
		}
		set
		{
			if (hdrBackColor != value)
			{
				hdrBackColor = value;
				Rectangle boundedRectangle = GetBoundedRectangle();
				Invalidate(new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nHeaderHeight));
			}
		}
	}

	[Localizable(true)]
	[Description("Determines the height of the GroupBar navigation pane.")]
	[Category("Stacked Mode")]
	[DefaultValue(32)]
	public int NavigationPaneHeight
	{
		get
		{
			return nNavigationPaneHeight;
		}
		set
		{
			if (nNavigationPaneHeight != value)
			{
				nNavigationPaneHeight = value;
				RecalculateGroupBarLayout();
				SetActiveClientBounds();
				Invalidate();
			}
		}
	}

	[Category("Stacked Mode")]
	[Description("Determines the width of the items in the GroupBar navigation pane.")]
	[DefaultValue(22)]
	[Localizable(true)]
	public int NavigationPaneButtonWidth
	{
		get
		{
			return nNavigationButtonWidth;
		}
		set
		{
			if (nNavigationButtonWidth != value)
			{
				nNavigationButtonWidth = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Localizable(true)]
	[Description("Determines whether a border is drawn around the GroupBar's client window.")]
	[DefaultValue(false)]
	public bool DrawClientBorder
	{
		get
		{
			return bDrawClientBorder;
		}
		set
		{
			if (bDrawClientBorder != value)
			{
				bDrawClientBorder = value;
				RecalculateGroupBarLayout();
				SetActiveClientBounds();
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public override Image BackgroundImage
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DocumentationExclude]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return ImageLayout.None;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Specifies the context menu provider for the GroupBar control.")]
	[Category("Behavior")]
	public IContextMenuProvider ContextMenuProvider
	{
		get
		{
			return menuProvider;
		}
		set
		{
			if (menuProvider != value)
			{
				menuProvider = value;
			}
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int ScrollTimerInterval
	{
		get
		{
			return tmrScrolling.Interval;
		}
		set
		{
			if (tmrScrolling.Interval != value)
			{
				tmrScrolling.Interval = value;
			}
		}
	}

	[Description("Gets / sets value indicating if Chevron button on the Navigation Panel is shown in the Stacked GroupBar or not.")]
	[Browsable(true)]
	[Localizable(true)]
	[Category("Stacked Mode")]
	[DefaultValue(true)]
	public bool ShowChevron
	{
		get
		{
			return bShowChevron;
		}
		set
		{
			if (bShowChevron != value)
			{
				bShowChevron = value;
				Invalidate();
			}
		}
	}

	[Localizable(true)]
	[Description("Gets / sets value indicating if selected item's image is shown in header in the Stacked GroupBar or not.")]
	[Category("Stacked Mode")]
	[DefaultValue(false)]
	public bool ShowItemImageInHeader
	{
		get
		{
			return m_bShowImageInHeader;
		}
		set
		{
			if (m_bShowImageInHeader != value)
			{
				m_bShowImageInHeader = value;
				Invalidate();
			}
		}
	}

	[Description("Gets/sets the color of the 2D border.")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			if (m_borderColor == Color.Empty)
			{
				if (vStyle == VisualStyle.Office2003)
				{
					return Office2003Colors.CommandBarDropDownColorDark;
				}
				if (vStyle == VisualStyle.Office2007)
				{
					return m_office2007ColorTable.GroupBarBorderColor;
				}
				return SystemColors.ControlDark;
			}
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

	protected StringFormat TextStringFormat
	{
		get
		{
			StringFormat stringFormat = new StringFormat(m_sfmtTextFormat);
			stringFormat.FormatFlags |= StringFormatFlags.MeasureTrailingSpaces;
			if (GetIsMirrored())
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			switch (nAlignment)
			{
			case TextAlignment.Left:
				stringFormat.Alignment = StringAlignment.Near;
				break;
			case TextAlignment.Center:
				stringFormat.Alignment = StringAlignment.Center;
				break;
			case TextAlignment.Right:
				stringFormat.Alignment = StringAlignment.Far;
				break;
			}
			return stringFormat;
		}
	}

	protected StringFormat HeaderStringFormat
	{
		get
		{
			StringFormat stringFormat = new StringFormat(m_sfmtHeaderTextFormat);
			using StringFormat stringFormat2 = TextStringFormat;
			stringFormat.Alignment = stringFormat2.Alignment;
			stringFormat.FormatFlags = stringFormat2.FormatFlags;
			stringFormat.HotkeyPrefix = stringFormat2.HotkeyPrefix;
			stringFormat.LineAlignment = stringFormat2.LineAlignment;
			stringFormat.Trimming = stringFormat2.Trimming;
			return stringFormat;
		}
	}

	private TextFormatFlags ItemTextFormat
	{
		get
		{
			TextFormatFlags textFormatFlags = TextFormatFlags.EndEllipsis | TextFormatFlags.VerticalCenter;
			if (GetIsMirrored())
			{
				textFormatFlags |= TextFormatFlags.RightToLeft;
			}
			switch (nAlignment)
			{
			case TextAlignment.Left:
				textFormatFlags = textFormatFlags;
				break;
			case TextAlignment.Center:
				textFormatFlags |= TextFormatFlags.HorizontalCenter;
				break;
			case TextAlignment.Right:
				textFormatFlags |= TextFormatFlags.Right;
				break;
			}
			return textFormatFlags;
		}
	}

	private TextFormatFlags HeaderTextFormat => ItemTextFormat;

	protected internal bool IsClientSetting
	{
		get
		{
			return m_bIsClientSetting;
		}
		set
		{
			if (value != m_bIsClientSetting)
			{
				m_bIsClientSetting = value;
			}
		}
	}

	[DocumentationExclude]
	protected internal GroupBarItemAccessibleObjectsIndexer ItemAccessibleObjects
	{
		get
		{
			if (gbiAccesibleObjects == null)
			{
				gbiAccesibleObjects = new GroupBarItemAccessibleObjectsIndexer(this);
			}
			return gbiAccesibleObjects;
		}
	}

	[Browsable(false)]
	public bool IsInitializing => m_bInitializing;

	[Description("Gets or sets a value indicating whether this GroupBar is collapsed.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool Collapsed
	{
		get
		{
			if (!m_bInitializing)
			{
				return m_bCollapsed;
			}
			return m_bCollapsedInitValue;
		}
		set
		{
			if (m_bInitializing && m_bCollapsedInitValue != value)
			{
				m_bCollapsedInitValue = value;
			}
			else
			{
				if (m_bCollapsed == value)
				{
					return;
				}
				if (value)
				{
					if (!StackedMode)
					{
						throw new ArgumentException("GroupBar can be collapsed only in stacked mode.");
					}
					if (m_nExpandedWidth <= 0)
					{
						m_nExpandedWidth = base.Width;
					}
					if (AllowCollapse && OnStateChanging())
					{
						m_bCollapsed = true;
						OnStateChanged();
					}
				}
				else if (OnStateChanging())
				{
					m_bCollapsed = false;
					OnStateChanged();
				}
			}
		}
	}

	[Description("Gets or sets a value indicating whether GroupBar can be collapsed.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool AllowCollapse
	{
		get
		{
			return m_bAllowCollapse;
		}
		set
		{
			if (m_bAllowCollapse != value)
			{
				if (!value)
				{
					Collapsed = false;
				}
				m_bAllowCollapse = value;
				if (activeItemsList.Count > 0)
				{
					Invalidate(CollapseButtonBounds);
				}
			}
		}
	}

	[Description("Gets or sets the width of the collapsed GroupBar.")]
	[DefaultValue(32)]
	[Category("Appearance")]
	public int CollapsedWidth
	{
		get
		{
			return m_nCollapsedWidth;
		}
		set
		{
			if (m_nCollapsedWidth != value)
			{
				if (value < 20)
				{
					throw new ArgumentOutOfRangeException("CollapsedWidth can't be less then 20.");
				}
				m_nCollapsedWidth = value;
				if (Collapsed)
				{
					base.Width = m_nCollapsedWidth;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the text shown in collapsed client area of GroupBar.")]
	public string CollapsedText
	{
		get
		{
			return m_sCollapsedText;
		}
		set
		{
			if (m_sCollapsedText != value)
			{
				m_sCollapsedText = value;
				if (Collapsed)
				{
					Invalidate(rcClient);
				}
			}
		}
	}

	[Description("Gets or sets the image of the collapse button in expanded state.")]
	[Category("Appearance")]
	public Image CollapseImage
	{
		get
		{
			return m_collapseImage;
		}
		set
		{
			if (m_collapseImage != value)
			{
				m_collapseImage = value;
				InvalidateCollapseButton();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the image of the collapse button.")]
	public Image ExpandImage
	{
		get
		{
			return m_expandImage;
		}
		set
		{
			if (m_expandImage != value)
			{
				m_expandImage = value;
				InvalidateCollapseButton();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the initial size of the popup for GroupBarItem client.")]
	[DefaultValue("0,0")]
	public Size PopupClientSize
	{
		get
		{
			return m_popupClientSize;
		}
		set
		{
			m_popupClientSize = value;
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether to show GroupBarItem popup's gripper.")]
	[Category("Appearance")]
	public bool ShowPopupGripper
	{
		get
		{
			return m_bShowPopupGripper;
		}
		set
		{
			m_bShowPopupGripper = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the popup's resize mode.")]
	[DefaultValue(PopupResizeMode.Both)]
	public PopupResizeMode PopupResizeMode
	{
		get
		{
			return m_popupResizeMode;
		}
		set
		{
			m_popupResizeMode = value;
		}
	}

	[Description("Gets or sets the tooltip for collapse button, when control is expanded.")]
	[Category("Behavior")]
	public string MinimizeButtonToolTip
	{
		get
		{
			return m_sMinimizeButtonToolTip;
		}
		set
		{
			m_sMinimizeButtonToolTip = value;
		}
	}

	[Description("Gets or sets the tooltip for collapse button, when control is collapsed.")]
	[Category("Behavior")]
	public string ExpandButtonToolTip
	{
		get
		{
			return m_sExpandButtonToolTip;
		}
		set
		{
			m_sExpandButtonToolTip = value;
		}
	}

	[Description("Gets or sets the tooltip for GroupBar button.")]
	[Category("Behavior")]
	public string GroupBarDropDownToolTip
	{
		get
		{
			return m_sGroupBarDropDownToolTip;
		}
		set
		{
			m_sGroupBarDropDownToolTip = value;
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets the navigation pane's tooltip.")]
	public string NavigationPaneTooltip
	{
		get
		{
			return m_sNavigationPaneTooltip;
		}
		set
		{
			m_sNavigationPaneTooltip = value;
		}
	}

	private string CollapseButtonTooltip
	{
		get
		{
			if (!Collapsed)
			{
				return MinimizeButtonToolTip;
			}
			return ExpandButtonToolTip;
		}
	}

	private bool ItemPopupOpened => ItemPopup.Opened;

	private GroupBarItemPopup ItemPopup
	{
		get
		{
			if (m_itemPopup == null)
			{
				m_itemPopup = new GroupBarItemPopup(this);
				m_itemPopup.OpenedChanged += ItemPopupOpenedChanged;
				m_itemPopup.BeforeClose += ItemPopupBeforeClose;
			}
			return m_itemPopup;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicates whether popup is closed after clicking on item.")]
	public bool PopupAutoClose
	{
		get
		{
			return m_bPopupAutoClose;
		}
		set
		{
			m_bPopupAutoClose = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DefaultValue(0)]
	public int ExpandedWidth
	{
		get
		{
			return m_nExpandedWidth;
		}
		set
		{
			m_nExpandedWidth = value;
		}
	}

	private GroupBarItem SelectedGroupBarItem
	{
		get
		{
			GroupBarItem result = null;
			if (SelectedItem >= 0 && SelectedItem < activeItemsList.Count)
			{
				result = activeItemsList[SelectedItem] as GroupBarItem;
			}
			return result;
		}
	}

	internal GroupBarItem SelItem
	{
		get
		{
			GroupBarItem result = null;
			if (SelectedItem >= 0 && SelectedItem < activeItemsList.Count)
			{
				result = activeItemsList[SelectedItem] as GroupBarItem;
			}
			return result;
		}
	}

	internal Control SelectedItemClient
	{
		get
		{
			GroupBarItem selItem = SelItem;
			Control result = null;
			if (selItem != null)
			{
				result = selItem.Client;
			}
			return result;
		}
	}

	internal Color ClientAreaBackground
	{
		get
		{
			if (vStyle == VisualStyle.Office2003)
			{
				return Office2003Colors.GroupBarHeaderColorDark;
			}
			if (vStyle == VisualStyle.Office2007)
			{
				return m_office2007ColorTable.GroupBarClientAreaBackground;
			}
			return HeaderBackColor;
		}
	}

	private StringFormat CollapsedTextSF
	{
		get
		{
			if (s_sfCollapsedText == null)
			{
				StringFormat stringFormat = new StringFormat(StringFormat.GenericTypographic);
				stringFormat.Alignment = StringAlignment.Center;
				stringFormat.LineAlignment = StringAlignment.Center;
				stringFormat.FormatFlags = StringFormatFlags.DirectionVertical | StringFormatFlags.MeasureTrailingSpaces | StringFormatFlags.NoWrap;
				stringFormat.Trimming = StringTrimming.EllipsisCharacter;
				s_sfCollapsedText = stringFormat;
			}
			if (RightToLeft == RightToLeft.Yes)
			{
				s_sfCollapsedText.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			else
			{
				s_sfCollapsedText.FormatFlags &= ~StringFormatFlags.DirectionRightToLeft;
			}
			return s_sfCollapsedText;
		}
	}

	private Rectangle CollapseButtonBounds
	{
		get
		{
			Size size = new Size(18, 18);
			int num = ((RightToLeft != RightToLeft.Yes) ? (base.Width - size.Width - 5) : 5);
			Point location = new Point(num, 5);
			return new Rectangle(location, size);
		}
	}

	private Image _CollapseImage
	{
		get
		{
			if (RightToLeft == RightToLeft.Yes)
			{
				return m_expandImage;
			}
			return m_collapseImage;
		}
	}

	private Image _ExpandImage
	{
		get
		{
			if (RightToLeft != RightToLeft.Yes)
			{
				return m_expandImage;
			}
			return m_collapseImage;
		}
	}

	[Description("Event fired when an item in the GroupBar control is selected.")]
	[Category("Behavior")]
	public event EventHandler GroupBarItemSelected;

	[Description("Event fired when an item in the GroupBar control is being selected.")]
	[Category("Behavior")]
	public event GroupBarItemSelectionChangingEventHandler GroupBarItemSelectionChanging;

	[Category("Behavior")]
	[Description("Event fired after an in-place rename operation.")]
	public event GroupItemRenamedEventHandler GroupBarItemRenamed;

	[Category("Behavior")]
	[Description("Event fired after a GroupBarItem has been added to the GroupBar control.")]
	[Browsable(false)]
	public event GroupBarItemEventHandler GroupBarItemAdded;

	[Browsable(false)]
	[Category("Behavior")]
	[Description("Event fired after a GroupBarItem has been removed from the GroupBar control.")]
	public event GroupBarItemEventHandler GroupBarItemRemoved;

	[Category("Behavior")]
	[Description("Event fired when the right mouse button is clicked over the control.")]
	public event EventHandler ShowContextMenu;

	[Description("Event occurs when a GroupBarItem is about to be drawn.")]
	[Category("Appearance")]
	public event ProvideGroupBarItemBrushEventHandler ProvideGroupBarItemBrush;

	[Description("Event fired when the GroupBar's navigation pane drop-down button is clicked.")]
	[Category("Behavior")]
	public event NavigationPaneDropDownClickEventHandler NavigationPaneDropDownClick;

	[Description("Occurs when Collapsed property is changed.")]
	public event EventHandler StateChanged;

	[Description("Occurs when Collapsed property is about to be changed.")]
	public event CancelEventHandler StateChanging;

	[Description("Occurs when before GroupBarItem's popup is shown.")]
	public event BeforePopupEventHandler BeforePopup;

	static GroupBar()
	{
		s_resPath = "Syncfusion.Windows.Forms.GroupBar";
		nStartTick = 0;
		c_sDefaultCollapsedText = "Navigation Pane";
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GroupBar));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		InitResources();
	}

	private static void InitResources()
	{
		Type typeFromHandle = typeof(GroupBar);
		Assembly assembly = typeFromHandle.Assembly;
		ResourceManager resourceManager = new ResourceManager(s_resPath + ".GroupBar", assembly);
		s_ilNavPaneItems = new ImageList();
		s_ilNavPaneItems.Images.Add(resourceManager.GetObject("UpArrow") as Icon);
		s_ilNavPaneItems.Images.Add(resourceManager.GetObject("DownArrow") as Icon);
		s_defaultCollapseImage = new Bitmap(assembly.GetManifestResourceStream(s_resPath + ".CollapseButton.png"));
		s_defaultExpandImage = new Bitmap(assembly.GetManifestResourceStream(s_resPath + ".ExpandButton.png"));
		s_sDropDownToolTip = SR.GetString("GroupBarDropDownToolTip");
		s_sExpandButtonToolTip = SR.GetString("GroupBarExpandButtonToolTip");
		s_sMinimizeButtonToolTip = SR.GetString("GroupBarMinimizeButtonToolTip");
		s_sNavigationPaneTooltip = SR.GetString("GroupBarNavigationPaneTooltip");
		s_sAddRemoveButton = SR.GetString("GroupBarAddRemoveButton");
	}

	private void OnStyleChanged()
	{
		if (vStyle == VisualStyle.Office2007)
		{
			m_office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
			if (base.DesignMode)
			{
				BorderStyle = BorderStyle.FixedSingle;
			}
			Font = FontUtil.CreateFont(Font, FontStyle.Bold);
			ForeColor = m_office2007ColorTable.GroupBarItemTextColor;
			hdrForeColor = m_office2007ColorTable.GroupBarHeaderTextColor;
		}
		else
		{
			hdrForeColor = prev_hdrForeColor;
		}
		Invalidate();
	}

	private void OnOffice2007ThemeChanged()
	{
		if (VisualStyle == VisualStyle.Office2007)
		{
			m_office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
		}
		Invalidate();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeGroupBarItemCursor()
	{
		return itemCursor != Cursors.Arrow;
	}

	[DocumentationExclude]
	public void ResetGroupBarItemCursor()
	{
		itemCursor = Cursors.Arrow;
	}

	protected bool ShouldSerializeHeaderFont()
	{
		if (hdrFont.FontFamily.Name == "Arial" && hdrFont.Size == 12f && hdrFont.Style == FontStyle.Bold)
		{
			return false;
		}
		return true;
	}

	public void ResetHeaderFont()
	{
		hdrFont = new Font("Arial", 12f, FontStyle.Bold);
	}

	protected bool ShouldSerializeHeaderForeColor()
	{
		if (hdrForeColor == Color.White)
		{
			return false;
		}
		return true;
	}

	public void ResetHeaderForeColor()
	{
		hdrForeColor = Color.White;
	}

	protected bool ShouldSerializeHeaderBackColor()
	{
		if (hdrBackColor == SystemColors.ControlDark)
		{
			return false;
		}
		return true;
	}

	public void ResetHeaderBackColor()
	{
		hdrBackColor = SystemColors.ControlDark;
	}

	private bool ShouldSerializeBorderColor()
	{
		return m_borderColor != Color.Empty;
	}

	private void ResetBorderColor()
	{
		BorderColor = Color.Empty;
	}

	public GroupBar()
	{
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		cllnGroupBarItems = new GroupBarItemCollection(this);
		AllowDrop = true;
		ContextMenu = null;
		tmrScrolling = new Timer();
		tmrScrolling.Interval = 200;
		tmrScrolling.Tick += ScrollTimerEventHandler;
		if (XPThemes.IsThemedOS)
		{
			tdButton = new ThemedControlDrawing("BUTTON");
			tdScrollBar = new ThemedControlDrawing("SCROLLBAR");
		}
		compToolTip = new ToolTip();
		compToolTip.SetToolTip(this, string.Empty);
		menuProvider = MenuProviderFactory.CreateContextMenuProvider();
		hdrFont = new Font("Arial", 12f, FontStyle.Bold);
		gDefaultCursor = Cursors.Default;
		m_sfmtTextFormat.LineAlignment = StringAlignment.Center;
		m_sfmtTextFormat.Trimming = StringTrimming.EllipsisCharacter;
		m_sfmtTextFormat.FormatFlags = StringFormatFlags.NoWrap | StringFormatFlags.LineLimit;
	}

	public virtual void InplaceRenameItem(int nindex)
	{
		if (!GroupExists(nindex))
		{
			return;
		}
		GroupBarItem groupBarItem = activeItemsList[nindex] as GroupBarItem;
		if (groupBarItem.Enabled)
		{
			if (ctrlRename == null)
			{
				ctrlRename = new RenameTextBox();
				base.Controls.Add(ctrlRename);
				ctrlRename.RenameComplete += GroupBar_RenameComplete;
			}
			nRenameItem = nindex;
			ctrlRename.BeginRename(GetGroupBarItemBounds(nindex), groupBarItem.Text);
		}
	}

	public virtual void CancelInplaceRenameItem()
	{
		if (ctrlRename != null && ctrlRename.Visible)
		{
			ctrlRename.EndRename(bcancel: true);
		}
	}

	int IGroupBarDesignerInvoke.GetGroupAtLocation(Point pt)
	{
		if (!base.ClientRectangle.Contains(pt))
		{
			return -1;
		}
		return GetItemFromPoint(pt);
	}

	[DocumentationExclude]
	protected internal void NotifyGroupBarOfItemRemoval(GroupBarItem item)
	{
		nHighlightItem = -1;
		nContextMenuItem = -1;
		int num = activeItemsList.IndexOf(item);
		if (num == nSelectedItem)
		{
			int num2 = nSelectedItem;
			if (num - 1 >= 0)
			{
				num2 = num - 1;
			}
			else if (num + 1 < activeItemsList.Count && activeItemsList.Count > 2)
			{
				num2 = num + 1;
			}
			if (num2 == nSelectedItem)
			{
				if (item.Client != null)
				{
					item.Client.Visible = false;
				}
			}
			else
			{
				SelectItem(num2, nSelectedItem);
			}
		}
		else if (num < nSelectedItem)
		{
			nSelectedItem--;
		}
		if (alNavPaneItems.Contains(item))
		{
			alNavPaneItems.Remove(item);
		}
	}

	[DocumentationExclude]
	protected bool GroupExists(int ngroup)
	{
		if (ngroup >= 0)
		{
			return ngroup < activeItemsList.Count;
		}
		return false;
	}

	[DocumentationExclude]
	protected void PropChangedHandler(object obj, PropertyChangedEventArgs args)
	{
		if (!(obj is GroupBarItem groupBarItem))
		{
			return;
		}
		if (args.PropertyName == "InNavigationPane")
		{
			nHighlightItem = -1;
			nContextMenuItem = -1;
			RecalculateGroupBarLayout();
			SetActiveClientBounds();
			Invalidate(invalidateChildren: true);
		}
		else if (!base.DesignMode && args.PropertyName == "Visible")
		{
			nHighlightItem = -1;
			nContextMenuItem = -1;
			if (!groupBarItem.Visible)
			{
				int num = activeItemsList.IndexOf(groupBarItem);
				if (num == nSelectedItem)
				{
					if (num - 1 >= 0)
					{
						num--;
						SelectItem(num, nSelectedItem);
					}
					else if (groupBarItem.Client != null)
					{
						groupBarItem.Client.Visible = false;
					}
				}
				else if (num < nSelectedItem)
				{
					nSelectedItem--;
				}
				if (alNavPaneItems.Contains(groupBarItem))
				{
					alNavPaneItems.Remove(groupBarItem);
				}
			}
			RecalculateGroupBarLayout();
			SetActiveClientBounds();
			Invalidate(invalidateChildren: true);
		}
		else
		{
			Invalidate(GetGroupBarItemBounds(activeItemsList.IndexOf(groupBarItem)), invalidateChildren: false);
		}
	}

	[DocumentationExclude]
	protected virtual void GroupBar_RenameComplete(object sender, RenameCompleteEventArgs arg)
	{
		string newName = arg.NewName;
		GroupBarItem groupBarItem = activeItemsList[nRenameItem] as GroupBarItem;
		string text = groupBarItem.Text;
		if (newName != null && !text.Equals(newName))
		{
			groupBarItem.Text = newName;
		}
		OnGroupBarItemRenamed(new GroupItemRenamedEventArgs(nRenameItem, text, newName));
		nRenameItem = -1;
	}

	protected virtual void OnGroupBarItemSelected(EventArgs arg)
	{
		if (this.GroupBarItemSelected != null)
		{
			this.GroupBarItemSelected(this, arg);
		}
	}

	protected virtual void OnGroupBarItemSelectionChanging(GroupBarItemSelectionChangingEventArgs arg)
	{
		if (this.GroupBarItemSelectionChanging != null)
		{
			this.GroupBarItemSelectionChanging(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireGroupBarItemAddedEvent(GroupBarItem item)
	{
		OnGroupBarItemAdded(new GroupBarItemEventArgs(item));
	}

	protected virtual void OnGroupBarItemAdded(GroupBarItemEventArgs arg)
	{
		if (this.GroupBarItemAdded != null)
		{
			this.GroupBarItemAdded(this, arg);
		}
	}

	[DocumentationExclude]
	protected internal void FireGroupBarItemRemovedEvent(GroupBarItem item)
	{
		OnGroupBarItemRemoved(new GroupBarItemEventArgs(item));
	}

	protected virtual void OnGroupBarItemRemoved(GroupBarItemEventArgs arg)
	{
		if (this.GroupBarItemRemoved != null)
		{
			this.GroupBarItemRemoved(this, arg);
		}
	}

	protected virtual void OnGroupBarItemRenamed(GroupItemRenamedEventArgs arg)
	{
		if (this.GroupBarItemRenamed != null)
		{
			this.GroupBarItemRenamed(this, arg);
		}
	}

	protected virtual void OnShowContextMenu(EventArgs arg)
	{
		if (this.ShowContextMenu != null)
		{
			this.ShowContextMenu(this, arg);
		}
	}

	protected virtual void OnProvideGroupBarItemBrush(ProvideGroupBarItemBrushEventArgs arg)
	{
		if (this.ProvideGroupBarItemBrush != null)
		{
			this.ProvideGroupBarItemBrush(this, arg);
		}
	}

	[DocumentationExclude]
	protected virtual int SelectItem(int newselected, int oldselected)
	{
		if (newselected == oldselected)
		{
			return oldselected;
		}
		GroupBarItemSelectionChangingEventArgs e = new GroupBarItemSelectionChangingEventArgs(newselected, oldselected);
		OnGroupBarItemSelectionChanging(e);
		if (e.Cancel)
		{
			return oldselected;
		}
		if (!Collapsed)
		{
			SelectItemExpanded(newselected, oldselected);
		}
		GroupBarItem selItem = SelItem;
		nSelectedItem = newselected;
		if (GroupExists(oldselected) && bAnimation)
		{
			ActivateSelection(newselected, oldselected);
		}
		else
		{
			if (GroupExists(oldselected))
			{
				GroupBarItem groupBarItem = activeItemsList[oldselected] as GroupBarItem;
				if (groupBarItem.Client != null)
				{
					groupBarItem.Client.Visible = false;
				}
			}
			RecalculateGroupBarLayout();
			SetActiveClientBounds();
			Refresh();
		}
		OnGroupBarItemSelected(EventArgs.Empty);
		if (Collapsed && ItemPopupOpened)
		{
			if (PopupAutoClose)
			{
				HidePopup(selItem);
			}
			else
			{
				SelectItemCollapsed(selItem);
			}
		}
		return oldselected;
	}

	private void SelectItemCollapsed(GroupBarItem prevSelected)
	{
		if (m_bAllowItemPopup)
		{
			ShowItemPopup(prevSelected);
			m_bAllowItemPopup = false;
		}
	}

	private void SelectItemExpanded(int newselected, int oldselected)
	{
		Control client = (activeItemsList[newselected] as GroupBarItem).Client;
		if (client != null && !client.IsHandleCreated)
		{
			client.CreateControl();
		}
		if (client != null && (client.Parent == null || !client.Parent.Equals(this)))
		{
			base.Controls.Add(client);
		}
		Invalidate(GetGroupBarItemBounds(newselected), invalidateChildren: false);
		if (GroupExists(oldselected))
		{
			Invalidate(GetGroupBarItemBounds(oldselected), invalidateChildren: false);
		}
		if (bIntegratedScrolling)
		{
			if (GroupExists(oldselected + 1))
			{
				Invalidate(GetGroupBarItemBounds(oldselected + 1), invalidateChildren: false);
			}
			if (GroupExists(newselected + 1))
			{
				Invalidate(GetGroupBarItemBounds(newselected + 1), invalidateChildren: false);
			}
		}
		if (bIntegratedScrolling && oldselected + 1 == activeItemsList.Count)
		{
			rcClient.Height += nItemHeight;
		}
	}

	[DocumentationExclude]
	protected virtual void ActivateSelection(int newselected, int oldselected)
	{
		int num = 5;
		GroupBarItem groupBarItem = activeItemsList[newselected] as GroupBarItem;
		GroupBarItem groupBarItem2 = activeItemsList[oldselected] as GroupBarItem;
		int num2 = rcClient.Height;
		int num3 = 0;
		int num4 = num;
		if (num4 <= 0)
		{
			num4 = 1;
		}
		int num5 = num2 / num4;
		if (num5 == 0)
		{
			num5 = 1;
		}
		bool flag = false;
		int num6;
		int num7;
		if (newselected < oldselected)
		{
			flag = true;
			num6 = newselected;
			num7 = oldselected;
		}
		else
		{
			num6 = oldselected;
			num7 = newselected;
		}
		int count = activeItemsList.Count;
		Rectangle[] array = new Rectangle[count];
		nSelectedItem = oldselected;
		for (int i = 0; i < count; i++)
		{
			ref Rectangle reference = ref array[i];
			reference = GetGroupBarItemBounds(i);
		}
		nSelectedItem = newselected;
		int bottom = array[num6].Bottom;
		int num8 = 0;
		num8 = ((!bIntegratedScrolling) ? ((num7 + 1 < count) ? array[num7 + 1].Top : base.Bounds.Height) : ((num7 + 1 < count) ? array[num7 + 1].Top : ((num7 != newselected) ? base.Bounds.Height : (base.Bounds.Height - nItemHeight))));
		object value = null;
		object value2 = null;
		if (groupBarItem2.Client != null)
		{
			Control client = groupBarItem2.Client;
			client.GetType();
			PropertyInfo property = client.GetType().GetProperty("BorderStyle");
			if (property != null)
			{
				value2 = property.GetValue(client, new object[0]);
				client.GetType().GetProperty("BorderStyle").SetValue(client, BorderStyle.None, new object[0]);
				client.Refresh();
			}
		}
		if (groupBarItem.Client != null)
		{
			Control client2 = groupBarItem.Client;
			client2.GetType();
			PropertyInfo property2 = client2.GetType().GetProperty("BorderStyle");
			if (property2 != null)
			{
				value = property2.GetValue(client2, new object[0]);
				client2.GetType().GetProperty("BorderStyle").SetValue(client2, BorderStyle.None, new object[0]);
				client2.Refresh();
			}
		}
		int num9 = Environment.TickCount + 30;
		while (num2 - num5 >= 1)
		{
			if (Environment.TickCount < num9)
			{
				continue;
			}
			num2 -= num5;
			num3 += num5;
			if (num2 <= num5)
			{
				num5 += num2;
			}
			for (int j = num6 + 1; j <= num7; j++)
			{
				if (flag)
				{
					array[j].Y += num5;
				}
				else
				{
					array[j].Y -= num5;
				}
				array[j].Height = nItemHeight;
			}
			Rectangle rectangle = Rectangle.FromLTRB(rcClient.Left, bottom, rcClient.Right, array[num6 + 1].Top);
			Rectangle rectangle2 = Rectangle.FromLTRB(rcClient.Left, array[num7].Bottom, rcClient.Right, num8);
			SetActiveClientBounds(groupBarItem2, rectangle2, rectangle, flag);
			SetActiveClientBounds(groupBarItem, rectangle, rectangle2, flag);
			if (groupBarItem.Client != null && !groupBarItem.Client.Visible)
			{
				groupBarItem.Client.Visible = !Collapsed;
			}
			for (int k = num6 + 1; k <= num7; k++)
			{
				Rectangle rRect = array[k];
				if (bIntegratedScrolling && (k == nSelectedItem || k == nSelectedItem + 1))
				{
					CorrectRectForScrollThumbWidth(ref rRect);
				}
				Invalidate(rRect, invalidateChildren: false);
			}
			if (groupBarItem != null && groupBarItem.Client != null)
			{
				Rectangle bounds = groupBarItem.Client.Bounds;
				Invalidate(new Rectangle(bounds.Left - 1, bounds.Top - 1, bounds.Width + 2, bounds.Height + 1));
			}
			num9 = Environment.TickCount + 30;
		}
		RecalculateGroupBarLayout();
		SetActiveClientBounds();
		if (groupBarItem2.Client != null)
		{
			Control client3 = groupBarItem2.Client;
			PropertyInfo property3 = client3.GetType().GetProperty("BorderStyle");
			if (property3 != null)
			{
				property3.SetValue(client3, value2, new object[0]);
			}
		}
		if (groupBarItem.Client != null)
		{
			Control client4 = groupBarItem.Client;
			PropertyInfo property4 = client4.GetType().GetProperty("BorderStyle");
			if (property4 != null)
			{
				property4.SetValue(client4, value, new object[0]);
			}
		}
		if (groupBarItem2.Client != null)
		{
			groupBarItem2.Client.Visible = false;
		}
	}

	[DocumentationExclude]
	protected void SetActiveClientBounds(GroupBarItem group, Rectangle rc1, Rectangle rc2, bool bscrlldown)
	{
		Control client = group.Client;
		if (bscrlldown)
		{
			if (client != null)
			{
				client.Bounds = new Rectangle(rc1.Left, rc1.Top, rc1.Width, rc1.Height);
				client.Update();
			}
			else
			{
				Invalidate(rc1, invalidateChildren: false);
			}
		}
		else if (client != null)
		{
			client.Bounds = new Rectangle(rc2.Left, rc2.Top, rc2.Width, rc2.Height);
			client.Update();
		}
		else
		{
			Invalidate(rc2, invalidateChildren: false);
		}
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
	}

	[DocumentationExclude]
	protected internal Rectangle GetBoundedRectangle()
	{
		Rectangle clientRectangle = base.ClientRectangle;
		if (BorderStyle == BorderStyle.Fixed3D)
		{
			clientRectangle.Inflate(-2, -2);
		}
		else if (BorderStyle == BorderStyle.FixedSingle)
		{
			clientRectangle.Inflate(-1, -1);
		}
		return clientRectangle;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		if (!bStackedMode)
		{
			DrawRegularGroupBar(e.Graphics);
		}
		else
		{
			DrawStackedGroupBar(e.Graphics);
		}
		if (bDrawClientBorder)
		{
			DrawSelectedGroupClientBorder(e.Graphics, new Rectangle(rcClient.Left - 1, rcClient.Top - 1, rcClient.Width + 2, rcClient.Height + 2));
		}
		base.OnPaint(e);
	}

	protected virtual void DrawRegularGroupBar(Graphics gph)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		bool isMirrored = GetIsMirrored();
		if (bdrStyle == BorderStyle.Fixed3D)
		{
			using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, clientRectangle, isMirrored);
			Rectangle rectangle = clientRectangle;
			if (isMirrored)
			{
				rectangle.X += rectangle.Width;
			}
			ControlPaint.DrawBorder3D(cMirroredDrawer.VirtualGfx, rectangle, Border3DStyle.Sunken);
		}
		else if (bdrStyle == BorderStyle.FixedSingle)
		{
			Color borderColor = BorderColor;
			ControlPaint.DrawBorder(gph, base.ClientRectangle, borderColor, ButtonBorderStyle.Solid);
		}
		if (activeItemsList.Count <= 0)
		{
			return;
		}
		Rectangle boundedRectangle = GetBoundedRectangle();
		Rectangle rectangle2 = new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nItemHeight);
		int count = activeItemsList.Count;
		for (int i = 0; i < count; i++)
		{
			Rectangle rRect = rectangle2;
			if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect);
			}
			GroupBarItem groupBarItem = activeItemsList[i] as GroupBarItem;
			DrawGroupBarItem(gph, i, rRect);
			if (groupBarItem.LargeImageMode)
			{
				DrawGroupBarImage(gph, i, rRect);
			}
			else
			{
				DrawGroupBarIcon(gph, i, rRect);
			}
			DrawGroupBarText(gph, i, rRect);
			if (i != nSelectedItem || rcClient.Height <= 0)
			{
				rectangle2.Y += rectangle2.Height;
			}
			else
			{
				rectangle2.Y = rcClient.Bottom;
			}
			rectangle2.Height = nItemHeight;
		}
		if (bIntegratedScrolling && nSelectedItem == activeItemsList.Count - 1)
		{
			Rectangle rectScroll = new Rectangle(isMirrored ? boundedRectangle.Left : (boundedRectangle.Right - nScrollThumbWidth), boundedRectangle.Bottom - nItemHeight, nScrollThumbWidth, nItemHeight);
			DrawScrollThumb(gph, bscrollup: false, rectScroll);
		}
	}

	protected virtual void DrawStackedGroupBar(Graphics gph)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		if (boundedRectangle.Width != 0 && boundedRectangle.Height != 0)
		{
			DrawStackedGroupBar(gph, boundedRectangle);
		}
	}

	private void DrawStackedGroupBar(Graphics gph, Rectangle rcbounds)
	{
		Rectangle rectangle = new Rectangle(rcbounds.Left, rcClient.Bottom, rcbounds.Width, nSplitterHeight);
		Brush splitterBrush = GetSplitterBrush(rectangle);
		Color borderColor = BorderColor;
		bool isMirrored = GetIsMirrored();
		if (bdrStyle == BorderStyle.Fixed3D)
		{
			using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, rcClient, isMirrored);
			Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
			IntPtr intPtr = IntPtr.Zero;
			try
			{
				intPtr = virtualGfx.GetHdc();
				NativeMethods.DrawEdgeBorder border = NativeMethods.DrawEdgeBorder.BDR_SUNKEN;
				NativeMethods.DrawEdgeFlags flags = NativeMethods.DrawEdgeFlags.BF_ALL;
				NativeMethods.RECT rect = new NativeMethods.RECT(cMirroredDrawer.VirtualBounds);
				NativeMethods.DrawEdge(intPtr, ref rect, border, flags);
			}
			finally
			{
				if (intPtr != IntPtr.Zero)
				{
					virtualGfx.ReleaseHdc(intPtr);
				}
			}
		}
		else
		{
			ControlPaint.DrawBorder(gph, base.ClientRectangle, borderColor, ButtonBorderStyle.Solid);
		}
		if (activeItemsList.Count != 0)
		{
			DrawHeader(gph);
		}
		gph.FillRectangle(splitterBrush, rectangle);
		if (vStyle == VisualStyle.Office2007)
		{
			SolidBrush solidBrush = new SolidBrush(Color.White);
			SolidBrush solidBrush2 = new SolidBrush(m_office2007ColorTable.GroupBarBorderColor);
			SolidBrush solidBrush3 = new SolidBrush(Color.FromArgb(125, Color.White));
			using (CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(gph, rectangle, isMirrored))
			{
				Graphics virtualGfx2 = cMirroredDrawer2.VirtualGfx;
				Rectangle virtualBounds = cMirroredDrawer2.VirtualBounds;
				Point point = new Point(virtualBounds.Width / 2 - 9, virtualBounds.Top + 2);
				for (int i = 0; i < 5; i++)
				{
					point.Offset(1, 1);
					virtualGfx2.FillRectangle(solidBrush, point.X, point.Y, 2, 2);
					point.Offset(-1, -1);
					virtualGfx2.FillRectangle(solidBrush2, point.X, point.Y, 2, 2);
					point.Offset(1, 1);
					virtualGfx2.FillRectangle(solidBrush3, point.X, point.Y, 2, 2);
					point.Offset(3, -1);
				}
				Pen pen = new Pen(m_office2007ColorTable.GroupBarBorderColor, 1f);
				if (isMirrored)
				{
					virtualGfx2.DrawLine(pen, virtualBounds.Left, virtualBounds.Top, virtualBounds.Right, virtualBounds.Top);
					virtualGfx2.DrawLine(new Pen(Color.White, 1f), virtualBounds.Left, virtualBounds.Top + 1, virtualBounds.Right, virtualBounds.Top + 1);
				}
				else
				{
					virtualGfx2.DrawLine(pen, virtualBounds.Left, virtualBounds.Top, virtualBounds.Right - 1, virtualBounds.Top);
					virtualGfx2.DrawLine(new Pen(Color.White, 1f), virtualBounds.Left, virtualBounds.Top + 1, virtualBounds.Right - 1, virtualBounds.Top + 1);
				}
				pen.Dispose();
			}
			solidBrush.Dispose();
			solidBrush2.Dispose();
			solidBrush3.Dispose();
		}
		else
		{
			SolidBrush solidBrush4 = new SolidBrush(Color.White);
			SolidBrush solidBrush5 = new SolidBrush(Color.Black);
			SolidBrush solidBrush6 = new SolidBrush(Color.FromArgb(125, Color.White));
			using (CMirroredDrawer cMirroredDrawer3 = new CMirroredDrawer(gph, rectangle, isMirrored))
			{
				Graphics virtualGfx3 = cMirroredDrawer3.VirtualGfx;
				Rectangle virtualBounds2 = cMirroredDrawer3.VirtualBounds;
				Point point2 = new Point(virtualBounds2.Width / 2 - 17, virtualBounds2.Top + 2);
				for (int j = 0; j < 9; j++)
				{
					point2.Offset(1, 1);
					virtualGfx3.FillRectangle(solidBrush4, point2.X, point2.Y, 2, 2);
					point2.Offset(-1, -1);
					virtualGfx3.FillRectangle(solidBrush5, point2.X, point2.Y, 2, 2);
					point2.Offset(1, 1);
					virtualGfx3.FillRectangle(solidBrush6, point2.X, point2.Y, 2, 2);
					point2.Offset(3, -1);
				}
			}
			solidBrush4.Dispose();
			solidBrush5.Dispose();
			solidBrush6.Dispose();
		}
		splitterBrush.Dispose();
		if (Collapsed && activeItemsList.Count > 0)
		{
			DrawCollapsedClientArea(gph, isMirrored, borderColor);
		}
		Rectangle rcbar = new Rectangle(rcbounds.Left, rectangle.Bottom, rcbounds.Width, nItemHeight);
		for (int k = 0; k < activeItemsList.Count; k++)
		{
			if (alNavPaneItems.Count <= 0 || !alNavPaneItems.Contains(activeItemsList[k]))
			{
				GroupBarItem groupBarItem = activeItemsList[k] as GroupBarItem;
				DrawGroupBarItem(gph, k, rcbar);
				if (groupBarItem.LargeImageMode)
				{
					DrawGroupBarImage(gph, k, rcbar);
				}
				else
				{
					DrawGroupBarIcon(gph, k, rcbar);
				}
				if (!Collapsed)
				{
					DrawGroupBarText(gph, k, rcbar);
				}
				rcbar.Y = rcbar.Bottom;
			}
		}
		DrawNavigationPane(gph);
	}

	internal Brush GetSplitterBrush(Rectangle rcSplitter)
	{
		if (vStyle == VisualStyle.Office2003)
		{
			return new LinearGradientBrush(rcSplitter, Office2003Colors.CommandBarDropDownColorLight, Office2003Colors.CommandBarDropDownColorDark, LinearGradientMode.Vertical);
		}
		if (vStyle == VisualStyle.Office2007)
		{
			return new LinearGradientBrush(rcSplitter, m_office2007ColorTable.GroupBarSplitterColorLight, m_office2007ColorTable.GroupBarSplitterColorDark, LinearGradientMode.Vertical);
		}
		return new SolidBrush(SystemColors.ControlDark);
	}

	protected virtual void DrawHeader(Graphics gph)
	{
		m_bDrawingHeader = true;
		Rectangle boundedRectangle = GetBoundedRectangle();
		Rectangle rectangle = new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nHeaderHeight);
		if (rectangle.Width > 0 && rectangle.Height > 0)
		{
			bool isMirrored = GetIsMirrored();
			GroupBarItem groupBarItem = (GroupExists(nSelectedItem) ? (activeItemsList[nSelectedItem] as GroupBarItem) : null);
			Brush headerBrush = GetHeaderBrush(rectangle);
			gph.FillRectangle(headerBrush, rectangle);
			headerBrush.Dispose();
			DrawHeaderLines(gph, isMirrored, rectangle);
			if (Collapsed)
			{
				DrawHeaderCollapsed(gph, isMirrored, rectangle);
			}
			else if (groupBarItem != null)
			{
				DrawHeaderExpanded(gph, isMirrored, rectangle, groupBarItem);
			}
			if (AllowCollapse)
			{
				DrawCollapseButton(gph, isMirrored);
			}
		}
		m_bDrawingHeader = false;
	}

	private void DrawHeaderLines(Graphics gph, bool bIsMirrored, Rectangle rcheader)
	{
		if (vStyle == VisualStyle.Office2007 && BorderStyle == BorderStyle.FixedSingle)
		{
			gph.DrawLine(new Pen(Color.White), rcheader.Left, rcheader.Top, rcheader.Right - 1, rcheader.Top);
			if (bIsMirrored)
			{
				gph.DrawLine(new Pen(Color.White), rcheader.Right - 1, rcheader.Bottom - 1, rcheader.Right - 1, rcheader.Top);
			}
			else
			{
				gph.DrawLine(new Pen(Color.White), rcheader.Left, rcheader.Bottom - 1, rcheader.Left, rcheader.Top);
			}
		}
	}

	private void DrawHeaderExpanded(Graphics gph, bool bIsMirrored, Rectangle rcheader, GroupBarItem item)
	{
		if (ShowItemImageInHeader && (item.Icon != null || item.Image != null))
		{
			if (item.LargeImageMode)
			{
				DrawGroupBarImage(gph, nSelectedItem, rcheader);
			}
			else
			{
				DrawGroupBarIcon(gph, nSelectedItem, rcheader);
			}
			if (vStyle != VisualStyle.Office2003)
			{
				rcheader.Offset((!bIsMirrored) ? 1 : (-1), 1);
			}
			Rectangle rect = CalcTextRect(gph, item, rcheader);
			if (TextAlign != TextAlignment.Center)
			{
				rect.Width = rcheader.Right - rect.Left;
			}
			DrawHeaderText(gph, item, rect);
		}
		else
		{
			DrawHeaderText(gph, item, rcheader);
		}
	}

	private Brush GetHeaderBrush(Rectangle rcHeader)
	{
		Brush result = new SolidBrush(hdrBackColor);
		if (vStyle == VisualStyle.Office2003)
		{
			result = new LinearGradientBrush(rcHeader, Office2003Colors.GroupBarHeaderColorLight, Office2003Colors.GroupBarHeaderColorDark, LinearGradientMode.Vertical);
		}
		else if (vStyle == VisualStyle.Office2007)
		{
			result = new LinearGradientBrush(rcHeader, m_office2007ColorTable.GroupBarHeaderColorLight, m_office2007ColorTable.GroupBarHeaderColorDark, LinearGradientMode.Vertical);
		}
		return result;
	}

	private void DrawHeaderText(Graphics gph, GroupBarItem item, Rectangle rect)
	{
		if (!GroupExists(nSelectedItem))
		{
			return;
		}
		if (AllowCollapse)
		{
			int num = CollapseButtonBounds.Width;
			rect.Width -= num;
			if (RightToLeft == RightToLeft.Yes)
			{
				rect.X += num;
			}
		}
		TextRenderer.DrawText(gph, item.Text, hdrFont, rect, hdrForeColor, HeaderTextFormat);
	}

	protected virtual void DrawGroupBarItem(Graphics gfxTarget, int nindex, Rectangle rcbar)
	{
		if (rcbar.Width <= 0 || rcbar.Height <= 0)
		{
			return;
		}
		GroupBarItem groupBarItem = activeItemsList[nindex] as GroupBarItem;
		Rectangle rectangle = rcbar;
		bool flag = false;
		if ((nindex == nHighlightItem && eButtonsState == ButtonsState.GroupBarItemPushed) || (bStackedMode && nindex == nSelectedItem))
		{
			flag = true;
		}
		ButtonState buttonState = ButtonState.Normal;
		if (flag)
		{
			buttonState = ButtonState.Pushed;
		}
		if (!groupBarItem.Enabled)
		{
			buttonState = ButtonState.Inactive;
		}
		bool isMirrored = GetIsMirrored();
		if (bIntegratedScrolling)
		{
			Rectangle rectScroll = new Rectangle(isMirrored ? (rectangle.Left - nScrollThumbWidth) : rectangle.Right, rectangle.Top, nScrollThumbWidth, nItemHeight);
			if (nindex == nSelectedItem)
			{
				DrawScrollThumb(gfxTarget, bscrollup: true, rectScroll);
			}
			else if (nindex == nSelectedItem + 1)
			{
				DrawScrollThumb(gfxTarget, bscrollup: false, rectScroll);
			}
		}
		CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gfxTarget, rectangle, isMirrored);
		Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
		Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing)
		{
			int stateID = ((buttonState != ButtonState.Pushed) ? 1 : 3);
			tdButton.DrawMirrored = false;
			tdButton.DrawThemeBackground(gfxTarget, 1, stateID, rectangle);
			if (bBarHighlight && bHighlight && eButtonsState == ButtonsState.None && nHighlightItem >= 0 && groupBarItem.Equals(activeItemsList[nHighlightItem]))
			{
				tdButton.DrawThemeBackground(gfxTarget, 1, 2, rectangle);
			}
		}
		else if (vStyle == VisualStyle.Office2003)
		{
			LinearGradientBrush linearGradientBrush = null;
			Color color;
			Color color2;
			if (nSelectedItem == nindex)
			{
				if (bHighlight && nHighlightItem == nindex)
				{
					color = Office2003Colors.GroupBarSelectedHighlightColorDark;
					color2 = Office2003Colors.GroupBarSelectedHighlightColorLight;
				}
				else
				{
					color = Office2003Colors.GroupBarSelectedColorLight;
					color2 = Office2003Colors.GroupBarSelectedColorDark;
				}
			}
			else if (bHighlight && nHighlightItem == nindex)
			{
				if (eButtonsState == ButtonsState.GroupBarItemPushed)
				{
					color = Office2003Colors.GroupBarSelectedHighlightColorDark;
					color2 = Office2003Colors.GroupBarSelectedHighlightColorLight;
				}
				else
				{
					color = Office2003Colors.GroupBarHighlightColorLight;
					color2 = Office2003Colors.GroupBarHighlightColorDark;
				}
			}
			else
			{
				color = Office2003Colors.MenuMarginColorLight;
				color2 = Office2003Colors.MenuMarginColorDark;
			}
			linearGradientBrush = new LinearGradientBrush(virtualBounds, color, color2, LinearGradientMode.Vertical);
			virtualGfx.FillRectangle(linearGradientBrush, virtualBounds);
			linearGradientBrush.Dispose();
			Pen pen = new Pen(Office2003Colors.CommandBarDropDownColorDark, 1f);
			virtualGfx.DrawLine(pen, new Point(virtualBounds.Left, virtualBounds.Top), new Point(virtualBounds.Right - 1, virtualBounds.Top));
			virtualGfx.DrawLine(pen, new Point(virtualBounds.Left, virtualBounds.Bottom), new Point(virtualBounds.Right - 1, virtualBounds.Bottom));
			pen.Dispose();
		}
		else if (vStyle == VisualStyle.Office2007)
		{
			LinearGradientBrush linearGradientBrush2 = null;
			Color groupBarSelectedTopColorLight = m_office2007ColorTable.GroupBarSelectedTopColorLight;
			Color groupBarSelectedTopColorDark = m_office2007ColorTable.GroupBarSelectedTopColorDark;
			Blend blend = new Blend();
			Color color3;
			Color color4;
			if (nSelectedItem == nindex)
			{
				if (bHighlight && nHighlightItem == nindex)
				{
					color3 = m_office2007ColorTable.GroupBarSelectedHighlightColorLight;
					color4 = m_office2007ColorTable.GroupBarSelectedHighlightColorDark;
				}
				else
				{
					color3 = m_office2007ColorTable.GroupBarSelectedColorLight;
					color4 = m_office2007ColorTable.GroupBarSelectedColorDark;
				}
			}
			else if (bHighlight && nHighlightItem == nindex)
			{
				if (eButtonsState == ButtonsState.GroupBarItemPushed)
				{
					color3 = m_office2007ColorTable.GroupBarSelectedHighlightColorLight;
					color4 = m_office2007ColorTable.GroupBarSelectedHighlightColorDark;
				}
				else
				{
					color3 = m_office2007ColorTable.GroupBarHighlightColorLight;
					color4 = m_office2007ColorTable.GroupBarHighlightColorDark;
				}
			}
			else
			{
				color3 = m_office2007ColorTable.GroupBarItemColorLight;
				color4 = m_office2007ColorTable.GroupBarItemColorDark;
			}
			if (nSelectedItem == nindex && nHighlightItem != nindex)
			{
				Color[] colors = new Color[4] { groupBarSelectedTopColorLight, groupBarSelectedTopColorDark, color4, color3 };
				linearGradientBrush2 = new LinearGradientBrush(virtualBounds, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
				linearGradientBrush2.InterpolationColors = GetColorBlend(colors);
			}
			else
			{
				blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
				if (nSelectedItem == nindex && nHighlightItem == nindex)
				{
					blend.Factors = new float[4] { 0.2f, 0.6f, 1f, 0f };
				}
				else
				{
					blend.Factors = new float[4] { 0f, 0.5f, 1f, 0.5f };
				}
				linearGradientBrush2 = new LinearGradientBrush(virtualBounds, color3, color4, LinearGradientMode.Vertical);
				linearGradientBrush2.Blend = blend;
			}
			virtualGfx.FillRectangle(linearGradientBrush2, virtualBounds);
			linearGradientBrush2.Dispose();
			Pen pen2 = new Pen(m_office2007ColorTable.GroupBarBorderColor, 1f);
			if (isMirrored)
			{
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.Left, virtualBounds.Top), new Point(virtualBounds.Right, virtualBounds.Top));
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.Left, virtualBounds.Bottom), new Point(virtualBounds.Right, virtualBounds.Bottom));
			}
			else
			{
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.Left, virtualBounds.Top), new Point(virtualBounds.Right - 1, virtualBounds.Top));
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.Left, virtualBounds.Bottom), new Point(virtualBounds.Right - 1, virtualBounds.Bottom));
			}
			if (IntegratedScrolling && (nindex == nSelectedItem || nindex == nSelectedItem + 1))
			{
				virtualGfx.DrawLine(pen2, new Point(virtualBounds.Right, virtualBounds.Top), new Point(virtualBounds.Right, virtualBounds.Bottom));
			}
			pen2.Dispose();
		}
		else
		{
			ControlPaint.DrawButton(virtualGfx, virtualBounds, (ButtonState)((int)buttonState | (bFlatLook ? 16384 : 0)));
			if (bIntegratedScrolling)
			{
				if (nSelectedItem == nindex)
				{
					ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, Color.Empty, 0, ButtonBorderStyle.None, SystemColors.Control, 1, ButtonBorderStyle.Solid, Color.Empty, 0, ButtonBorderStyle.None);
					virtualGfx.DrawLine(new Pen(groupBarItem.ClientBorderColors.Top, 1f), new Point(virtualBounds.Left, virtualBounds.Bottom - 1), new Point(virtualBounds.Right - 2, virtualBounds.Bottom - 1));
				}
				else
				{
					ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, Color.Empty, 0, ButtonBorderStyle.None, SystemColors.Control, 1, ButtonBorderStyle.Solid, SystemColors.Control, 1, ButtonBorderStyle.Solid);
				}
			}
			Brush backgroundBrush = groupBarItem.BackgroundBrush;
			ProvideGroupBarItemBrushEventArgs e = new ProvideGroupBarItemBrushEventArgs(nindex, rectangle);
			OnProvideGroupBarItemBrush(e);
			if (e.BackgroundBrush != null)
			{
				backgroundBrush = e.BackgroundBrush;
			}
			if (backgroundBrush != null)
			{
				Rectangle rect = virtualBounds;
				if (flag)
				{
					rect.Offset(3, 3);
					rect.Width -= 5;
					rect.Height -= 5;
				}
				else
				{
					rect.Offset(1, 1);
					rect.Width -= 3;
					rect.Height -= 3;
				}
				virtualGfx.FillRectangle(backgroundBrush, rect);
				if (e.BackgroundBrush != null)
				{
					e.BackgroundBrush.Dispose();
				}
			}
			if (bBarHighlight && bHighlight && nHighlightItem >= 0 && groupBarItem.Equals(activeItemsList[nHighlightItem]))
			{
				if (bStackedMode)
				{
					rectangle.Y++;
					rectangle.Height -= 2;
					rectangle.Width--;
				}
				else
				{
					rectangle.Height--;
					rectangle.Width--;
				}
				ControlPaint.DrawBorder3D(virtualGfx, virtualBounds, Border3DStyle.Raised, Border3DSide.Right | Border3DSide.Bottom);
			}
		}
		cMirroredDrawer.Dispose();
	}

	private ColorBlend GetColorBlend(Color[] colors)
	{
		ColorBlend colorBlend = new ColorBlend(colors.Length);
		colorBlend.Colors = colors;
		colorBlend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
		return colorBlend;
	}

	protected virtual void DrawSelectedGroupClientBorder(Graphics gph, Rectangle rcclient)
	{
		if (rcclient.Width > 0 && rcclient.Height > 0 && GroupExists(nSelectedItem))
		{
			GroupBarItem groupBarItem = activeItemsList[nSelectedItem] as GroupBarItem;
			gph.DrawLine(new Pen(groupBarItem.ClientBorderColors.Left, 1f), new Point(rcclient.Left, rcclient.Bottom - 1), new Point(rcclient.Left, rcclient.Top));
			gph.DrawLine(new Pen(groupBarItem.ClientBorderColors.Top, 1f), new Point(rcclient.Left, rcclient.Top), new Point(rcclient.Right - 1, rcclient.Top));
			gph.DrawLine(new Pen(groupBarItem.ClientBorderColors.Right, 1f), new Point(rcclient.Right - 1, rcclient.Top), new Point(rcclient.Right - 1, rcclient.Bottom - 1));
			gph.DrawLine(new Pen(groupBarItem.ClientBorderColors.Bottom, 1f), new Point(rcclient.Left, rcclient.Bottom - 1), new Point(rcclient.Right - 2, rcclient.Bottom - 1));
		}
	}

	private void OffsetIconBar(bool bPressed, ref Rectangle rcbar)
	{
		if (bPressed)
		{
			rcbar.X++;
			rcbar.Y++;
			rcbar.Width -= 3;
			rcbar.Height -= 3;
		}
		else
		{
			rcbar.X++;
			rcbar.Y++;
			rcbar.Width -= 3;
			rcbar.Height -= 3;
		}
	}

	protected virtual void DrawGroupBarImage(Graphics gph, int nindex, Rectangle rcbar)
	{
		GroupBarItem groupBarItem = activeItemsList[nindex] as GroupBarItem;
		if (groupBarItem.Image != null && rcbar.Width > 0 && rcbar.Height > 0)
		{
			bool isMirrored = GetIsMirrored();
			bool flag = (nindex == nHighlightItem && eButtonsState == ButtonsState.GroupBarItemPushed) || (bStackedMode && nindex == nSelectedItem);
			OffsetIconBar(flag, ref rcbar);
			Rectangle rectangle = rcbar;
			if (flag && vStyle != VisualStyle.Office2003 && vStyle != VisualStyle.Office2007)
			{
				rectangle.Offset((!isMirrored) ? 1 : (-1), 1);
			}
			int num = 0;
			int num2 = 0;
			float num3 = 1f;
			if (bStackedMode)
			{
				num2 = rcbar.Height - 4;
				num3 = (float)num2 / (float)groupBarItem.Image.Height;
				num = (int)(num3 * (float)groupBarItem.Image.Width);
			}
			else
			{
				num = groupBarItem.Image.Width;
				num2 = groupBarItem.Image.Height;
			}
			Rectangle rectangle2 = rectangle;
			RectangleF srcRect = default(Rectangle);
			rectangle2 = CalcTextRect(gph, groupBarItem, rectangle);
			LocateImageDestination(groupBarItem, rectangle, isMirrored, num, ref rectangle2);
			AppendImageSourceRectLogic(rectangle, num, groupBarItem, num3, isMirrored, rcbar, num2, groupBarItem.Image.Width, groupBarItem.Image.Height, groupBarItem.YChanged, gph, ref srcRect, ref rectangle2);
			bool bEnabled = groupBarItem.Enabled && base.Enabled;
			DrawImageStateHelper(gph, groupBarItem.Image, rectangle2, srcRect, bEnabled);
		}
	}

	private void AppendImageSourceRectLogic(Rectangle rc, int ImageWidth, GroupBarItem item, float ScaleRatio, bool bIsMirrored, Rectangle rcbar, int ImageHeight, int realImageWidth, int realImageHeight, bool yChanged, Graphics gph, ref RectangleF srcRect, ref Rectangle destRect)
	{
		AppendWidthLogic(rc, ImageWidth, ScaleRatio, bIsMirrored, realImageWidth, item, rcbar, ref srcRect, ref destRect);
		AppendHeightLogic(ImageHeight, gph, realImageHeight, item, rcbar, rc, ref srcRect, ref destRect);
	}

	private void AppendHeightLogic(int ImageHeight, Graphics gph, int realImageHeight, GroupBarItem item, Rectangle rcbar, Rectangle rc, ref RectangleF srcRect, ref Rectangle destRect)
	{
		if (destRect.Height < ImageHeight)
		{
			srcRect.Height = destRect.Height;
			srcRect.Y = realImageHeight / 2 - destRect.Height / 2;
			return;
		}
		srcRect.Height = realImageHeight;
		destRect.Height = ImageHeight;
		if (item.YChanged)
		{
			int num = realImageHeight + TextRenderer.MeasureText(item.Text, item.Font, destRect.Size, ItemTextFormat).Height;
			destRect.Y = rcbar.Y + (rcbar.Height - num) / 2;
		}
		else if (item.LargeImageMode)
		{
			destRect.Y = rc.Y + (rc.Height / 2 - ImageHeight / 2);
		}
		else
		{
			destRect.Y = rc.Y + 2;
		}
	}

	private void AppendWidthLogic(Rectangle rc, int ImageWidth, float ScaleRatio, bool bIsMirrored, int realImageWidth, GroupBarItem item, Rectangle rcbar, ref RectangleF srcRect, ref Rectangle destRect)
	{
		if (rc.Width < ImageWidth)
		{
			srcRect.Width = (float)rc.Width / ScaleRatio;
			destRect.Width = rc.Width;
			switch (nAlignment)
			{
			case TextAlignment.Center:
				srcRect.X = (float)(item.Image.Width / 2) - srcRect.Width / 2f;
				break;
			case TextAlignment.Right:
				if (bIsMirrored)
				{
					srcRect.X = (float)realImageWidth - srcRect.Width;
				}
				break;
			case TextAlignment.Left:
				if (!bIsMirrored)
				{
					destRect.X -= realImageWidth;
					if (destRect.X < rc.X)
					{
						destRect.X = rc.X;
					}
				}
				else
				{
					srcRect.X = (float)realImageWidth - srcRect.Width;
				}
				break;
			}
			return;
		}
		srcRect.Width = realImageWidth;
		destRect.Width = ImageWidth;
		if (!item.YChanged)
		{
			return;
		}
		switch (nAlignment)
		{
		case TextAlignment.Center:
			destRect.X = rc.Width / 2 - ImageWidth / 2 + rcbar.X;
			break;
		case TextAlignment.Right:
			if (bIsMirrored)
			{
				destRect.X = rc.X;
			}
			else
			{
				destRect.X = rc.Width - ImageWidth + rcbar.X;
			}
			break;
		case TextAlignment.Left:
			if (bIsMirrored)
			{
				destRect.X = rc.X + rc.Width - ImageWidth;
			}
			else
			{
				destRect.X = rcbar.X;
			}
			break;
		}
	}

	private void LocateImageDestination(GroupBarItem item, Rectangle rc, bool bIsMirrored, int ImageWidth, ref Rectangle destRect)
	{
		if (Collapsed)
		{
			destRect.X = rc.X + (rc.Width - ImageWidth) / 2;
		}
		else
		{
			LocateImageDestinationExpnaded(item, rc, bIsMirrored, ImageWidth, ref destRect);
		}
	}

	private void LocateImageDestinationExpnaded(GroupBarItem item, Rectangle rc, bool bIsMirrored, int ImageWidth, ref Rectangle destRect)
	{
		if (item.YChanged)
		{
			switch (nAlignment)
			{
			case TextAlignment.Center:
				destRect.X -= 4;
				break;
			case TextAlignment.Right:
				destRect.X = rc.X;
				break;
			case TextAlignment.Left:
				if (bIsMirrored)
				{
					destRect.X = rc.X + rc.Width - ImageWidth;
				}
				else
				{
					destRect.X -= 4;
				}
				break;
			}
			if (destRect.X < rc.X)
			{
				destRect.X = rc.X;
			}
			if (bIsMirrored)
			{
				destRect.X++;
			}
			return;
		}
		if (bIsMirrored)
		{
			if (item.IsTextVisible)
			{
				destRect.X = destRect.Right + item.Padding;
			}
			else
			{
				destRect.X = rc.X;
			}
		}
		if (!bIsMirrored)
		{
			destRect.X -= ImageWidth + item.Padding;
		}
		if (destRect.X < rc.X)
		{
			destRect.X = rc.X;
		}
	}

	[DocumentationExclude]
	protected void DrawImageStateHelper(Graphics gph, Image image, Rectangle destRect, RectangleF srcRect, bool bEnabled)
	{
		if (!bEnabled)
		{
			DrawingUtils.DrawGrayedImage(gph, image, destRect, srcRect);
		}
		else
		{
			gph.DrawImage(image, destRect);
		}
	}

	protected virtual void DrawGroupBarIcon(Graphics gph, int nindex, Rectangle rcbar)
	{
		GroupBarItem groupBarItem = activeItemsList[nindex] as GroupBarItem;
		if (groupBarItem.Icon != null && rcbar.Width > 0 && rcbar.Height > 0)
		{
			bool isMirrored = GetIsMirrored();
			bool flag = (nindex == nHighlightItem && eButtonsState == ButtonsState.GroupBarItemPushed) || nindex == nSelectedItem;
			OffsetIconBar(flag, ref rcbar);
			Rectangle rectangle = rcbar;
			if (flag && vStyle != VisualStyle.Office2003 && vStyle != VisualStyle.Office2007)
			{
				rectangle.Offset((!isMirrored) ? 1 : (-1), 1);
			}
			int num = 0;
			int num2 = 0;
			float num3 = 0f;
			num2 = rcbar.Height - 4;
			num3 = (float)num2 / (float)groupBarItem.Icon.Height;
			num = (int)(num3 * (float)groupBarItem.Icon.Width);
			Rectangle rcbar2 = rectangle;
			RectangleF srcRect = default(Rectangle);
			rcbar2 = CalcTextRect(gph, groupBarItem, rcbar2);
			LocateImageDestination(groupBarItem, rectangle, isMirrored, num, ref rcbar2);
			AppendImageSourceRectLogic(rectangle, num, groupBarItem, num3, isMirrored, rcbar, num2, groupBarItem.Icon.Width, groupBarItem.Icon.Height, groupBarItem.YChanged, gph, ref srcRect, ref rcbar2);
			bool benabled = groupBarItem.Enabled && base.Enabled;
			if (m_IconRenderingMode == IconRenderingMode.AlphaBlended)
			{
				DrawIconStateHelper(gph, groupBarItem.Icon, rcbar2, benabled, groupBarItem);
			}
			else
			{
				DrawImageStateHelper(gph, groupBarItem.Icon.ToBitmap(), rcbar2, srcRect, groupBarItem.Enabled);
			}
		}
	}

	[DocumentationExclude]
	protected Rectangle CalcTextRectForIcon(Graphics gph, GroupBarItem group, Rectangle rcbar)
	{
		Rectangle result = rcbar;
		int num = TextRenderer.MeasureText(group.Text, group.Font, rcbar.Size, ItemTextFormat).Width;
		int num2 = 16;
		if (bStackedMode)
		{
			num2 = rcbar.Height - 4;
		}
		switch (nAlignment)
		{
		case TextAlignment.Left:
			result.X = rcbar.X + 4;
			if (group.Icon != null)
			{
				result.X += num2 + 4;
			}
			break;
		case TextAlignment.Center:
			result.X = rcbar.X + (rcbar.Width - num) / 2;
			if (group.Icon != null)
			{
				result.X += (num2 + 4) / 2;
			}
			break;
		case TextAlignment.Right:
			result.X = rcbar.X + (rcbar.Width - 4 - num);
			break;
		}
		result.Width = num;
		if (GetIsMirrored())
		{
			int num3 = result.Left - rcbar.Left;
			result.X = rcbar.Right - (num3 + result.Width);
		}
		return result;
	}

	[DocumentationExclude]
	protected void DrawIconStateHelper(Graphics gph, Icon icon, Rectangle rcicon, bool benabled, GroupBarItem item)
	{
		if (!benabled)
		{
			IntPtr hdc = gph.GetHdc();
			IntPtr intPtr = ((icon.Width == rcicon.Width) ? icon.Handle : NativeMethods.CopyImage(icon.Handle, 1u, rcicon.Width, rcicon.Height, 4u));
			NativeMethods.DrawState(hdc, IntPtr.Zero, null, intPtr, IntPtr.Zero, rcicon.Left, rcicon.Top, rcicon.Width, rcicon.Height, 35u);
			NativeMethods.DestroyIcon(intPtr);
			gph.ReleaseHdc(hdc);
			return;
		}
		if (icon.Width == icon.Height)
		{
			using (Image image = DrawIconHelper.GetIconToDraw(icon, item))
			{
				gph.DrawImage(image, rcicon);
				return;
			}
		}
		IntPtr hdc2 = gph.GetHdc();
		IntPtr intPtr2 = NativeMethods.CopyImage(icon.Handle, 1u, rcicon.Width, rcicon.Height, 4u);
		NativeMethods.DrawState(hdc2, IntPtr.Zero, null, intPtr2, IntPtr.Zero, rcicon.Left, rcicon.Top, rcicon.Width, rcicon.Height, 3u);
		NativeMethods.DestroyIcon(intPtr2);
		gph.ReleaseHdc(hdc2);
	}

	protected virtual void DrawGroupBarText(Graphics gph, int nindex, Rectangle rcbar)
	{
		GroupBarItem groupBarItem = activeItemsList[nindex] as GroupBarItem;
		if (rcbar.Width <= 0 || rcbar.Height <= 0)
		{
			return;
		}
		bool isMirrored = GetIsMirrored();
		bool flag = (nindex == nHighlightItem && eButtonsState == ButtonsState.GroupBarItemPushed) || (bStackedMode && nindex == nSelectedItem);
		if (flag && groupBarItem.LargeImageMode)
		{
			rcbar.X++;
			rcbar.Y++;
			rcbar.Width -= 3;
			rcbar.Height -= 3;
		}
		else
		{
			rcbar.X++;
			rcbar.Y++;
			rcbar.Width -= 3;
			rcbar.Height -= 3;
		}
		Rectangle rcbar2 = rcbar;
		if (flag && vStyle != VisualStyle.Office2003 && vStyle != VisualStyle.Office2007)
		{
			rcbar2.Offset((!isMirrored) ? 1 : (-1), 1);
		}
		Rectangle rectangle = CalcTextRect(gph, groupBarItem, rcbar2);
		if (isMirrored && rectangle.X < 0)
		{
			rectangle.X = rcbar2.X;
		}
		if (groupBarItem.Enabled && base.Enabled)
		{
			Color foreColor = groupBarItem.ForeColorInternal;
			if (foreColor.IsEmpty)
			{
				foreColor = vStyle switch
				{
					VisualStyle.Office2003 => (!bHighlight || nindex != nHighlightItem || (nindex != nSelectedItem && eButtonsState != ButtonsState.GroupBarItemPushed)) ? Office2003Colors.GroupBarItemTextColor : Office2003Colors.GroupBarItemTextSelectedHighlightColor, 
					VisualStyle.Office2007 => (nindex != nSelectedItem) ? m_office2007ColorTable.GroupBarItemTextColor : Color.Black, 
					_ => ForeColor, 
				};
			}
			if (groupBarItem.IsTextVisible)
			{
				TextRenderer.DrawText(gph, groupBarItem.Text, groupBarItem.Font, rectangle, foreColor, ItemTextFormat);
			}
		}
		else if (groupBarItem.IsTextVisible)
		{
			RenderingHelper.DrawStringDisabled(gph, groupBarItem.Text, groupBarItem.Font, SystemColors.Control, rectangle, ItemTextFormat);
		}
	}

	[DocumentationExclude]
	protected virtual void DrawScrollThumb(Graphics gfxTarget, bool bscrollup, Rectangle rectScroll)
	{
		ButtonState buttonState = ButtonState.Normal;
		if (bscrollup)
		{
			if (!IsUpScrollButtonEnabled())
			{
				buttonState = ButtonState.Inactive;
			}
			else if (eButtonsState == ButtonsState.ScrollUpPushed)
			{
				buttonState = ButtonState.Pushed;
			}
			rcScrollUp = rectScroll;
		}
		else
		{
			if (!IsDownScrollButtonEnabled())
			{
				buttonState = ButtonState.Inactive;
			}
			else if (eButtonsState == ButtonsState.ScrollDownPushed)
			{
				buttonState = ButtonState.Pushed;
			}
			rcScrollDown = rectScroll;
		}
		if (!(activeItemsList[nSelectedItem] as GroupBarItem).Enabled)
		{
			buttonState = ButtonState.Inactive;
		}
		if (tmrScrolling != null && tmrScrolling.Enabled && buttonState == ButtonState.Inactive)
		{
			tmrScrolling.Stop();
			eInScroll = ButtonsState.None;
		}
		bool isMirrored = GetIsMirrored();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing)
		{
			int num = 0;
			if (bscrollup)
			{
				num = ((eButtonsState == ButtonsState.ScrollUpPushed) ? 3 : ((eButtonsState != ButtonsState.ScrollUpHot) ? 1 : 2));
				if (buttonState == ButtonState.Inactive)
				{
					num = 4;
				}
			}
			else
			{
				num = ((eButtonsState == ButtonsState.ScrollDownPushed) ? 7 : ((eButtonsState != ButtonsState.ScrollDownHot) ? 5 : 6));
				if (buttonState == ButtonState.Inactive)
				{
					num = 8;
				}
			}
			Rectangle rectangle = new Rectangle(rectScroll.Left, rectScroll.Top + 1, rectScroll.Width, rectScroll.Height - 2);
			tdScrollBar.DrawMirrored = isMirrored;
			tdScrollBar.DrawThemeBackground(gfxTarget, 1, num, rectangle);
			return;
		}
		if (vStyle == VisualStyle.Office2007)
		{
			using (Brush brush = GetBackgroundBrush(rectScroll, buttonState))
			{
				gfxTarget.FillRectangle(brush, rectScroll);
			}
			Point location = new Point(rectScroll.X + rectScroll.Width / 2 - 4, rectScroll.Y + rectScroll.Height / 2 - 2);
			Size size = new Size(9, 5);
			Rectangle rect = new Rectangle(location, size);
			Point[] points = ((!bscrollup) ? new Point[19]
			{
				new Point(rect.Left + 9, rect.Top),
				new Point(rect.Left + 9, rect.Top + 1),
				new Point(rect.Left + 8, rect.Top + 1),
				new Point(rect.Left + 8, rect.Top + 2),
				new Point(rect.Left + 7, rect.Top + 2),
				new Point(rect.Left + 7, rect.Top + 3),
				new Point(rect.Left + 6, rect.Top + 3),
				new Point(rect.Left + 6, rect.Top + 4),
				new Point(rect.Left + 5, rect.Top + 4),
				new Point(rect.Left + 5, rect.Top + 5),
				new Point(rect.Left + 4, rect.Top + 5),
				new Point(rect.Left + 4, rect.Top + 4),
				new Point(rect.Left + 3, rect.Top + 4),
				new Point(rect.Left + 3, rect.Top + 3),
				new Point(rect.Left + 2, rect.Top + 3),
				new Point(rect.Left + 2, rect.Top + 2),
				new Point(rect.Left + 1, rect.Top + 2),
				new Point(rect.Left + 1, rect.Top + 1),
				new Point(rect.Left, rect.Top)
			} : new Point[20]
			{
				new Point(rect.Left + 4, rect.Top),
				new Point(rect.Left + 4, rect.Top + 1),
				new Point(rect.Left + 5, rect.Top + 1),
				new Point(rect.Left + 5, rect.Top + 2),
				new Point(rect.Left + 6, rect.Top + 2),
				new Point(rect.Left + 6, rect.Top + 3),
				new Point(rect.Left + 7, rect.Top + 3),
				new Point(rect.Left + 7, rect.Top + 4),
				new Point(rect.Left + 8, rect.Top + 4),
				new Point(rect.Left + 8, rect.Top + 5),
				new Point(rect.Left + 9, rect.Top + 5),
				new Point(rect.Left, rect.Top + 6),
				new Point(rect.Left, rect.Top + 5),
				new Point(rect.Left + 1, rect.Top + 5),
				new Point(rect.Left + 1, rect.Top + 4),
				new Point(rect.Left + 2, rect.Top + 4),
				new Point(rect.Left + 2, rect.Top + 3),
				new Point(rect.Left + 3, rect.Top + 3),
				new Point(rect.Left + 3, rect.Top + 2),
				new Point(rect.Left + 4, rect.Top + 2)
			});
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(points);
			Brush brush2 = ((buttonState != ButtonState.Inactive) ? ((Brush)new LinearGradientBrush(rect, Color.FromArgb(107, 125, 165), Color.FromArgb(66, 73, 99), LinearGradientMode.Vertical)) : ((Brush)new SolidBrush(SystemColors.ControlDark)));
			gfxTarget.FillRegion(brush2, new Region(graphicsPath));
			if (bscrollup)
			{
				gfxTarget.DrawLine(new Pen(m_office2007ColorTable.GroupBarBorderColor), new Point(rectScroll.Left, rectScroll.Top), new Point(rectScroll.Right, rectScroll.Top));
			}
			else
			{
				gfxTarget.DrawLine(new Pen(m_office2007ColorTable.GroupBarBorderColor), new Point(rectScroll.Left, rectScroll.Bottom), new Point(rectScroll.Right, rectScroll.Bottom));
			}
			return;
		}
		ScrollButton button = ((!bscrollup) ? ScrollButton.Down : ScrollButton.Up);
		using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gfxTarget, rectScroll, isMirrored);
		Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
		Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
		ControlPaint.DrawScrollButton(virtualGfx, virtualBounds, button, (ButtonState)((int)buttonState | (bFlatLook ? 16384 : 0)));
		Color rightColor = SystemColors.Control;
		if (bdrStyle == BorderStyle.Fixed3D)
		{
			rightColor = SystemColors.ControlLightLight;
		}
		else if (bdrStyle == BorderStyle.FixedSingle)
		{
			rightColor = SystemColors.ControlDark;
		}
		GroupBarItem groupBarItem = activeItemsList[nSelectedItem] as GroupBarItem;
		Color bottomColor = SystemColors.Control;
		if (bscrollup)
		{
			if (bdrStyle != BorderStyle.None && nSelectedItem == 0)
			{
				ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, SystemColors.ControlDark, 1, ButtonBorderStyle.Solid, rightColor, 1, ButtonBorderStyle.Solid, groupBarItem.ClientBorderColors.Top, 1, ButtonBorderStyle.Solid);
			}
			else
			{
				ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, Color.Empty, 0, ButtonBorderStyle.None, rightColor, 1, ButtonBorderStyle.Solid, groupBarItem.ClientBorderColors.Top, 1, ButtonBorderStyle.Solid);
			}
		}
		else if (nSelectedItem + 1 == activeItemsList.Count || nSelectedItem + 1 == activeItemsList.Count - 1)
		{
			if (bdrStyle == BorderStyle.Fixed3D)
			{
				bottomColor = SystemColors.ControlLightLight;
			}
			else if (bdrStyle == BorderStyle.FixedSingle)
			{
				bottomColor = SystemColors.ControlDark;
			}
			ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, groupBarItem.ClientBorderColors.Bottom, 1, ButtonBorderStyle.Solid, rightColor, 1, ButtonBorderStyle.Solid, bottomColor, 1, ButtonBorderStyle.Solid);
		}
		else
		{
			ControlPaint.DrawBorder(virtualGfx, virtualBounds, Color.Empty, 0, ButtonBorderStyle.None, groupBarItem.ClientBorderColors.Bottom, 1, ButtonBorderStyle.Solid, rightColor, 1, ButtonBorderStyle.Solid, bottomColor, 1, ButtonBorderStyle.Solid);
		}
	}

	private Brush GetBackgroundBrush(Rectangle rect, ButtonState state)
	{
		LinearGradientBrush linearGradientBrush = null;
		Color color = Color.Empty;
		Color color2 = Color.Empty;
		if (vStyle == VisualStyle.Office2007)
		{
			Blend blend = new Blend();
			if (state != ButtonState.Inactive && (eButtonsState == ButtonsState.ScrollDownHot || eButtonsState == ButtonsState.ScrollUpHot))
			{
				color = m_office2007ColorTable.GroupBarHighlightColorLight;
				color2 = m_office2007ColorTable.GroupBarHighlightColorDark;
			}
			else
			{
				switch (state)
				{
				case ButtonState.Pushed:
					color = m_office2007ColorTable.GroupBarSelectedColorLight;
					color2 = m_office2007ColorTable.GroupBarSelectedColorDark;
					break;
				case ButtonState.Normal:
					color = m_office2007ColorTable.GroupBarItemColorLight;
					color2 = m_office2007ColorTable.GroupBarItemColorDark;
					break;
				case ButtonState.Inactive:
					color = Color.FromArgb(236, 233, 216);
					color2 = color;
					break;
				}
			}
			blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
			blend.Factors = new float[4] { 0f, 0.5f, 1f, 0.5f };
			linearGradientBrush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical);
			linearGradientBrush.Blend = blend;
		}
		return linearGradientBrush;
	}

	[DocumentationExclude]
	protected virtual void DrawNavigationPane(Graphics gph)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing)
		{
			DrawNavigationPaneThemed(gph, boundedRectangle);
		}
		else if (vStyle == VisualStyle.Office2003)
		{
			DrawNavigationPaneOffice2003(gph, boundedRectangle);
		}
		else if (vStyle == VisualStyle.Office2007)
		{
			DrawNavigationPaneOffice2007(gph, boundedRectangle);
		}
		else
		{
			DrawNavigationPaneOfficeXP(gph, boundedRectangle);
		}
	}

	[DocumentationExclude]
	protected virtual void DrawNavigationPaneThemed(Graphics gph, Rectangle rcbounds)
	{
		Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
		bool isMirrored = GetIsMirrored();
		tdButton.DrawMirrored = false;
		if (ShowChevron)
		{
			if (eButtonsState == ButtonsState.DropDownButtonHot)
			{
				tdButton.DrawThemeBackground(gph, 1, 2, dropDownButtonRectangle);
				DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
			}
			else if (eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				tdButton.DrawThemeBackground(gph, 1, 3, dropDownButtonRectangle);
				dropDownButtonRectangle.Offset((!isMirrored) ? 1 : (-1), 1);
				DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
				dropDownButtonRectangle.Offset(isMirrored ? 1 : (-1), -1);
			}
			else
			{
				tdButton.DrawThemeBackground(gph, 1, 1, dropDownButtonRectangle);
				DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
			}
		}
		Rectangle rectangle = dropDownButtonRectangle;
		rectangle.Width = nNavigationButtonWidth;
		if (isMirrored)
		{
			int num = (ShowChevron ? dropDownButtonRectangle.Width : 0);
			rectangle.X += num + nNavigationButtonWidth * (alNavPaneItems.Count - 1);
		}
		else
		{
			int num2 = (ShowChevron ? rectangle.X : rcbounds.Right);
			rectangle.X = num2 - nNavigationButtonWidth * alNavPaneItems.Count;
		}
		if (Collapsed)
		{
			return;
		}
		foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
		{
			if ((alNavPaneItem.LargeImageMode && (alNavPaneItem.NavigationPaneImage != null || alNavPaneItem.Image != null)) || (!alNavPaneItem.LargeImageMode && (alNavPaneItem.NavigationPaneIcon != null || alNavPaneItem.Icon != null)))
			{
				new Rectangle(rectangle.Left + (rectangle.Width - 16) / 2, rectangle.Top + (rectangle.Height - 16) / 2, 16, 16);
				int num3 = activeItemsList.IndexOf(alNavPaneItem);
				if (bHighlight && num3 == nHighlightItem)
				{
					tdButton.DrawThemeBackground(gph, 1, 2, rectangle);
				}
				else if (num3 == nSelectedItem)
				{
					tdButton.DrawThemeBackground(gph, 1, 3, rectangle);
				}
				else
				{
					tdButton.DrawThemeBackground(gph, 1, 1, rectangle);
				}
				DrawNevigationItemIcon(gph, alNavPaneItem, rectangle);
			}
			rectangle.X += (isMirrored ? (-nNavigationButtonWidth) : nNavigationButtonWidth);
		}
	}

	protected virtual void DrawNevigationItemIcon(Graphics gph, GroupBarItem item, Rectangle rcbutton)
	{
		Rectangle rectangle = new Rectangle(rcbutton.Left + (rcbutton.Width - 16) / 2, rcbutton.Top + (rcbutton.Height - 16) / 2, 16, 16);
		if (item.LargeImageMode)
		{
			Image image = null;
			image = ((item.NavigationPaneImage == null) ? item.Image : item.NavigationPaneImage);
			if (image != null)
			{
				RectangleF srcRect = new RectangleF(0f, 0f, image.Width, image.Height);
				DrawImageStateHelper(gph, image, rectangle, srcRect, item.Enabled);
			}
			return;
		}
		Icon icon = null;
		icon = ((item.NavigationPaneIcon == null) ? item.Icon : item.NavigationPaneIcon);
		if (icon != null)
		{
			if (m_IconRenderingMode == IconRenderingMode.AlphaBlended)
			{
				DrawIconStateHelper(gph, icon, rectangle, item.Enabled, item);
			}
			else if (m_IconRenderingMode == IconRenderingMode.Default)
			{
				Bitmap bitmap = icon.ToBitmap();
				DrawImageStateHelper(gph, bitmap, rectangle, new RectangleF(0f, 0f, bitmap.Width, bitmap.Height), item.Enabled);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void DrawNavigationPaneOffice2003(Graphics gph, Rectangle rcbounds)
	{
		Rectangle rect = new Rectangle(rcbounds.Left, rcbounds.Bottom - nNavigationPaneHeight, rcbounds.Width, nNavigationPaneHeight);
		bool isMirrored = GetIsMirrored();
		if (rect.Width > 0 && rect.Height > 0)
		{
			LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Office2003Colors.MenuMarginColorLight, Office2003Colors.MenuMarginColorDark, LinearGradientMode.Vertical);
			gph.FillRectangle(linearGradientBrush, rect);
			linearGradientBrush.Dispose();
		}
		Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
		if (ShowChevron)
		{
			if (eButtonsState == ButtonsState.DropDownButtonHot)
			{
				LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(dropDownButtonRectangle, Office2003Colors.GroupBarHighlightColorLight, Office2003Colors.GroupBarHighlightColorDark, LinearGradientMode.Vertical);
				gph.FillRectangle(linearGradientBrush2, dropDownButtonRectangle);
				linearGradientBrush2.Dispose();
			}
			else if (eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(dropDownButtonRectangle, Office2003Colors.GroupBarSelectedHighlightColorDark, Office2003Colors.GroupBarSelectedHighlightColorLight, LinearGradientMode.Vertical);
				gph.FillRectangle(linearGradientBrush3, dropDownButtonRectangle);
				linearGradientBrush3.Dispose();
			}
			DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
		}
		Rectangle rectangle = dropDownButtonRectangle;
		rectangle.Width = nNavigationButtonWidth;
		if (isMirrored)
		{
			int num = (ShowChevron ? dropDownButtonRectangle.Width : 0);
			rectangle.X += num + nNavigationButtonWidth * (alNavPaneItems.Count - 1);
		}
		else
		{
			int num2 = (ShowChevron ? rectangle.X : rcbounds.Right);
			rectangle.X = num2 - nNavigationButtonWidth * alNavPaneItems.Count;
		}
		if (!Collapsed)
		{
			foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
			{
				int num3 = activeItemsList.IndexOf(alNavPaneItem);
				if (num3 == nSelectedItem)
				{
					LinearGradientBrush linearGradientBrush4 = null;
					linearGradientBrush4 = ((!bHighlight || num3 != nHighlightItem) ? new LinearGradientBrush(rectangle, Office2003Colors.GroupBarSelectedColorLight, Office2003Colors.GroupBarSelectedColorDark, LinearGradientMode.Vertical) : new LinearGradientBrush(rectangle, Office2003Colors.GroupBarSelectedHighlightColorDark, Office2003Colors.GroupBarSelectedHighlightColorLight, LinearGradientMode.Vertical));
					gph.FillRectangle(linearGradientBrush4, rectangle);
					linearGradientBrush4.Dispose();
				}
				else if (bHighlight && num3 == nHighlightItem)
				{
					LinearGradientBrush linearGradientBrush5 = null;
					linearGradientBrush5 = ((eButtonsState != ButtonsState.GroupBarItemPushed) ? new LinearGradientBrush(rectangle, Office2003Colors.GroupBarHighlightColorLight, Office2003Colors.GroupBarHighlightColorDark, LinearGradientMode.Vertical) : new LinearGradientBrush(rectangle, Office2003Colors.GroupBarSelectedHighlightColorDark, Office2003Colors.GroupBarSelectedHighlightColorLight, LinearGradientMode.Vertical));
					gph.FillRectangle(linearGradientBrush5, rectangle);
					linearGradientBrush5.Dispose();
				}
				DrawNevigationItemIcon(gph, alNavPaneItem, rectangle);
				rectangle.X += (isMirrored ? (-nNavigationButtonWidth) : nNavigationButtonWidth);
			}
		}
		Pen pen = new Pen(Office2003Colors.CommandBarDropDownColorDark, 1f);
		gph.DrawLine(pen, new Point(rect.Left, rect.Top), new Point(rect.Right - 1, rect.Top));
		pen.Dispose();
	}

	[DocumentationExclude]
	protected virtual void DrawNavigationPaneOffice2007(Graphics gph, Rectangle rcbounds)
	{
		Rectangle rect = new Rectangle(rcbounds.Left, rcbounds.Bottom - nNavigationPaneHeight, rcbounds.Width, nNavigationPaneHeight);
		bool isMirrored = GetIsMirrored();
		if (rect.Width <= 0 || rect.Height <= 0)
		{
			return;
		}
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, m_office2007ColorTable.GroupBarItemColorLight, m_office2007ColorTable.GroupBarItemColorDark, LinearGradientMode.Vertical);
		Blend blend = new Blend();
		blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
		blend.Factors = new float[4] { 0f, 0.6f, 1f, 0.6f };
		linearGradientBrush.Blend = blend;
		gph.FillRectangle(linearGradientBrush, rect);
		linearGradientBrush.Dispose();
		Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
		if (ShowChevron)
		{
			if (eButtonsState == ButtonsState.DropDownButtonHot)
			{
				LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(dropDownButtonRectangle, m_office2007ColorTable.GroupBarHighlightColorLight, m_office2007ColorTable.GroupBarHighlightColorDark, LinearGradientMode.Vertical);
				blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
				blend.Factors = new float[4] { 0f, 0.6f, 1f, 0.6f };
				linearGradientBrush2.Blend = blend;
				gph.FillRectangle(linearGradientBrush2, dropDownButtonRectangle);
				linearGradientBrush2.Dispose();
			}
			else if (eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				LinearGradientBrush linearGradientBrush3 = new LinearGradientBrush(dropDownButtonRectangle, m_office2007ColorTable.GroupBarSelectedHighlightColorLight, m_office2007ColorTable.GroupBarSelectedHighlightColorDark, LinearGradientMode.Vertical);
				blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
				blend.Factors = new float[4] { 0.2f, 0.6f, 1f, 0f };
				linearGradientBrush3.Blend = blend;
				gph.FillRectangle(linearGradientBrush3, dropDownButtonRectangle);
				linearGradientBrush3.Dispose();
			}
			DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
		}
		Rectangle rectangle = dropDownButtonRectangle;
		rectangle.Width = nNavigationButtonWidth;
		if (isMirrored)
		{
			int num = (ShowChevron ? dropDownButtonRectangle.Width : 0);
			rectangle.X += num + nNavigationButtonWidth * (alNavPaneItems.Count - 1);
		}
		else
		{
			int num2 = (ShowChevron ? rectangle.X : rcbounds.Right);
			rectangle.X = num2 - nNavigationButtonWidth * alNavPaneItems.Count;
		}
		if (!Collapsed)
		{
			foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
			{
				int num3 = activeItemsList.IndexOf(alNavPaneItem);
				if (num3 == nSelectedItem)
				{
					LinearGradientBrush linearGradientBrush4 = null;
					linearGradientBrush4 = ((!bHighlight || num3 != nHighlightItem) ? new LinearGradientBrush(rectangle, m_office2007ColorTable.GroupBarSelectedColorLight, m_office2007ColorTable.GroupBarSelectedColorDark, LinearGradientMode.Vertical) : new LinearGradientBrush(rectangle, m_office2007ColorTable.GroupBarSelectedHighlightColorLight, m_office2007ColorTable.GroupBarSelectedHighlightColorDark, LinearGradientMode.Vertical));
					blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
					blend.Factors = new float[4] { 0.2f, 0.6f, 1f, 0f };
					linearGradientBrush4.Blend = blend;
					gph.FillRectangle(linearGradientBrush4, rectangle);
					linearGradientBrush4.Dispose();
				}
				else if (bHighlight && num3 == nHighlightItem)
				{
					LinearGradientBrush linearGradientBrush5 = null;
					if (eButtonsState == ButtonsState.GroupBarItemPushed)
					{
						linearGradientBrush5 = new LinearGradientBrush(rectangle, m_office2007ColorTable.GroupBarSelectedHighlightColorLight, m_office2007ColorTable.GroupBarSelectedHighlightColorDark, LinearGradientMode.Vertical);
						blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
						blend.Factors = new float[4] { 0.2f, 0.6f, 1f, 0f };
					}
					else
					{
						linearGradientBrush5 = new LinearGradientBrush(rectangle, m_office2007ColorTable.GroupBarHighlightColorLight, m_office2007ColorTable.GroupBarHighlightColorDark, LinearGradientMode.Vertical);
						blend.Positions = new float[4] { 0f, 0.4f, 0.401f, 1f };
						blend.Factors = new float[4] { 0f, 0.6f, 1f, 0.6f };
					}
					linearGradientBrush5.Blend = blend;
					gph.FillRectangle(linearGradientBrush5, rectangle);
					linearGradientBrush5.Dispose();
				}
				DrawNevigationItemIcon(gph, alNavPaneItem, rectangle);
				rectangle.X += (isMirrored ? (-nNavigationButtonWidth) : nNavigationButtonWidth);
			}
		}
		Pen pen = new Pen(m_office2007ColorTable.GroupBarBorderColor, 1f);
		gph.DrawLine(pen, new Point(rect.Left, rect.Top), new Point(rect.Right - 1, rect.Top));
		pen.Dispose();
	}

	[DocumentationExclude]
	protected virtual void DrawNavigationPaneOfficeXP(Graphics gph, Rectangle rcbounds)
	{
		Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
		ButtonState buttonState = ((ButtonsState.DropDownButtonPushed == eButtonsState) ? ButtonState.Pushed : ButtonState.Normal);
		bool isMirrored = GetIsMirrored();
		if (ShowChevron)
		{
			using (CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, dropDownButtonRectangle, isMirrored))
			{
				Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
				Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
				if (virtualBounds.Width > 0 && virtualBounds.Height > 0)
				{
					ControlPaint.DrawButton(virtualGfx, virtualBounds, (ButtonState)((int)buttonState | (bFlatLook ? 16384 : 0)));
					if (eButtonsState == ButtonsState.DropDownButtonHot || eButtonsState == ButtonsState.DropDownButtonPushed)
					{
						Rectangle rectangle = new Rectangle(virtualBounds.Left, virtualBounds.Top, virtualBounds.Width - 1, virtualBounds.Height - 1);
						ControlPaint.DrawBorder3D(virtualGfx, rectangle, Border3DStyle.Raised, Border3DSide.Right | Border3DSide.Bottom);
					}
				}
			}
			if (eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				dropDownButtonRectangle.Offset((!isMirrored) ? 1 : (-1), 1);
				DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
				dropDownButtonRectangle.Offset(isMirrored ? 1 : (-1), -1);
			}
			else
			{
				DrawDropdownButton(gph, dropDownButtonRectangle, isMirrored);
			}
		}
		Rectangle rectangle2 = dropDownButtonRectangle;
		rectangle2.Width = nNavigationButtonWidth;
		if (isMirrored)
		{
			int num = (ShowChevron ? dropDownButtonRectangle.Width : 0);
			rectangle2.X += num + nNavigationButtonWidth * (alNavPaneItems.Count - 1);
		}
		else
		{
			int num2 = (ShowChevron ? rectangle2.X : rcbounds.Right);
			rectangle2.X = num2 - nNavigationButtonWidth * alNavPaneItems.Count;
		}
		if (!Collapsed)
		{
			foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
			{
				if ((alNavPaneItem.LargeImageMode && (alNavPaneItem.NavigationPaneImage != null || alNavPaneItem.Image != null)) || (!alNavPaneItem.LargeImageMode && (alNavPaneItem.NavigationPaneIcon != null || alNavPaneItem.Icon != null)))
				{
					int num3 = activeItemsList.IndexOf(alNavPaneItem);
					ButtonState buttonState2 = (((nHighlightItem == num3 && eButtonsState == ButtonsState.GroupBarItemPushed) || nSelectedItem == num3) ? ButtonState.Pushed : ButtonState.Normal);
					if (bFlatLook)
					{
						buttonState2 |= ButtonState.Flat;
					}
					if (!alNavPaneItem.Enabled)
					{
						buttonState2 |= ButtonState.Inactive;
					}
					using (CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(gph, rectangle2, isMirrored))
					{
						ControlPaint.DrawButton(cMirroredDrawer2.VirtualGfx, cMirroredDrawer2.VirtualBounds, buttonState2);
					}
					DrawNevigationItemIcon(gph, alNavPaneItem, rectangle2);
				}
				rectangle2.X += (isMirrored ? (-nNavigationButtonWidth) : nNavigationButtonWidth);
			}
		}
		if (bBarHighlight && bHighlight && nHighlightItem >= 0 && alNavPaneItems.Contains(activeItemsList[nHighlightItem]))
		{
			Rectangle groupBarItemBounds = GetGroupBarItemBounds(nHighlightItem);
			groupBarItemBounds.Width--;
			groupBarItemBounds.Height--;
			if (isMirrored)
			{
				groupBarItemBounds.X++;
			}
			using CMirroredDrawer cMirroredDrawer3 = new CMirroredDrawer(gph, groupBarItemBounds, isMirrored);
			ControlPaint.DrawBorder3D(cMirroredDrawer3.VirtualGfx, cMirroredDrawer3.VirtualBounds, Border3DStyle.Raised, Border3DSide.Right | Border3DSide.Bottom);
		}
	}

	protected virtual void DrawDropdownButton(Graphics gph, Rectangle rcbutton, bool bIsMirrored)
	{
		if (!ShowChevron)
		{
			return;
		}
		using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, rcbutton, bIsMirrored);
		Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
		Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
		if (vStyle != VisualStyle.Office2007)
		{
			Rectangle rectangle = new Rectangle(virtualBounds.Left + 6, virtualBounds.Bottom - 23, 4, 5);
			int num = rectangle.Left;
			for (int i = 0; i < 2; i++)
			{
				virtualGfx.DrawLine(SystemPens.ControlText, new Point(num, rectangle.Top), new Point(num + 1, rectangle.Top));
				virtualGfx.DrawLine(SystemPens.ControlText, new Point(num + 1, rectangle.Top + 1), new Point(num + 2, rectangle.Top + 1));
				virtualGfx.DrawLine(SystemPens.ControlText, new Point(num + 2, rectangle.Top + 2), new Point(num + 3, rectangle.Top + 2));
				virtualGfx.DrawLine(SystemPens.ControlText, new Point(num + 1, rectangle.Top + 3), new Point(num + 2, rectangle.Top + 3));
				virtualGfx.DrawLine(SystemPens.ControlText, new Point(num, rectangle.Top + 4), new Point(num + 1, rectangle.Top + 4));
				num = rectangle.Left + 4;
			}
			Rectangle rectangle2 = new Rectangle(virtualBounds.Left + 7, virtualBounds.Bottom - 12, 5, 3);
			Point[] points = new Point[4]
			{
				new Point(rectangle2.Left, rectangle2.Top),
				new Point(rectangle2.Right, rectangle2.Top),
				new Point(rectangle2.Left + 2, rectangle2.Bottom),
				new Point(rectangle2.Left, rectangle2.Top)
			};
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(points);
			virtualGfx.FillRegion(SystemBrushes.ControlText, new Region(graphicsPath));
		}
		else
		{
			Rectangle rectangle3 = new Rectangle(virtualBounds.Left + 8, virtualBounds.Bottom - 18, 5, 4);
			Point[] points2 = (bIsMirrored ? new Point[6]
			{
				new Point(rectangle3.Left, rectangle3.Top),
				new Point(rectangle3.Right, rectangle3.Top),
				new Point(rectangle3.Right, rectangle3.Top + 1),
				new Point(rectangle3.Left + 3, rectangle3.Bottom),
				new Point(rectangle3.Left, rectangle3.Top + 1),
				new Point(rectangle3.Left, rectangle3.Top)
			} : new Point[6]
			{
				new Point(rectangle3.Left, rectangle3.Top),
				new Point(rectangle3.Right, rectangle3.Top),
				new Point(rectangle3.Right, rectangle3.Top + 1),
				new Point(rectangle3.Left + 2, rectangle3.Bottom),
				new Point(rectangle3.Left, rectangle3.Top + 1),
				new Point(rectangle3.Left, rectangle3.Top)
			});
			GraphicsPath graphicsPath2 = new GraphicsPath();
			graphicsPath2.AddLines(points2);
			virtualGfx.FillRegion(new SolidBrush(Color.White), new Region(graphicsPath2));
			Rectangle rectangle4 = new Rectangle(virtualBounds.Left + 8, virtualBounds.Bottom - 18, 5, 3);
			Point[] points3 = (bIsMirrored ? new Point[4]
			{
				new Point(rectangle4.Left, rectangle4.Top),
				new Point(rectangle4.Right, rectangle4.Top),
				new Point(rectangle4.Left + 3, rectangle4.Bottom),
				new Point(rectangle4.Left, rectangle4.Top)
			} : new Point[4]
			{
				new Point(rectangle4.Left, rectangle4.Top),
				new Point(rectangle4.Right, rectangle4.Top),
				new Point(rectangle4.Left + 2, rectangle4.Bottom),
				new Point(rectangle4.Left, rectangle4.Top)
			});
			GraphicsPath graphicsPath3 = new GraphicsPath();
			graphicsPath3.AddLines(points3);
			SolidBrush solidBrush = null;
			solidBrush = ((m_office2007Theme == Office2007Theme.Blue) ? new SolidBrush(Color.FromArgb(66, 113, 181)) : ((m_office2007Theme != Office2007Theme.Black) ? new SolidBrush(Color.FromArgb(99, 105, 115)) : new SolidBrush(Color.FromArgb(49, 52, 49))));
			virtualGfx.FillRegion(solidBrush, new Region(graphicsPath3));
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if ((specified & BoundsSpecified.Width) != BoundsSpecified.None && Collapsed)
		{
			width = CollapsedWidth;
		}
		base.SetBoundsCore(x, y, width, height, specified);
		RecalculateGroupBarLayout();
		SetActiveClientBounds();
		Invalidate(base.ClientRectangle, invalidateChildren: false);
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		base.OnControlAdded(e);
		if (!IsClientSetting && base.DesignMode && GroupExists(nSelectedItem) && (activeItemsList[nSelectedItem] as GroupBarItem).Client == null)
		{
			(activeItemsList[nSelectedItem] as GroupBarItem).Client = e.Control;
			RecalculateGroupBarLayout();
			SetActiveClientBounds();
		}
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		base.OnControlRemoved(e);
		if (base.DesignMode && GroupExists(nSelectedItem) && (activeItemsList[nSelectedItem] as GroupBarItem).Client != null && (activeItemsList[nSelectedItem] as GroupBarItem).Client == e.Control)
		{
			(activeItemsList[nSelectedItem] as GroupBarItem).Client = null;
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (base.Visible && GroupExists(nSelectedItem))
		{
			GroupBarItem groupBarItem = activeItemsList[nSelectedItem] as GroupBarItem;
			if (groupBarItem.Client != null && !groupBarItem.Client.Visible)
			{
				SelectedItem = nSelectedItem;
			}
		}
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keydata)
	{
		if (msg.Msg == 256 && activeItemsList.Count > 0 && (keydata & Keys.Control) != Keys.None)
		{
			switch (keydata & ~Keys.Control)
			{
			case Keys.Up:
				if (nSelectedItem > 0)
				{
					SelectedItem--;
					(activeItemsList[SelectedItem] as GroupBarItem).Client?.Focus();
					return true;
				}
				if (nSelectedItem == 0)
				{
					SelectedItem = activeItemsList.Count - 1;
					(activeItemsList[SelectedItem] as GroupBarItem).Client?.Focus();
					if (!(base.Parent is GroupBar))
					{
						return true;
					}
				}
				break;
			case Keys.Down:
				if (nSelectedItem < activeItemsList.Count - 1)
				{
					SelectedItem++;
					(activeItemsList[SelectedItem] as GroupBarItem).Client?.Focus();
					return true;
				}
				if (nSelectedItem == activeItemsList.Count - 1)
				{
					SelectedItem = 0;
					(activeItemsList[SelectedItem] as GroupBarItem).Client?.Focus();
					if (!(base.Parent is GroupBar))
					{
						return true;
					}
				}
				break;
			}
		}
		return base.ProcessCmdKey(ref msg, keydata);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		Point pt = new Point(e.X, e.Y);
		switch (e.Button)
		{
		case MouseButtons.Left:
			if (!((IIntegratedScrollContainer)this).HandleScrollButtonDown(pt))
			{
				HandleMouseLButtonDown(pt);
			}
			break;
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		Point pt = new Point(e.X, e.Y);
		switch (e.Button)
		{
		case MouseButtons.Left:
			if (!((IIntegratedScrollContainer)this).HandleScrollButtonUp(pt))
			{
				bool flag = eButtonsState == ButtonsState.GroupBarItemPushed;
				int num = HandleMouseLButtonUp(pt);
				if (flag && num >= 0 && num <= activeItemsList.Count && num != nSelectedItem)
				{
					int oldselected = nSelectedItem;
					m_bAllowItemPopup = true;
					SelectItem(num, oldselected);
					bHighlight = false;
					eButtonsState = ButtonsState.None;
				}
			}
			break;
		case MouseButtons.Right:
		{
			int itemFromPoint = GetItemFromPoint(pt);
			if (itemFromPoint >= 0)
			{
				nContextMenuItem = nHighlightItem;
				OnShowContextMenu(EventArgs.Empty);
			}
			break;
		}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point pt = new Point(e.X, e.Y);
		if ((eButtonsState == ButtonsState.ScrollUpPushed || eButtonsState == ButtonsState.ScrollUpHot) && !rcScrollUp.Contains(pt))
		{
			if (tmrScrolling != null && tmrScrolling.Enabled)
			{
				tmrScrolling.Stop();
			}
			SetScrollButtonState(bupscroll: true, ButtonsState.None);
		}
		else if ((eButtonsState == ButtonsState.ScrollDownPushed || eButtonsState == ButtonsState.ScrollDownHot) && !rcScrollDown.Contains(pt))
		{
			if (tmrScrolling != null && tmrScrolling.Enabled)
			{
				tmrScrolling.Stop();
			}
			SetScrollButtonState(bupscroll: false, ButtonsState.None);
		}
		else if (rcScrollUp.Contains(pt))
		{
			if (eInScroll == ButtonsState.ScrollUpPushed)
			{
				SetScrollButtonState(bupscroll: true, ButtonsState.ScrollUpPushed);
				DoScroll(bupscrllbttn: true);
			}
			else if (((XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing) || vStyle == VisualStyle.Office2007) && eInScroll != ButtonsState.ScrollUpHot)
			{
				SetScrollButtonState(bupscroll: true, ButtonsState.ScrollUpHot);
			}
		}
		else if (rcScrollDown.Contains(pt))
		{
			if (eInScroll == ButtonsState.ScrollDownPushed)
			{
				SetScrollButtonState(bupscroll: false, ButtonsState.ScrollDownPushed);
				DoScroll(bupscrllbttn: false);
			}
			else if (((XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing) || vStyle == VisualStyle.Office2007) && eInScroll != ButtonsState.ScrollDownHot)
			{
				SetScrollButtonState(bupscroll: false, ButtonsState.ScrollDownHot);
			}
		}
		else
		{
			HandleMouseMove(new Point(e.X, e.Y));
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (tmrScrolling != null && tmrScrolling.Enabled)
		{
			tmrScrolling.Stop();
		}
		if (eButtonsState == ButtonsState.ScrollUpPushed || eButtonsState == ButtonsState.ScrollUpHot)
		{
			SetScrollButtonState(bupscroll: true, ButtonsState.None);
		}
		if (eButtonsState == ButtonsState.ScrollDownPushed || eButtonsState == ButtonsState.ScrollDownHot)
		{
			SetScrollButtonState(bupscroll: false, ButtonsState.None);
		}
		HandleMouseMove(PointToClient(Cursor.Position));
	}

	protected override void OnDragOver(DragEventArgs e)
	{
		if (e.KeyState == 9)
		{
			e.Effect = DragDropEffects.Copy;
		}
		else
		{
			e.Effect = DragDropEffects.Move;
		}
		Point pt = PointToClient(new Point(e.X, e.Y));
		int itemFromPoint = GetItemFromPoint(pt);
		if (itemFromPoint != -1 && itemFromPoint != nSelectedItem)
		{
			if (nStartTick == 0)
			{
				nStartTick = Environment.TickCount;
			}
			if (Environment.TickCount > nStartTick + 750)
			{
				SelectedItem = itemFromPoint;
				nStartTick = 0;
			}
		}
		else
		{
			nStartTick = 0;
		}
		base.OnDragOver(e);
	}

	protected override void OnDragLeave(EventArgs e)
	{
		if (nStartTick != 0)
		{
			nStartTick = 0;
		}
		base.OnDragLeave(e);
	}

	protected int GetItemFromPoint(Point pt)
	{
		for (int i = 0; i < activeItemsList.Count; i++)
		{
			Rectangle groupBarItemBounds = GetGroupBarItemBounds(i);
			Rectangle rRect = groupBarItemBounds;
			if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect);
			}
			if (rRect.Contains(pt))
			{
				if (i == nRenameItem)
				{
					return -1;
				}
				return i;
			}
		}
		return -1;
	}

	public GroupBarItem PointToItem(int x, int y)
	{
		return PointToItem(new Point(x, y));
	}

	public GroupBarItem PointToItem(Point pt)
	{
		GroupBarItem result = null;
		if (base.ClientRectangle.Contains(pt) && activeItemsList != null && activeItemsList.Count > 0)
		{
			int i = 0;
			for (int count = activeItemsList.Count; i < count; i++)
			{
				Rectangle rRect = GetGroupBarItemBounds(i);
				if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
				{
					CorrectRectForScrollThumbWidth(ref rRect);
				}
				if (activeItemsList[i] is GroupBarItem groupBarItem)
				{
					if (rRect.Contains(pt))
					{
						result = groupBarItem;
						break;
					}
					Control client = groupBarItem.Client;
					if (client != null && SelectedItem == i && client.Bounds.Contains(pt))
					{
						result = groupBarItem;
						break;
					}
				}
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected internal int HandleMouseLButtonDown(Point pt)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		if (bStackedMode)
		{
			if (new Rectangle(1, rcClient.Bottom, boundedRectangle.Width - 2, nSplitterHeight).Contains(pt))
			{
				ptSplitterDragStart = PointToScreen(pt);
				base.Capture = true;
			}
			Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
			if (dropDownButtonRectangle.Contains(pt) && ShowChevron)
			{
				if (eButtonsState != ButtonsState.DropDownButtonPushed)
				{
					eButtonsState = ButtonsState.DropDownButtonPushed;
					Invalidate(Rectangle.Inflate(dropDownButtonRectangle, 2, 2), invalidateChildren: false);
				}
				return -1;
			}
			if (Collapsed && rcClient.Contains(pt))
			{
				m_collapsedClientAreaState = ButtonsState.DropDownButtonPushed;
				base.Capture = true;
				Invalidate(rcClient);
				return -1;
			}
			if (AllowCollapse && activeItemsList.Count > 0)
			{
				Rectangle collapseButtonBounds = CollapseButtonBounds;
				if (collapseButtonBounds.Contains(pt))
				{
					m_collapseButtonState = ButtonsState.DropDownButtonPushed;
					Invalidate(collapseButtonBounds);
					return -1;
				}
			}
		}
		for (int i = 0; i < activeItemsList.Count; i++)
		{
			Rectangle groupBarItemBounds = GetGroupBarItemBounds(i);
			Rectangle rRect = groupBarItemBounds;
			if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect);
			}
			if (rRect.Contains(pt))
			{
				GroupBarItem groupBarItem = activeItemsList[i] as GroupBarItem;
				if (i == nRenameItem)
				{
					return -1;
				}
				nHighlightItem = i;
				if (!groupBarItem.Enabled)
				{
					return -1;
				}
				eButtonsState = ButtonsState.GroupBarItemPushed;
				if (!bStackedMode)
				{
					bHighlight = false;
					Invalidate(rRect, invalidateChildren: false);
				}
				else
				{
					Invalidate(rRect, invalidateChildren: false);
					Refresh();
				}
				return i;
			}
		}
		return -1;
	}

	[DocumentationExclude]
	protected internal int HandleMouseLButtonUp(Point pt)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		if (nHighlightItem >= 0)
		{
			Rectangle groupBarItemBounds = GetGroupBarItemBounds(nHighlightItem);
			Rectangle rRect = groupBarItemBounds;
			if (bIntegratedScrolling && (nHighlightItem == nSelectedItem || nHighlightItem == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect);
			}
			if (eButtonsState == ButtonsState.GroupBarItemPushed && !bStackedMode)
			{
				eButtonsState = ButtonsState.None;
				Invalidate(Rectangle.Inflate(rRect, 1, 1), invalidateChildren: false);
			}
		}
		if (bStackedMode)
		{
			if (ptSplitterDragStart != new Point(-1, -1))
			{
				base.Capture = false;
				ptSplitterDragStart = new Point(-1, -1);
				if (!new Rectangle(0, rcClient.Bottom, boundedRectangle.Width, nSplitterHeight).Contains(pt) && base.Cursor == Cursors.SizeNS)
				{
					base.Cursor = gDefaultCursor;
				}
			}
			Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
			if (dropDownButtonRectangle.Contains(pt) && ShowChevron)
			{
				if (eButtonsState == ButtonsState.DropDownButtonPushed)
				{
					eButtonsState = ButtonsState.DropDownButtonHot;
					Invalidate(Rectangle.Inflate(dropDownButtonRectangle, 2, 2), invalidateChildren: false);
				}
				ShowDropDownMenu();
				return -1;
			}
			if (eButtonsState == ButtonsState.DropDownButtonHot || eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				eButtonsState = ButtonsState.None;
				Invalidate(Rectangle.Inflate(dropDownButtonRectangle, 2, 2), invalidateChildren: false);
			}
			if (Collapsed && base.Capture && rcClient.Contains(pt))
			{
				base.Capture = false;
				base.Cursor = gDefaultCursor;
				m_collapsedClientAreaState = ButtonsState.DropDownButtonHot;
				HandleCollapsedClientAreaClick();
				Invalidate(rcClient);
				return -1;
			}
			if (AllowCollapse && activeItemsList.Count > 0)
			{
				Rectangle collapseButtonBounds = CollapseButtonBounds;
				if (collapseButtonBounds.Contains(pt))
				{
					if (m_collapseButtonState == ButtonsState.DropDownButtonPushed)
					{
						HandleCollapseButtonClick();
					}
					m_collapseButtonState = ButtonsState.DropDownButtonHot;
					Invalidate(collapseButtonBounds);
					return -1;
				}
			}
		}
		for (int i = 0; i < activeItemsList.Count; i++)
		{
			Rectangle groupBarItemBounds2 = GetGroupBarItemBounds(i);
			Rectangle rRect2 = groupBarItemBounds2;
			if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect2);
			}
			if (rRect2.Contains(pt))
			{
				if (i == nRenameItem)
				{
					return -1;
				}
				nHighlightItem = i;
				return i;
			}
		}
		return -1;
	}

	protected internal void ShowDropDownMenu()
	{
		IContextMenuProvider contextMenuProvider = ContextMenuProvider;
		contextMenuProvider.InitializeContextMenu();
		if ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !UseThemedDrawing) && vStyle == VisualStyle.Office2003)
		{
			contextMenuProvider.SetVisualStyle(VisualStyle.Office2003);
		}
		else if ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !UseThemedDrawing) && vStyle == VisualStyle.Office2007)
		{
			contextMenuProvider.SetVisualStyle(VisualStyle.Office2007Outlook);
		}
		InitializeNavigationButtonMenu(contextMenuProvider);
		NavigationPaneDropDownClickEventArgs e = new NavigationPaneDropDownClickEventArgs(contextMenuProvider);
		OnNavigationPaneButtonClick(e);
		Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
		if (contextMenuProvider.GetItemsCount() != 0 && contextMenuProvider.NeedAddRemoveButtons())
		{
			InitAddRemoveNavMenu(contextMenuProvider);
		}
		if (Collapsed)
		{
			InitCollapsedNavMenu(contextMenuProvider);
		}
		if (contextMenuProvider.GetItemsCount() != 0)
		{
			contextMenuProvider.ShowContextMenu(this, new Point(dropDownButtonRectangle.Right, dropDownButtonRectangle.Top + dropDownButtonRectangle.Height / 2));
		}
	}

	[DocumentationExclude]
	protected internal int HandleMouseMove(Point pt)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		if (nHighlightItem >= 0)
		{
			Rectangle groupBarItemBounds = GetGroupBarItemBounds(nHighlightItem);
			Rectangle rRect = groupBarItemBounds;
			if (bIntegratedScrolling && (nHighlightItem == nSelectedItem || nHighlightItem == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect);
			}
			if (!rRect.Contains(pt))
			{
				bHighlight = false;
				nHighlightItem = -1;
				eButtonsState = ButtonsState.None;
				if (base.Cursor == itemCursor && gDefaultCursor != null)
				{
					base.Cursor = gDefaultCursor;
				}
				Invalidate(Rectangle.Inflate(rRect, 1, 1), invalidateChildren: false);
			}
		}
		if (bStackedMode)
		{
			if (!(ptSplitterDragStart == new Point(-1, -1)))
			{
				Point point = PointToScreen(pt);
				if (point.Y < ptSplitterDragStart.Y - nItemHeight)
				{
					if (alNavPaneItems.Count > 0)
					{
						(alNavPaneItems[0] as GroupBarItem).InNavigationPane = false;
						Refresh();
						ptSplitterDragStart = point;
					}
				}
				else if (point.Y > ptSplitterDragStart.Y + nItemHeight && activeItemsList.Count > alNavPaneItems.Count)
				{
					(activeItemsList[activeItemsList.Count - alNavPaneItems.Count - 1] as GroupBarItem).InNavigationPane = true;
					Refresh();
					ptSplitterDragStart = point;
				}
				return -1;
			}
			if (new Rectangle(1, rcClient.Bottom, boundedRectangle.Width - 1, nSplitterHeight).Contains(pt))
			{
				if (base.Cursor != Cursors.SizeNS)
				{
					base.Cursor = Cursors.SizeNS;
				}
			}
			else if (base.Cursor == Cursors.SizeNS && gDefaultCursor != null)
			{
				base.Cursor = gDefaultCursor;
			}
			Rectangle dropDownButtonRectangle = GetDropDownButtonRectangle();
			if (dropDownButtonRectangle.Contains(pt) && ShowChevron)
			{
				if (base.Cursor != itemCursor)
				{
					base.Cursor = itemCursor;
				}
				if (!compToolTip.Active)
				{
					compToolTip.SetToolTip(this, m_sGroupBarDropDownToolTip);
					compToolTip.Active = true;
				}
				if (eButtonsState != ButtonsState.DropDownButtonHot && eButtonsState != ButtonsState.DropDownButtonPushed)
				{
					eButtonsState = ButtonsState.DropDownButtonHot;
					Invalidate(Rectangle.Inflate(dropDownButtonRectangle, 2, 2), invalidateChildren: false);
				}
				return -1;
			}
			if (Collapsed && activeItemsList.Count > 0)
			{
				if (rcClient.Contains(pt))
				{
					base.Cursor = Cursors.Hand;
					if (m_collapsedClientAreaState == ButtonsState.None && !compToolTip.Active)
					{
						compToolTip.SetToolTip(this, NavigationPaneTooltip);
						compToolTip.Active = true;
					}
					if (base.Capture)
					{
						if (m_collapsedClientAreaState != ButtonsState.None)
						{
							m_collapsedClientAreaState = ButtonsState.DropDownButtonPushed;
							Invalidate(rcClient);
						}
					}
					else if (m_collapsedClientAreaState != ButtonsState.DropDownButtonHot)
					{
						m_collapsedClientAreaState = ButtonsState.DropDownButtonHot;
						Invalidate(rcClient);
					}
					return -1;
				}
				if (base.Capture)
				{
					if (m_collapsedClientAreaState != ButtonsState.None)
					{
						m_collapsedClientAreaState = ButtonsState.DropDownButtonHot;
						Invalidate(rcClient);
					}
				}
				else
				{
					m_collapsedClientAreaState = ButtonsState.None;
					Invalidate(rcClient);
				}
			}
			if (AllowCollapse && activeItemsList.Count > 0)
			{
				Rectangle collapseButtonBounds = CollapseButtonBounds;
				if (collapseButtonBounds.Contains(pt))
				{
					if (m_collapseButtonState == ButtonsState.None)
					{
						m_collapseButtonState = ButtonsState.DropDownButtonHot;
						if (!compToolTip.Active)
						{
							compToolTip.SetToolTip(this, CollapseButtonTooltip);
							compToolTip.Active = true;
						}
					}
					Invalidate(collapseButtonBounds);
					return -1;
				}
				if (m_collapseButtonState != ButtonsState.None)
				{
					m_collapseButtonState = ButtonsState.None;
					Invalidate(collapseButtonBounds);
				}
			}
			if (base.Cursor == itemCursor && gDefaultCursor != null)
			{
				base.Cursor = gDefaultCursor;
			}
			if (eButtonsState == ButtonsState.DropDownButtonHot || eButtonsState == ButtonsState.DropDownButtonPushed)
			{
				eButtonsState = ButtonsState.None;
				Invalidate(Rectangle.Inflate(dropDownButtonRectangle, 2, 2), invalidateChildren: false);
			}
		}
		bool flag = false;
		for (int i = 0; i < activeItemsList.Count; i++)
		{
			Rectangle groupBarItemBounds2 = GetGroupBarItemBounds(i);
			Rectangle rRect2 = groupBarItemBounds2;
			if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
			{
				CorrectRectForScrollThumbWidth(ref rRect2);
			}
			if (rRect2.Contains(pt))
			{
				if (i == nRenameItem)
				{
					return -1;
				}
				if (base.Cursor != itemCursor)
				{
					base.Cursor = itemCursor;
				}
				GroupBarItem groupBarItem = activeItemsList[i] as GroupBarItem;
				if ((alNavPaneItems.Contains(groupBarItem) || Collapsed) && (!compToolTip.Active || groupBarItem.Text != compToolTip.GetToolTip(this)))
				{
					compToolTip.SetToolTip(this, groupBarItem.Text);
					compToolTip.Active = true;
					flag = true;
				}
				nHighlightItem = i;
				if (!groupBarItem.Enabled)
				{
					return -1;
				}
				if (bBarHighlight && eButtonsState == ButtonsState.None && !bHighlight)
				{
					bHighlight = true;
					Invalidate(Rectangle.Inflate(rRect2, 1, 1), invalidateChildren: false);
				}
				if (!flag && groupBarItem.Text != compToolTip.GetToolTip(this))
				{
					compToolTip.Active = false;
				}
				return i;
			}
		}
		compToolTip.Active = false;
		return -1;
	}

	protected virtual void InitializeNavigationButtonMenu(IContextMenuProvider menu)
	{
		string itemtext = SR.GetString("MoreButtonsItemsText");
		menu.AddContextMenuItem(string.Empty, itemtext, OnMoreButtons_Click);
		menu.SetContextMenuItemImage(itemtext, s_ilNavPaneItems, 0);
		if (alNavPaneItems.Count == 0)
		{
			menu.SetContextMenuItemEnabled(itemtext, benabled: false);
		}
		string itemtext2 = SR.GetString("FewerButtonsItemsText");
		menu.AddContextMenuItem(string.Empty, itemtext2, OnFewerButtons_Click);
		menu.SetContextMenuItemImage(itemtext2, s_ilNavPaneItems, 1);
		if (alNavPaneItems.Count == activeItemsList.Count)
		{
			menu.SetContextMenuItemEnabled(itemtext2, benabled: false);
		}
	}

	protected void OnNavigationPaneButtonClick(NavigationPaneDropDownClickEventArgs e)
	{
		if (this.NavigationPaneDropDownClick != null)
		{
			this.NavigationPaneDropDownClick(this, e);
		}
	}

	protected void OnMoreButtons_Click(object sender, EventArgs e)
	{
		if (alNavPaneItems.Count > 0)
		{
			GroupBarItem groupBarItem = alNavPaneItems[0] as GroupBarItem;
			groupBarItem.InNavigationPane = false;
		}
	}

	protected void OnFewerButtons_Click(object sender, EventArgs e)
	{
		ArrayList arrayList = new ArrayList();
		foreach (GroupBarItem activeItems in activeItemsList)
		{
			if (!alNavPaneItems.Contains(activeItems))
			{
				arrayList.Add(activeItems);
			}
		}
		if (arrayList.Count > 0)
		{
			GroupBarItem groupBarItem2 = arrayList[arrayList.Count - 1] as GroupBarItem;
			groupBarItem2.InNavigationPane = true;
		}
	}

	[DocumentationExclude]
	protected internal Rectangle GetGroupBarItemBounds(int nitem)
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		Rectangle result = Rectangle.Empty;
		if (!bStackedMode)
		{
			result = new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, nItemHeight);
			for (int i = 0; i < activeItemsList.Count && i != nitem; i++)
			{
				if (i != nSelectedItem || rcClient.Height <= 0)
				{
					result.Y += result.Height;
				}
				else
				{
					result.Y = rcClient.Bottom;
				}
				result.Height = nItemHeight;
			}
		}
		else if (GroupExists(nitem))
		{
			GroupBarItem groupBarItem = activeItemsList[nitem] as GroupBarItem;
			if (!alNavPaneItems.Contains(groupBarItem))
			{
				int num = nitem;
				foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
				{
					if (activeItemsList.IndexOf(alNavPaneItem) < nitem)
					{
						num--;
					}
				}
				result = new Rectangle(boundedRectangle.Left, rcClient.Bottom + nSplitterHeight + nItemHeight * num, boundedRectangle.Width, nItemHeight);
			}
			else
			{
				int num2 = alNavPaneItems.Count - alNavPaneItems.IndexOf(groupBarItem);
				result = GetDropDownButtonRectangle();
				if (GetIsMirrored())
				{
					int num3 = (ShowChevron ? result.Width : 0);
					result.X += num3 + (num2 - 1) * nNavigationButtonWidth;
				}
				else
				{
					int num4 = (ShowChevron ? result.X : boundedRectangle.Right);
					result.X = num4 - num2 * nNavigationButtonWidth;
				}
				result.Width = nNavigationButtonWidth;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected void SetScrollButtonState(bool bupscroll, ButtonsState state)
	{
		eButtonsState = state;
		if (bupscroll)
		{
			Invalidate(rcScrollUp);
		}
		else
		{
			Invalidate(rcScrollDown);
		}
		Update();
	}

	[DocumentationExclude]
	protected bool IsUpScrollButtonEnabled()
	{
		if (activeItemsList.Count == 0 || nSelectedItem < 0)
		{
			return false;
		}
		Control client = (activeItemsList[nSelectedItem] as GroupBarItem).Client;
		if (client == null || !(client is IIntegratedScrollClient))
		{
			return false;
		}
		IIntegratedScrollClient integratedScrollClient = client as IIntegratedScrollClient;
		return integratedScrollClient.IsUpScrollButtonEnabled();
	}

	[DocumentationExclude]
	protected bool IsDownScrollButtonEnabled()
	{
		if (activeItemsList.Count == 0 || nSelectedItem < 0)
		{
			return false;
		}
		Control client = (activeItemsList[nSelectedItem] as GroupBarItem).Client;
		if (client == null || !(client is IIntegratedScrollClient))
		{
			return false;
		}
		IIntegratedScrollClient integratedScrollClient = client as IIntegratedScrollClient;
		return integratedScrollClient.IsDownScrollButtonEnabled();
	}

	[DocumentationExclude]
	internal bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	[DocumentationExclude]
	protected void DoScroll(bool bupscrllbttn)
	{
		if (!tmrScrolling.Enabled)
		{
			tmrScrolling.Start();
			eInScroll = (bupscrllbttn ? ButtonsState.ScrollUpPushed : ButtonsState.ScrollDownPushed);
		}
		Control client = (activeItemsList[nSelectedItem] as GroupBarItem).Client;
		if (client != null && client is IIntegratedScrollClient)
		{
			IIntegratedScrollClient integratedScrollClient = client as IIntegratedScrollClient;
			if (bupscrllbttn)
			{
				integratedScrollClient.UpScrollButtonPressed();
			}
			else
			{
				integratedScrollClient.DownScrollButtonPressed();
			}
		}
	}

	void IIntegratedScrollContainer.InvalidateUpScrollButton()
	{
		if (bIntegratedScrolling)
		{
			Invalidate(rcScrollUp, invalidateChildren: false);
		}
	}

	void IIntegratedScrollContainer.InvalidateDownScrollButton()
	{
		if (bIntegratedScrolling)
		{
			Invalidate(rcScrollDown, invalidateChildren: false);
		}
	}

	bool IIntegratedScrollContainer.HandleScrollButtonDown(Point pt)
	{
		if (rcScrollUp.Contains(pt) && IsUpScrollButtonEnabled() && (activeItemsList[nSelectedItem] as GroupBarItem).Enabled)
		{
			SetScrollButtonState(bupscroll: true, ButtonsState.ScrollUpPushed);
			DoScroll(bupscrllbttn: true);
			return true;
		}
		if (rcScrollDown.Contains(pt) && IsDownScrollButtonEnabled() && (activeItemsList[nSelectedItem] as GroupBarItem).Enabled)
		{
			SetScrollButtonState(bupscroll: false, ButtonsState.ScrollDownPushed);
			DoScroll(bupscrllbttn: false);
			return true;
		}
		return false;
	}

	bool IIntegratedScrollContainer.HandleScrollButtonUp(Point pt)
	{
		if (tmrScrolling != null && tmrScrolling.Enabled)
		{
			tmrScrolling.Stop();
			eInScroll = ButtonsState.None;
		}
		if (eButtonsState == ButtonsState.ScrollUpPushed)
		{
			if (rcScrollUp.Contains(pt))
			{
				SetScrollButtonState(bupscroll: true, ButtonsState.None);
			}
			return true;
		}
		if (eButtonsState == ButtonsState.ScrollDownPushed)
		{
			if (rcScrollDown.Contains(pt))
			{
				SetScrollButtonState(bupscroll: false, ButtonsState.None);
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected Rectangle CalcTextRect(Graphics gph, GroupBarItem group, Rectangle rcbar)
	{
		int num = 5;
		Rectangle rctext = rcbar;
		TextFormatFlags flags = (m_bDrawingHeader ? HeaderTextFormat : ItemTextFormat);
		int num2 = rcbar.Width;
		if (num2 <= 0)
		{
			group.IsTextVisible = false;
		}
		else
		{
			group.IsTextVisible = true;
		}
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		bool largeImageMode = group.LargeImageMode;
		if ((group.Image != null && largeImageMode) || (group.Icon != null && !largeImageMode))
		{
			Size size = (largeImageMode ? group.Image.Size : group.Icon.Size);
			num3 = size.Width;
			num4 = size.Height;
			if (!largeImageMode)
			{
				num4 = rcbar.Height - 4;
				float num6 = (float)num4 / (float)size.Height;
				num3 = (int)(num6 * (float)size.Width);
			}
			num5 = (m_bDrawingHeader ? (TextRenderer.MeasureText(group.Text, hdrFont, rcbar.Size, flags).Height + num4) : (TextRenderer.MeasureText(group.Text, group.Font, rcbar.Size, flags).Height + num4));
			if (!group.YChanged && num5 >= rcbar.Height)
			{
				num2 = rcbar.Width - num3 - group.Padding;
			}
			if (num2 <= 0)
			{
				group.IsTextVisible = false;
			}
			else
			{
				group.IsTextVisible = true;
			}
		}
		Size empty = Size.Empty;
		empty = (m_bDrawingHeader ? TextRenderer.MeasureText(group.Text, hdrFont, rcbar.Size, flags) : TextRenderer.MeasureText(group.Text, group.Font, rcbar.Size, flags));
		AppendAlignment(rcbar, group, empty.Width, num3, empty, num4, ref rctext);
		rctext.Width += num;
		return rctext;
	}

	private Rectangle AppendAlignment(Rectangle rcbar, GroupBarItem group, int nTextWidth, int ImageWidth, SizeF szlabel, int ImageHeight, ref Rectangle rctext)
	{
		bool flag = nTextWidth + ImageWidth + group.Padding > rcbar.Width && szlabel.Height + (float)ImageHeight < (float)rcbar.Height && group.IsTextVisible;
		bool flag2 = (group.LargeImageMode ? (group.Image == null) : (group.Icon == null));
		switch (nAlignment)
		{
		case TextAlignment.Left:
			rctext.X = rcbar.X + 4 + group.Padding;
			if (!flag2)
			{
				if (flag)
				{
					rctext.Y += ImageHeight / 2;
					group.YChanged = true;
				}
				else
				{
					rctext.X += ImageWidth;
					group.YChanged = false;
				}
			}
			break;
		case TextAlignment.Center:
			rctext.X = rcbar.X + (rcbar.Width - nTextWidth + group.Padding) / 2;
			if (!flag2)
			{
				if (flag)
				{
					rctext.Y += ImageHeight / 2;
					group.YChanged = true;
				}
				else
				{
					rctext.X += ImageWidth / 2;
					group.YChanged = false;
				}
			}
			break;
		case TextAlignment.Right:
			rctext.X = rcbar.X + (rcbar.Width - nTextWidth);
			if (flag2)
			{
				break;
			}
			if (flag)
			{
				rctext.Y += ImageHeight / 2;
				group.YChanged = true;
				break;
			}
			if (rctext.X < 0)
			{
				rctext.X = rcbar.X;
			}
			group.YChanged = false;
			break;
		}
		if (group.IsTextVisible)
		{
			rctext.Width = nTextWidth;
		}
		if (GetIsMirrored())
		{
			int num = rctext.Left - rcbar.Left;
			rctext.X = rcbar.Right - (num + rctext.Width);
		}
		return rctext;
	}

	[DocumentationExclude]
	protected void ScrollTimerEventHandler(object obj, EventArgs args)
	{
		if (eButtonsState == ButtonsState.ScrollUpPushed)
		{
			DoScroll(bupscrllbttn: true);
		}
		else if (eButtonsState == ButtonsState.ScrollDownPushed)
		{
			DoScroll(bupscrllbttn: false);
		}
	}

	[DocumentationExclude]
	protected internal void RecalculateGroupBarLayout()
	{
		activeItemsList.Clear();
		rcClient = Rectangle.Empty;
		Rectangle boundedRectangle = GetBoundedRectangle();
		foreach (GroupBarItem cllnGroupBarItem in cllnGroupBarItems)
		{
			if (!base.DesignMode)
			{
				if (cllnGroupBarItem.Visible)
				{
					activeItemsList.Add(cllnGroupBarItem);
				}
			}
			else
			{
				activeItemsList.Add(cllnGroupBarItem);
			}
		}
		if (!bStackedMode)
		{
			rcClient = new Rectangle(boundedRectangle.Left, boundedRectangle.Top, boundedRectangle.Width, boundedRectangle.Height);
			for (int i = 0; i < activeItemsList.Count; i++)
			{
				rcClient.Y += nItemHeight;
				if (i == nSelectedItem)
				{
					break;
				}
			}
			if (!bIntegratedScrolling)
			{
				rcClient.Height = boundedRectangle.Height - activeItemsList.Count * nItemHeight;
			}
			else
			{
				rcClient.Width--;
				if (nSelectedItem == activeItemsList.Count - 1)
				{
					rcClient.Height = boundedRectangle.Height - (activeItemsList.Count + 1) * nItemHeight;
				}
				else
				{
					rcClient.Height = boundedRectangle.Height - activeItemsList.Count * nItemHeight;
				}
			}
		}
		else
		{
			foreach (GroupBarItem activeItems in activeItemsList)
			{
				if (activeItems.InNavigationPane)
				{
					if (alNavPaneItems.Contains(activeItems))
					{
						continue;
					}
					int num = 0;
					foreach (GroupBarItem alNavPaneItem in alNavPaneItems)
					{
						if (activeItemsList.IndexOf(alNavPaneItem) <= activeItemsList.IndexOf(activeItems))
						{
							num++;
							continue;
						}
						break;
					}
					alNavPaneItems.Insert(num, activeItems);
				}
				else if (alNavPaneItems.Contains(activeItems))
				{
					alNavPaneItems.Remove(activeItems);
				}
			}
			int num2 = nHeaderHeight + nSplitterHeight + nItemHeight * (activeItemsList.Count - alNavPaneItems.Count) + nNavigationPaneHeight;
			rcClient = new Rectangle(boundedRectangle.Left, boundedRectangle.Top + nHeaderHeight, boundedRectangle.Width, boundedRectangle.Height - num2);
		}
		if (bDrawClientBorder)
		{
			rcClient.Inflate(-1, -1);
		}
	}

	[DocumentationExclude]
	protected internal void SetActiveClientBounds()
	{
		if (!GroupExists(nSelectedItem))
		{
			return;
		}
		GroupBarItem groupBarItem = activeItemsList[nSelectedItem] as GroupBarItem;
		foreach (GroupBarItem activeItems in activeItemsList)
		{
			if (activeItems != groupBarItem && activeItems.Client != null && activeItems.Client.Visible)
			{
				if (!Focused)
				{
					Focus();
				}
				activeItems.Client.Visible = false;
			}
		}
		if (groupBarItem.Client != null)
		{
			groupBarItem.Client.BringToFront();
			groupBarItem.Client.Visible = !Collapsed;
			groupBarItem.Client.Bounds = new Rectangle(rcClient.Left, rcClient.Top, rcClient.Width, rcClient.Height);
		}
	}

	protected override void Dispose(bool bdispose)
	{
		if (bdispose)
		{
			if (!base.DesignMode && cllnGroupBarItems.Count > 0)
			{
				GroupBarItem[] array = new GroupBarItem[cllnGroupBarItems.Count];
				cllnGroupBarItems.CopyTo(array, 0);
				cllnGroupBarItems.Clear();
				GroupBarItem[] array2 = array;
				foreach (GroupBarItem groupBarItem in array2)
				{
					groupBarItem.Dispose();
				}
			}
			if (tdButton != null)
			{
				tdButton.Dispose();
				tdButton = null;
			}
			if (tdScrollBar != null)
			{
				tdScrollBar.Dispose();
				tdScrollBar = null;
			}
			if (compToolTip != null)
			{
				compToolTip.Dispose();
				compToolTip = null;
			}
			if (m_itemPopup != null)
			{
				m_itemPopup.OpenedChanged -= ItemPopupOpenedChanged;
				m_itemPopup.BeforeClose -= ItemPopupBeforeClose;
				m_itemPopup.Dispose();
				m_itemPopup = null;
			}
			if (m_ilNavMenu != null)
			{
				m_ilNavMenu.Dispose();
				m_ilNavMenu = null;
			}
		}
		base.Dispose(bdispose);
	}

	[DocumentationExclude]
	protected internal GroupBarItemAccessibleObject CreateGroupBarItemAccessibilityInstance(int index)
	{
		return new GroupBarItemAccessibleObject(activeItemsList[index] as GroupBarItem);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new GroupBarControlAccessibleObject(this);
	}

	[DocumentationExclude]
	protected internal Rectangle GetNavPaneRectangle()
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		return new Rectangle(boundedRectangle.Left, boundedRectangle.Bottom - 1 - nNavigationPaneHeight, boundedRectangle.Width, nNavigationPaneHeight);
	}

	[DocumentationExclude]
	public Rectangle GetDropDownButtonRectangle()
	{
		Rectangle boundedRectangle = GetBoundedRectangle();
		boundedRectangle.Y = boundedRectangle.Bottom - nNavigationPaneHeight;
		boundedRectangle.Height = nNavigationPaneHeight;
		return new Rectangle(GetIsMirrored() ? boundedRectangle.Left : (boundedRectangle.Right - nDropdownButtonWidth), boundedRectangle.Top, nDropdownButtonWidth, boundedRectangle.Height);
	}

	[DocumentationExclude]
	protected internal void CorrectRectForScrollThumbWidth(ref Rectangle rRect)
	{
		rRect.Width -= nScrollThumbWidth;
		if (GetIsMirrored())
		{
			rRect.X += nScrollThumbWidth;
		}
	}

	public void BeginInit()
	{
		m_bInitializing = true;
	}

	public void EndInit()
	{
		m_bInitializing = false;
		int nExpandedWidth = m_nExpandedWidth;
		Collapsed = m_bCollapsedInitValue;
		if (nExpandedWidth > 0)
		{
			m_nExpandedWidth = nExpandedWidth;
		}
	}

	protected void ResetCollapsedText()
	{
		CollapsedText = c_sDefaultCollapsedText;
	}

	protected bool ShouldSerializeCollapsedText()
	{
		return CollapsedText != c_sDefaultCollapsedText;
	}

	protected void ResetCollapseImage()
	{
		CollapseImage = s_defaultCollapseImage;
	}

	protected bool ShouldSerializeCollapseImage()
	{
		return CollapseImage != s_defaultCollapseImage;
	}

	private void InvalidateCollapseButton()
	{
		if (AllowCollapse && activeItemsList.Count > 0)
		{
			Invalidate(CollapseButtonBounds);
		}
	}

	protected void ResetExpandImage()
	{
		ExpandImage = s_defaultExpandImage;
	}

	protected bool ShouldSerializeExpandImage()
	{
		return ExpandImage != s_defaultExpandImage;
	}

	protected void ResetMinimizeButtonToolTip()
	{
		MinimizeButtonToolTip = s_sMinimizeButtonToolTip;
	}

	protected bool ShouldSerializeMinimizeButtonToolTip()
	{
		return MinimizeButtonToolTip != s_sMinimizeButtonToolTip;
	}

	protected bool ShouldSerializeExpandButtonToolTip()
	{
		return ExpandButtonToolTip != s_sExpandButtonToolTip;
	}

	protected void ResetExpandButtonToolTip()
	{
		ExpandButtonToolTip = s_sExpandButtonToolTip;
	}

	public void ResetGroupBarDropDownToolTip()
	{
		GroupBarDropDownToolTip = s_sDropDownToolTip;
	}

	protected bool ShouldSerializeGroupBarDropDownToolTip()
	{
		return GroupBarDropDownToolTip != s_sDropDownToolTip;
	}

	protected void ResetNavigationPaneTooltip()
	{
		NavigationPaneTooltip = s_sNavigationPaneTooltip;
	}

	protected bool ShouldSerializeNavigationPaneTooltip()
	{
		return NavigationPaneTooltip != s_sNavigationPaneTooltip;
	}

	private bool OnStateChanging()
	{
		bool result = true;
		if (this.StateChanging != null)
		{
			CancelEventArgs e = new CancelEventArgs();
			this.StateChanging(this, e);
			result = !e.Cancel;
		}
		return result;
	}

	private void OnStateChanged()
	{
		if (Collapsed)
		{
			m_nExpandedWidth = base.Width;
			base.Width = m_nCollapsedWidth;
		}
		else
		{
			base.Width = m_nExpandedWidth;
		}
		Control selectedItemClient = SelectedItemClient;
		if (selectedItemClient != null)
		{
			selectedItemClient.Visible = !Collapsed;
		}
		if (this.StateChanged != null)
		{
			this.StateChanged(this, EventArgs.Empty);
		}
	}

	private void DrawCollapsedClientArea(Graphics gph, bool bIsMirrored, Color bordercolor)
	{
		DrawCollapsedClientAreaBackground(gph);
		if (m_collapsedClientAreaState == ButtonsState.None)
		{
			Rectangle rcheader = rcClient;
			rcheader.Height--;
			rcheader.Y++;
			DrawHeaderLines(gph, bIsMirrored, rcheader);
		}
		using (Pen pen = new Pen(bordercolor))
		{
			gph.DrawLine(pen, rcClient.Left, rcClient.Top, rcClient.Right, rcClient.Top);
		}
		DrawCollapsedClientAreaText(gph, bIsMirrored);
	}

	private void DrawCollapsedClientAreaBackground(Graphics gph)
	{
		Color color;
		if (ItemPopupOpened)
		{
			color = Office2007Colors.Default.FloatHighlightButtonBorderColor;
		}
		else
		{
			switch (m_collapsedClientAreaState)
			{
			default:
				return;
			case ButtonsState.None:
				color = ClientAreaBackground;
				break;
			case ButtonsState.DropDownButtonHot:
				color = Office2007Colors.Default.FloatHighlightButtonColor;
				break;
			case ButtonsState.DropDownButtonPushed:
				color = Office2007Colors.Default.FloatPressCloseButtonColor;
				break;
			}
		}
		using Brush brush = new SolidBrush(color);
		gph.FillRectangle(brush, rcClient);
	}

	private void DrawCollapsedClientAreaText(Graphics gph, bool bIsMirrored)
	{
		Color color = ((VisualStyle != VisualStyle.Office2007) ? HeaderForeColor : m_office2007ColorTable.XPTaskBarBoxForeColor);
		using Font font = new Font("Segoe UI", 12f, FontStyle.Bold);
		using Brush br = new SolidBrush(color);
		RotatePaint.DrawRotatedString(gph, CollapsedText, font, br, rcClient, CollapsedTextSF, (!bIsMirrored) ? 180 : 0);
	}

	private void DrawHeaderCollapsed(Graphics gph, bool bIsMirrored, Rectangle rcheader)
	{
	}

	private void DrawCollapseButton(Graphics gph, bool bIsMirrored)
	{
		DrawCollapseButtonBackground(gph, bIsMirrored);
		Image image = (Collapsed ? _ExpandImage : _CollapseImage);
		if (image != null)
		{
			Rectangle collapseButtonBounds = CollapseButtonBounds;
			Size size = image.Size;
			Size empty = Size.Empty;
			if (size.Width < collapseButtonBounds.Width)
			{
				empty.Width = (size.Width - collapseButtonBounds.Width) / 2;
			}
			if (size.Height < collapseButtonBounds.Height)
			{
				empty.Height = (size.Height - collapseButtonBounds.Height) / 2;
			}
			if (empty != Size.Empty)
			{
				collapseButtonBounds.Inflate(empty);
			}
			gph.DrawImage(image, collapseButtonBounds);
		}
	}

	private void DrawCollapseButtonBackground(Graphics gph, bool bIsMirrored)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && UseThemedDrawing)
		{
			DrawCollapseButtonThemed(gph);
			return;
		}
		switch (vStyle)
		{
		case VisualStyle.Office2003:
		case VisualStyle.Office2007:
			DrawCollapseButtonOffice200X(gph);
			break;
		default:
			DrawCollapseButtonOfficeXP(gph, bIsMirrored);
			break;
		}
	}

	private void DrawCollapseButtonOfficeXP(Graphics gph, bool bIsMirrored)
	{
		Rectangle collapseButtonBounds = CollapseButtonBounds;
		using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(gph, collapseButtonBounds, bIsMirrored);
		Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
		Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
		ButtonState buttonState = ((ButtonsState.DropDownButtonPushed == m_collapseButtonState) ? ButtonState.Pushed : ButtonState.Normal);
		ControlPaint.DrawButton(virtualGfx, virtualBounds, (ButtonState)((int)buttonState | (bFlatLook ? 16384 : 0)));
		if (m_collapseButtonState != ButtonsState.None)
		{
			Rectangle rectangle = new Rectangle(virtualBounds.Left, virtualBounds.Top, virtualBounds.Width - 1, virtualBounds.Height - 1);
			ControlPaint.DrawBorder3D(virtualGfx, rectangle, Border3DStyle.Raised, Border3DSide.Right | Border3DSide.Bottom);
		}
	}

	private void DrawCollapseButtonOffice200X(Graphics gph)
	{
		Rectangle collapseButtonBounds = CollapseButtonBounds;
		LinearGradientBrush linearGradientBrush = null;
		if (m_collapseButtonState == ButtonsState.DropDownButtonPushed)
		{
			linearGradientBrush = new LinearGradientBrush(collapseButtonBounds, Office2007Colors.Default.GroupBarHighlightColorDark, Office2007Colors.Default.GroupBarHighlightColorLight, LinearGradientMode.Vertical);
		}
		else if (m_collapseButtonState == ButtonsState.DropDownButtonHot)
		{
			linearGradientBrush = new LinearGradientBrush(collapseButtonBounds, Office2007Colors.Default.GroupBarHighlightColorLight, Office2007Colors.Default.GroupBarHighlightColorDark, LinearGradientMode.Vertical);
		}
		if (linearGradientBrush != null)
		{
			linearGradientBrush.WrapMode = WrapMode.TileFlipX;
			gph.FillRectangle(linearGradientBrush, collapseButtonBounds);
			linearGradientBrush.Dispose();
		}
	}

	private void DrawCollapseButtonThemed(Graphics gph)
	{
		Rectangle collapseButtonBounds = CollapseButtonBounds;
		switch (m_collapseButtonState)
		{
		case ButtonsState.DropDownButtonHot:
			tdButton.DrawThemeBackground(gph, 1, 2, collapseButtonBounds);
			break;
		case ButtonsState.DropDownButtonPushed:
			tdButton.DrawThemeBackground(gph, 1, 3, collapseButtonBounds);
			break;
		default:
			tdButton.DrawThemeBackground(gph, 1, 1, collapseButtonBounds);
			break;
		}
	}

	private void HandleCollapsedClientAreaClick()
	{
		ShowItemPopup();
	}

	private Rectangle GetPopupBounds(GroupBarItem item)
	{
		int num = 10;
		if (m_nItemPopupHeigth <= 0)
		{
			m_nItemPopupHeigth = rcClient.Height;
		}
		Size popupSize = GetPopupSize(item);
		popupSize.Height += num;
		if (ShowPopupGripper)
		{
			popupSize.Height += 9;
		}
		popupSize.Width += num;
		Point location = base.Location;
		location = PointToScreen(Point.Empty);
		if (RightToLeft != RightToLeft.Yes)
		{
			location.Offset(base.Width - 1, HeaderHeight + 1);
		}
		else
		{
			location.Offset(1 - popupSize.Width, HeaderHeight + 1);
		}
		m_bPopupLocationFlippedX = RightToLeft == RightToLeft.Yes;
		m_bPopupLocationFlippedY = false;
		Rectangle result = new Rectangle(location, popupSize);
		Rectangle workingArea = Screen.GetWorkingArea(this);
		result.Intersect(workingArea);
		if (result.Width < 15)
		{
			int num2 = popupSize.Width + base.Width;
			if (RightToLeft != RightToLeft.Yes)
			{
				location.X -= num2;
				m_bPopupLocationFlippedX = true;
			}
			else
			{
				location.X += num2;
				m_bPopupLocationFlippedX = false;
			}
			result = new Rectangle(location, popupSize);
		}
		result.Intersect(workingArea);
		if (result.Height < 15)
		{
			location.Y -= popupSize.Height;
			m_bPopupLocationFlippedY = true;
			result = new Rectangle(location, popupSize);
		}
		result.Intersect(workingArea);
		return result;
	}

	private Size GetPopupSize(GroupBarItem item)
	{
		if (m_htPopupSize != null && m_htPopupSize.Contains(item))
		{
			return (Size)m_htPopupSize[item];
		}
		if (PopupClientSize != Size.Empty)
		{
			return PopupClientSize;
		}
		return new Size(m_nExpandedWidth, m_nItemPopupHeigth);
	}

	private void ShowItemPopup()
	{
		ShowItemPopup(null);
	}

	public void ShowItemPopup(GroupBarItem barItem)
	{
		if (base.DesignMode || SelectedItemClient == null)
		{
			HidePopup(barItem);
			return;
		}
		if (barItem != null && ItemPopupOpened)
		{
			HideItemClient(barItem);
		}
		GroupBarItem selectedGroupBarItem = SelectedGroupBarItem;
		if (selectedGroupBarItem == null)
		{
			return;
		}
		if (!ItemPopupOpened)
		{
			BeforePopupEventArgs e = OnBeforePopup(selectedGroupBarItem);
			if (!e.Cancel)
			{
				ItemPopup.Show(bShow: true, e);
			}
		}
		else if (barItem != null)
		{
			TryShowItemClient(selectedGroupBarItem);
		}
		else
		{
			ItemPopup.Hide();
		}
	}

	private void HidePopup(GroupBarItem prevSelected)
	{
		if (ItemPopupOpened)
		{
			if (prevSelected != null)
			{
				HideItemClient(prevSelected);
			}
			ItemPopup.Hide();
		}
	}

	public void HidePopup()
	{
		HidePopup(null);
	}

	private void TryShowItemClient(GroupBarItem item)
	{
		BeforePopupEventArgs e = OnBeforePopup(item);
		if (!e.Cancel)
		{
			ShowItemClient(item, e.PopupBounds);
		}
	}

	private BeforePopupEventArgs OnBeforePopup(GroupBarItem item)
	{
		Rectangle popupBounds = GetPopupBounds(item);
		BeforePopupEventArgs e = new BeforePopupEventArgs(item, popupBounds, m_bPopupLocationFlippedX, m_bPopupLocationFlippedY);
		if (this.BeforePopup != null)
		{
			this.BeforePopup(this, e);
		}
		return e;
	}

	private void HandleCollapseButtonClick()
	{
		Collapsed = !Collapsed;
	}

	private void ItemPopupOpenedChanged(object sender, EventArgs e)
	{
		GroupBarItem selItem = SelItem;
		if (ItemPopupOpened)
		{
			ShowItemClient(selItem, Rectangle.Empty);
		}
		else
		{
			HideItemClient(selItem);
			StorePopupSize(selItem);
		}
		Invalidate(rcClient);
	}

	private void StorePopupSize(GroupBarItem item)
	{
		if (m_htPopupSize == null)
		{
			m_htPopupSize = new Hashtable();
		}
		if (!ItemPopup.ClientSize.IsEmpty)
		{
			m_htPopupSize[item] = ItemPopup.ClientSize;
		}
	}

	private void HideItemClient(GroupBarItem item)
	{
		if (ItemPopupOpened)
		{
			StorePopupSize(item);
		}
		Control client = item.Client;
		if (client != null)
		{
			client.Visible = false;
			client.Dock = DockStyle.None;
			client.Parent = this;
		}
	}

	private void ShowItemClient(GroupBarItem item, Rectangle popupBounds)
	{
		Control client = item.Client;
		if (client != null)
		{
			client.Parent = ItemPopup;
			client.Dock = DockStyle.Fill;
			client.Visible = true;
			ItemPopup.Bounds = ((!popupBounds.IsEmpty) ? popupBounds : GetPopupBounds(item));
		}
	}

	private void ItemPopupBeforeClose(object sender, MouseClickCancelEventArgs e)
	{
		if (e.MouseClickPoint != Point.Empty)
		{
			Point pt = PointToClient(e.MouseClickPoint);
			if (ItemPopupOpened)
			{
				e.Cancel = rcClient.Contains(pt);
				if (!e.Cancel)
				{
					for (int i = 0; i < activeItemsList.Count; i++)
					{
						Rectangle rRect = GetGroupBarItemBounds(i);
						if (bIntegratedScrolling && (i == nSelectedItem || i == nSelectedItem + 1))
						{
							CorrectRectForScrollThumbWidth(ref rRect);
						}
						if (ItemPopup.ContainsFocus)
						{
							e.Cancel = !PopupAutoClose;
							break;
						}
					}
				}
			}
		}
		if (!e.Cancel)
		{
			GroupBarItem selItem = SelItem;
			StorePopupSize(selItem);
			Size popupSize = GetPopupSize(selItem);
			m_nExpandedWidth = popupSize.Width;
			m_nItemPopupHeigth = popupSize.Height;
			HideItemClient(SelItem);
		}
	}

	private void InitCollapsedNavMenu(IContextMenuProvider menu)
	{
		ArrayList arrayList = alNavPaneItems;
		if (arrayList.Count > 0)
		{
			AddContextMenuItems(menu, arrayList, null, ref m_ilNavMenu, bAddSeparator: true);
		}
	}

	private void AddContextMenuItems(IContextMenuProvider menu, IList items, string parent, ref ImageList ilNavMenu, bool bAddSeparator)
	{
		if (ilNavMenu == null)
		{
			ilNavMenu = new ImageList();
		}
		else
		{
			ilNavMenu.Images.Clear();
		}
		ImageList.ImageCollection images = ilNavMenu.Images;
		bool flag = false;
		foreach (GroupBarItem item in items)
		{
			Image image = null;
			if (item.LargeImageMode)
			{
				image = item.Image;
			}
			else if (item.Icon != null)
			{
				image = ImageListAdv.IconToImageAlphaCorrect(item.Icon);
			}
			if (image != null)
			{
				images.Add(image);
			}
			string text = item.Text;
			if (parent != null && parent.Length > 0)
			{
				text = text.Insert(0, " ");
				menu.AddContextMenuItem(parent, text, NavMenuItemHandler);
				if (item.Visible)
				{
					menu.SetContextMenuItemChecked(text, bchecked: true);
				}
			}
			else
			{
				menu.AddContextMenuItem(text, NavMenuItemHandler);
			}
			if (image != null)
			{
				menu.SetContextMenuItemImage(text, ilNavMenu, images.Count - 1);
			}
			if (bAddSeparator && !flag)
			{
				menu.SetContextMenuItemSeparator(item.Text, binsertseparator: true);
				flag = true;
			}
		}
	}

	private void InitAddRemoveNavMenu(IContextMenuProvider menu)
	{
		menu.AddContextMenuItem(s_sAddRemoveButton, null);
		AddContextMenuItems(menu, GroupBarItems, s_sAddRemoveButton, ref m_ilAddRemove, bAddSeparator: false);
	}

	private void NavMenuItemHandler(object sender, EventArgs e)
	{
		ContextMenuItem contextMenuItem = (ContextMenuItem)sender;
		string contextMenuItemText = contextMenuItem.ContextMenuItemText;
		GroupBarItem groupBarItem = FindItemByText(contextMenuItemText);
		if (groupBarItem != null)
		{
			SelectItem(GroupBarItems.IndexOf(groupBarItem), nSelectedItem);
		}
		else if (contextMenuItemText.StartsWith(" "))
		{
			string sText = contextMenuItemText.Substring(1);
			groupBarItem = FindItemByText(sText);
			if (groupBarItem != null)
			{
				IContextMenuProvider contextMenuProvider = contextMenuItem.ContextMenuProvider;
				groupBarItem.Visible = !contextMenuProvider.GetContextMenuItemChecked(contextMenuItemText);
			}
		}
	}

	private GroupBarItem FindItemByText(string sText)
	{
		GroupBarItem result = null;
		foreach (GroupBarItem groupBarItem in GroupBarItems)
		{
			if (groupBarItem.Text == sText)
			{
				result = groupBarItem;
				break;
			}
		}
		return result;
	}

	private void OnCaptureChanged()
	{
		if (Collapsed)
		{
			m_collapsedClientAreaState = ButtonsState.None;
			base.Cursor = gDefaultCursor;
			Invalidate(rcClient);
		}
	}

	protected override void WndProc(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 533)
		{
			OnCaptureChanged();
		}
		base.WndProc(ref m);
	}
}
