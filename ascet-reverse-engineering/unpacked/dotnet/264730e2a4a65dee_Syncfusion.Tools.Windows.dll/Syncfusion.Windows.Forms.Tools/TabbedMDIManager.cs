using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[Designer(typeof(TabbedMDIManagerDesigner))]
[ToolboxBitmap(typeof(TabbedMDIManager), "ToolboxIcons.TabbedMDIManager.bmp")]
[Description("Represents the class that manages the tabbed mdi.")]
public class TabbedMDIManager : Component, IDisposable, IMessageFilter, IKeyboardProcHookClient, ITabbedMDIManager
{
	private delegate void UnlockMDIClientDelegate(Form mdiContainer, MdiClient mdiClient);

	private delegate void UnlockMDIChildDelegate(Form mdiChild);

	public class MdiParentNativeWindow : NativeWindow
	{
		private TabbedMDIManager m_tabbedMDIMan;

		private MdiParentNativeWindow()
		{
		}

		public MdiParentNativeWindow(TabbedMDIManager tabbedMDI)
		{
			m_tabbedMDIMan = tabbedMDI;
		}

		protected override void WndProc(ref Message m)
		{
			if (m.Msg != 531)
			{
				base.WndProc(ref m);
			}
		}
	}

	protected delegate void EndUpdateMDIClientDelegate(Form mdiContainer, MdiClient mdiClient, bool bLockContainer);

	protected delegate void EndUpdateMDIChildDelegate(Form pMDIChild);

	public class TabbedMDIManagerDesigner : ComponentDesigner
	{
		public override void Initialize(IComponent component)
		{
			base.Initialize(component);
			if (component is TabbedMDIManager tabbedMDIManager && component != null && component.Site != null && component.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				tabbedMDIManager.AttachedTo = designerHost.RootComponent as Form;
			}
		}
	}

	private const string TAB_GROUP_INFO = "TabGroupInfo";

	private const int DEF_IMAGE_SIZE = 16;

	private const string DEF_STATE_ID_FORMAT = "{0}.{1}";

	private const int MINIMUM_TABHOST_WIDTH = 5;

	private const int MINIMUM_TABHOST_HEIGHT = 5;

	private const int DEF_ITEMS_COUNT = 9;

	internal static readonly int SPLITTER_WIDTH;

	private static Hashtable m_htManagers;

	private bool themesEnabled;

	private bool allowTabGroupCustomizing;

	private Form mdiContainer;

	private TabHost activeTabHost;

	private ArrayListExt tabHostList;

	private ArrayListExt splitterHostList;

	internal MdiClient m_mdiClient;

	private ImageList imageList;

	internal int autoScaleBaseMdiClientDim;

	private int suspendCount;

	private ParentBarItem contextMenuItem;

	private ParentBarItem defaultContextMenuItem;

	private PopupMenu contextMenu;

	private PopupMenusManager popupManager;

	private bool showDragMenu;

	internal KeyboardActivationHelper keyboardActivationHelper;

	private MenuItem mdiListMenuItem;

	private bool resetLayout = true;

	private bool useIconsInTabs = true;

	private Hashtable mdiChildrenTooltips;

	private string id;

	private bool causesFormValidation;

	private Color closeButtonColor = Color.Black;

	private bool m_bCloseButtonVisible = true;

	private bool m_bVisible = true;

	private bool bDisposed;

	private BarItem closeMenuItem;

	private BarItem cancelMenuItem;

	private BarItem newHorzItem;

	private BarItem newVertItem;

	private BarItem movePrevItem;

	private BarItem moveNextItem;

	private bool closeOnMiddleButtonClick;

	private bool m_bDropDownButtonVisible;

	private bool m_bNeedUpdateHostedForm = true;

	private bool m_bOldCloseItemVisibility;

	protected string m_strNewGroupName;

	private Size m_imageSize = new Size(16, 16);

	private bool m_bIsDisposing;

	private string m_strTabStyleName = TabRenderer2D.TabStyleName;

	private bool m_bShowCloseButton;

	private bool m_bShowCloseButtonForActiveTabOnly;

	private Hashtable m_htPagesToSkip = new Hashtable();

	private bool m_bShouldConsiderPageSkip;

	private bool m_bSearchFromStart;

	private ArrayList m_arrNativeWindowsToRelease = new ArrayList();

	private bool dragging;

	private Rectangle dropRect = Rectangle.Empty;

	private ArrayList mdiChildMenuList = new ArrayList();

	private Hashtable mdiChildrenByMenuItems = new Hashtable();

	private LayoutPanel m_lpPanel;

	private bool m_bHorizontalAlignment = true;

	internal bool shouldKeepImageIndex;

	private bool allowMDIClientLocking = true;

	private bool m_bIsTabbedMDIModeOn;

	private Form m_frmParent;

	public Hashtable m_htChildForms = new Hashtable();

	private MdiParentNativeWindow m_mdiContainerSubclass;

	private bool m_bShouldRaiseBeforeMDIChildEvent = true;

	private bool closed;

	private ToolStripMenuItem m_mdiListToolStripItem;

	private ArrayList m_lstMDIMenuItems = new ArrayList();

	private Form m_frmWindowsListContainer;

	[DefaultValue(true)]
	[Description("Gets or sets close button visible.")]
	public bool CloseButtonVisible
	{
		get
		{
			return m_bCloseButtonVisible;
		}
		set
		{
			if (m_bCloseButtonVisible != value)
			{
				m_bCloseButtonVisible = value;
				UpdateCloseAndDropDownButtons();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets a value indicating whether tabs should be closed on middle button click.")]
	public bool CloseOnMiddleButtonClick
	{
		get
		{
			return closeOnMiddleButtonClick;
		}
		set
		{
			if (closeOnMiddleButtonClick != value)
			{
				closeOnMiddleButtonClick = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets the visibility of the drop down button.")]
	public bool DropDownButtonVisible
	{
		get
		{
			return m_bDropDownButtonVisible;
		}
		set
		{
			if (m_bDropDownButtonVisible != value)
			{
				m_bDropDownButtonVisible = value;
				UpdateCloseAndDropDownButtons();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or sets a value indicating whether the control is displayed.")]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
				if (MdiClient != null)
				{
					MdiClient.PerformLayout();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Gets or Sets value indicating whether to update HostedForm")]
	public bool NeedUpdateHostedForm
	{
		get
		{
			return m_bNeedUpdateHostedForm;
		}
		set
		{
			if (value != m_bNeedUpdateHostedForm)
			{
				m_bNeedUpdateHostedForm = value;
				OnNeedUpdateHostedFormChanged();
			}
		}
	}

	[Description("Specifies whether or not the active child form will be validated before activating a new child form.")]
	[DefaultValue(false)]
	public bool CausesFormValidation
	{
		get
		{
			return causesFormValidation;
		}
		set
		{
			causesFormValidation = value;
		}
	}

	[Description("Represents the context menu that will be used along with the default tab context menu when the user right-clicks on a tab.")]
	public ParentBarItem ContextMenuItem
	{
		get
		{
			return contextMenuItem;
		}
		set
		{
			if (contextMenuItem != null)
			{
				contextMenuItem.Popup -= ContextMenu_Popup;
				contextMenuItem.PopupClosed -= ContextMenu_PopupClosed;
				contextMenuItem.BeforePopup -= ContextMenu_BeforePopup;
			}
			contextMenuItem = value;
			contextMenuItem.MergeItems(defaultContextMenuItem);
			if (contextMenuItem != null)
			{
				contextMenuItem.Popup += ContextMenu_Popup;
				contextMenuItem.PopupClosed += ContextMenu_PopupClosed;
				contextMenuItem.BeforePopup += ContextMenu_BeforePopup;
			}
			contextMenu.ParentBarItem = contextMenuItem;
		}
	}

	[Browsable(false)]
	[Description("Represents the mdi children of the associated mdi parent.")]
	public Form[] MdiChildren
	{
		get
		{
			if (mdiContainer == null)
			{
				return new Form[0];
			}
			ArrayList arrayList = new ArrayList();
			Form[] mdiChildren = mdiContainer.MdiChildren;
			foreach (Form form in mdiChildren)
			{
				if (!(form is SplitterHost) && !(form is TabHost))
				{
					arrayList.Add(form);
				}
			}
			Form[] array = new Form[arrayList.Count];
			for (int j = 0; j < array.Length; j++)
			{
				Form form2 = arrayList[j] as Form;
				array[j] = form2;
			}
			return array;
		}
	}

	[Description("Specifies the color of extreme right close button.")]
	[DefaultValue(typeof(Color), "Black")]
	public Color CloseButtonColor
	{
		get
		{
			return closeButtonColor;
		}
		set
		{
			closeButtonColor = value;
			MdiHostRefersh();
		}
	}

	[Description("Returns an array of TabHost instances that contains the tab control used to draw a tab group")]
	[Browsable(false)]
	public TabHost[] TabGroupHosts
	{
		get
		{
			TabHost[] array = new TabHost[tabHostList.Count];
			for (int i = 0; i < array.Length; i++)
			{
				array[i] = tabHostList[i] as TabHost;
			}
			return array;
		}
	}

	[Description("Represents the 'Close' menu item on the tab context menu.")]
	public virtual BarItem CloseItem
	{
		get
		{
			if (closeMenuItem == null)
			{
				closeMenuItem = new BarItem(SR.GetString("CloseMenuItemText"), ContextMenu_Close);
				closeMenuItem.MergeOrder = 10;
			}
			return closeMenuItem;
		}
	}

	[Description("Specifies the size of the image on tabs.")]
	public Size ImageSize
	{
		get
		{
			return m_imageSize;
		}
		set
		{
			if (value != m_imageSize)
			{
				m_imageSize = value;
				OnImageSizeChanged();
			}
		}
	}

	[TypeConverter(typeof(TabStyleConverter))]
	[Editor(typeof(TabStyleEditor), typeof(UITypeEditor))]
	[Description("Indicates whether the tabs are painted as 2D, 3D(regular), WorkbookMode or other registered tab types.")]
	[DefaultValue(typeof(TabRenderer2D))]
	[Category("Appearance")]
	public virtual Type TabStyle
	{
		get
		{
			return ReflectionHelper.GetTabTypeFromName(m_strTabStyleName);
		}
		set
		{
			m_strTabStyleName = ReflectionHelper.GetTabNameFromType(value);
			UpdateRenderers();
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates, show close button for tab only when mouse is over it.")]
	public bool ShowCloseButtonForActiveTabOnly
	{
		get
		{
			return m_bShowCloseButtonForActiveTabOnly;
		}
		set
		{
			if (value == m_bShowCloseButtonForActiveTabOnly)
			{
				return;
			}
			m_bShowCloseButtonForActiveTabOnly = value;
			foreach (TabHost tabHost in tabHostList)
			{
				tabHost.MDITabPanel.ShowCloseButtonForActiveTabOnly = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether to show close button for individual tabs.")]
	public bool ShowCloseButton
	{
		get
		{
			return m_bShowCloseButton;
		}
		set
		{
			if (value != m_bShowCloseButton)
			{
				m_bShowCloseButton = value;
				OnShowCloseButtonChanged();
			}
		}
	}

	[Description("Specifies the current mdi parent form managed.")]
	[Browsable(false)]
	public Form MdiParent => mdiContainer;

	[Description("Specifies whether to use Icons in tabs.")]
	[DefaultValue(true)]
	public bool UseIconsInTabs
	{
		get
		{
			return useIconsInTabs;
		}
		set
		{
			if (useIconsInTabs != value)
			{
				useIconsInTabs = value;
				if (MdiClient != null)
				{
					MdiClient.PerformLayout();
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether the user can drag and drop tabs(child forms) from one tab group to another.")]
	[DefaultValue(true)]
	public bool AllowTabGroupCustomizing
	{
		get
		{
			return allowTabGroupCustomizing;
		}
		set
		{
			allowTabGroupCustomizing = value;
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether the MDI Client will be locked when certain tasks are performed.")]
	[Browsable(false)]
	[DefaultValue(true)]
	public bool AllowMDIClientLocking
	{
		get
		{
			return allowMDIClientLocking;
		}
		set
		{
			allowMDIClientLocking = value;
		}
	}

	[Browsable(false)]
	[DefaultValue("")]
	[Category("ID")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string ID
	{
		get
		{
			return id;
		}
		set
		{
			id = value;
		}
	}

	[Description("Specifies whether the tabs should be drawn themed.")]
	[Category("Appearance")]
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
				UpdateRenderers();
			}
		}
	}

	[Description("Specifies the menu item to which the MDI Children list should be added.")]
	[DefaultValue(null)]
	public MenuItem MdiListMenuItem
	{
		get
		{
			return mdiListMenuItem;
		}
		set
		{
			if (mdiListMenuItem != value)
			{
				if (mdiListMenuItem != null)
				{
					DetachMdiListMenuItem(mdiListMenuItem);
				}
				mdiListMenuItem = value;
				if (mdiListMenuItem != null)
				{
					mdiListMenuItem.MdiList = false;
					AttachMdiListMenuItem(mdiListMenuItem);
				}
			}
		}
	}

	internal ArrayListExt TabGroupHostsInternal => tabHostList;

	internal ArrayListExt SplitterHostsInternal => splitterHostList;

	internal bool ShouldRaiseBeforeMDIChildEvent => m_bShouldRaiseBeforeMDIChildEvent;

	protected internal virtual BarItem CancelItem
	{
		get
		{
			if (cancelMenuItem == null)
			{
				cancelMenuItem = new BarItem(SR.GetString("CancelMenuItemText"), ContextMenu_Cancel);
				cancelMenuItem.MergeOrder = 10;
			}
			return cancelMenuItem;
		}
	}

	protected internal virtual BarItem MoveNextGroupItem
	{
		get
		{
			if (moveNextItem == null)
			{
				moveNextItem = new BarItem(SR.GetString("MoveNextMenuItemText"), ContextMenu_MoveNext);
			}
			return moveNextItem;
		}
	}

	protected internal virtual BarItem MovePrevGroupItem
	{
		get
		{
			if (movePrevItem == null)
			{
				movePrevItem = new BarItem(SR.GetString("MovePrevMenuItemText"), ContextMenu_MovePrev);
			}
			return movePrevItem;
		}
	}

	protected internal virtual BarItem NewHorzGroupItem
	{
		get
		{
			if (newHorzItem == null)
			{
				newHorzItem = new BarItem(SR.GetString("NewHorzGroupMenuItemText"));
				newHorzItem.MergeOrder = 10;
				newHorzItem.Click += ContextMenu_NewHorz;
			}
			return newHorzItem;
		}
	}

	protected internal virtual BarItem NewVertGroupItem
	{
		get
		{
			if (newVertItem == null)
			{
				newVertItem = new BarItem(SR.GetString("NewVertGroupMenuItemText"), ContextMenu_NewVert);
				newVertItem.MergeOrder = 10;
			}
			return newVertItem;
		}
	}

	[DocumentationExclude]
	protected virtual MdiClient MdiClient
	{
		get
		{
			return m_mdiClient;
		}
		set
		{
			if (m_mdiClient == value)
			{
				return;
			}
			if (m_mdiClient != null)
			{
				if (resetLayout && m_mdiClient.IsHandleCreated)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_mdiClient.Handle, 551, IntPtr.Zero, IntPtr.Zero);
				}
				m_mdiClient.ControlAdded -= MDIChild_Added;
				m_mdiClient.ControlRemoved -= MDIChild_Removed;
				m_mdiClient.Layout -= MdiLayout;
			}
			m_mdiClient = value;
			if (m_mdiClient != null)
			{
				m_mdiClient.ControlAdded += MDIChild_Added;
				m_mdiClient.ControlRemoved += MDIChild_Removed;
				m_mdiClient.Layout += MdiLayout;
			}
		}
	}

	private TabHost ActiveTabHost
	{
		get
		{
			if (activeTabHost == null && tabHostList.Count > 0)
			{
				ActiveTabHost = (TabHost)tabHostList[0];
			}
			return activeTabHost;
		}
		set
		{
			if (activeTabHost != value)
			{
				if (activeTabHost != null && activeTabHost.MDITabPanel != null)
				{
					activeTabHost.MDITabPanel.ActiveTabFont = FontUtil.CreateFont(activeTabHost.MDITabPanel.ActiveTabFont, FontStyle.Regular);
				}
				activeTabHost = value;
				if (activeTabHost != null && activeTabHost.MDITabPanel != null)
				{
					activeTabHost.MDITabPanel.ActiveTabFont = FontUtil.CreateFont(activeTabHost.MDITabPanel.ActiveTabFont, FontStyle.Bold);
				}
			}
		}
	}

	protected bool IsOffice2003Style => TabStyle == typeof(TabRendererOffice2003);

	[DocumentationExclude]
	protected bool Dragging
	{
		get
		{
			return dragging;
		}
		set
		{
			if (dragging != value)
			{
				dragging = value;
				if (!dragging)
				{
					DropRect = Rectangle.Empty;
					Cursor.Current = Cursors.Default;
				}
			}
		}
	}

	[DocumentationExclude]
	protected Rectangle DropRect
	{
		set
		{
			if (dropRect != value)
			{
				if (dropRect != Rectangle.Empty)
				{
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Top, 5, dropRect.Height));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Top, dropRect.Width, 5));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Right - 6, dropRect.Top, 5, dropRect.Height));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Bottom - 6, dropRect.Width, 5));
				}
				dropRect = value;
				if (dropRect != Rectangle.Empty)
				{
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Top, 5, dropRect.Height));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Top, dropRect.Width, 5));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Right - 6, dropRect.Top, 5, dropRect.Height));
					DragRectDrawing.DrawDragFBRectangle(new Rectangle(dropRect.Left, dropRect.Bottom - 6, dropRect.Width, 5));
				}
			}
		}
	}

	[DefaultValue(true)]
	[Localizable(true)]
	[Description("Indicates whether to align the tab groups horizontally or vertically.")]
	public bool Horizontal
	{
		get
		{
			return m_bHorizontalAlignment;
		}
		set
		{
			if (m_bHorizontalAlignment == value)
			{
				return;
			}
			m_bHorizontalAlignment = value;
			foreach (SplitterHost splitterHost in splitterHostList)
			{
				splitterHost.Horizontal = m_bHorizontalAlignment;
			}
			if (m_lpPanel != null)
			{
				m_lpPanel.AlignmentToggle();
				m_lpPanel.DividePanelOnTwoParts();
				ResetSplitterHostsBounds();
				m_lpPanel.SetSplitterHosts();
			}
			autoScaleBaseMdiClientDim = 0;
			if (MdiClient != null)
			{
				MdiClient.PerformLayout();
			}
		}
	}

	internal LayoutPanel LayoutPanel => m_lpPanel;

	[Description("Reference on form to which we attach a TabbedMDIManager.")]
	[Browsable(true)]
	[Category("Behavior")]
	public Form AttachedTo
	{
		get
		{
			return m_frmParent;
		}
		set
		{
			if (value != null && !value.IsMdiContainer)
			{
				value.IsMdiContainer = true;
			}
			if (m_frmParent != value)
			{
				DetachFromMdiContainer(m_frmParent, setCascade: true);
				m_frmParent = value;
				AttachToMdiContainer(m_frmParent);
			}
		}
	}

	protected bool IsDisposing => m_bIsDisposing;

	[DefaultValue(null)]
	[Description("Specifies the ToolStrip menu item to which the MDI Children list should be added.")]
	public ToolStripMenuItem MdiListToolStripItem
	{
		get
		{
			return m_mdiListToolStripItem;
		}
		set
		{
			if (m_mdiListToolStripItem == value)
			{
				return;
			}
			if (m_mdiListToolStripItem != null)
			{
				RemoveMDIChildrenFromToolStripMenu(m_mdiListToolStripItem);
				m_mdiListToolStripItem.DropDownOpening -= MDIList_OnDropDownOpening;
				m_frmWindowsListContainer = null;
			}
			m_mdiListToolStripItem = value;
			if (m_mdiListToolStripItem != null)
			{
				ToolStrip currentParent = m_mdiListToolStripItem.GetCurrentParent();
				if (currentParent != null && currentParent.Parent is Form { IsMdiContainer: not false } form)
				{
					m_frmWindowsListContainer = form;
				}
				m_mdiListToolStripItem.DropDownOpening += MDIList_OnDropDownOpening;
			}
		}
	}

	[Description("Fired to let user to provide a custom tab control through custom MDITabPanel.")]
	public event TabbedMDITabControlEventHandler TabControlAdding;

	[Description("Occurs before the mdi list popupmenu appears.")]
	public event DropDownPopupEventHandler BeforeDropDownPopup;

	[Description("Occurs when tab panel is created and let user to configure the tab control's appearance and behavior.")]
	public event TabbedMDITabControlEventHandler TabControlAdded;

	[Description("Occurs after a tab control in a tab group was removed.")]
	public event TabbedMDITabControlEventHandler TabControlRemoved;

	[Description("Fired to notify that the locked mdi client area is being unlocked.")]
	public event EventHandler UnLockingMdiClient;

	[Description("Occurs before a MDI child is added to the TabbedMDIManager.")]
	public event MDIChildAddCancelEventHandler BeforeMDIChildAdded;

	static TabbedMDIManager()
	{
		SPLITTER_WIDTH = 5;
		m_htManagers = new Hashtable();
		Guid.NewGuid().ToString();
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(TabbedMDIManager).Assembly);
	}

	public TabbedMDIManager()
	{
		InitializeTabbedMDIManager();
	}

	public TabbedMDIManager(IContainer container)
	{
		container.Add(this);
		InitializeTabbedMDIManager();
	}

	private void InitializeTabbedMDIManager()
	{
		allowTabGroupCustomizing = true;
		tabHostList = new ArrayListExt();
		splitterHostList = new ArrayListExt();
		imageList = new ImageList();
		imageList.ColorDepth = ColorDepth.Depth32Bit;
		imageList.ImageSize = ImageSize;
		XPThemes.ThemeChanged += OnThemeChanged;
		ParentBarItem parentBarItem = new ParentBarItem();
		parentBarItem.Items.Add(CloseItem);
		parentBarItem.Items.Add(CancelItem);
		parentBarItem.Items.Add(NewHorzGroupItem);
		parentBarItem.BeginGroupAt(NewHorzGroupItem);
		parentBarItem.Items.Add(NewVertGroupItem);
		parentBarItem.Items.Add(MovePrevGroupItem);
		parentBarItem.Items.Add(MoveNextGroupItem);
		parentBarItem.BeginGroupAt(MovePrevGroupItem);
		defaultContextMenuItem = parentBarItem;
		contextMenu = new PopupMenu();
		popupManager = new PopupMenusManager();
		ContextMenuItem = new ParentBarItem();
		mdiChildrenTooltips = new Hashtable();
	}

	~TabbedMDIManager()
	{
		Dispose(disposing: false);
	}

	protected override void Dispose(bool disposing)
	{
		if (!disposing || bDisposed)
		{
			return;
		}
		m_bIsDisposing = true;
		MdiListMenuItem = null;
		MdiListToolStripItem = null;
		if (mdiContainer != null && mdiContainer.IsHandleCreated)
		{
			DetachFromMdiContainer(mdiContainer, setCascade: true, bLockMDIClient: false);
		}
		mdiContainer = null;
		if (popupManager != null)
		{
			popupManager.Dispose();
			popupManager = null;
		}
		if (mdiChildrenTooltips != null)
		{
			foreach (Form key in mdiChildrenTooltips.Keys)
			{
				key.Disposed -= MdiChildDisposed;
			}
			mdiChildrenTooltips.Clear();
			mdiChildrenTooltips = null;
		}
		if (mdiChildMenuList != null)
		{
			mdiChildMenuList.Clear();
			mdiChildMenuList = null;
		}
		if (tabHostList != null)
		{
			tabHostList.Clear();
			tabHostList = null;
		}
		if (splitterHostList != null)
		{
			splitterHostList.Clear();
			splitterHostList = null;
		}
		if (defaultContextMenuItem != null)
		{
			defaultContextMenuItem.Items.Dispose();
			defaultContextMenuItem.Dispose();
			defaultContextMenuItem = null;
		}
		if (contextMenu != null)
		{
			contextMenu.Dispose();
			contextMenu = null;
		}
		if (popupManager != null)
		{
			popupManager.Dispose();
			popupManager = null;
		}
		if (contextMenuItem != null)
		{
			contextMenuItem.Items.Dispose();
			contextMenuItem.Dispose();
			contextMenuItem = null;
		}
		if (imageList != null)
		{
			imageList.Images.Clear();
			imageList.Dispose();
			imageList = null;
		}
		int i = 0;
		for (int count = m_arrNativeWindowsToRelease.Count; i < count; i++)
		{
			NativeWindow nativeWindow = m_arrNativeWindowsToRelease[i] as NativeWindow;
			try
			{
				nativeWindow.ReleaseHandle();
			}
			catch (Exception)
			{
			}
		}
		XPThemes.ThemeChanged -= OnThemeChanged;
		closeMenuItem = null;
		cancelMenuItem = null;
		newHorzItem.Click -= ContextMenu_NewHorz;
		newHorzItem = null;
		newVertItem = null;
		movePrevItem = null;
		moveNextItem = null;
		bDisposed = true;
		m_bIsDisposing = false;
		base.Dispose(disposing);
	}

	public bool IsValidTabHost(TabHost tabHost)
	{
		return tabHostList.Contains(tabHost);
	}

	public void SetTooltip(Form mdiChild, string tooltip)
	{
		if (mdiChildrenTooltips[mdiChild] == null || mdiChildrenTooltips[mdiChild].ToString() != tooltip)
		{
			if (tooltip == string.Empty)
			{
				mdiChildrenTooltips.Remove(mdiChild);
				mdiChild.Disposed -= MdiChildDisposed;
			}
			else
			{
				mdiChildrenTooltips[mdiChild] = tooltip;
				mdiChild.Disposed += MdiChildDisposed;
			}
			GetTabHostFromForm(mdiChild)?.SetTooltip(mdiChild, tooltip);
		}
	}

	public string GetTooltip(Form mdiChild)
	{
		string result = string.Empty;
		if (mdiChildrenTooltips[mdiChild] != null)
		{
			result = mdiChildrenTooltips[mdiChild].ToString();
		}
		return result;
	}

	public bool CanCreateNewHorizontalGroup()
	{
		if (ActiveTabHost != null)
		{
			return CanCreateNewHorizontalGroup(ActiveTabHost.MDITabPanel);
		}
		return false;
	}

	public void CreateNewHorizontalGroup(string groupName)
	{
		if (CanCreateNewHorizontalGroup())
		{
			m_strNewGroupName = groupName;
			MoveActiveTabToNewGroup(pHorizontal: true);
			m_strNewGroupName = null;
		}
	}

	public void CreateNewHorizontalGroup()
	{
		if (CanCreateNewHorizontalGroup())
		{
			MoveActiveTabToNewGroup(pHorizontal: true);
		}
	}

	public bool CanCreateNewVerticalGroup()
	{
		if (ActiveTabHost != null)
		{
			return CanCreateNewVerticalGroup(ActiveTabHost.MDITabPanel);
		}
		return false;
	}

	public void CreateNewVerticalGroup(string groupName)
	{
		if (CanCreateNewVerticalGroup())
		{
			m_strNewGroupName = groupName;
			MoveActiveTabToNewGroup(pHorizontal: false);
			m_strNewGroupName = null;
		}
	}

	public void CreateNewVerticalGroup()
	{
		if (CanCreateNewVerticalGroup())
		{
			MoveActiveTabToNewGroup(pHorizontal: false);
		}
	}

	public bool CanMoveToPreviousTabGroup()
	{
		if (ActiveTabHost != null)
		{
			return CanMoveToPreviousTabGroup(ActiveTabHost.MDITabPanel);
		}
		return false;
	}

	public void MoveToPreviousTabGroup()
	{
		if (CanMoveToPreviousTabGroup())
		{
			MoveActiveDocToAdjTabHost(bNext: false);
		}
	}

	public bool CanMoveToNextTabGroup()
	{
		if (ActiveTabHost != null)
		{
			return CanMoveToNextTabGroup(ActiveTabHost.MDITabPanel);
		}
		return false;
	}

	public void MoveToNextTabGroup()
	{
		if (CanMoveToNextTabGroup())
		{
			MoveActiveDocToAdjTabHost(bNext: true);
		}
	}

	public TabHost GetTabHostFromForm(Form mdiChild)
	{
		foreach (TabHost tabHost in tabHostList)
		{
			if (tabHost.MDITabPanel != null && tabHost.MDITabPanel.IsHosting(mdiChild))
			{
				return tabHost;
			}
		}
		return null;
	}

	public TabPageAdv GetTabPageAdvFromForm(Form mdiChild)
	{
		foreach (TabHost tabHost in tabHostList)
		{
			if (tabHost != null && tabHost.MDITabPanel != null && tabHost.MDITabPanel.IsHosting(mdiChild))
			{
				return tabHost.MDITabPanel.GetTabPageAdvFromForm(mdiChild);
			}
		}
		return null;
	}

	public void MoveActiveDocTo(TabHost pTabHost)
	{
		MoveActiveDocTo(pTabHost, mdiContainer.ActiveMdiChild);
	}

	public void MoveActiveDocTo(TabHost pTabHost, Form pFrmChild)
	{
		if (mdiContainer.ActiveMdiChild != null)
		{
			MoveDocTo(pFrmChild, pTabHost);
		}
	}

	public void MoveDocTo(Form form, TabHost tabHost)
	{
		if (!tabHostList.Contains(tabHost))
		{
			throw new ArgumentException("The TabHost specified is not valid", "tabHost");
		}
		if (tabHost.MDITabPanel.IsHosting(form))
		{
			return;
		}
		BeginUpdate(bLockContainer: false);
		SuspendLayout();
		TabHost tabHostFromForm = GetTabHostFromForm(form);
		if (tabHostFromForm != null)
		{
			shouldKeepImageIndex = true;
			TabPageAdv tabPageAdvFromForm = tabHostFromForm.MDITabPanel.GetTabPageAdvFromForm(form);
			MDIChildTabData prevTabData = new MDIChildTabData(tabPageAdvFromForm.TabData as MDIChildTabData);
			bool tabHostRemoved = false;
			RemoveDocFromTabHost(tabHostFromForm, form, ref tabHostRemoved);
			form.SuspendLayout();
			tabHost.AddMdiChild(form, prevTabData);
			if (!tabHostRemoved)
			{
				SetNextTabHost(tabHostFromForm, tabHost);
				SetPreviousTabHost(tabHost, tabHostFromForm);
				AddTabHosts(tabHost);
			}
			shouldKeepImageIndex = false;
			form.ResumeLayout();
		}
		else
		{
			AddMdiChild(form, tabHost);
		}
		ResumeLayoutInternal();
		if (m_mdiClient != null)
		{
			m_mdiClient.PerformLayout();
		}
		EndUpdate(mdiContainer, m_mdiClient, bLockContainer: false);
	}

	private void SetNextTabHost(TabHost pCurrentHost, TabHost pNextHost)
	{
		if (pCurrentHost != null && !pCurrentHost.PreviousTabHost.Contains(pNextHost))
		{
			ArrayList nextTabHost = pCurrentHost.NextTabHost;
			if (nextTabHost.Contains(pNextHost))
			{
				nextTabHost.Remove(pNextHost);
			}
			pNextHost.NextTabHost.Clear();
			pNextHost.NextTabHost.AddRange(nextTabHost);
			nextTabHost.Insert(0, pNextHost);
		}
	}

	private void SetPreviousTabHost(TabHost pCurrentHost, TabHost pPreviousHost)
	{
		if (pCurrentHost != null && !pCurrentHost.NextTabHost.Contains(pPreviousHost))
		{
			if (pCurrentHost.PreviousTabHost.Contains(pPreviousHost))
			{
				pCurrentHost.PreviousTabHost.Remove(pPreviousHost);
			}
			pCurrentHost.PreviousTabHost.Insert(0, pPreviousHost);
		}
	}

	private void AddTabHosts(TabHost pHost)
	{
		ArrayList pNextHosts = new ArrayList();
		ArrayList pPreviousHosts = new ArrayList();
		bool bIsPrevious = true;
		if (m_lpPanel != null)
		{
			m_lpPanel.GetNextAndPreviousTabHosts(pHost, ref pPreviousHosts, ref pNextHosts, ref bIsPrevious);
		}
		foreach (TabHost item in pPreviousHosts)
		{
			AddNextTabHosts(item, pHost);
			AddPreviousTabHosts(pHost, item);
		}
		foreach (TabHost item2 in pNextHosts)
		{
			AddPreviousTabHosts(item2, pHost);
			AddNextTabHosts(pHost, item2);
		}
	}

	private void AddNextTabHosts(TabHost pHostToAdd, TabHost pCurrentHost)
	{
		if (!pHostToAdd.NextTabHost.Contains(pCurrentHost))
		{
			pHostToAdd.NextTabHost.Add(pCurrentHost);
		}
	}

	private void AddPreviousTabHosts(TabHost pHostToAdd, TabHost pCurrentHost)
	{
		if (!pHostToAdd.PreviousTabHost.Contains(pCurrentHost))
		{
			pHostToAdd.PreviousTabHost.Add(pCurrentHost);
		}
	}

	public void MakeSingleTabGroup()
	{
		if (TabGroupHosts != null && TabGroupHosts.Length != 0)
		{
			Form[] mdiChildren = MdiChildren;
			foreach (Form form in mdiChildren)
			{
				MoveDocTo(form, TabGroupHosts[0]);
			}
		}
	}

	[DocumentationExclude]
	public virtual void RemoveTabHost(TabHost tabHost)
	{
		LockLayout(bLockContainer: false);
		SuspendLayout();
		if (tabHostList.Contains(tabHost))
		{
			SplitterHost splitterHost = tabHost.SplitterHost;
			splitterHost.Close();
			splitterHost.Dispose();
			splitterHostList.Remove(splitterHost);
		}
		if (activeTabHost == tabHost)
		{
			ActiveTabHost = null;
		}
		TabbedMDITabControlEventArgs e = new TabbedMDITabControlEventArgs(tabHost.MDITabPanel);
		OnTabControlRemoving(e);
		tabHost.MDITabPanel.ImageList = null;
		tabHost.MDITabPanel.MouseMove -= Tab_MouseMove;
		tabHost.MDITabPanel.MouseUp -= Tab_MouseUp;
		popupManager.SetXPContextMenu(tabHost.MDITabPanel, null);
		DeleteTabHostFromLayoutPanel(tabHost);
		autoScaleBaseMdiClientDim = 0;
		tabHostList.Remove(tabHost);
		RemoveTabHostReferences(tabHost);
		RenameTabHosts();
		if (m_lpPanel != null)
		{
			m_lpPanel.SetUniqueNames();
		}
		if (tabHostList.Count == 0)
		{
			m_lpPanel = null;
		}
		ResumeLayoutInternal();
		tabHost.Close();
		tabHost.Dispose();
		tabHost = null;
		if (m_mdiClient != null)
		{
			m_mdiClient.PerformLayout();
		}
		UnlockLayoutAsync(bLockContainer: false);
	}

	private void RemoveTabHostReferences(TabHost pTabHost)
	{
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.NextTabHost.Remove(pTabHost);
			tabHost.PreviousTabHost.Remove(pTabHost);
		}
	}

	private void DeleteTabHostFromLayoutPanel(TabHost pTabHost)
	{
		if (m_lpPanel == null)
		{
			return;
		}
		LayoutPanel layoutPanel = pTabHost.LayoutPanel;
		if (layoutPanel == null)
		{
			return;
		}
		LayoutPanel previousPanel = layoutPanel.PreviousPanel;
		layoutPanel.FindAndDeleteTabHost(previousPanel, pTabHost);
		if (m_lpPanel.ComponentOne == null)
		{
			if (m_lpPanel.ComponentTwo is LayoutPanel)
			{
				LayoutPanel lpPanel = m_lpPanel.ComponentTwo as LayoutPanel;
				Point panelOneLocation = m_lpPanel.PanelOneLocation;
				m_lpPanel = lpPanel;
				m_lpPanel.Location = panelOneLocation;
				m_lpPanel.PreviousPanel = null;
			}
		}
		else if (m_lpPanel.ComponentTwo == null && m_lpPanel.ComponentOne is LayoutPanel)
		{
			LayoutPanel lpPanel2 = m_lpPanel.ComponentOne as LayoutPanel;
			m_lpPanel = lpPanel2;
			m_lpPanel.PreviousPanel = null;
		}
		m_lpPanel.SetNullablePanels();
		m_lpPanel.DividePanelOnTwoParts();
		m_lpPanel.SetTabHosts();
		ResetSplitterHostsBounds();
		m_lpPanel.SetSplitterHosts();
	}

	public bool CancelSplitterOperation()
	{
		bool flag = false;
		foreach (SplitterHost splitterHost in splitterHostList)
		{
			if (splitterHost != null)
			{
				flag |= splitterHost.CancelOperation();
			}
		}
		return flag;
	}

	public bool CancelOperation()
	{
		if (Dragging)
		{
			Dragging = false;
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public void SuspendLayout()
	{
		if (suspendCount < 0)
		{
			suspendCount = 0;
		}
		suspendCount++;
		if (m_mdiClient != null)
		{
			m_mdiClient.SuspendLayout();
		}
	}

	[DocumentationExclude]
	public void ResumeLayout()
	{
		ResumeLayoutInternal();
		if (suspendCount == 0)
		{
			MdiLayout(null, new LayoutEventArgs(m_mdiClient, "Bounds"));
		}
	}

	[DocumentationExclude]
	public void UpdateActiveTabHost()
	{
		UpdateActiveTabHost(mdiContainer.ActiveMdiChild);
	}

	[DocumentationExclude]
	public void UpdateActiveTabHost(Form pFrmChild)
	{
		_ = mdiContainer.ActiveMdiChild;
		if (pFrmChild == null)
		{
			return;
		}
		keyboardActivationHelper.BringToFront(pFrmChild);
		foreach (TabHost tabHost in tabHostList)
		{
			if (tabHost != null && tabHost.MDITabPanel != null && tabHost.MDITabPanel.IsHosting(pFrmChild))
			{
				ActiveTabHost = tabHost;
				break;
			}
		}
		if (ActiveTabHost != null && ActiveTabHost.MDITabPanel != null)
		{
			TabPageAdv tabPageAdvFromForm = ActiveTabHost.MDITabPanel.GetTabPageAdvFromForm(pFrmChild);
			if (tabPageAdvFromForm != null)
			{
				ActiveTabHost.MDITabPanel.SelectedTab = tabPageAdvFromForm;
			}
			else
			{
				ActiveTabHost.MDITabPanel.UpdateTabBasedOnFormOnFront();
			}
		}
		if (ActiveTabHost != null && ActiveTabHost.SplitterHost != null)
		{
			Rectangle splitterBounds = ActiveTabHost.SplitterBounds;
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(ActiveTabHost.SplitterHost.Handle, (IntPtr)1, splitterBounds.X, splitterBounds.Y, splitterBounds.Width, splitterBounds.Height, 16);
		}
	}

	public bool LoadTabGroupStates()
	{
		if (m_bIsTabbedMDIModeOn)
		{
			return LoadTabGroupStates(AppStateSerializer.GetSingleton());
		}
		return false;
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible LoadTabGroupStates(AppStateSerializer) variant, instead.", false)]
	public virtual bool LoadTabGroupStates(SerializeMode mode, object persistpath)
	{
		bool result = false;
		try
		{
			string strname = ID + ".TabGroupInfo";
			TabGroupsStateInfo tabGroupsStateInfo = null;
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				AppStateSerializer instance = AppStateSerializer.GetInstance();
				tabGroupsStateInfo = instance.DeserializeObject(strname) as TabGroupsStateInfo;
			}
			else
			{
				tabGroupsStateInfo = AppStateSerializer.DeserializeIsolatedObject(mode, persistpath, strname) as TabGroupsStateInfo;
			}
			if (tabGroupsStateInfo != null)
			{
				ApplyDeserializedState(tabGroupsStateInfo);
				result = true;
			}
		}
		catch (Exception)
		{
		}
		return result;
	}

	public virtual bool LoadTabGroupStates(AppStateSerializer serializer)
	{
		if (serializer == null)
		{
			return false;
		}
		bool result = false;
		try
		{
			string strname = ID + ".TabGroupInfo";
			TabGroupsStateInfo tabGroupsStateInfo = null;
			if (serializer.DeserializeObject(strname) is TabGroupsStateInfo tabGroupStateInfo)
			{
				ApplyDeserializedState(tabGroupStateInfo);
				result = true;
			}
		}
		catch (Exception)
		{
		}
		return result;
	}

	private void RevertNonSavedChanges(TabGroupsStateInfo stateInfo)
	{
		int tabGroupCount = stateInfo.TabGroupCount;
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < tabHostList.Count; i++)
		{
			TabHost tabHost = tabHostList[i] as TabHost;
			for (int j = 0; j < tabHost.MDITabPanel.TabPages.Count; j++)
			{
				TabPageAdv tabPageAdv = tabHost.MDITabPanel.TabPages[j];
				bool flag = false;
				for (int k = 0; k < tabGroupCount; k++)
				{
					Hashtable tabNamesOfGroup = stateInfo.GetTabNamesOfGroup(k);
					if (tabNamesOfGroup == null)
					{
						continue;
					}
					string text = null;
					foreach (UniquePageID key in tabNamesOfGroup.Keys)
					{
						text = key.TabName;
						if (tabPageAdv.Text == text)
						{
							flag = true;
							break;
						}
					}
					if (flag)
					{
						break;
					}
				}
				if (!flag)
				{
					arrayList.Add(tabPageAdv);
				}
			}
		}
		foreach (TabPageAdv item in arrayList)
		{
			MoveDocumentTo(item.Text, 0);
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	public virtual void ApplyDeserializedState(TabGroupsStateInfo tabGroupStateInfo)
	{
		if (tabGroupStateInfo == null)
		{
			return;
		}
		BeginUpdate(bLockContainer: true);
		SuspendLayout();
		RevertNonSavedChanges(tabGroupStateInfo);
		_ = tabGroupStateInfo.MdiAutoScaleBaseSizes;
		int tabGroupCount = tabGroupStateInfo.TabGroupCount;
		m_htPagesToSkip.Clear();
		m_bShouldConsiderPageSkip = true;
		for (int i = 0; i < tabGroupCount; i++)
		{
			Hashtable tabNamesOfGroup = tabGroupStateInfo.GetTabNamesOfGroup(i);
			if (tabNamesOfGroup == null)
			{
				continue;
			}
			string text = null;
			foreach (UniquePageID key in tabNamesOfGroup.Keys)
			{
				text = key.TabName;
				if (text == null)
				{
					continue;
				}
				m_bSearchFromStart = true;
				shouldKeepImageIndex = true;
				bool flag = MoveDocumentTo(text, i);
				shouldKeepImageIndex = false;
				m_bSearchFromStart = false;
				if (flag)
				{
					TabHost tabHost = tabHostList[i] as TabHost;
					string groupName = tabGroupStateInfo.GetGroupName(i);
					if (groupName != null)
					{
						SetTabHostForGroup(groupName, tabHost);
					}
				}
			}
		}
		m_htPagesToSkip.Clear();
		m_bShouldConsiderPageSkip = false;
		for (int num = tabHostList.Count - 1; num >= 0; num--)
		{
			if (tabHostList[num] == null)
			{
				tabHostList.RemoveAt(num);
			}
		}
		for (int num2 = splitterHostList.Count - 1; num2 >= 0; num2--)
		{
			if (splitterHostList[num2] == null)
			{
				splitterHostList.RemoveAt(num2);
			}
		}
		autoScaleBaseMdiClientDim = tabGroupStateInfo.MdiClientAutoScaleBaseSize;
		DeserializeLayoutPanel(tabGroupStateInfo.LayoutPanel, tabGroupStateInfo);
		ResumeLayoutInternal();
		m_mdiClient.PerformLayout();
		EndUpdate(mdiContainer, m_mdiClient, bLockContainer: true);
	}

	private static void RefineTabHostSiblings(ArrayList siblings)
	{
		for (int i = 0; i < siblings.Count; i++)
		{
			TabHost tabHost = (TabHost)siblings[i];
			if (tabHost.MDITabPanel == null)
			{
				siblings.RemoveAt(i--);
			}
		}
	}

	private void DeserializeLayoutPanel(LayoutPanel pLayoutPanel, TabGroupsStateInfo info)
	{
		m_lpPanel = pLayoutPanel;
		if (m_lpPanel != null)
		{
			SetTabHosts(null, m_lpPanel);
			if (m_lpPanel.ComponentOne == null && m_lpPanel.ComponentTwo == null)
			{
				InitializeLayoutPanel();
				return;
			}
			m_lpPanel.SetLayoutPanels();
			m_lpPanel.SetNullablePanels();
			m_lpPanel.Size = m_mdiClient.DisplayRectangle.Size;
			m_lpPanel.DividePanelOnTwoParts();
			ResetSplitterHostsBounds();
			m_lpPanel.SetSplitterHosts();
			return;
		}
		bool horizontal = info.Horizontal;
		int mdiClientAutoScaleBaseSize = info.MdiClientAutoScaleBaseSize;
		int count = tabHostList.Count;
		ArrayList mdiAutoScaleBaseSizes = info.MdiAutoScaleBaseSizes;
		TabHost tabHost = null;
		TabHost tabHost2 = null;
		m_lpPanel = new LayoutPanel();
		if (count == 1)
		{
			InitializeLayoutPanel();
		}
		else if (count > 1)
		{
			tabHost = (TabHost)tabHostList[0];
			tabHost2 = (TabHost)tabHostList[1];
			m_lpPanel = new LayoutPanel(tabHost, tabHost2, m_mdiClient.DisplayRectangle.Size, m_mdiClient.DisplayRectangle.Location, horizontal);
			m_lpPanel.Coefficient = (float)(int)mdiAutoScaleBaseSizes[0] / (float)mdiClientAutoScaleBaseSize;
			for (int i = 2; i < count; i++)
			{
				tabHost = (TabHost)tabHostList[i - 1];
				tabHost2 = (TabHost)tabHostList[i];
				LayoutPanel layoutPanel = tabHost.LayoutPanel;
				layoutPanel.DivideTabHost(tabHost, tabHost2, horizontal);
				layoutPanel.Coefficient = (float)(int)mdiAutoScaleBaseSizes[i - 1] / (float)mdiClientAutoScaleBaseSize;
			}
		}
		m_lpPanel.DividePanelOnTwoParts();
		ResetSplitterHostsBounds();
		m_lpPanel.SetSplitterHosts();
	}

	private TabHost GetFromName(string name)
	{
		foreach (TabHost tabHost in tabHostList)
		{
			if (tabHost.Name == name)
			{
				return tabHost;
			}
		}
		return null;
	}

	private void SetTabHosts(LayoutPanel pPreviousPanel, LayoutPanel pPanel)
	{
		if (pPanel.ComponentOne is LayoutPanel)
		{
			LayoutPanel pPanel2 = pPanel.ComponentOne as LayoutPanel;
			SetTabHosts(pPanel, pPanel2);
		}
		if (pPanel.ComponentTwo is LayoutPanel)
		{
			LayoutPanel pPanel3 = pPanel.ComponentTwo as LayoutPanel;
			SetTabHosts(pPanel, pPanel3);
		}
		if (pPanel.TabHostOneName != string.Empty)
		{
			pPanel.ComponentOne = GetFromName(pPanel.TabHostOneName);
		}
		if (pPanel.TabHostTwoName != string.Empty)
		{
			pPanel.ComponentTwo = GetFromName(pPanel.TabHostTwoName);
		}
		pPanel.TabHost = GetFromName(pPanel.UniqueName);
		pPanel.PreviousPanel = pPreviousPanel;
	}

	public void LockHostFormUpdate()
	{
		if (mdiContainer != null && mdiContainer.IsHandleCreated)
		{
			NativeMethodsHelper.SuspendRedrawWindow(mdiContainer.Handle);
		}
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			NativeMethodsHelper.SuspendRedrawWindow(m_mdiClient.Handle);
		}
	}

	public void LockMDIClientUpdate()
	{
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			NativeMethodsHelper.SuspendRedrawWindow(m_mdiClient.Handle);
		}
	}

	public void UnLockMDIClientUpdate()
	{
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(m_mdiClient.Handle, bRedraw: true);
		}
		if (mdiContainer != null)
		{
			mdiContainer.Update();
		}
	}

	public void UnlockHostFormUpdate()
	{
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(m_mdiClient.Handle, bRedraw: true);
		}
		if (mdiContainer != null && mdiContainer.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(mdiContainer.Handle, bRedraw: true);
		}
	}

	public void SaveTabGroupStates()
	{
		if (m_bIsTabbedMDIModeOn)
		{
			SaveTabGroupStates(AppStateSerializer.GetSingleton());
		}
	}

	[Obsolete("This method will be removed in a future version. Please use the more flexible SaveTabGroupStates(AppStateSerializer) variant, instead.", false)]
	public virtual void SaveTabGroupStates(SerializeMode mode, object persistpath)
	{
		AppStateSerializer singleton = AppStateSerializer.GetSingleton();
		try
		{
			TabGroupsStateInfo obj = null;
			if (AllowTabGroupCustomizing && tabHostList.Count > 0)
			{
				obj = new TabGroupsStateInfo(this);
			}
			string strname = ID + ".TabGroupInfo";
			if (mode == SerializeMode.IsolatedStorage && persistpath == null)
			{
				singleton.SerializeObject(strname, obj);
			}
			else
			{
				AppStateSerializer.SerializeIsolatedObject(mode, persistpath, strname, obj);
			}
		}
		catch (Exception)
		{
		}
	}

	public void ClearSavedTabGroupState()
	{
		AppStateSerializer singleton = AppStateSerializer.GetSingleton();
		if (singleton != null)
		{
			string strName = string.Format("{0}.{1}", ID, "TabGroupInfo");
			singleton.RemoveInfoForObject(strName);
		}
	}

	public virtual void SaveTabGroupStates(AppStateSerializer serializer)
	{
		try
		{
			TabGroupsStateInfo obj = null;
			if (tabHostList.Count > 0)
			{
				obj = new TabGroupsStateInfo(this);
			}
			string strname = ID + ".TabGroupInfo";
			serializer.SerializeObject(strname, obj);
		}
		catch (Exception)
		{
		}
	}

	public virtual void DetachFromMdiContainer(Form pMdiContainer, bool setCascade, bool bLockMDIClient)
	{
		if (mdiContainer != pMdiContainer || mdiContainer == null)
		{
			return;
		}
		lock (typeof(TabbedMDIManager))
		{
			m_htManagers.Remove(pMdiContainer);
		}
		if (!m_bIsDisposing)
		{
			NeedUpdateHostedForm = true;
		}
		if (bLockMDIClient)
		{
			LockLayout(bLockContainer: true);
		}
		MessageFilterEntryHelper.RemoveMessageFilter(this);
		if (mdiContainer.ContextMenu is ContextMenuPlaceHolder)
		{
			ContextMenuPlaceHolder contextMenuPlaceHolder = mdiContainer.ContextMenu as ContextMenuPlaceHolder;
			contextMenuPlaceHolder.TabbedMDIManager = null;
		}
		Cursor cursor = mdiContainer.Cursor;
		mdiContainer.Cursor = Cursors.WaitCursor;
		resetLayout = setCascade;
		if (keyboardActivationHelper != null)
		{
			keyboardActivationHelper.Dispose();
			keyboardActivationHelper = null;
		}
		SaveTabGroupStates();
		m_mdiContainerSubclass.ReleaseHandle();
		mdiContainer.Load -= MDIContainer_Load;
		mdiContainer.MdiChildActivate -= MDIChild_Activate;
		mdiContainer.RightToLeftChanged -= MDIContainer_RightToLeftChanged;
		mdiContainer.HandleCreated -= mdiContainer_HandleCreated;
		mdiContainer.FormClosed -= mdiContainer_FormClosed;
		Form[] mdiChildren = mdiContainer.MdiChildren;
		foreach (Form form in mdiChildren)
		{
			if (!(form is TabHost) && !(form is SplitterHost))
			{
				form.VisibleChanged -= MDIChild_VisibleChanged;
			}
			NotifyTabbedMDIBindingToChildren(form, attach: false);
		}
		Form form2 = mdiContainer;
		MdiClient.Layout -= MdiLayout;
		for (int num = tabHostList.Count - 1; num >= 0; num--)
		{
			RemoveTabHost((TabHost)tabHostList[num]);
		}
		form2.Cursor = cursor;
		if (bLockMDIClient)
		{
			UnlockLayoutAsync(bLockContainer: true);
		}
		if (!closed)
		{
			Form[] mdiChildren2 = MdiChildren;
			foreach (Form form3 in mdiChildren2)
			{
				form3.Focus();
			}
		}
		mdiContainer = null;
		MdiClient = null;
		imageList.Images.Clear();
		m_bIsTabbedMDIModeOn = false;
	}

	public virtual void DetachFromMdiContainer(Form mdiContainer, bool setCascade)
	{
		DetachFromMdiContainer(mdiContainer, setCascade, bLockMDIClient: true);
	}

	[DocumentationExclude]
	public virtual bool PreFilterMessage(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 260 || msg == 256)
		{
			try
			{
				Keys keyData = (Keys)(m.WParam.ToInt32() | (int)Control.ModifierKeys);
				if (ProcessCmdKey(keyData, msg == 260))
				{
					return true;
				}
			}
			catch (Exception t)
			{
				Application.OnThreadException(t);
			}
		}
		return false;
	}

	[DocumentationExclude]
	public virtual bool ProcessCmdKey(Keys keyData, bool isSysKeyDown)
	{
		if (mdiContainer == null)
		{
			return false;
		}
		bool flag = false;
		Form activeForm = Form.ActiveForm;
		if (activeForm == null)
		{
			return false;
		}
		if (activeForm != mdiContainer && activeForm.Owner != mdiContainer)
		{
			return false;
		}
		bool flag2 = false;
		switch (keyData)
		{
		case Keys.Escape:
			flag |= CancelOperation();
			flag |= CancelSplitterOperation();
			break;
		case Keys.F6 | Keys.Control:
			if (!CausesFormValidation || (MdiParent != null && MdiParent.Validate()))
			{
				CancelOperation();
				CancelSplitterOperation();
				keyboardActivationHelper.ActivateNext(shiftPressed: false);
			}
			flag = true;
			break;
		case Keys.F6 | Keys.Shift | Keys.Control:
			if (!CausesFormValidation || (MdiParent != null && MdiParent.Validate()))
			{
				CancelOperation();
				CancelSplitterOperation();
				keyboardActivationHelper.ActivateNext(shiftPressed: true);
			}
			flag = true;
			break;
		case Keys.Tab | Keys.Control:
		case Keys.Tab | Keys.Shift | Keys.Control:
			if ((!CausesFormValidation || (MdiParent != null && MdiParent.Validate())) && activeTabHost != null && activeTabHost.MDITabPanel.SwitchPagesForDialogKeys)
			{
				CancelOperation();
				CancelSplitterOperation();
				if ((keyData & Keys.Shift) > Keys.None)
				{
					keyboardActivationHelper.ActivateNext(shiftPressed: true);
				}
				else
				{
					keyboardActivationHelper.ActivateNext(shiftPressed: false);
				}
			}
			flag = true;
			break;
		default:
			if (!isSysKeyDown && (keyData & Keys.Control) > Keys.None)
			{
				keyboardActivationHelper.StartTabBasedActivation();
			}
			break;
		}
		return flag;
	}

	[DocumentationExclude]
	public virtual bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if ((Control.ModifierKeys & Keys.Control) == Keys.Control && msg.WParam == (IntPtr)115L && MdiParent != null)
		{
			if ((Control.ModifierKeys & Keys.Shift) != Keys.Shift && (Control.ModifierKeys & Keys.Alt) != Keys.Alt)
			{
				if (MdiParent.Menu != null)
				{
					MethodInfo method = typeof(MainMenu).GetMethod("ProcessCmdKey", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
					if (method != null && (bool)method.Invoke(MdiParent.Menu, new object[2] { msg, keyData }))
					{
						return true;
					}
				}
				if (MdiParent != null && (!MdiParent.CausesValidation || MdiParent.Validate()))
				{
					CloseActiveChildForm();
					keyboardActivationHelper.StartTabBasedActivation();
				}
				return true;
			}
			return true;
		}
		return false;
	}

	public static TabbedMDIManager GetManagerForForm(Form form)
	{
		return (TabbedMDIManager)m_htManagers[form];
	}

	public virtual void AttachToMdiContainer(Form pMdiContainer)
	{
		if (mdiContainer == pMdiContainer)
		{
			return;
		}
		lock (typeof(TabbedMDIManager))
		{
			m_htManagers[pMdiContainer] = this;
		}
		m_bIsTabbedMDIModeOn = true;
		Form activeMdiChild = pMdiContainer.ActiveMdiChild;
		if (activeMdiChild != null && activeMdiChild.WindowState == FormWindowState.Maximized)
		{
			pMdiContainer.LayoutMdi(System.Windows.Forms.MdiLayout.Cascade);
		}
		MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
		keyboardActivationHelper = new KeyboardActivationHelper(pMdiContainer);
		if (mdiContainer != null)
		{
			DetachFromMdiContainer(mdiContainer, setCascade: true);
		}
		if (!pMdiContainer.IsMdiContainer)
		{
			throw new Exception("You can attach only MdiContainers to TabbedMDIManager.");
		}
		mdiContainer = pMdiContainer;
		if (mdiContainer != null)
		{
			m_mdiContainerSubclass = new MdiParentNativeWindow(this);
			m_mdiContainerSubclass.AssignHandle(mdiContainer.Handle);
		}
		ContextMenuPlaceHolder contextMenuPlaceHolder = mdiContainer.ContextMenu as ContextMenuPlaceHolder;
		if (contextMenuPlaceHolder == null)
		{
			contextMenuPlaceHolder = new ContextMenuPlaceHolder();
		}
		contextMenuPlaceHolder.TabbedMDIManager = this;
		Cursor cursor = mdiContainer.Cursor;
		mdiContainer.Cursor = Cursors.WaitCursor;
		mdiContainer.MdiChildActivate += MDIChild_Activate;
		mdiContainer.RightToLeftChanged += MDIContainer_RightToLeftChanged;
		mdiContainer.Load += MDIContainer_Load;
		foreach (Control control in mdiContainer.Controls)
		{
			if (control is MdiClient)
			{
				MdiClient = (MdiClient)control;
				break;
			}
		}
		if (mdiContainer.MdiChildren.Length > 0)
		{
			BeginUpdate(bLockContainer: false);
			TabHost tabHost = (ActiveTabHost = CreateTabHostInternal(tabHostList.Count));
			Form[] mdiChildren = mdiContainer.MdiChildren;
			foreach (Form mdiChild in mdiChildren)
			{
				AddMDIChildToTabbedMDI(mdiChild);
			}
			UpdateActiveTabHost();
			PostInitTabHost(tabHost);
			LoadTabGroupStates();
			EndUpdateAsync(bLockContainer: false);
		}
		mdiContainer.HandleCreated += mdiContainer_HandleCreated;
		mdiContainer.FormClosed += mdiContainer_FormClosed;
		MdiClient.ResumeLayout(performLayout: true);
		MdiClient.PerformLayout();
		mdiContainer.Cursor = cursor;
		NeedUpdateHostedForm = false;
	}

	internal void AddMDIChildToHash(Form pMDIChild)
	{
		if (!m_htChildForms.Contains(pMDIChild))
		{
			MDIChildWindow mDIChildWindow = new MDIChildWindow(pMDIChild);
			mDIChildWindow.MessageFilter = mDIChildWindow;
			mDIChildWindow.SetIcon += mdiChildNativeWnd_SetIcon;
			m_htChildForms[pMDIChild] = mDIChildWindow;
		}
		else if (m_htChildForms[pMDIChild] is MDIChildWindow mDIChildWindow2)
		{
			mDIChildWindow2.MessageFilter = mDIChildWindow2;
		}
	}

	internal void RemoveMDIChildFromHash(Form pMDIChild, bool bIsRemoved)
	{
		if (m_htChildForms[pMDIChild] is MDIChildWindow mDIChildWindow)
		{
			mDIChildWindow.MessageFilter = null;
			mDIChildWindow.UpdateRegion(pIsDetached: true);
			if (bIsRemoved)
			{
				m_htChildForms.Remove(pMDIChild);
				mDIChildWindow.Dispose();
			}
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(pMDIChild.Handle, IntPtr.Zero, 0, 0, 0, 0, 55);
		}
	}

	private void RenameTabHosts()
	{
		string text = "TabHost_1";
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.Name = text;
			text = IDGenerator.GetNextID(text);
		}
	}

	[Obsolete]
	public virtual void SetTabGroupWeights(int[] weights)
	{
	}

	public void SetTabGroupWeights()
	{
		if (m_lpPanel != null)
		{
			m_lpPanel.SetCustomWeights();
			m_lpPanel.DividePanelOnTwoParts();
			if (m_mdiClient != null)
			{
				m_mdiClient.PerformLayout();
			}
		}
	}

	public void AdjustTabGroupWeightsEqually()
	{
		if (m_lpPanel != null)
		{
			m_lpPanel.SetEqualWeights();
			m_lpPanel.DividePanelOnTwoParts();
			if (m_mdiClient != null)
			{
				m_mdiClient.PerformLayout();
			}
		}
	}

	public void MaximizeTabGroup(TabHost tabGroupHost)
	{
		if (m_lpPanel != null)
		{
			m_lpPanel.MaximizeTabGroup(tabGroupHost, m_lpPanel);
			m_lpPanel.DividePanelOnTwoParts();
			if (m_mdiClient != null)
			{
				m_mdiClient.PerformLayout();
			}
		}
	}

	private void UpdateScrollOffset()
	{
		TabHost tabHost = ActiveTabHost;
		if (tabHost != null)
		{
			MDITabPanel mDITabPanel = tabHost.MDITabPanel;
			if (mDITabPanel != null)
			{
				tabHost.MDITabPanel.Renderer?.ValidateScrollOffset(makeSelectedTabVisible: true, invalidate: false);
			}
		}
	}

	public virtual void BeginUpdate(bool bLockContainer)
	{
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			if (bLockContainer && mdiContainer != null && mdiContainer.IsHandleCreated)
			{
				NativeMethodsHelper.SuspendRedrawWindow(mdiContainer.Handle);
			}
			NativeMethodsHelper.SuspendRedrawWindow(m_mdiClient.Handle);
		}
	}

	public virtual void EndUpdate(Form pMDIContainer, MdiClient pMDIClient, bool bLockContainer)
	{
		if (pMDIClient != null && pMDIClient.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(pMDIClient.Handle, bRedraw: true);
			if (bLockContainer && pMDIContainer != null && pMDIContainer.IsHandleCreated)
			{
				NativeMethodsHelper.ResumeRedrawWindow(pMDIContainer.Handle, bRedraw: true);
			}
		}
	}

	protected virtual void LockLayout(bool bLockContainer)
	{
		if (m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			if (bLockContainer && mdiContainer != null && mdiContainer.IsHandleCreated)
			{
				mdiContainer.SuspendLayout();
			}
			m_mdiClient.SuspendLayout();
		}
	}

	public virtual void UnlockLayout(Form pMDIContainer, MdiClient pMDIClient, bool bLockContainer)
	{
		if (pMDIClient != null && pMDIClient.IsHandleCreated)
		{
			pMDIClient.ResumeLayout(performLayout: true);
			if (bLockContainer && pMDIContainer != null && pMDIContainer.IsHandleCreated)
			{
				pMDIContainer.ResumeLayout(performLayout: true);
			}
		}
	}

	public virtual void BeginUpdateMDIChild(Form pMDIChild)
	{
		if (pMDIChild != null && pMDIChild.IsHandleCreated)
		{
			NativeMethodsHelper.SuspendRedrawWindow(pMDIChild.Handle);
		}
	}

	public virtual void EndUpdateMDIChild(Form pMDIChild)
	{
		if (pMDIChild != null && pMDIChild.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(pMDIChild.Handle, bRedraw: true);
		}
	}

	public virtual void EndUpdateAsync(bool bLockContainer)
	{
		if (mdiContainer != null && !mdiContainer.IsDisposed && mdiContainer.IsHandleCreated)
		{
			m_mdiClient.BeginInvoke(new EndUpdateMDIClientDelegate(EndUpdate), mdiContainer, m_mdiClient, bLockContainer);
		}
	}

	public virtual void UnlockLayoutAsync(bool bLockContainer)
	{
		if (mdiContainer != null && !mdiContainer.IsDisposed && mdiContainer.IsHandleCreated)
		{
			m_mdiClient.BeginInvoke(new EndUpdateMDIClientDelegate(UnlockLayout), mdiContainer, m_mdiClient, bLockContainer);
		}
	}

	public virtual void EndUpdateMDIChildAsync(Form pMDIChild)
	{
		if (pMDIChild != null && !pMDIChild.IsDisposed && pMDIChild.IsHandleCreated)
		{
			pMDIChild.BeginInvoke(new EndUpdateMDIChildDelegate(EndUpdateMDIChild), pMDIChild);
		}
	}

	protected virtual void OnTabControlAdding(TabbedMDITabControlEventArgs e)
	{
		if (this.TabControlAdding != null)
		{
			this.TabControlAdding(this, e);
		}
	}

	protected internal virtual void OnDropDownPopup(DropDownPopupEventArgs e)
	{
		if (this.BeforeDropDownPopup != null)
		{
			this.BeforeDropDownPopup(this, e);
		}
	}

	protected virtual void OnNeedUpdateHostedFormChanged()
	{
		if (mdiContainer != null)
		{
			MdiSysMenuProvider providerForForm = MdiSysMenuManager.GetProviderForForm(mdiContainer);
			if (providerForForm != null)
			{
				providerForForm.NeedUpdateHostedForm = m_bNeedUpdateHostedForm;
			}
		}
	}

	protected virtual void OnTabControlAdded(TabbedMDITabControlEventArgs e)
	{
		if (this.TabControlAdded != null)
		{
			this.TabControlAdded(this, e);
		}
	}

	protected virtual void OnTabControlRemoving(TabbedMDITabControlEventArgs e)
	{
		if (this.TabControlRemoved != null)
		{
			this.TabControlRemoved(this, e);
		}
	}

	protected virtual void OnUnLockingMdiClient(EventArgs e)
	{
		if (this.UnLockingMdiClient != null)
		{
			this.UnLockingMdiClient(this, e);
		}
	}

	[DocumentationExclude]
	protected virtual void ContextMenu_BeforePopup(object sender, CancelEventArgs e)
	{
		if (!CausesFormValidation)
		{
			return;
		}
		Control popupParentControl = contextMenu.GetPopupParentControl();
		if (popupParentControl != null)
		{
			MDITabPanel mDITabPanel = popupParentControl as MDITabPanel;
			TabHost tabHost = mDITabPanel.Parent as TabHost;
			if (ActiveTabHost != tabHost)
			{
				e.Cancel = true;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void ContextMenu_PopupClosed(object sender, EventArgs e)
	{
		CloseItem.Visible = m_bOldCloseItemVisibility;
		ParentBarItem contextMenuParentItem = (ParentBarItem)sender;
		if (showDragMenu)
		{
			return;
		}
		Control popupParentControl = contextMenu.GetPopupParentControl();
		if (popupParentControl != null && popupParentControl is MDITabPanel mDITabPanel)
		{
			Form form = (Form)mDITabPanel.SelectedTab.Tag;
			if (form is ITabbedMDIChildForm)
			{
				ITabbedMDIChildForm tabbedMDIChildForm = form as ITabbedMDIChildForm;
				tabbedMDIChildForm.OnTabContextMenuClosed(contextMenuParentItem);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void ContextMenu_Popup(object sender, EventArgs e)
	{
		ParentBarItem parentBarItem = (ParentBarItem)sender;
		MDITabPanel mDITabPanel = contextMenu.GetPopupParentControl() as MDITabPanel;
		foreach (BarItem item in parentBarItem.Items)
		{
			if (mDITabPanel == null)
			{
				item.Visible = false;
			}
			else if (item == CloseItem)
			{
				if (mDITabPanel.IsCloseButtonActive())
				{
					item.Enabled = true;
				}
				else
				{
					item.Enabled = false;
				}
				m_bOldCloseItemVisibility = item.Visible;
				if (showDragMenu)
				{
					item.Visible = false;
				}
			}
			else if (item == CancelItem)
			{
				if (showDragMenu)
				{
					item.Visible = true;
				}
				else
				{
					item.Visible = false;
				}
			}
			else if (item == NewHorzGroupItem)
			{
				item.Visible = CanCreateNewHorizontalGroup(mDITabPanel) && AllowTabGroupCustomizing;
			}
			else if (item == NewVertGroupItem)
			{
				item.Visible = CanCreateNewVerticalGroup(mDITabPanel) && AllowTabGroupCustomizing;
			}
			else if (item == MovePrevGroupItem)
			{
				item.Visible = CanMoveToPreviousTabGroup(mDITabPanel) && AllowTabGroupCustomizing;
			}
			else if (item == MoveNextGroupItem)
			{
				item.Visible = CanMoveToNextTabGroup(mDITabPanel) && AllowTabGroupCustomizing;
			}
			else if (showDragMenu)
			{
				item.Visible = false;
			}
			else
			{
				item.Visible = true;
			}
		}
		if (!showDragMenu)
		{
			Form form = (Form)ActiveTabHost.MDITabPanel.SelectedTab.Tag;
			if (form is ITabbedMDIChildForm)
			{
				ITabbedMDIChildForm tabbedMDIChildForm = form as ITabbedMDIChildForm;
				tabbedMDIChildForm.OnTabContextMenuPopup(parentBarItem);
			}
		}
	}

	[DocumentationExclude]
	protected virtual bool CanCreateNewHorizontalGroup(MDITabPanel tabPanel)
	{
		if (ActiveTabHost == null || ActiveTabHost.MDITabPanel == null || tabPanel == null)
		{
			return false;
		}
		bool flag = ((this is TabbedGroupedMDIManager) ? (tabPanel.TabPages.Count >= 1) : (tabPanel.TabPages.Count > 1));
		bool flag2 = true;
		TabPageAdv selectedTab = ActiveTabHost.MDITabPanel.SelectedTab;
		if (selectedTab.Tag is Form form)
		{
			int num = form.Height - ActiveTabHost.BottomBorderHeight - 1;
			if (tabPanel.BorderVisible)
			{
				num -= tabPanel.BorderWidth;
			}
			flag2 = tabPanel.IsVerticalAlignment || (!tabPanel.IsVerticalAlignment && num > tabPanel.Height);
		}
		if (flag && flag2)
		{
			TabPageAdv selectedTab2 = tabPanel.SelectedTab;
			if (selectedTab2 != null)
			{
				Form form2 = selectedTab2.Tag as Form;
				if (form2 is ITabbedMDIChildForm && !((ITabbedMDIChildForm)form2).AllowUserDrag)
				{
					return false;
				}
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual bool CanCreateNewVerticalGroup(MDITabPanel tabPanel)
	{
		if (ActiveTabHost == null || ActiveTabHost.MDITabPanel == null || tabPanel == null)
		{
			return false;
		}
		bool flag = ((this is TabbedGroupedMDIManager) ? (tabPanel.TabPages.Count >= 1) : (tabPanel.TabPages.Count > 1));
		bool flag2 = true;
		TabPageAdv selectedTab = ActiveTabHost.MDITabPanel.SelectedTab;
		if (selectedTab.Tag is Form form)
		{
			int num = form.Width - ActiveTabHost.BottomBorderHeight - 1;
			if (tabPanel.BorderVisible)
			{
				num -= tabPanel.BorderWidth;
			}
			flag2 = !tabPanel.IsVerticalAlignment || (tabPanel.IsVerticalAlignment && num > tabPanel.Width);
		}
		if (flag && flag2)
		{
			TabPageAdv selectedTab2 = tabPanel.SelectedTab;
			if (selectedTab2 != null)
			{
				Form form2 = selectedTab2.Tag as Form;
				if (form2 is ITabbedMDIChildForm && !((ITabbedMDIChildForm)form2).AllowUserDrag)
				{
					return false;
				}
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual bool CanMoveToPreviousTabGroup(MDITabPanel tabPanel)
	{
		TabHost tabHost = tabPanel.Parent as TabHost;
		RefineTabHostSiblings(tabHost.PreviousTabHost);
		if (tabHost != null && tabHost.PreviousTabHost.Count > 0)
		{
			TabPageAdv selectedTab = tabPanel.SelectedTab;
			if (selectedTab != null)
			{
				Form form = selectedTab.Tag as Form;
				if (form is ITabbedMDIChildForm && !((ITabbedMDIChildForm)form).AllowUserDrag)
				{
					return false;
				}
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual bool CanMoveToNextTabGroup(MDITabPanel tabPanel)
	{
		TabHost tabHost = tabPanel.Parent as TabHost;
		RefineTabHostSiblings(tabHost.NextTabHost);
		if (tabHost != null && tabHost.NextTabHost.Count > 0)
		{
			TabPageAdv selectedTab = tabPanel.SelectedTab;
			if (selectedTab != null)
			{
				Form form = selectedTab.Tag as Form;
				if (form is ITabbedMDIChildForm && !((ITabbedMDIChildForm)form).AllowUserDrag)
				{
					return false;
				}
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected TabHost GetTabHostFromTab(MDITabPanel tab)
	{
		if (tab.Parent is TabHost)
		{
			return tab.Parent as TabHost;
		}
		return null;
	}

	[DocumentationExclude]
	protected virtual void OnActiveTabToNewGroupMoved(Form mdiChild, TabHost prevHost, TabHost newHost)
	{
	}

	[DocumentationExclude]
	protected void UnLockMdiClient(Form mdiContainer, MdiClient mdiClient)
	{
		if (AllowMDIClientLocking && mdiClient != null && mdiClient.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(mdiClient.Handle, bRedraw: true);
			if (mdiContainer != null && mdiContainer.IsHandleCreated)
			{
				NativeMethodsHelper.ResumeRedrawWindow(mdiContainer.Handle, bRedraw: true);
			}
		}
	}

	[DocumentationExclude]
	protected void UnLockMdiClientAsync()
	{
		if (mdiContainer != null && !mdiContainer.IsDisposed && mdiContainer.IsHandleCreated)
		{
			m_mdiClient.BeginInvoke(new UnlockMDIClientDelegate(UnLockMdiClient), mdiContainer, m_mdiClient);
		}
	}

	[DocumentationExclude]
	protected void LockMdiClient()
	{
		if (AllowMDIClientLocking && m_mdiClient != null && m_mdiClient.IsHandleCreated)
		{
			if (mdiContainer != null && mdiContainer.IsHandleCreated)
			{
				NativeMethodsHelper.SuspendRedrawWindow(mdiContainer.Handle);
			}
			NativeMethodsHelper.SuspendRedrawWindow(m_mdiClient.Handle);
		}
	}

	[DocumentationExclude]
	protected void LockMDIChild(Form mdiChild)
	{
		if (mdiChild != null && mdiChild.IsHandleCreated)
		{
			NativeMethodsHelper.SuspendRedrawWindow(mdiChild.Handle);
		}
	}

	[DocumentationExclude]
	protected void UnlockMDIChild(Form mdiChild)
	{
		if (mdiChild != null && mdiChild.IsHandleCreated)
		{
			NativeMethodsHelper.ResumeRedrawWindow(mdiChild.Handle, bRedraw: true);
		}
	}

	[DocumentationExclude]
	protected void UnlockMDIChildAsync(Form mdiChild)
	{
		if (mdiChild != null && !mdiChild.IsDisposed && mdiChild.IsHandleCreated)
		{
			mdiChild.BeginInvoke(new UnlockMDIChildDelegate(UnlockMDIChild), mdiChild);
		}
	}

	[DocumentationExclude]
	protected void MoveActiveTabToNewGroup(bool pHorizontal)
	{
		BeginUpdate(bLockContainer: false);
		shouldKeepImageIndex = true;
		TabHost tabHost = ActiveTabHost;
		TabPageAdv selectedTab = tabHost.MDITabPanel.SelectedTab;
		MDIChildTabData prevTabData = new MDIChildTabData(selectedTab.TabData as MDIChildTabData);
		Form form = selectedTab.Tag as Form;
		form.SuspendLayout();
		tabHost.RemoveMdiChild(form, removeFromHashtable: true);
		TabHost tabHost2 = CreateTabHostInternal(tabHostList.Count);
		tabHost2.AddMdiChild(form, prevTabData);
		shouldKeepImageIndex = false;
		PostInitTabHost(tabHost2);
		SetNextTabHost(tabHost, tabHost2);
		SetPreviousTabHost(tabHost2, tabHost);
		OnActiveTabToNewGroupMoved(form, tabHost, tabHost2);
		if (m_lpPanel == null || m_lpPanel.ComponentOne == null || m_lpPanel.ComponentTwo == null)
		{
			m_lpPanel = new LayoutPanel(tabHost, tabHost2, m_mdiClient.DisplayRectangle.Size, m_mdiClient.DisplayRectangle.Location, pHorizontal);
			m_lpPanel.DividePanelOnTwoParts();
			ResetSplitterHostsBounds();
			m_lpPanel.SetSplitterHosts();
		}
		else
		{
			LayoutPanel layoutPanel = tabHost.LayoutPanel;
			if (layoutPanel != null)
			{
				layoutPanel.DivideTabHost(tabHost, tabHost2, pHorizontal);
				ResetSplitterHostsBounds();
				m_lpPanel.SetSplitterHosts();
			}
		}
		AddTabHosts(tabHost2);
		form.ResumeLayout();
		m_mdiClient.PerformLayout();
		EndUpdateAsync(bLockContainer: false);
	}

	private void ResetSplitterHostsBounds()
	{
		for (int i = 0; i < tabHostList.Count; i++)
		{
			if (tabHostList[i] is TabHost tabHost)
			{
				tabHost.SplitterBounds = Rectangle.Empty;
				if (tabHost.SplitterHost != null)
				{
					tabHost.SplitterHost.Bounds = Rectangle.Empty;
				}
			}
		}
	}

	[DocumentationExclude]
	protected Form RemoveActiveDocFromTabHost(ref bool tabsHostRemoved)
	{
		Form form = ActiveTabHost.MDITabPanel.SelectedTab.Tag as Form;
		TabHost tabHost = ActiveTabHost;
		RemoveDocFromTabHost(tabHost, form, ref tabsHostRemoved);
		return form;
	}

	[DocumentationExclude]
	protected void RemoveDocFromTabHost(TabHost tabHost, Form mdiChild, ref bool tabHostRemoved)
	{
		mdiChild.SuspendLayout();
		tabHost.RemoveMdiChild(mdiChild, removeFromHashtable: true);
		if (tabHostList.IndexOf(tabHost) == -1)
		{
			tabHostRemoved = true;
		}
		mdiChild.ResumeLayout(performLayout: false);
	}

	[DocumentationExclude]
	protected void MoveActiveDocToAdjTabHost(bool bNext)
	{
		TabHost tabHost = ActiveTabHost;
		if ((bNext || tabHost.PreviousTabHost.Count != 0) && (!bNext || tabHost.NextTabHost.Count != 0))
		{
			bool tabsHostRemoved = false;
			Form form = null;
			BeginUpdate(bLockContainer: true);
			SuspendLayout();
			shouldKeepImageIndex = true;
			TabPageAdv selectedTab = tabHost.MDITabPanel.SelectedTab;
			MDIChildTabData prevTabData = new MDIChildTabData(selectedTab.TabData as MDIChildTabData);
			form = RemoveActiveDocFromTabHost(ref tabsHostRemoved);
			form.SuspendLayout();
			TabHost tabHost2 = (bNext ? (tabHost.NextTabHost[0] as TabHost) : (tabHost.PreviousTabHost[0] as TabHost));
			tabHost2.AddMdiChild(form, prevTabData);
			shouldKeepImageIndex = false;
			OnActiveTabToNewGroupMoved(form, tabHost, tabHost2);
			if (!tabsHostRemoved)
			{
				SetNextTabHost(tabHost, tabHost2);
				SetPreviousTabHost(tabHost2, tabHost);
				AddTabHosts(tabHost2);
			}
			form.ResumeLayout();
			ResumeLayoutInternal();
			MdiClient.PerformLayout();
			EndUpdateAsync(bLockContainer: true);
		}
	}

	protected void ContextMenu_NewHorz(object sender, EventArgs e)
	{
		CreateNewHorizontalGroup();
	}

	protected void ContextMenu_Cancel(object sender, EventArgs e)
	{
	}

	protected virtual void ContextMenu_Close(object sender, EventArgs e)
	{
		CloseActiveChildForm();
	}

	protected void ContextMenu_NewVert(object sender, EventArgs e)
	{
		CreateNewVerticalGroup();
	}

	protected void ContextMenu_MovePrev(object sender, EventArgs e)
	{
		MoveActiveDocToAdjTabHost(bNext: false);
	}

	protected void ContextMenu_MoveNext(object sender, EventArgs e)
	{
		MoveActiveDocToAdjTabHost(bNext: true);
	}

	protected internal virtual void InitMDITabPanel(MDITabPanel tabPanel)
	{
		tabPanel.Padding = new Point(6, 0);
		tabPanel.ActiveTabFont = FontUtil.CreateFont(tabPanel.Font, FontStyle.Regular);
		tabPanel.Size = new Size(10, 19);
		TabbedMDITabControlEventArgs e = new TabbedMDITabControlEventArgs(tabPanel);
		OnTabControlAdded(e);
	}

	protected internal virtual MDITabPanel CreateMDITabPanel()
	{
		TabbedMDITabControlEventArgs e = new TabbedMDITabControlEventArgs(null);
		OnTabControlAdding(e);
		if (e.TabControl != null)
		{
			return e.TabControl;
		}
		return new MDITabPanel(this);
	}

	[Obsolete]
	[DocumentationExclude]
	protected virtual void LockWindowTemporarily(Control control, int interval)
	{
	}

	[DocumentationExclude]
	[Obsolete]
	protected virtual void UnLockWindows()
	{
	}

	protected virtual void OnMdiChildRemoved(Form form)
	{
		foreach (TabHost tabHost in tabHostList)
		{
			if (tabHost != null && tabHost.MDITabPanel != null && tabHost.RemoveMdiChild(form, removeFromHashtable: true))
			{
				break;
			}
		}
	}

	protected virtual void OnImageSizeChanged()
	{
		if (imageList != null)
		{
			imageList.ImageSize = m_imageSize;
		}
	}

	Form ITabbedMDIManager.GetMDIParent()
	{
		return MdiParent;
	}

	bool ITabbedMDIManager.ProcessCmdKey(ref Message msg, Keys keyData)
	{
		return ProcessCmdKey(ref msg, keyData);
	}

	protected virtual void OnShowCloseButtonChanged()
	{
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.MDITabPanel.ShowTabCloseButton = m_bShowCloseButton;
		}
	}

	[DocumentationExclude]
	protected virtual bool MoveDocumentTo(string tabName, int groupIndex)
	{
		if (tabHostList.Count == 0)
		{
			return false;
		}
		int num = ((!m_bSearchFromStart) ? (tabHostList.Count - 1) : 0);
		bool flag = true;
		while (flag)
		{
			if (tabHostList[num] is TabHost tabHost)
			{
				foreach (TabPageAdv tabPage in tabHost.MDITabPanel.TabPages)
				{
					if (!(tabPage.Text == tabName) || m_htPagesToSkip[tabPage] != null)
					{
						continue;
					}
					if (m_bShouldConsiderPageSkip)
					{
						m_htPagesToSkip[tabPage] = tabPage;
					}
					if (num != groupIndex)
					{
						Form mdiChild = tabPage.Tag as Form;
						MDIChildTabData prevTabData = new MDIChildTabData(tabPage.TabData as MDIChildTabData);
						tabHost.RemoveMdiChild(mdiChild, removeFromHashtable: true);
						bool flag2 = true;
						TabHost tabHost2;
						if (groupIndex > tabHostList.Count - 1 || tabHostList[groupIndex] == null)
						{
							tabHost2 = CreateTabHostInternal(groupIndex);
						}
						else
						{
							tabHost2 = tabHostList[groupIndex] as TabHost;
							flag2 = false;
						}
						tabHost2.AddMdiChild(mdiChild, prevTabData);
						SetNextTabHost(tabHost, tabHost2);
						SetPreviousTabHost(tabHost2, tabHost);
						AddTabHosts(tabHost);
						if (flag2)
						{
							PostInitTabHost(tabHost2);
						}
					}
					return true;
				}
			}
			if (m_bSearchFromStart)
			{
				num++;
				flag = num < tabHostList.Count;
			}
			else
			{
				num--;
				flag = num >= 0;
			}
		}
		return false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		if ((lParam & 0x80000000u) == 0)
		{
			try
			{
				Keys keys = (Keys)wParam;
				keys |= Control.ModifierKeys;
				if (ProcessCmdKey(keys, isSysKeyDown: false))
				{
					return true;
				}
			}
			catch (Exception t)
			{
				Application.OnThreadException(t);
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual void DetachMdiListMenuItem(MenuItem mdiListMenuItem)
	{
		try
		{
			mdiListMenuItem.Popup -= MdiListItemPopup;
		}
		catch (Exception)
		{
		}
		RemoveMdiListItems(mdiListMenuItem);
	}

	[DocumentationExclude]
	protected virtual void AttachMdiListMenuItem(MenuItem mdiListMenuItem)
	{
		mdiListMenuItem.Popup += MdiListItemPopup;
		AttachMdiListItems(mdiListMenuItem);
	}

	[DocumentationExclude]
	protected virtual Form[] GetMdiChildrenForMenu()
	{
		if (mdiContainer != null)
		{
			return MdiChildren;
		}
		return MdiListMenuItem.GetMainMenu().GetForm().MdiChildren;
	}

	[DocumentationExclude]
	protected virtual void UpdateMdiList()
	{
		if ((MdiListMenuItem.GetMainMenu() == null && mdiContainer == null) || !GetMdiContainer().IsMdiContainer)
		{
			return;
		}
		foreach (MenuItem mdiChildMenu in mdiChildMenuList)
		{
			mdiChildMenu.Visible = false;
			mdiChildMenu.Checked = false;
		}
		Form[] mdiChildrenForMenu = GetMdiChildrenForMenu();
		if (mdiChildrenForMenu.Length == 0)
		{
			return;
		}
		MenuItem menuItem2 = mdiChildMenuList[0] as MenuItem;
		menuItem2.Visible = true;
		int i;
		for (i = 1; i < mdiChildMenuList.Count - 1 && i <= mdiChildrenForMenu.Length; i++)
		{
			Form form = mdiChildrenForMenu[i - 1];
			string text = "&" + i + " " + form.Text;
			MenuItem menuItem3 = mdiChildMenuList[i] as MenuItem;
			menuItem3.Text = text;
			menuItem3.Visible = true;
			if (GetMdiContainer().ActiveMdiChild == form)
			{
				menuItem3.Checked = true;
			}
			mdiChildrenByMenuItems[menuItem3] = form;
		}
		i--;
		if (mdiChildrenForMenu.Length > i)
		{
			i++;
			MenuItem menuItem4 = mdiChildMenuList[i] as MenuItem;
			menuItem4.Text = "&Windows...";
			menuItem4.Visible = true;
			mdiChildrenByMenuItems[menuItem4] = GetMdiContainer();
		}
	}

	[DocumentationExclude]
	protected virtual Form GetMdiChildFromMdiListMenuItem(MenuItem item)
	{
		return mdiChildrenByMenuItems[item] as Form;
	}

	[DocumentationExclude]
	protected virtual void AttachMdiListItems(MenuItem mdiListItem)
	{
		if (mdiListMenuItem != null)
		{
			MenuItem menuItem = new MenuItem("-");
			menuItem.Visible = false;
			mdiListItem.MenuItems.Add(menuItem);
			mdiChildrenByMenuItems[menuItem] = this;
			mdiChildMenuList.Add(menuItem);
			for (int i = 1; i <= 10; i++)
			{
				MenuItem menuItem2 = new MenuItem();
				menuItem2.Visible = false;
				menuItem2.Click += MdiListItemClicked;
				mdiChildMenuList.Add(menuItem2);
				mdiChildrenByMenuItems[menuItem2] = mdiContainer;
				mdiListItem.MenuItems.Add(menuItem2);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void RemoveMdiListItems(MenuItem mdiListItem)
	{
		if (mdiListMenuItem == null)
		{
			return;
		}
		foreach (MenuItem mdiChildMenu in mdiChildMenuList)
		{
			mdiListMenuItem.MenuItems.Remove(mdiChildMenu);
		}
		mdiChildMenuList.Clear();
		mdiChildrenByMenuItems.Clear();
	}

	protected virtual void AddMdiChild(Form mdiChild, TabHost tabHost)
	{
		if (mdiChild == null)
		{
			return;
		}
		if (mdiChild.MinimumSize != Size.Empty)
		{
			throw new ArgumentException("MDIChild form which is hosted in a TabbedMDIManager must have default MinimumSize value ( 0;0 ), when TabbedMDiManager mode is on.", "MinimumSize");
		}
		if (mdiChild.MaximumSize != Size.Empty)
		{
			throw new ArgumentException("MDIChild form which is hosted in a TabbedMDIManager must have default MaximumSize value ( 0;0 ), when TabbedMDiManager mode is on.", "MaximumSize");
		}
		if (mdiChild.WindowState == FormWindowState.Minimized)
		{
			mdiChild.WindowState = FormWindowState.Normal;
		}
		using MDIChildTabData mDIChildTabData = new MDIChildTabData(tabHost.MDITabPanel.TabPanelData, mdiChild, this, null);
		mDIChildTabData.ToolTip = GetTooltip(mdiChild);
		if (mdiChild.Icon != null)
		{
			Image value = CorrectImageSize(DrawIconHelper.GetIconToDraw(mdiChild.Icon, mdiChild), m_imageSize);
			ImageList.ImageCollection images = imageList.Images;
			images.Add(value);
			mDIChildTabData.ImageIndex = images.Count - 1;
		}
		tabHost.AddMdiChild(mdiChild, mDIChildTabData);
	}

	[DocumentationExclude]
	[Obsolete]
	protected void AdjustMdiChildSizes()
	{
	}

	protected virtual TabHost CreateTabHost()
	{
		return new TabHost(this);
	}

	protected virtual void InitTabHost(TabHost tabHost, int tabGroupIndex)
	{
		for (int num = tabGroupIndex - tabHostList.Count + 1; num > 0; num--)
		{
			tabHostList.Add(null);
		}
		tabHostList[tabGroupIndex] = tabHost;
		tabHost.MDITabPanel.ImageList = imageList;
		tabHost.MDITabPanel.MouseMove += Tab_MouseMove;
		tabHost.MDITabPanel.MouseUp += Tab_MouseUp;
		popupManager.SetXPContextMenu(tabHost.MDITabPanel, contextMenu);
		tabHost.MDITabPanel.ThemesEnabled = themesEnabled;
		for (int num2 = tabGroupIndex - splitterHostList.Count + 1; num2 > 0; num2--)
		{
			splitterHostList.Add(null);
		}
		SplitterHost splitterHost = new SplitterHost(this);
		splitterHostList[tabGroupIndex] = splitterHost;
		tabHost.ListenToSplitterHost(splitterHost);
		autoScaleBaseMdiClientDim = 0;
	}

	[DocumentationExclude]
	protected virtual Form GetTabHostUnder(MDITabPanel tabsHostSource, Point mousePos)
	{
		mousePos = tabsHostSource.PointToScreen(mousePos);
		Form[] mdiChildren = mdiContainer.MdiChildren;
		foreach (Form form in mdiChildren)
		{
			Rectangle clientRectangle = form.ClientRectangle;
			if (form.Visible && form.RectangleToScreen(clientRectangle).Contains(mousePos))
			{
				return form;
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected virtual void Tab_MouseUp(object sender, MouseEventArgs e)
	{
		if (!Dragging)
		{
			return;
		}
		Dragging = false;
		Form tabHostUnder = GetTabHostUnder((MDITabPanel)sender, new Point(e.X, e.Y));
		if (tabHostUnder != ActiveTabHost)
		{
			if (tabHostUnder is TabHost)
			{
				MoveActiveDocTo((TabHost)tabHostUnder);
			}
			else if (tabHostUnder != null)
			{
				MDITabPanel control = (MDITabPanel)sender;
				showDragMenu = true;
				contextMenu.Show(control, new Point(e.X, e.Y));
				showDragMenu = false;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void Tab_MouseMove(object sender, MouseEventArgs e)
	{
		if (e.Button != MouseButtons.Left || ActiveTabHost == null || !AllowTabGroupCustomizing)
		{
			return;
		}
		if (!Dragging)
		{
			if (!ActiveTabHost.MDITabPanel.RectangleToScreen(ActiveTabHost.MDITabPanel.ClientRectangle).Contains(Control.MousePosition))
			{
				return;
			}
			int num = ActiveTabHost.MDITabPanel.HitTestTabs(new Point(e.X, e.Y), inTransformedCoOrds: false);
			if (num != -1)
			{
				TabPageAdv tabPageAdv = ActiveTabHost.MDITabPanel.TabPages[num];
				Form form = tabPageAdv.Tag as Form;
				bool flag = true;
				if (form is ITabbedMDIChildForm)
				{
					flag = ((ITabbedMDIChildForm)form).AllowUserDrag;
				}
				Dragging = flag;
			}
			return;
		}
		bool flag2 = false;
		Form tabHostUnder = GetTabHostUnder((MDITabPanel)sender, new Point(e.X, e.Y));
		if (tabHostUnder != ActiveTabHost)
		{
			if (tabHostUnder is TabHost)
			{
				TabHost tabHost = (TabHost)tabHostUnder;
				Form form2 = (Form)tabHost.MDITabPanel.SelectedTab.Tag;
				Rectangle clientRectangle = form2.ClientRectangle;
				clientRectangle = form2.RectangleToScreen(clientRectangle);
				DropRect = clientRectangle;
				flag2 = true;
				Cursor.Current = MDITabsDragCursors.DropCursor;
			}
			else if (tabHostUnder != null)
			{
				Cursor.Current = MDITabsDragCursors.DropCursor;
			}
			else
			{
				Cursor.Current = DragCursors.NodropCursor;
			}
		}
		else
		{
			Cursor.Current = Cursors.Default;
		}
		if (!flag2)
		{
			DropRect = Rectangle.Empty;
		}
	}

	[DocumentationExclude]
	protected virtual void PostInitTabHost(TabHost tabHost)
	{
		m_bShouldRaiseBeforeMDIChildEvent = false;
		tabHost.SuspendLayout();
		tabHost.MdiParent = mdiContainer;
		tabHost.ResumeLayout(performLayout: false);
		tabHost.Visible = true;
		if (tabHost.IsHandleCreated)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(tabHost.Handle, (IntPtr)1, 0, 0, 0, 0, 17);
		}
		SplitterHost splitterHost = tabHost.SplitterHost;
		splitterHost.SuspendLayout();
		splitterHost.MdiParent = mdiContainer;
		splitterHost.Visible = true;
		if (splitterHost.IsHandleCreated)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(splitterHost.Handle, (IntPtr)1, 0, 0, 0, 0, 17);
		}
		splitterHost.Size = tabHost.SplitterBounds.Size;
		splitterHost.ResumeLayout(performLayout: false);
		m_bShouldRaiseBeforeMDIChildEvent = true;
	}

	[DocumentationExclude]
	protected internal virtual bool ValidateFocusedChildForm()
	{
		if (MdiParent.ActiveMdiChild != null)
		{
			return MdiParent.ActiveMdiChild.Validate();
		}
		return true;
	}

	private void MdiListItemPopup(object sender, EventArgs e)
	{
		UpdateMdiList();
	}

	private void NotifyTabbedMDIBindingToChildren(Form mdiChild, bool attach)
	{
		if (mdiChild != null && mdiChild is ITabbedMDIChildForm)
		{
			if (attach)
			{
				((ITabbedMDIChildForm)mdiChild).OnAttachTabbedMDI(this);
			}
			else
			{
				((ITabbedMDIChildForm)mdiChild).OnDetachTabbedMDI(this);
			}
		}
	}

	internal MDITabPanel CreateMDITabPanelInternal()
	{
		MDITabPanel mDITabPanel = CreateMDITabPanel();
		mDITabPanel.TabStyle = TabStyle;
		InitMDITabPanel(mDITabPanel);
		return mDITabPanel;
	}

	private void CloseActiveChildForm()
	{
		if (ActiveTabHost != null)
		{
			Form f = (Form)ActiveTabHost.MDITabPanel.SelectedTab.Tag;
			CloseChildForm(f);
		}
	}

	internal void CloseChildForm(Form f)
	{
		if (MdiChildren.Length == 1)
		{
			MethodInvoker method = delegate
			{
				m_bShouldRaiseBeforeMDIChildEvent = false;
				Form form = new Form();
				form.MdiParent = MdiParent;
				form.Show();
				form.Close();
				m_bShouldRaiseBeforeMDIChildEvent = true;
			};
			MdiParent.BeginInvoke(method);
		}
		f.Close();
		if (!f.IsMdiChild)
		{
			TabPageAdv tabPageAdvFromForm = GetTabPageAdvFromForm(f);
			if (tabPageAdvFromForm != null)
			{
				tabPageAdvFromForm.TabVisible = false;
			}
		}
		if (!(f is TabHost) && !(f is SplitterHost))
		{
			f.VisibleChanged -= MDIChild_VisibleChanged;
		}
	}

	private void MdiHostRefersh()
	{
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.MDITabPanel.Refresh();
		}
	}

	private void UpdateCloseAndDropDownButtons()
	{
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.MDITabPanel.UpdateCloseAndDropDownButtons();
		}
	}

	internal bool IsValidTabHostsName(string name)
	{
		TabHost[] tabGroupHosts = TabGroupHosts;
		foreach (TabHost tabHost in tabGroupHosts)
		{
			if (tabHost != null && tabHost.Name == name)
			{
				return false;
			}
		}
		return true;
	}

	private void UpdateRenderers()
	{
		if (IsOffice2003Style && ThemesEnabled)
		{
			ThemesEnabled = false;
		}
		ArrayList arrayList = null;
		foreach (TabHost tabHost in tabHostList)
		{
			tabHost.SuspendLayout();
			tabHost.MDITabPanel.ThemesEnabled = ThemesEnabled;
			tabHost.MDITabPanel.TabStyle = TabStyle;
			tabHost.MDITabPanel.ShowTabCloseButton = ShowCloseButton;
			tabHost.MDITabPanel.ShowCloseButtonForActiveTabOnly = ShowCloseButtonForActiveTabOnly;
			tabHost.MDITabPanel.ActiveTabFont = FontUtil.CreateFont(tabHost.MDITabPanel.ActiveTabFont, FontStyle.Regular);
			arrayList = tabHost.MDITabPanel.Renderer.Renderers;
			if (arrayList != null && arrayList.Count > 0)
			{
				TabRendererBase tabRendererBase = null;
				int i = 0;
				for (int count = arrayList.Count; i < count; i++)
				{
					if (arrayList[i] is TabRendererBase tabRendererBase2)
					{
						tabRendererBase2.ShowCloseButton = tabHost.MDITabPanel.ShouldDrawCloseButton(i);
					}
				}
			}
			LayoutPanel layoutPanel = tabHost.LayoutPanel;
			if (layoutPanel != null)
			{
				tabHost.PerformLayoutInternal(layoutPanel.GetTabHostSize(tabHost));
			}
			tabHost.ResumeLayout();
		}
		if (ActiveTabHost != null && ActiveTabHost.MDITabPanel != null)
		{
			ActiveTabHost.MDITabPanel.ActiveTabFont = FontUtil.CreateFont(ActiveTabHost.MDITabPanel.ActiveTabFont, FontStyle.Bold);
		}
	}

	internal virtual void SetTabHostForGroup(string groupName, TabHost tabHost)
	{
	}

	private Form GetMdiContainer()
	{
		if (mdiContainer != null)
		{
			return mdiContainer;
		}
		return MdiListMenuItem.GetMainMenu().GetForm();
	}

	private Image CorrectImageSize(Image image, Size destSize)
	{
		if (image == null)
		{
			throw new ArgumentNullException("image");
		}
		Bitmap bitmap = new Bitmap(destSize.Width, destSize.Height, PixelFormat.Format32bppArgb);
		bitmap.SetResolution(image.HorizontalResolution, image.VerticalResolution);
		Graphics graphics = Graphics.FromImage(bitmap);
		graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
		graphics.DrawImage(image, new Rectangle(Point.Empty, destSize), new Rectangle(Point.Empty, image.Size), GraphicsUnit.Pixel);
		graphics.Dispose();
		return bitmap;
	}

	private void mdiChildNativeWnd_SetIcon(object sender, EventArgs e)
	{
		if (sender is MDIChildWindow mDIChildWindow && Control.FromHandle(mDIChildWindow.Handle) is Form mdiChild)
		{
			SetMdiChildIcon(mdiChild, shouldInvalidate: true);
		}
	}

	private void SetMdiChildIcon(Form mdiChild, bool shouldInvalidate)
	{
		TabPageAdv tabPageAdvFromForm = GetTabPageAdvFromForm(mdiChild);
		if (tabPageAdvFromForm != null)
		{
			int imageIndex = tabPageAdvFromForm.ImageIndex;
			if (imageList != null && imageIndex >= 0 && imageIndex < imageList.Images.Count)
			{
				Image value = CorrectImageSize(DrawIconHelper.GetIconToDraw(mdiChild.Icon, mdiChild), m_imageSize);
				imageList.Images[imageIndex] = value;
			}
			if (shouldInvalidate && tabPageAdvFromForm.Parent != null)
			{
				tabPageAdvFromForm.Parent.Invalidate();
			}
		}
	}

	private void ResumeLayoutInternal()
	{
		suspendCount--;
		if (suspendCount < 0)
		{
			suspendCount = 0;
		}
		if (m_mdiClient != null)
		{
			m_mdiClient.ResumeLayout(performLayout: false);
		}
	}

	private TabHost CreateTabHostInternal(int tabHostIndex)
	{
		TabHost tabHost = CreateTabHost();
		InitTabHost(tabHost, tabHostIndex);
		return tabHost;
	}

	internal bool IsValidSplitterHostName(string name)
	{
		foreach (SplitterHost splitterHost in splitterHostList)
		{
			if (splitterHost.Name == name)
			{
				return false;
			}
		}
		return true;
	}

	internal TabHost GetTabHostAfter(TabHost tabHost)
	{
		int num = tabHostList.IndexOf(tabHost);
		if (num == tabHostList.Count)
		{
			return null;
		}
		return (TabHost)tabHostList[num + 1];
	}

	internal void GetMaxDelta(SplitterHost pSplitterHost, ref int deltaPos, ref int deltaNeg)
	{
		deltaPos = 0;
		deltaNeg = 0;
		LayoutPanel layoutPanel = pSplitterHost.LayoutPanel;
		if (m_lpPanel != null)
		{
			_ = layoutPanel.TabHost;
			if (layoutPanel.Horizontal)
			{
				int iDistance = 0;
				int iDistance2 = 0;
				layoutPanel.GetDistanceToTop(ref iDistance, pSplitterHost.Top);
				layoutPanel.GetDistanceToDown(ref iDistance2, pSplitterHost.Bottom);
				deltaPos = iDistance2 - 1;
				deltaNeg = iDistance - 1;
			}
			else
			{
				int iDistance3 = 0;
				int iDistance4 = 0;
				layoutPanel.GetDistanceToRight(ref iDistance3, pSplitterHost.Right);
				layoutPanel.GetDistanceToLeft(ref iDistance4, pSplitterHost.Left);
				deltaPos = iDistance3 - 1;
				deltaNeg = iDistance4 - 1;
			}
		}
	}

	private void MdiLayout(object sender, LayoutEventArgs e)
	{
		if (suspendCount > 0 || m_mdiClient.Width == 0 || m_mdiClient.Height == 0)
		{
			return;
		}
		BeginUpdate(bLockContainer: false);
		SuspendLayout();
		if (m_lpPanel == null || (m_lpPanel.ComponentOne == null && m_lpPanel.ComponentTwo == null))
		{
			InitializeLayoutPanel();
		}
		if (m_lpPanel != null)
		{
			if (m_lpPanel.Size != m_mdiClient.DisplayRectangle.Size)
			{
				m_lpPanel.Size = m_mdiClient.DisplayRectangle.Size;
				m_lpPanel.DividePanelOnTwoParts();
			}
			LayoutHosts(m_lpPanel);
		}
		ResumeLayoutInternal();
		EndUpdate(mdiContainer, m_mdiClient, bLockContainer: false);
	}

	private void InitializeLayoutPanel()
	{
		if (tabHostList.Count > 0 && tabHostList[0] is TabHost tabHost)
		{
			m_lpPanel = new LayoutPanel(tabHost, m_mdiClient.DisplayRectangle.Size, m_mdiClient.DisplayRectangle.Location, horizontal: false);
			m_lpPanel.InitializePanelOne(tabHost);
			tabHost.SplitterBounds = Rectangle.Empty;
			if (tabHost.SplitterHost != null)
			{
				tabHost.SplitterHost.Bounds = Rectangle.Empty;
				tabHost.SplitterHost.Visible = false;
			}
		}
	}

	private void LayoutHosts(LayoutPanel panel)
	{
		if (panel == null)
		{
			return;
		}
		if (panel.ComponentOne != null)
		{
			if (panel.ComponentOne is LayoutPanel)
			{
				LayoutHosts(panel.ComponentOne as LayoutPanel);
			}
			else
			{
				TabHost tabHost = panel.ComponentOne as TabHost;
				LayoutTabHost(tabHost, panel.PanelOneLocation, panel.PanelOneSize);
				LayoutTabHostMdiChildren(tabHost, panel.PanelOneLocation, panel.PanelOneSize);
			}
		}
		if (panel.ComponentTwo != null)
		{
			if (panel.ComponentTwo is LayoutPanel)
			{
				LayoutHosts(panel.ComponentTwo as LayoutPanel);
			}
			else
			{
				TabHost tabHost2 = panel.ComponentTwo as TabHost;
				LayoutTabHost(tabHost2, panel.PanelTwoLocation, panel.PanelTwoSize);
				LayoutTabHostMdiChildren(tabHost2, panel.PanelTwoLocation, panel.PanelTwoSize);
			}
		}
		if (panel.ComponentOne != null && panel.ComponentTwo != null)
		{
			LayoutSplitterHost(panel.TabHost, panel.SplitterBounds, panel.Horizontal);
		}
	}

	private void LayoutTabHost(TabHost tabHost, Point location, Size size)
	{
		if (tabHost == null || tabHost.MDITabPanel == null)
		{
			return;
		}
		tabHost.SuspendLayout();
		if (!m_bVisible)
		{
			size = Size.Empty;
		}
		tabHost.PerformLayoutInternal(size);
		switch (tabHost.Alignment)
		{
		case TabAlignment.Top:
			tabHost.Width = size.Width;
			tabHost.Location = location;
			if (Visible && tabHost.MDITabPanel.BorderVisible)
			{
				tabHost.MDITabPanel.Dock = DockStyle.Top;
				tabHost.Height = size.Height;
			}
			else
			{
				tabHost.MDITabPanel.Dock = DockStyle.None;
			}
			break;
		case TabAlignment.Left:
			tabHost.Height = size.Height;
			tabHost.Location = location;
			if (Visible && tabHost.MDITabPanel.BorderVisible)
			{
				tabHost.MDITabPanel.Dock = DockStyle.Left;
				tabHost.Width = size.Width;
			}
			else
			{
				tabHost.MDITabPanel.Dock = DockStyle.None;
			}
			break;
		case TabAlignment.Right:
			tabHost.Height = size.Height;
			if (Visible && tabHost.MDITabPanel.BorderVisible)
			{
				tabHost.Width = size.Width;
				tabHost.MDITabPanel.Dock = DockStyle.Right;
			}
			else
			{
				location.X += size.Width - tabHost.Width;
				tabHost.MDITabPanel.Dock = DockStyle.None;
			}
			tabHost.Location = location;
			break;
		case TabAlignment.Bottom:
			tabHost.Width = size.Width;
			if (Visible && tabHost.MDITabPanel.BorderVisible)
			{
				tabHost.Height = size.Height;
				tabHost.MDITabPanel.Dock = DockStyle.Bottom;
			}
			else
			{
				location.Y += size.Height - tabHost.Height;
				tabHost.MDITabPanel.Dock = DockStyle.None;
			}
			tabHost.Location = location;
			break;
		}
		tabHost.ResumeLayout(performLayout: true);
	}

	private void LayoutTabHostMdiChildren(TabHost tabHost, Point location, Size size)
	{
		if (tabHost == null || tabHost.MDITabPanel == null)
		{
			return;
		}
		foreach (TabPageAdv tabPage in tabHost.MDITabPanel.TabPages)
		{
			if (!(tabPage.Tag is Form form))
			{
				continue;
			}
			form.SuspendLayout();
			int num = 0;
			int num2 = 0;
			if (!m_bVisible)
			{
				_ = Size.Empty;
			}
			else
			{
				_ = tabHost.Size;
			}
			int num3 = 0;
			int num4 = 0;
			if (tabHost.Alignment == TabAlignment.Left || tabHost.Alignment == TabAlignment.Right)
			{
				if (Visible && tabHost.MDITabPanel.BorderVisible)
				{
					num3 = tabHost.MDITabPanel.BorderWidth;
					num4 = tabHost.MDITabPanel.Width;
				}
				else
				{
					num4 = tabHost.Width;
				}
			}
			else if (Visible && tabHost.MDITabPanel.BorderVisible)
			{
				num3 = tabHost.MDITabPanel.BorderWidth;
				num4 = tabHost.MDITabPanel.Height + 1;
			}
			else
			{
				num4 = tabHost.Height;
			}
			switch (tabHost.Alignment)
			{
			case TabAlignment.Top:
				num2 = size.Width;
				num = (tabHost.Visible ? (size.Height - num4) : size.Height);
				form.Size = new Size(num2 - num3 * 2, num - num3);
				form.Location = new Point(location.X + num3, tabHost.Visible ? (location.Y + num4) : location.Y);
				break;
			case TabAlignment.Left:
				num2 = (tabHost.Visible ? (size.Width - num4) : size.Width);
				num = size.Height;
				form.Size = new Size(num2 - num3, num - num3 * 2);
				form.Location = new Point(tabHost.Visible ? (location.X + num4) : location.X, location.Y + num3);
				break;
			case TabAlignment.Right:
				num2 = (tabHost.Visible ? (size.Width - num4) : size.Width);
				num = size.Height;
				form.Size = new Size(num2 - num3, num - num3 * 2);
				form.Location = new Point(location.X + num3, location.Y + num3);
				break;
			case TabAlignment.Bottom:
				num2 = size.Width;
				num = (tabHost.Visible ? (size.Height - num4) : size.Height);
				form.Size = new Size(num2 - num3 * 2, num - num3);
				form.Location = new Point(location.X + num3, location.Y + num3);
				break;
			}
			form.ResumeLayout(performLayout: true);
		}
	}

	private void LayoutSplitterHost(TabHost pTabHost, Rectangle pBounds, bool pHorizontal)
	{
		int num = tabHostList.IndexOf(pTabHost);
		if (num != -1 && tabHostList[num] is TabHost { Visible: not false, SplitterHost: { } splitterHost })
		{
			splitterHost.SuspendLayout();
			splitterHost.Visible = true;
			splitterHost.Horizontal = pHorizontal;
			splitterHost.Size = pBounds.Size;
			splitterHost.Location = pBounds.Location;
			splitterHost.Splitter.Size = pBounds.Size;
			splitterHost.ResumeLayout(performLayout: true);
		}
	}

	private void UnlockMessageReceived(object sender, EventArgs e)
	{
		if (m_mdiClient != null)
		{
			EndUpdateAsync(bLockContainer: true);
		}
	}

	private void MDIContainer_Load(object sender, EventArgs e)
	{
		if (ActiveTabHost != null)
		{
			Rectangle splitterBounds = ActiveTabHost.SplitterBounds;
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(ActiveTabHost.SplitterHost.Handle, (IntPtr)1, splitterBounds.X, splitterBounds.Y, splitterBounds.Width, splitterBounds.Height, 16);
		}
	}

	private void MDIContainer_RightToLeftChanged(object sender, EventArgs e)
	{
		if (mdiContainer != null)
		{
			foreach (TabHost tabHost2 in tabHostList)
			{
				_ = tabHost2?.MDITabPanel;
			}
		}
		if (m_lpPanel != null)
		{
			TabHost tabHost = m_lpPanel.GetTabHost(bComponentOne: true);
			if (tabHost != null && tabHost.SplitterHost != null)
			{
				tabHost.SplitterHost.Visible = false;
			}
		}
	}

	protected virtual bool OnBeforeMDIChildAdded(Control ctrl)
	{
		MDIChildAddCancelEventArgs e = new MDIChildAddCancelEventArgs(ctrl);
		if (this.BeforeMDIChildAdded != null)
		{
			this.BeforeMDIChildAdded(this, e);
		}
		return e.Cancel;
	}

	private void MDIChild_VisibleChanged(object sender, EventArgs e)
	{
		Form form = sender as Form;
		TabHost tabHostFromForm = GetTabHostFromForm(form);
		if (tabHostFromForm != null && tabHostFromForm.MDITabPanel != null && tabHostFromForm.MDITabPanel.TabPages.Count > 0)
		{
			int visiblePagesCount = GetVisiblePagesCount(tabHostFromForm);
			if (visiblePagesCount == 0 && !form.Visible)
			{
				tabHostFromForm.Hide();
			}
			else if (visiblePagesCount == 1 && form.Visible)
			{
				tabHostFromForm.Show();
			}
		}
		if (!form.Enabled)
		{
			UpdateActiveTabHost();
			if (mdiContainer.ActiveMdiChild != null)
			{
				mdiContainer.ActiveMdiChild.BringToFront();
			}
		}
	}

	private void MdiChild_EnabledChanged(object sender, EventArgs e)
	{
		Form form = sender as Form;
		TabPageAdv tabPageAdvFromForm = GetTabPageAdvFromForm(form);
		if (tabPageAdvFromForm != null)
		{
			if (form.Enabled)
			{
				tabPageAdvFromForm.TabEnabled = true;
			}
			else
			{
				tabPageAdvFromForm.TabEnabled = false;
			}
			UpdateActiveTabHost();
			if (mdiContainer.ActiveMdiChild != null)
			{
				mdiContainer.ActiveMdiChild.BringToFront();
			}
		}
	}

	private int GetVisiblePagesCount(TabHost host)
	{
		int num = 0;
		if (host != null && host.MDITabPanel != null)
		{
			foreach (TabPageAdv tabPage in host.MDITabPanel.TabPages)
			{
				if (tabPage.TabVisible)
				{
					num++;
				}
			}
		}
		return num;
	}

	private void MDIChild_Added(object sender, ControlEventArgs e)
	{
		Form mdiChild = e.Control as Form;
		AddMDIChildToTabbedMDI(mdiChild);
	}

	protected void AddMDIChildToTabbedMDI(Form mdiChild)
	{
		bool flag = false;
		if (m_bShouldRaiseBeforeMDIChildEvent)
		{
			flag = OnBeforeMDIChildAdded(mdiChild);
		}
		if (!flag && mdiChild != null && !(mdiChild is TabHost) && !(mdiChild is SplitterHost))
		{
			BeginUpdate(bLockContainer: false);
			BeginUpdateMDIChild(mdiChild);
			NotifyTabbedMDIBindingToChildren(mdiChild, attach: true);
			if (ActiveTabHost != null)
			{
				AddMdiChild(mdiChild, ActiveTabHost);
			}
			else
			{
				TabHost tabHost = CreateTabHostInternal(tabHostList.Count);
				AddMdiChild(mdiChild, tabHost);
				PostInitTabHost(tabHost);
			}
			OnActiveTabToNewGroupMoved(mdiChild, null, ActiveTabHost);
			OnMdiChildLoad(mdiChild);
			mdiChild.HandleDestroyed += OnMDIChildHandleDestroyed;
			mdiChild.VisibleChanged += MDIChild_VisibleChanged;
			mdiChild.EnabledChanged += MdiChild_EnabledChanged;
			MdiLayout(null, new LayoutEventArgs(mdiChild, "Bounds"));
			EndUpdateMDIChildAsync(mdiChild);
			EndUpdateAsync(bLockContainer: false);
		}
	}

	private void OnMDIChildHandleDestroyed(object sender, EventArgs e)
	{
		RemoveMDIChildFromHash(sender as Form, bIsRemoved: true);
	}

	private void MDIChild_Removed(object sender, ControlEventArgs e)
	{
		if (e.Control is Form form && !(form is TabHost) && !(form is SplitterHost))
		{
			BeginUpdate(bLockContainer: false);
			BeginUpdateMDIChild(form);
			OnMdiChildRemoved(form);
			EndUpdateMDIChildAsync(form);
			EndUpdateAsync(bLockContainer: false);
		}
		if (mdiContainer != null && mdiContainer.MdiChildren.Length == 0)
		{
			ModifyRedundantReferences();
		}
		if (m_mdiClient.MdiChildren.Length == 0)
		{
			mdiContainer.ResumeLayout(performLayout: true);
		}
	}

	private void ModifyRedundantReferences()
	{
		tabHostList.Clear();
		splitterHostList.Clear();
		if (ActiveTabHost != null)
		{
			ActiveTabHost = null;
		}
		m_lpPanel = null;
	}

	private void MdiChildDisposed(object sender, EventArgs e)
	{
		Form key = sender as Form;
		mdiChildrenTooltips.Remove(key);
	}

	private void mdiContainer_HandleCreated(object sender, EventArgs e)
	{
		if (m_mdiClient != null)
		{
			m_mdiClient.ResumeLayout(performLayout: true);
		}
	}

	private void mdiContainer_FormClosed(object sender, FormClosedEventArgs e)
	{
		closed = true;
		DetachFromMdiContainer(mdiContainer, setCascade: false, bLockMDIClient: false);
	}

	private void MdiListItemClicked(object sender, EventArgs e)
	{
		if (mdiChildrenByMenuItems[sender] == null)
		{
			return;
		}
		Form form = mdiChildrenByMenuItems[sender] as Form;
		if (form.IsMdiContainer)
		{
			MdiWindowDialog mdiWindowDialog = new MdiWindowDialog();
			mdiWindowDialog.MaximizeBox = false;
			mdiWindowDialog.SetItems(form.ActiveMdiChild, GetMdiChildrenForMenu());
			if (mdiWindowDialog.ShowDialog() == DialogResult.OK)
			{
				mdiWindowDialog.ActiveChildForm.Activate();
			}
		}
		else
		{
			form.Activate();
		}
	}

	private void MDIChild_Activate(object sender, EventArgs e)
	{
		if (mdiContainer != null)
		{
			Form activeMdiChild = mdiContainer.ActiveMdiChild;
			if (activeMdiChild != null)
			{
				BeginUpdate(bLockContainer: false);
				BeginUpdateMDIChild(activeMdiChild);
				UpdateActiveTabHost();
				UpdateScrollOffset();
				EndUpdateMDIChild(activeMdiChild);
				EndUpdate(mdiContainer, m_mdiClient, bLockContainer: false);
			}
		}
	}

	private void OnMdiChildLoad(Form form)
	{
		AddMDIChildToHash(form);
		if (form != null && MdiClient != null)
		{
			MdiClient.ResumeLayout(performLayout: true);
			MdiClient.PerformLayout();
		}
	}

	private void OnThemeChanged(object sender, EventArgs e)
	{
		UpdateRenderers();
	}

	private void MenuItem_Click(object sender, EventArgs e)
	{
		if (!(sender is ToolStripMenuItem { Tag: Form tag }))
		{
			return;
		}
		if (tag.IsMdiContainer)
		{
			MdiWindowDialog mdiWindowDialog = new MdiWindowDialog();
			mdiWindowDialog.MaximizeBox = false;
			mdiWindowDialog.SetItems(tag.ActiveMdiChild, GetMDIChildren());
			if (mdiWindowDialog.ShowDialog() == DialogResult.OK)
			{
				mdiWindowDialog.ActiveChildForm.Activate();
			}
		}
		else
		{
			tag.Activate();
		}
	}

	private void MDIList_OnDropDownOpening(object sender, EventArgs e)
	{
		RemoveMDIChildrenFromToolStripMenu(m_mdiListToolStripItem);
		AddMDIChildrenToToolStripMenu(m_mdiListToolStripItem);
	}

	[DocumentationExclude]
	[Obsolete("This method will be removed soon, use MdiListToolStripItem property.")]
	protected virtual void AttachMdiListToolStripItem(ToolStripMenuItem mdiListItem)
	{
		AddMDIChildrenToToolStripMenu(mdiListItem);
	}

	private void RemoveMDIChildrenFromToolStripMenu(ToolStripMenuItem pMenuItem)
	{
		if (pMenuItem != null)
		{
			foreach (ToolStripItem lstMDIMenuItem in m_lstMDIMenuItems)
			{
				pMenuItem.DropDownItems.Remove(lstMDIMenuItem);
			}
		}
		m_lstMDIMenuItems.Clear();
	}

	private void AddMDIChildrenToToolStripMenu(ToolStripMenuItem pMenuItem)
	{
		if (pMenuItem == null || m_frmWindowsListContainer == null || !m_frmWindowsListContainer.IsMdiContainer)
		{
			return;
		}
		Form[] mDIChildren = GetMDIChildren();
		int num = mDIChildren.Length;
		if (m_mdiListToolStripItem.DropDownItems.Count > 0 && num > 0)
		{
			ToolStripSeparator value = new ToolStripSeparator();
			m_mdiListToolStripItem.DropDownItems.Add(value);
			m_lstMDIMenuItems.Add(value);
		}
		int num2 = Math.Min(9, num);
		int num3 = 1;
		for (int i = 0; i < num2; i++)
		{
			Form form = mDIChildren[i];
			if (!(form is TabHost) && !(form is SplitterHost))
			{
				string text = $"&{num3++} {form.Text}";
				ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem(text, null, MenuItem_Click);
				toolStripMenuItem.Checked = m_frmWindowsListContainer.ActiveMdiChild == form;
				toolStripMenuItem.Tag = form;
				m_mdiListToolStripItem.DropDownItems.Add(toolStripMenuItem);
				m_lstMDIMenuItems.Add(toolStripMenuItem);
			}
		}
		if (mDIChildren.Length > 9)
		{
			ToolStripMenuItem toolStripMenuItem2 = new ToolStripMenuItem("&Windows...", null, MenuItem_Click);
			toolStripMenuItem2.Tag = m_frmWindowsListContainer;
			m_mdiListToolStripItem.DropDownItems.Add(toolStripMenuItem2);
			m_lstMDIMenuItems.Add(toolStripMenuItem2);
		}
	}

	private Form[] GetMDIChildren()
	{
		Form[] result = new Form[0];
		if (m_frmWindowsListContainer == null)
		{
			return result;
		}
		ArrayList arrayList = new ArrayList();
		Form[] mdiChildren = m_frmWindowsListContainer.MdiChildren;
		foreach (Form form in mdiChildren)
		{
			if (!(form is SplitterHost) && !(form is TabHost))
			{
				arrayList.Add(form);
			}
		}
		return (Form[])arrayList.ToArray(typeof(Form));
	}

	private bool ShouldSerializeAttachedTo()
	{
		return true;
	}

	private void ResetAttachedTo()
	{
		if (this != null && Site != null)
		{
			if (Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				AttachedTo = designerHost.RootComponent as Form;
			}
		}
		else
		{
			AttachedTo = null;
		}
	}
}
