using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItemFilter("System.Windows.Forms")]
[TypeConverter(typeof(BarManagerConverter))]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(CommandBar), "ToolboxIcons.MainFrameBarManager.bmp")]
[Description("Manages an application's main window's menus, tool bars and user customization capabilities in XP Menus framework.")]
public class MainFrameBarManager : BarManager, IMessageFilter
{
	private const string CustomizedBarSettingsLabel = "CustomizedBarSettings";

	private const string BarItemsVisibilityInBarLabel = "BarItemsVisibilityInBar";

	private const string CustomBarsListLabel = "CustomBarsList";

	private const string CustomItemsListLabel = "CustomItemsList";

	private const string CustomItemsContainerListLabel = "CustomItemsContainerList";

	private const string DEF_MNEMONIC_NAME = "ProcessMnemonic";

	private bool m_bActivateFormFromBar;

	private bool m_bRestoreFocus;

	private CustomizationPanel custPanel;

	private ArrayList updateInfoList;

	private Hashtable formsByTypeName;

	private Hashtable activatedForms;

	private Hashtable barItemVisibilityInBars;

	private Hashtable htBarNameVsMergedBars = new Hashtable();

	protected bool largeIcs;

	private Bar mainMenuBar;

	private bool dndCustomizing;

	private MainFormWndSubclass mainWndSubclass;

	private bool autoLoadToolBarPositions = true;

	private bool cachedCustomizingState;

	private bool themesEnabled;

	private bool autoPersistCustomization = true;

	[DocumentationExclude]
	public bool NewStyleChildTypeRegsitering = true;

	private ArrayList mergedBars = new ArrayList();

	private bool allowUserRenaming = true;

	private bool m_lockHostedFormForMDIChanges;

	protected internal bool bUpdateUserChangeIn;

	private bool m_bForceSaveLoadCustomData;

	private bool m_bNeedSaveCustomData = true;

	private bool m_bAutoLoadCustomData;

	private bool m_bAutoSaveCustomData;

	internal ArrayList customAddedBarsVsNames = new ArrayList();

	internal ArrayList customAddedItemsVsBarItemID = new ArrayList();

	private Hashtable customContainers = new Hashtable();

	private bool m_bCustomContainersLoaded;

	private static bool s_isDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;

	private Font m_font;

	private Form latestActiveMdiChild;

	private Form currentActiveForm;

	private string m_mdiChildrenFormName = string.Empty;

	private bool m_bAutoScale;

	private FormNativeWindow m_mainFormNativeWnd;

	private int m_popupCloseTimer;

	private bool resetCustomization;

	[DocumentationExclude]
	internal bool ignoreNextAltKeyUp;

	private bool processedAltKeyDown;

	internal bool bNeedStartKeyboardNavigation = true;

	private Hashtable htUnregisteredChildTypesVsInstanceCount = new Hashtable();

	private Hashtable m_htChildForms = new Hashtable();

	private Hashtable groupBeginersHash = new Hashtable();

	private Hashtable m_htWrapper = new Hashtable();

	private ArrayList savedUpdateInfoList = new ArrayList();

	[Category("Appearance")]
	[Description("The font of the BarItems.")]
	public Font Font
	{
		get
		{
			if (m_font == null)
			{
				m_font = Form.Font;
			}
			return m_font;
		}
		set
		{
			if (value != m_font)
			{
				m_font = value;
				OnFontChanged(new ProvideFontInfoEventArgs(m_font));
			}
		}
	}

	internal Form LatestActiveMdiChild
	{
		get
		{
			return latestActiveMdiChild;
		}
		set
		{
			if (latestActiveMdiChild != value)
			{
				commandBarManager.SuspendLayout();
				if (latestActiveMdiChild != null)
				{
					OnFormDeactivated(latestActiveMdiChild, value == null || !IsRegisteredType(value.GetType()));
				}
				latestActiveMdiChild = value;
				if (latestActiveMdiChild != null)
				{
					OnFormActivated(latestActiveMdiChild);
				}
				commandBarManager.ResumeLayout();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	public bool LockHostedFormForMDIChanges
	{
		get
		{
			return m_lockHostedFormForMDIChanges;
		}
		set
		{
			m_lockHostedFormForMDIChanges = value;
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	public BarManager ActiveChildBarManager
	{
		get
		{
			if (LatestActiveMdiChild != null)
			{
				return GetManagerFrom(LatestActiveMdiChild);
			}
			return null;
		}
	}

	internal Form ActiveForm
	{
		get
		{
			return currentActiveForm;
		}
		set
		{
			if (currentActiveForm != value)
			{
				currentActiveForm = value;
				if (this.ActiveFormChanged != null)
				{
					this.ActiveFormChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	public override Form Form
	{
		get
		{
			return base.Form;
		}
		set
		{
			if (value != base.Form)
			{
				DeInitializeNativeWindow();
				base.Form = value;
				InitializeNativeWindow();
			}
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	public CustomizationPanel CustomizationPanel
	{
		get
		{
			return custPanel;
		}
		set
		{
			custPanel = value;
			if (customizationDlg != null)
			{
				customizationDlg.SetCustomizationPanel(custPanel);
			}
		}
	}

	[DefaultValue(0)]
	[Description("Indicates delay ( in milliseconds ) before the displayed DropDown on ToolBar gets closed.")]
	public int PopupCloseTimer
	{
		get
		{
			return m_popupCloseTimer;
		}
		set
		{
			if (value != m_popupCloseTimer)
			{
				m_popupCloseTimer = value;
			}
		}
	}

	internal bool RestoreFocus
	{
		get
		{
			return m_bRestoreFocus;
		}
		set
		{
			if (m_bRestoreFocus != value)
			{
				value = m_bRestoreFocus;
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	[Description("Specifies whether or not user-customization info is available in a persisted state due to a previous run of this application.")]
	public bool IsUserCustomizationInfoPersisted
	{
		get
		{
			AppStateSerializer singleton = AppStateSerializer.GetSingleton();
			return IsUserCustomizationInfoAvailable(singleton);
		}
	}

	[Description("Specifies whether or not to use themes to draw certain portions of the menus and toolbars.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled == value)
			{
				return;
			}
			bool flag = themesEnabled;
			themesEnabled = value;
			foreach (Bar bar in base.Bars)
			{
				if ((bar.BarStyle & BarStyle.RotateWhenVertical) <= BarStyle.None)
				{
					bar.BarStyle |= BarStyle.RotateWhenVertical;
				}
			}
			OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ThemesEnabled", flag, themesEnabled));
		}
	}

	public override BarItem SelectedItem
	{
		get
		{
			if (base.SelectedItem != null)
			{
				return base.SelectedItem;
			}
			return ActiveChildBarManager?.SelectedItem;
		}
		set
		{
			base.SelectedItem = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool Customizing
	{
		get
		{
			if (dndCustomizing || cachedCustomizingState)
			{
				return true;
			}
			return base.Customizing;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public override bool DndCustomizing => dndCustomizing;

	[Browsable(false)]
	[Description("Specifies that on application shutdown all persisted information should be reset.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public virtual bool ResetCustomization
	{
		get
		{
			return resetCustomization;
		}
		set
		{
			if (resetCustomization != value)
			{
				resetCustomization = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[DefaultValue(false)]
	public override bool LargeIcons
	{
		get
		{
			return largeIcs;
		}
		set
		{
			if (largeIcs != value)
			{
				bool flag = largeIcs;
				if (!base.DesignMode)
				{
					RecordCommon(null, null, null, UpdateType.LargeIcons, value);
				}
				else
				{
					largeIcs = value;
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "LargeIcons", flag, largeIcs));
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ArrayList DetachedCommandBars
	{
		get
		{
			if (commandBarManager == null)
			{
				CreateCommandBarManager();
			}
			if (commandBarManager != null)
			{
				return commandBarManager.DetachedCommandBars;
			}
			return null;
		}
	}

	[Category("Persistance")]
	[DefaultValue(true)]
	[Description("Specifies whether or not to automatically load the persisted toolbar positions when the application is restarted.")]
	public virtual bool AutoLoadToolBarPositions
	{
		get
		{
			return autoLoadToolBarPositions;
		}
		set
		{
			if (autoLoadToolBarPositions != value)
			{
				autoLoadToolBarPositions = value;
				if (commandBarManager != null)
				{
					commandBarManager.LoadCommandBarState_Changed();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Category("Customization")]
	[Description("Specifies whether user should be allowed to change the names of the menu items during runtime.")]
	public virtual bool AllowUserRenaming
	{
		get
		{
			return allowUserRenaming;
		}
		set
		{
			if (allowUserRenaming != value)
			{
				allowUserRenaming = value;
			}
		}
	}

	[Category("Persistance")]
	[Description("Indicates whether to persist and load user-customized info from or to isolated storage.")]
	[DefaultValue(true)]
	public virtual bool AutoPersistCustomization
	{
		get
		{
			return autoPersistCustomization;
		}
		set
		{
			if (autoPersistCustomization != value)
			{
				autoPersistCustomization = value;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	public override bool UsePartialMenus
	{
		get
		{
			return partialMenusMode;
		}
		set
		{
			if (partialMenusMode != value)
			{
				if (!base.DesignMode)
				{
					RecordCommon(null, null, null, UpdateType.UsePartialMenus, value);
				}
				else
				{
					partialMenusMode = value;
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ArrayList ChildManagers
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			foreach (ArrayList value in formsByTypeName.Values)
			{
				if (value[0] != Form)
				{
					BarManager managerFrom = GetManagerFrom(value[0] as Form);
					if (managerFrom != null)
					{
						arrayList.Add(managerFrom);
					}
				}
			}
			return arrayList;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Bar MainMenuBar
	{
		get
		{
			if (mainMenuBar != null)
			{
				return mainMenuBar;
			}
			foreach (Bar bar in base.Bars)
			{
				if ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
				{
					return bar;
				}
			}
			return null;
		}
		set
		{
			Bar bar = MainMenuBar;
			if (value != MainMenuBar)
			{
				CommandBarManager commandBarManager = GetCommandBarManager();
				commandBarManager?.RemoveBars(this, saveCommandBarState: true);
				if (bar != null)
				{
					bar.BarStyle &= ~BarStyle.IsMainMenu;
				}
				mainMenuBar = value;
				mainMenuBar.AllowHiding = false;
				mainMenuBar.BarStyle |= BarStyle.IsMainMenu;
				commandBarManager?.AttachBars(this);
			}
		}
	}

	[Description("Indicates if activating menu should activate parent form.")]
	[DefaultValue(false)]
	public bool ActivateFormFromBar
	{
		get
		{
			return m_bActivateFormFromBar;
		}
		set
		{
			if (m_bActivateFormFromBar != value)
			{
				m_bActivateFormFromBar = value;
			}
		}
	}

	internal string MdiChildrenFormName
	{
		get
		{
			return m_mdiChildrenFormName;
		}
		set
		{
			if (value != m_mdiChildrenFormName)
			{
				m_mdiChildrenFormName = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether bring the CommandBar to the front of the z-order.")]
	[Category("Behavior")]
	public bool InternalDocking
	{
		get
		{
			bool result = false;
			CommandBarController commandBarController = null;
			if (commandBarManager != null)
			{
				commandBarController = commandBarManager.GetCommandBarController();
				if (commandBarController != null)
				{
					result = commandBarController.InternalDocking;
				}
			}
			return result;
		}
		set
		{
			CommandBarController commandBarController = null;
			if (commandBarManager != null)
			{
				commandBarController = commandBarManager.GetCommandBarController();
				if (commandBarController != null)
				{
					commandBarController.InternalDocking = value;
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Automatic scaling for CommandBars.")]
	[DefaultValue(false)]
	public bool AutoScale
	{
		get
		{
			return m_bAutoScale;
		}
		set
		{
			if (value != m_bAutoScale)
			{
				m_bAutoScale = value;
			}
		}
	}

	internal string PersistenceID
	{
		get
		{
			ProvidePersistenceIDEventArgs e = new ProvidePersistenceIDEventArgs(string.Empty);
			OnProvidePresistenceID(e);
			return e.PersistenceID;
		}
	}

	internal bool ForceSaveLoadCustomData => m_bForceSaveLoadCustomData;

	internal bool NeedSaveCustomData => m_bNeedSaveCustomData;

	[DefaultValue(false)]
	[Description("Indicates whether to automatically load user's customization data when form is activating.")]
	public bool AutoLoadCustomData
	{
		get
		{
			return m_bAutoLoadCustomData;
		}
		set
		{
			m_bAutoLoadCustomData = value;
		}
	}

	[Description("Indicates whether to automatically save user's customization data when form is closing.")]
	[DefaultValue(false)]
	public bool AutoSaveCustomData
	{
		get
		{
			return m_bAutoSaveCustomData;
		}
		set
		{
			m_bAutoSaveCustomData = value;
		}
	}

	internal event EventHandler ActiveFormChanged;

	[Description("Lets you specify a unique ID used to distinguish the persistence information of different instances of your Form type.")]
	public event ProvidePersistenceIDEventHandler ProvidePersisteceID;

	[DocumentationExclude]
	[Browsable(false)]
	public event DockBarPaintEventHandler DrawDockBarBackground;

	[Category("Property Changed")]
	[Description("Occurs when Font property is changed.")]
	public event ProvideFontInfoEventHandler FontChanged;

	[DocumentationExclude]
	protected override void InitCustomizationDialog()
	{
		if (customizationDlg == null)
		{
			customizationDlg = new BarCustomizationDialog(this);
			if (custPanel != null)
			{
				customizationDlg.SetCustomizationPanel(custPanel);
			}
		}
	}

	[DocumentationExclude]
	public bool IsBarItemVisibilityPrefAvailable(BarItem item, Bar bar)
	{
		Form form = bar.Manager.Form;
		if (form == null)
		{
			return false;
		}
		string formTypeName = BarManager.GetFormTypeName(bar.Manager);
		string key = new BarID(bar.BarName, formTypeName).ToString();
		string key2 = new BarItemID(item.ID, formTypeName).ToString();
		if (barItemVisibilityInBars[key] is Hashtable hashtable)
		{
			return hashtable[key2] != null;
		}
		return false;
	}

	[DocumentationExclude]
	public bool ShouldDrawVisibleInBar(BarItem item, Bar bar)
	{
		string key = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		string key2 = new BarItemID(item.ID, BarManager.GetFormTypeName(bar.Manager)).ToString();
		if (barItemVisibilityInBars[key] is Hashtable hashtable && hashtable[key2] != null)
		{
			return (bool)hashtable[key2];
		}
		return item.Visible;
	}

	public virtual void SetUserVisibilityPreferenceInBar(BarItem barItem, Bar bar, bool show)
	{
		string key = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		string key2 = new BarItemID(barItem.ID, BarManager.GetFormTypeName(bar.Manager)).ToString();
		Hashtable hashtable = barItemVisibilityInBars[key] as Hashtable;
		if (show)
		{
			if (hashtable != null && hashtable[key2] != null)
			{
				if (!(bool)hashtable[key2])
				{
					hashtable.Remove(key2);
				}
			}
			else if (!barItem.Visible)
			{
				if (hashtable == null)
				{
					hashtable = (Hashtable)(barItemVisibilityInBars[key] = new Hashtable());
				}
				hashtable[key2] = true;
			}
		}
		else if (hashtable != null && hashtable[key2] != null)
		{
			if ((bool)hashtable[key2])
			{
				hashtable.Remove(key2);
			}
		}
		else if (barItem.Visible)
		{
			if (hashtable == null)
			{
				hashtable = (Hashtable)(barItemVisibilityInBars[key] = new Hashtable());
			}
			hashtable[key2] = false;
		}
	}

	public MainFrameBarManager()
	{
	}

	public MainFrameBarManager(Form form)
		: base(form)
	{
	}

	public MainFrameBarManager(IContainer container, Form form)
		: this(form)
	{
		container?.Add(this);
	}

	protected override void Init()
	{
		base.Init();
		updateInfoList = new ArrayList();
		formsByTypeName = new Hashtable();
		activatedForms = new Hashtable();
		barItemVisibilityInBars = new Hashtable();
		mainWndSubclass = new MainFormWndSubclass();
	}

	private void DeInitializeNativeWindow()
	{
		if (m_mainFormNativeWnd != null)
		{
			m_mainFormNativeWnd.ActiveWindowChanged -= OnAppDeactivated;
			m_mainFormNativeWnd.ReleaseHandle();
			m_mainFormNativeWnd = null;
		}
		if (Form != null)
		{
			Form.Load -= Form_Load;
		}
	}

	private void SubscribeFormNativeWnd()
	{
		m_mainFormNativeWnd = new FormNativeWindow(Form);
		m_mainFormNativeWnd.ActiveWindowChanged += OnAppDeactivated;
	}

	private void InitializeNativeWindow()
	{
		if (Form != null)
		{
			if (Form.Visible)
			{
				SubscribeFormNativeWnd();
			}
			else
			{
				Form.Load += Form_Load;
			}
		}
	}

	private void Form_Load(object sender, EventArgs e)
	{
		SubscribeFormNativeWnd();
		Form.Load -= Form_Load;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnadviseForm();
			DeInitializeNativeWindow();
			if (mainWndSubclass != null)
			{
				mainWndSubclass.Active = false;
				mainWndSubclass = null;
			}
			if (customizationDlg != null)
			{
				customizationDlg.Dispose();
				customizationDlg = null;
			}
			foreach (ArrayList value in formsByTypeName.Values)
			{
				foreach (Form item in value)
				{
					if (!(item.Text == "Dummy Form") || item.IsDisposed)
					{
						continue;
					}
					try
					{
						foreach (Control control in item.Controls)
						{
							if (control.IsHandleCreated)
							{
								control.Visible = false;
							}
						}
						item.Dispose();
					}
					catch (Exception)
					{
					}
				}
			}
			if (commandBarManager != null)
			{
				commandBarManager.Dispose();
				commandBarManager = null;
			}
		}
		base.Dispose(disposing);
	}

	protected virtual bool IsUserCustomizationInfoAvailable(AppStateSerializer serializer)
	{
		object obj = null;
		obj = serializer.DeserializeObject(PersistenceID + ":CustomizedBarSettings");
		if (obj != null)
		{
			return true;
		}
		obj = serializer.DeserializeObject(PersistenceID + ":BarItemsVisibilityInBar");
		if (obj != null)
		{
			return true;
		}
		obj = serializer.DeserializeObject(PersistenceID + ":CustomBarsList");
		if (obj != null)
		{
			return true;
		}
		obj = serializer.DeserializeObject(PersistenceID + ":CustomItemsList");
		if (obj != null)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public void StartDragAndDropCustomizing(IPopupChild popupChild)
	{
		if (base.EnableCustomizing | base.DesignMode)
		{
			if ((Control.ModifierKeys & Keys.Alt) > Keys.None)
			{
				ignoreNextAltKeyUp = true;
			}
			dndCustomizing = true;
			PopupManager.SetCurrentPopupClient(popupChild, active: true, callKillFocusOnFocused: false);
			OnBeginCustomization(EventArgs.Empty);
		}
	}

	[DocumentationExclude]
	public void EndDragAndDropCustomizing()
	{
		if (dndCustomizing)
		{
			dndCustomizing = false;
			OnCustomizationDone(EventArgs.Empty);
		}
	}

	protected virtual void OnProvidePresistenceID(ProvidePersistenceIDEventArgs e)
	{
		if (this.ProvidePersisteceID != null)
		{
			this.ProvidePersisteceID(this, e);
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	protected internal virtual bool OnDrawDockBarBackground(DockBarPaintEventArgs args)
	{
		if (this.DrawDockBarBackground != null)
		{
			this.DrawDockBarBackground(this, args);
			return true;
		}
		return false;
	}

	protected virtual void OnFontChanged(ProvideFontInfoEventArgs args)
	{
		RaiseFontChanged(args);
		if (args.Font != m_font)
		{
			m_font = args.Font;
		}
	}

	private void RaiseFontChanged(ProvideFontInfoEventArgs args)
	{
		if (this.FontChanged != null)
		{
			this.FontChanged(this, args);
		}
	}

	internal bool IsDummyManager(BarManager manager)
	{
		if (manager.Form != null && manager.Form.Text == "Dummy Form")
		{
			return true;
		}
		return false;
	}

	private ArrayList GetLoadedFormsOfType(string formTypeName)
	{
		ArrayList arrayList = formsByTypeName[formTypeName] as ArrayList;
		if (arrayList == null)
		{
			arrayList = new ArrayList();
			formsByTypeName[formTypeName] = arrayList;
		}
		return arrayList;
	}

	private Form GetDummyFormOfType(Type formType)
	{
		if (formsByTypeName[formType.FullName] is ArrayList arrayList)
		{
			foreach (Form item in arrayList)
			{
				if (item.Text == "Dummy Form")
				{
					return item;
				}
			}
		}
		return null;
	}

	private void InitDummyForm(Form form)
	{
		ArrayList loadedFormsOfType = GetLoadedFormsOfType(BarManager.GetFormTypeName(form));
		loadedFormsOfType.Add(form);
		form.Text = "Dummy Form";
		BarManager managerFrom = GetManagerFrom(form);
		managerFrom.mainBarManager = this;
		form.Visible = false;
	}

	private Form GetFormFromType(Type formType)
	{
		ConstructorInfo constructor = formType.GetConstructor(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic, null, new Type[0], null);
		if (constructor != null)
		{
			return constructor.Invoke(new object[0]) as Form;
		}
		return null;
	}

	private Form GetActiveFormOfType(string formTypeName)
	{
		Form result = null;
		if (formsByTypeName[formTypeName] is ArrayList { Count: >0 } arrayList)
		{
			result = arrayList[0] as Form;
		}
		return result;
	}

	[DocumentationExclude]
	public bool ShouldDrawVisible(BarItem item)
	{
		if (item.Manager == null)
		{
			return false;
		}
		if (Customizing)
		{
			if (!IsItemCustomizable(item))
			{
				return false;
			}
			return true;
		}
		if (item.Manager.Form == null || item.Manager.Form.Text == "Dummy Form")
		{
			return false;
		}
		return item.Visible;
	}

	[DocumentationExclude]
	public bool IsItemCustomizable(BarItem item)
	{
		if (item.Customizable || base.DesignMode)
		{
			if (!base.DesignMode && item.Manager != null)
			{
				int categoryIndex = item.CategoryIndex;
				if (item.Manager.CategoriesToIgnoreInCustDialog.IndexOf(categoryIndex) != -1)
				{
					return false;
				}
			}
			return true;
		}
		return false;
	}

	protected void SaveBarStateForForm(Form form)
	{
		if (form == null || commandBarManager == null)
		{
			return;
		}
		BarManager managerFrom = GetManagerFrom(form);
		CommandBarControllerExt commandBarControllerExt = commandBarManager.GetCommandBarController() as CommandBarControllerExt;
		if (managerFrom == null || commandBarControllerExt == null)
		{
			return;
		}
		ArrayList commandBarsForForm = GetCommandBarsForForm(form);
		if (commandBarsForForm == null || commandBarsForForm.Count <= 0)
		{
			return;
		}
		foreach (CommandBar item in commandBarsForForm)
		{
			commandBarControllerExt.AppendCommandBarInfoForPersistance(item);
		}
	}

	internal bool IsMainCommandBar(CommandBarExt cbar)
	{
		bool result = false;
		if (cbar != null)
		{
			ArrayList commandBarsForForm = GetCommandBarsForForm(Form);
			if (commandBarsForForm != null && commandBarsForForm.Count > 0 && commandBarsForForm.Contains(cbar))
			{
				result = true;
			}
		}
		return result;
	}

	internal ArrayList GetCommandBarsForForm(Form form)
	{
		ArrayList arrayList = null;
		if (form != null && commandBarManager != null)
		{
			BarManager managerFrom = GetManagerFrom(form);
			CommandBarController commandBarController = commandBarManager.GetCommandBarController();
			if (managerFrom != null && commandBarController != null)
			{
				ArrayList arrayList2 = managerFrom.GetMergedBars();
				if (arrayList2 != null && arrayList2.Count > 0)
				{
					arrayList = new ArrayList();
					CommandBar commandBar = null;
					foreach (Bar item in arrayList2)
					{
						commandBar = commandBarManager.GetCommandBarFromBar(item);
						if (commandBar != null)
						{
							arrayList.Add(commandBar);
						}
					}
					if (form == Form && DetachedCommandBars != null && DetachedCommandBars.Count > 0)
					{
						foreach (CommandBar detachedCommandBar in DetachedCommandBars)
						{
							arrayList.Add(detachedCommandBar);
						}
					}
				}
			}
		}
		return arrayList;
	}

	private void UpdateCommandBarState(Form form)
	{
		if (form == null)
		{
			return;
		}
		ArrayList commandBarsForForm = GetCommandBarsForForm(form);
		if (commandBarsForForm == null || commandBarsForForm.Count <= 0 || !(commandBarManager.GetCommandBarController() is CommandBarControllerExt commandBarControllerExt))
		{
			return;
		}
		foreach (CommandBar item in commandBarsForForm)
		{
			commandBarControllerExt.LoadCommandBarStateFromCache(item);
		}
	}

	[DocumentationExclude]
	public override bool ProcessShortcut(Keys key)
	{
		bool flag = false;
		if (base.ProcessShortcut(key))
		{
			flag = true;
		}
		if (flag && key == Keys.F10)
		{
			ignoreNextAltKeyUp = true;
		}
		return flag;
	}

	[DocumentationExclude]
	public override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (Customizing)
		{
			return false;
		}
		if ((keyData == (Keys.Menu | Keys.Alt) || keyData == Keys.F10) && commandBarManager != null)
		{
			ProcessMenuKeyDown();
		}
		if (Form.IsMdiContainer)
		{
			Form activeMdiChild = Form.ActiveMdiChild;
			if (activeMdiChild != null)
			{
				BarManager managerFrom = GetManagerFrom(activeMdiChild);
				if (managerFrom != null && managerFrom.ProcessShortcut(keyData))
				{
					return true;
				}
			}
		}
		return ProcessShortcut(keyData);
	}

	private bool ProcessMnemonicInternal(ref Message msg)
	{
		bool result = false;
		Keys keys = (Keys)((int)msg.WParam | (int)Control.ModifierKeys);
		char c = (char)(int)msg.WParam;
		if (Form != null && Form.IsMdiContainer)
		{
			Form activeMdiChild = Form.ActiveMdiChild;
			if (activeMdiChild != null && keys != (Keys.Menu | Keys.Alt) && commandBarManager != null && processedAltKeyDown)
			{
				result = commandBarManager.ProcessShortcut(c);
				processedAltKeyDown = false;
			}
		}
		else if (commandBarManager != null && ActiveForm.ContainsFocus)
		{
			result = commandBarManager.ProcessShortcut(c);
		}
		return result;
	}

	private bool ShouldPreventMessagesToWndWhileCustomizing(IntPtr destWnd)
	{
		try
		{
			Control control = Control.FromHandle(destWnd);
			if (control == null && !SystemInformationExt.IsDotNetApp)
			{
				return false;
			}
			if (control == null)
			{
				control = PopupUtils.GetADotNetParentControl(destWnd);
			}
			if (control != null)
			{
				if (control is MenuGrid || control.FindForm() is IAmACustomizationForm || (control is BarControlInternal && !(control is XPToolBar)) || control is CommandBarExt || control.Parent is MenuGrid || control.FindForm() is PopupHost)
				{
					return false;
				}
				return true;
			}
		}
		catch (Exception t)
		{
			Application.OnThreadException(t);
		}
		return false;
	}

	private void ProcessMenuKeyDown()
	{
		if (processedAltKeyDown)
		{
			return;
		}
		if (commandBarManager.IsKeyboardNavigationOn())
		{
			bNeedStartKeyboardNavigation = false;
			commandBarManager.HintViaHotKeyPrefix = false;
			commandBarManager.StopKeyboardNavigationInMainMenu();
		}
		if (!Customizing)
		{
			Form form = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus())?.FindForm();
			if ((Form.ActiveForm == Form || (form != null && Form == form.Owner)) && !ignoreNextAltKeyUp && bNeedStartKeyboardNavigation)
			{
				commandBarManager.HintViaHotKeyPrefix = true;
			}
			processedAltKeyDown = true;
		}
	}

	private bool ProcessMenuKeyUp()
	{
		try
		{
			if (ignoreNextAltKeyUp)
			{
				commandBarManager.StopKeyboardNavigationInMainMenu();
				ignoreNextAltKeyUp = false;
				return true;
			}
			if (!Customizing)
			{
				Form form = Control.FromHandle(Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus())?.FindForm();
				if ((Form.ActiveForm == Form || (form != null && Form == form.Owner)) && processedAltKeyDown && bNeedStartKeyboardNavigation)
				{
					ignoreNextAltKeyUp = true;
					commandBarManager.StartKeyboardNavigationInMainMenu();
					return true;
				}
				return false;
			}
			return true;
		}
		finally
		{
			processedAltKeyDown = false;
			bNeedStartKeyboardNavigation = true;
		}
	}

	[DocumentationExclude]
	public virtual bool PreFilterMessage(ref Message m)
	{
		if (!base.DesignMode && cachedCustomizingState && ((m.Msg >= 512 && m.Msg <= 525) || (m.Msg >= 256 && m.Msg <= 264) || m.Msg == 123))
		{
			return false;
		}
		if ((Control.ModifierKeys & Keys.Alt) == 0 && dndCustomizing)
		{
			EndDragAndDropCustomizing();
			ignoreNextAltKeyUp = false;
		}
		if (m.Msg == 260)
		{
			if (!SystemInformationExt.IsDotNetApp)
			{
				Keys keys = (Keys)m.WParam.ToInt32();
				if (keys == Keys.Menu && commandBarManager != null)
				{
					ProcessMenuKeyDown();
				}
			}
		}
		else if (m.Msg == 261)
		{
			if ((m.LParam.ToInt64() & 0x20000000) > 0)
			{
				return false;
			}
			Keys keys2 = (Keys)m.WParam.ToInt32();
			if ((keys2 == Keys.Menu || keys2 == Keys.F10) && commandBarManager != null && ProcessMenuKeyUp())
			{
				return true;
			}
		}
		else
		{
			if (m.Msg == 258 || m.Msg == 262)
			{
				return ProcessMnemonicInternal(ref m);
			}
			if (m.Msg == 256)
			{
				Keys key = (Keys)((int)m.WParam | (int)Control.ModifierKeys);
				return ProcessShortcut(key);
			}
		}
		return false;
	}

	protected override void OnDetachForm()
	{
		ListeningToMdiChildrenAdded(subscribe: false);
		base.OnDetachForm();
		UnadviseForm();
	}

	protected new void UnadviseForm()
	{
		Form form = Form;
		if (form != null)
		{
			if (!m_bFormClosed)
			{
				FormClosed(Form, EventArgs.Empty);
			}
			form.MdiChildActivate -= MdiChildActivated;
			form.Activated -= FormActivated;
			form.Deactivate -= FormDeactivate;
		}
	}

	[DocumentationExclude]
	protected override void CreateCommandBarManager()
	{
		if (Form != null)
		{
			commandBarManager = new CommandBarManager(Form, this);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void EndInit()
	{
		if (!base.DesignMode)
		{
			updateInfoList = new ArrayList();
			customAddedBarsVsNames = new ArrayList();
			customAddedItemsVsBarItemID = new ArrayList();
			customContainers = new Hashtable();
			barItemVisibilityInBars = new Hashtable();
			if (AutoPersistCustomization)
			{
				LoadCustomizationInfo(AppStateSerializer.GetSingleton());
				LoadBarStateInternal(AppStateSerializer.GetSingleton(), lockBars: false);
			}
			else if (AutoLoadToolBarPositions)
			{
				LoadBarStateInternal(AppStateSerializer.GetSingleton(), lockBars: false);
			}
			EnsureCenterScreen();
			if (!endInitCalled)
			{
				InitMergedBars();
				AttachCommandBarsOfForm(Form, show: true, hideImmediately: true);
				ListeningToMdiChildrenAdded(subscribe: true);
			}
			else
			{
				commandBarManager.LoadDesignerState(this, loadImmediately: false);
			}
		}
		base.EndInit();
	}

	private void EnsureCenterScreen()
	{
		if (Form != null && Form.IsHandleCreated && Form.StartPosition == FormStartPosition.CenterScreen)
		{
			Type typeFromHandle = typeof(Form);
			try
			{
				typeFromHandle.InvokeMember("CenterToScreen", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod, null, Form, new object[0]);
			}
			catch
			{
			}
		}
	}

	protected override void OnAttachForm()
	{
		base.OnAttachForm();
		currentActiveForm = Form;
		Form.MdiChildActivate += MdiChildActivated;
		Form.Activated += FormActivated;
		Form.Deactivate += FormDeactivate;
		BringFormToFront(Form);
		if (base.DesignMode)
		{
			FormLoaded(null, EventArgs.Empty);
		}
	}

	internal static MdiClient GetMDIClient(BarManager barMan)
	{
		MdiClient result = null;
		if (barMan != null)
		{
			Form form = barMan.Form;
			if (form != null && form.IsMdiContainer)
			{
				foreach (Control control in form.Controls)
				{
					if (control is MdiClient)
					{
						result = control as MdiClient;
						break;
					}
				}
			}
		}
		return result;
	}

	private void ListeningToMdiChildrenAdded(bool subscribe)
	{
		MdiClient mDIClient = GetMDIClient(this);
		if (mDIClient != null)
		{
			if (subscribe)
			{
				mDIClient.ControlAdded += MdiChildAdded;
				mDIClient.ControlRemoved += MdiChildRemoved;
			}
			else
			{
				mDIClient.ControlAdded -= MdiChildAdded;
				mDIClient.ControlRemoved -= MdiChildRemoved;
			}
		}
	}

	private void MdiChildAdded(object sender, ControlEventArgs e)
	{
		Form childForm = e.Control as Form;
		OnMdiChildAdded(childForm);
	}

	private int GetChildFormsCountOfType(Type type)
	{
		int num = 0;
		Form[] mdiChildren = Form.MdiChildren;
		foreach (Form form in mdiChildren)
		{
			if (form.GetType() == type)
			{
				num++;
			}
		}
		return num;
	}

	private void LockHostedFormRedraw()
	{
		if (LockHostedFormForMDIChanges && Form != null)
		{
			NativeMethodsHelper.SuspendRedrawWindow(Form.Handle);
		}
	}

	private void UnLockHostedFormRedraw()
	{
		if (LockHostedFormForMDIChanges && Form != null)
		{
			NativeMethodsHelper.ResumeRedrawWindow(Form.Handle, bRedraw: false);
			int redrawFlags = 1093;
			NativeMethodsHelper.RedrawWindow(Form.Handle, redrawFlags);
		}
	}

	private void OnMdiChildAdded(Form childForm)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		BarManager managerFrom = GetManagerFrom(childForm);
		if (managerFrom != null)
		{
			if (AutoPersistCustomization && m_htChildForms.Count == 0)
			{
				SaveBarStateForForm(Form);
			}
			m_htChildForms[childForm] = childForm;
			Type type = childForm.GetType();
			if (!IsRegisteredType(type))
			{
				htUnregisteredChildTypesVsInstanceCount[type.FullName] = GetChildFormsCountOfType(type);
				Form form = BarManager.CreateDummyForm(childForm);
				RegisterMdiChildTypes(new Type[1] { type }, new Form[1] { form });
			}
			else if (IsAutoRegistered(type))
			{
				int num = (int)htUnregisteredChildTypesVsInstanceCount[type.FullName];
				htUnregisteredChildTypesVsInstanceCount[type.FullName] = ++num;
			}
			if (childForm.Visible && Form.ActiveMdiChild == childForm)
			{
				if (LatestActiveMdiChild == childForm)
				{
					LatestActiveMdiChild = null;
				}
				LatestActiveMdiChild = childForm;
			}
		}
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	private void MdiChildRemoved(object sender, ControlEventArgs e)
	{
		OnMdiChildRemoved(e.Control as Form, fromClose: false);
	}

	private void OnMdiChildRemoved(Form childForm, bool fromClose)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		if (m_htChildForms[childForm] != null)
		{
			m_htChildForms.Remove(childForm);
		}
		if (LatestActiveMdiChild == childForm)
		{
			MdiChildrenFormName = string.Empty;
			LatestActiveMdiChild = null;
		}
		activatedForms.Remove(childForm);
		BarManager managerFrom = GetManagerFrom(childForm);
		if (managerFrom != null)
		{
			LockHostedFormRedraw();
			if (IsRegisteredType(childForm.GetType()))
			{
				foreach (MergedBar value in htBarNameVsMergedBars.Values)
				{
					if (htBarNameVsMergedBars.Contains(value.BarName))
					{
						managerFrom.RestoreOriginalBar(value);
					}
				}
				GetLoadedFormsOfType(childForm.GetType().FullName).Remove(childForm);
				Type type = childForm.GetType();
				if (IsAutoRegistered(type))
				{
					int num = (int)htUnregisteredChildTypesVsInstanceCount[type.FullName];
					num--;
					if (num == 0)
					{
						htUnregisteredChildTypesVsInstanceCount.Remove(type.FullName);
						UnregisterMdiChildTypes(new Type[1] { type }, bForceRedraw: false);
					}
					else
					{
						htUnregisteredChildTypesVsInstanceCount[type.FullName] = num;
					}
				}
				RestoreOriginalChildBars(managerFrom);
			}
			managerFrom.RemoveReferencesToForeignItems();
			UnLockHostedFormRedraw();
		}
		else if (fromClose)
		{
			formsByTypeName.Remove(childForm.GetType().FullName);
		}
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	[DocumentationExclude]
	public bool IsRegisteredType(Type childType, bool checkOnlyManualRegistration)
	{
		Form form = null;
		if (formsByTypeName[childType.FullName] != null)
		{
			form = GetDummyFormOfType(childType);
		}
		bool flag = form != null;
		if (checkOnlyManualRegistration)
		{
			flag &= !htUnregisteredChildTypesVsInstanceCount.Contains(childType.FullName);
		}
		return flag;
	}

	private bool IsManuallyRegistered(Type childType)
	{
		return IsRegisteredType(childType, checkOnlyManualRegistration: true);
	}

	private bool IsAutoRegistered(Type childType)
	{
		if (IsRegisteredType(childType))
		{
			return !IsManuallyRegistered(childType);
		}
		return false;
	}

	private bool IsRegisteredType(Type childType)
	{
		return IsRegisteredType(childType, checkOnlyManualRegistration: false);
	}

	[DocumentationExclude]
	protected virtual void InitNewMenuCategory()
	{
		if (!base.DesignMode)
		{
			int categoryIndex = base.Categories.Add(SR.GetString("CustomMenu"));
			NewMenuItem newMenuItem = new NewMenuItem();
			newMenuItem.CategoryIndex = categoryIndex;
			newMenuItem.Text = SR.GetString("NewMenu");
			newMenuItem.Manager = this;
		}
	}

	[DocumentationExclude]
	public override void FormLoaded(object sender, EventArgs e)
	{
		if (Form != null)
		{
			if (!base.DesignMode)
			{
				MessageFilterEntryHelper.AddMessageFilter(this, ontop: false, Form);
			}
			InitNewMenuCategory();
			base.FormLoaded(sender, e);
		}
	}

	private void FormActivated(object sender, EventArgs e)
	{
		if (Form != null)
		{
			OnFormActivated(Form);
		}
	}

	private void FormDeactivate(object sender, EventArgs e)
	{
		ignoreNextAltKeyUp = false;
	}

	private void MdiChildActivated(object sender, EventArgs e)
	{
		if (Form != null)
		{
			if (PopupManager.ActivePopupClient != null)
			{
				PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Deactivated);
			}
			Form.SuspendLayout();
			commandBarManager.SuspendLayout();
			LatestActiveMdiChild = Form.ActiveMdiChild;
			Form.ResumeLayout(performLayout: false);
			commandBarManager.ResumeLayout();
		}
	}

	public virtual void RegisterMdiChildTypes(Type[] formTypes)
	{
		RegisterMdiChildTypes(formTypes, null);
	}

	private void RegisterMdiChildTypes(Type[] formTypes, Form[] forms)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		if (!Form.IsMdiContainer)
		{
			throw new ArgumentException("MdiChild Types can be registered only if the MainFrameBarManager's Form is an MdiParent.");
		}
		ArrayList arrayList = new ArrayList();
		int num = -1;
		foreach (Type type in formTypes)
		{
			num++;
			if (formsByTypeName[type.FullName] != null)
			{
				htUnregisteredChildTypesVsInstanceCount.Remove(type.FullName);
				continue;
			}
			if (!type.IsSubclassOf(typeof(Form)))
			{
				throw new ArgumentException("The registered Form Type has to be a subclass of type System.Windows.Form.");
			}
			Form form = null;
			if (NewStyleChildTypeRegsitering && forms != null && forms.Length > num)
			{
				form = forms[num];
			}
			else
			{
				form = GetFormFromType(type);
				if (form == null)
				{
					throw new ArgumentException("Cannot find a default constructor in the form type: " + type.ToString());
				}
			}
			arrayList.Add(form);
			BarManager managerFrom = GetManagerFrom(form);
			if (managerFrom == null)
			{
				throw new ArgumentException("Cannot find a ChildFrameBarManager associated with the form type: " + type.ToString());
			}
			InitDummyForm(form);
		}
		if (arrayList.Count > 0)
		{
			foreach (Form item in arrayList)
			{
				UpdateUserChangesIn(item);
				AttachCommandBarsOfForm(item, show: false, hideImmediately: true);
			}
			Form form3 = LatestActiveMdiChild;
			bool flag = mergedBars.Count == 0;
			if (!flag)
			{
				commandBarManager.SuspendLayout();
				LockBars();
				LatestActiveMdiChild = null;
				UnInitMergedBars();
			}
			InitMergedBars();
			if (!flag)
			{
				UpdateUserChangesIn(Form);
				LatestActiveMdiChild = form3;
			}
			AttachCommandBarsOfForm(Form, show: true, hideImmediately: true);
			if (!flag)
			{
				UnLockBars();
				commandBarManager.ResumeLayout();
			}
		}
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	public void ReRegisterMdiChild(Form childForm)
	{
		if (childForm.MdiParent != Form)
		{
			throw new ArgumentException("The child form should be the main form's MdiChild.", "childForm");
		}
		if (IsRegisteredType(childForm.GetType()))
		{
			return;
		}
		if (LatestActiveMdiChild != null && LatestActiveMdiChild.GetType() == childForm.GetType())
		{
			LatestActiveMdiChild = null;
		}
		OnMdiChildAdded(childForm);
		foreach (Bar bar in base.Bars)
		{
			GetBarControl(bar)?.Refresh();
		}
	}

	public virtual void UnregisterMdiChildTypes(Type[] formTypes, bool bForceRedraw)
	{
		if (!Form.IsMdiContainer)
		{
			throw new ArgumentException("MdiChild Types can be unregistered only if the MainFrameBarManager's Form is an MdiParent.");
		}
		try
		{
			LockBars();
			Form form = null;
			bool flag = false;
			ArrayList arrayList = new ArrayList();
			ArrayList arrayList2 = new ArrayList();
			foreach (Type type in formTypes)
			{
				if (type == GetType())
				{
					throw new ArgumentException("The form type to unregister cannot be the main frame form type.", "formTypes");
				}
				if (formsByTypeName[type.FullName] == null)
				{
					continue;
				}
				ArrayList loadedFormsOfType = GetLoadedFormsOfType(type.FullName);
				if (LatestActiveMdiChild != null && LatestActiveMdiChild.GetType() == type)
				{
					form = LatestActiveMdiChild;
					LatestActiveMdiChild = null;
				}
				arrayList2.Add(type);
				if (!flag)
				{
					UpdateAllBars(type);
					flag = true;
				}
				Form form2 = loadedFormsOfType[0] as Form;
				commandBarManager.RemoveBars(GetManagerFrom(form2), saveCommandBarState: true);
				RemoveReferencesToItemsInManager(GetManagerFrom(form2), type);
				htUnregisteredChildTypesVsInstanceCount.Remove(type.FullName);
				foreach (Form item in loadedFormsOfType)
				{
					activatedForms.Remove(item);
					BarManager managerFrom = GetManagerFrom(item);
					managerFrom.mainBarManager = null;
				}
				arrayList.Add(form2);
			}
			if (arrayList2.Count > 0)
			{
				UnInitMergedBars();
				foreach (Type item2 in arrayList2)
				{
					ArrayList arrayList3 = formsByTypeName[item2.FullName] as ArrayList;
					arrayList3.Clear();
					formsByTypeName.Remove(item2.FullName);
				}
				foreach (Form item3 in arrayList)
				{
					item3.Dispose();
				}
				arrayList.Clear();
				InitMergedBars();
				AttachCommandBarsOfForm(Form, Form.Visible, hideImmediately: true);
				UpdateUserChangesIn(Form);
				if (form != null && form.Visible)
				{
					LatestActiveMdiChild = form;
				}
			}
			foreach (Form item4 in arrayList)
			{
				item4.Dispose();
			}
		}
		finally
		{
			UnLockBars();
		}
	}

	public void UnregisterMdiChildTypes(Type[] formTypes)
	{
		UnregisterMdiChildTypes(formTypes, bForceRedraw: true);
	}

	[DocumentationExclude]
	public virtual void RemoveReferencesToBarItem(BarItem item, string unregisteredTypeName)
	{
		base.RemoveReferencesToBarItem(item);
		ArrayList arrayList = formsByTypeName[unregisteredTypeName] as ArrayList;
		foreach (ArrayList value in formsByTypeName.Values)
		{
			if (value == arrayList)
			{
				continue;
			}
			foreach (Form item2 in value)
			{
				if (item2 != Form)
				{
					BarManager managerFrom = GetManagerFrom(item2);
					managerFrom.RemoveReferencesToBarItem(item);
					continue;
				}
				break;
			}
		}
	}

	[DocumentationExclude]
	public virtual void RemoveReferencesToItemsInManager(BarManager manager, Type unregisteredType)
	{
		foreach (BarItem item in manager.Items)
		{
			RemoveReferencesToBarItem(item, unregisteredType.FullName);
		}
	}

	private void LockBars()
	{
		Form.SuspendLayout();
		commandBarManager.LockBars();
	}

	private void UnLockBars()
	{
		commandBarManager.UnLockBars();
		Form.ResumeLayout();
	}

	[DocumentationExclude]
	protected virtual void InitMergedBars()
	{
		mergedBars.Clear();
		htBarNameVsMergedBars.Clear();
		InitMainMenuBar();
		if (!Form.IsMdiContainer)
		{
			return;
		}
		Hashtable hashtable = new Hashtable();
		FillHashWithBarsInForm(Form, hashtable);
		foreach (ArrayList value in formsByTypeName.Values)
		{
			if (value.Count > 0)
			{
				Form form = value[0] as Form;
				if (form != Form)
				{
					FillHashWithBarsInForm(form, hashtable);
				}
			}
		}
		foreach (ArrayList value2 in hashtable.Values)
		{
			if (value2.Count == 0)
			{
				continue;
			}
			Bar[] array = new Bar[value2.Count];
			int num = -1;
			foreach (Bar item in value2)
			{
				num++;
				array[num] = item;
			}
			MergedBar mergedBar = new MergedBar(array, this);
			mergedBars.Add(mergedBar);
			htBarNameVsMergedBars.Add(mergedBar.BarName, mergedBar);
		}
	}

	private void FillHashWithBarsInForm(Form form, Hashtable hash)
	{
		BarManager managerFrom = GetManagerFrom(form);
		foreach (Bar bar in managerFrom.Bars)
		{
			if ((bar.BarStyle & BarStyle.IsMainMenu) == 0)
			{
				InsertIntoHash(hash, bar.BarName, bar);
			}
		}
	}

	private void InsertIntoHash(Hashtable hash, string key, Bar value)
	{
		if (hash[key] == null)
		{
			hash[key] = new ArrayList();
		}
		((ArrayList)hash[key]).Add(value);
	}

	[DocumentationExclude]
	protected void UnInitMergedBars()
	{
		if (mergedBars.Count == 0)
		{
			return;
		}
		foreach (MergedBar mergedBar in mergedBars)
		{
			htBarNameVsMergedBars.Remove(mergedBar.BarName);
			if (mergedBar == mainMenuBar)
			{
				mainMenuBar = null;
			}
			mergedBar.Dispose();
		}
		mergedBars.Clear();
		htBarNameVsMergedBars.Clear();
	}

	private void RestoreOriginalChildBars(BarManager manager)
	{
		foreach (Bar mergedBar in mergedBars)
		{
			manager.RestoreOriginalBar(mergedBar);
		}
	}

	internal void RestoreOriginalChildBars(Bar mergedBar, string formTypeName)
	{
		if (formsByTypeName[formTypeName] == null)
		{
			return;
		}
		ArrayList loadedFormsOfType = GetLoadedFormsOfType(formTypeName);
		BarManager barManager = null;
		foreach (Form item in loadedFormsOfType)
		{
			GetManagerFrom(item)?.RestoreOriginalBar(mergedBar);
		}
	}

	internal void ReplaceChildBarsWithMergedBar(Bar mergedBar, Bar bar)
	{
		ArrayList loadedFormsOfType = GetLoadedFormsOfType(BarManager.GetFormTypeName(bar.Manager));
		foreach (Form item in loadedFormsOfType)
		{
			GetManagerFrom(item).ReplaceBarsWithMergedBar(mergedBar);
		}
	}

	[DocumentationExclude]
	protected virtual void InitMainMenuBar()
	{
		string text = string.Empty;
		ArrayList arrayList = new ArrayList();
		foreach (Bar bar3 in base.Bars)
		{
			if ((bar3.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				arrayList.Add(bar3);
				text = bar3.BarName;
				break;
			}
		}
		if (Form.IsMdiContainer)
		{
			foreach (ArrayList value in formsByTypeName.Values)
			{
				Form form = value[0] as Form;
				if (form != Form)
				{
					Bar bar2 = ((string.Empty == text) ? GetChildMainMenuBar(form) : GetChildMainMenuBar(form, text));
					if (bar2 != null)
					{
						arrayList.Add(bar2);
					}
				}
			}
			if (arrayList.Count > 0)
			{
				Bar[] array = new Bar[arrayList.Count];
				for (int i = 0; i < arrayList.Count; i++)
				{
					array[i] = arrayList[i] as Bar;
				}
				mainMenuBar = new MergedBar(array, this);
				mergedBars.Add(mainMenuBar);
				htBarNameVsMergedBars.Add(MainMenuBar.BarName, mainMenuBar);
			}
		}
		else if (arrayList.Count > 0)
		{
			mainMenuBar = arrayList[0] as Bar;
		}
	}

	[DocumentationExclude]
	protected virtual Bar GetChildMainMenuBar(Form form)
	{
		BarManager managerFrom = GetManagerFrom(form);
		foreach (Bar bar in managerFrom.Bars)
		{
			if ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				return bar;
			}
		}
		return null;
	}

	[DocumentationExclude]
	protected virtual Bar GetChildMainMenuBar(Form form, string mainMenuBarName)
	{
		BarManager managerFrom = GetManagerFrom(form);
		Bar bar = GetChildMainMenuBar(form);
		if (bar == null)
		{
			foreach (Bar bar2 in managerFrom.Bars)
			{
				if (mainMenuBarName == bar2.BarName)
				{
					bar = bar2;
					bar.BarStyle |= BarStyle.IsMainMenu;
					break;
				}
			}
		}
		return bar;
	}

	public void LoadDesignerBarState()
	{
		if (commandBarManager != null)
		{
			commandBarManager.LoadDesignerStateInternal(this, loadImmediately: true);
		}
	}

	public void LoadBarState(AppStateSerializer serializer)
	{
		LoadBarStateInternal(serializer, lockBars: true);
	}

	private void LoadBarStateInternal(AppStateSerializer serializer, bool lockBars)
	{
		if (base.DesignMode || s_isDevEnv)
		{
			return;
		}
		try
		{
			if (commandBarManager != null)
			{
				if (lockBars)
				{
					commandBarManager.LockBars();
				}
				commandBarManager.LoadCommandBarState(serializer);
			}
		}
		catch
		{
		}
		finally
		{
			if (commandBarManager != null && lockBars)
			{
				commandBarManager.UnLockBars();
			}
		}
	}

	protected virtual void LoadCustomizationInfo(AppStateSerializer serializer)
	{
		if (base.DesignMode || s_isDevEnv)
		{
			return;
		}
		try
		{
			object obj = null;
			obj = serializer.DeserializeObject(PersistenceID + ":CustomizedBarSettings");
			if (obj != null)
			{
				updateInfoList = obj as ArrayList;
			}
			obj = serializer.DeserializeObject(PersistenceID + ":BarItemsVisibilityInBar");
			if (obj != null)
			{
				barItemVisibilityInBars = obj as Hashtable;
			}
			obj = serializer.DeserializeObject(PersistenceID + ":CustomBarsList");
			if (obj != null)
			{
				customAddedBarsVsNames = obj as ArrayList;
			}
			obj = serializer.DeserializeObject(PersistenceID + ":CustomItemsList");
			if (obj != null)
			{
				customAddedItemsVsBarItemID = obj as ArrayList;
			}
			obj = serializer.DeserializeObject(PersistenceID + ":CustomItemsContainerList");
			if (obj != null)
			{
				customContainers = obj as Hashtable;
				m_bCustomContainersLoaded = true;
			}
		}
		catch
		{
		}
	}

	public void SaveBarState(AppStateSerializer serializer)
	{
		if (!base.DesignMode && commandBarManager != null)
		{
			commandBarManager.SaveCommandBarState(serializer);
		}
	}

	protected virtual void SaveCustomizationInfo(AppStateSerializer serializer)
	{
		if (base.DesignMode)
		{
			return;
		}
		if (AutoSaveCustomData)
		{
			foreach (BarUpdateInfo updateInfo in updateInfoList)
			{
				if (updateInfo.updateType != UpdateType.InsertAfter && updateInfo.updateType != UpdateType.InsertBefore)
				{
					continue;
				}
				ArrayList arrayList = null;
				BarItemID source = updateInfo.source;
				if (!customContainers.Contains(source))
				{
					arrayList = new ArrayList();
					arrayList.Add(updateInfo.destination);
					customContainers.Add(source, arrayList);
					continue;
				}
				arrayList = customContainers[source] as ArrayList;
				if (!arrayList.Contains(updateInfo.destination))
				{
					arrayList.Add(updateInfo.destination);
				}
			}
		}
		else
		{
			for (int i = 0; i < updateInfoList.Count; i++)
			{
				BarUpdateInfo barUpdateInfo2 = (BarUpdateInfo)updateInfoList[i];
				if ((barUpdateInfo2.updateType == UpdateType.InsertAfter || barUpdateInfo2.updateType == UpdateType.InsertBefore) && !customAddedItemsVsBarItemID.Contains(barUpdateInfo2.source))
				{
					BarItem barItemFromBarItemID = GetBarItemFromBarItemID(barUpdateInfo2.source);
					if (barItemFromBarItemID != null)
					{
						RemoveReferencesToBarItem(barItemFromBarItemID);
						i--;
					}
				}
			}
		}
		serializer.SerializeObject(PersistenceID + ":CustomizedBarSettings", updateInfoList);
		serializer.SerializeObject(PersistenceID + ":BarItemsVisibilityInBar", barItemVisibilityInBars);
		serializer.SerializeObject(PersistenceID + ":CustomBarsList", customAddedBarsVsNames);
		serializer.SerializeObject(PersistenceID + ":CustomItemsList", customAddedItemsVsBarItemID);
		if (customContainers.Count > 0)
		{
			serializer.SerializeObject(PersistenceID + ":CustomItemsContainerList", customContainers);
		}
	}

	[DocumentationExclude]
	public virtual void ResetRecentlyUsedItemsList()
	{
		for (int num = updateInfoList.Count - 1; num >= 0; num--)
		{
			if (((BarUpdateInfo)updateInfoList[num]).updateType == UpdateType.RecentlyUsedItemClicked)
			{
				updateInfoList.RemoveAt(num);
			}
		}
	}

	[DocumentationExclude]
	public virtual void ResetContainer(IBarItemContainer container)
	{
		if (!(container is Bar))
		{
			return;
		}
		Bar bar = container as Bar;
		BarID barID = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager));
		for (int num = updateInfoList.Count - 1; num >= 0; num--)
		{
			BarUpdateInfo barUpdateInfo = (BarUpdateInfo)updateInfoList[num];
			if (barUpdateInfo.destination is BarID)
			{
				BarID barID2 = (BarID)barUpdateInfo.destination;
				if (barID2.containerName == barID.containerName && barID2.formTypeName == barID.formTypeName)
				{
					updateInfoList.RemoveAt(num);
				}
			}
		}
		for (int i = 0; i < container.Items.Count; i++)
		{
			BarItem barItem = container.Items[i];
			ResetBarItem(barItem);
			SetUserVisibilityPreferenceInBar(barItem, bar, show: true);
		}
	}

	public bool ResetBarItem(BarItem barItem)
	{
		if (barItem is CustomParentMenuItem)
		{
			RemoveCustomParentMenu(barItem as CustomParentMenuItem);
			return true;
		}
		BarItemID barItemID = BarItemID.FromBarItem(barItem);
		for (int num = updateInfoList.Count - 1; num >= 0; num--)
		{
			BarUpdateInfo barUpdateInfo = (BarUpdateInfo)updateInfoList[num];
			if ((barUpdateInfo.updateType == UpdateType.ModifiedPaintStyle || barUpdateInfo.updateType == UpdateType.ModifiedText || barUpdateInfo.updateType == UpdateType.ChangedImage) && barUpdateInfo.destination is BarItemID)
			{
				BarItemID barItemID2 = (BarItemID)barUpdateInfo.destination;
				if (barItemID2.barItemID == barItemID.barItemID && barItemID2.formTypeName == barItemID.formTypeName)
				{
					updateInfoList.RemoveAt(num);
				}
			}
		}
		return false;
	}

	internal void RemovePreviouslyAddedChangeImageInfo(BarItem barItem)
	{
		BarItemID barItemID = BarItemID.FromBarItem(barItem);
		for (int num = updateInfoList.Count - 1; num >= 0; num--)
		{
			BarUpdateInfo barUpdateInfo = (BarUpdateInfo)updateInfoList[num];
			if (barUpdateInfo.updateType == UpdateType.ChangedImage && barUpdateInfo.destination is BarItemID)
			{
				BarItemID barItemID2 = (BarItemID)barUpdateInfo.destination;
				if (barItemID2.barItemID == barItemID.barItemID && barItemID2.formTypeName == barItemID.formTypeName)
				{
					updateInfoList.RemoveAt(num);
				}
			}
		}
	}

	public virtual void RecordInsert(BarItem sourceItem, BarItem adjacentItem, IBarItemContainer destination, bool insertBefore)
	{
		UpdateType updateType = ((!insertBefore) ? UpdateType.InsertAfter : UpdateType.InsertBefore);
		BarItem barItem = null;
		barItem = ((!(sourceItem is ParentBarItem parentBarItem)) ? (sourceItem.Clone() as BarItem) : (parentBarItem.Clone(copyClones: true) as ParentBarItem));
		if (insertBefore && adjacentItem != null)
		{
			if (groupBeginersHash.Contains(adjacentItem))
			{
				groupBeginersHash.Remove(adjacentItem);
			}
			groupBeginersHash.Add(adjacentItem, destination.IsGroupBeginning(adjacentItem));
		}
		RecordCommon(sourceItem, adjacentItem, destination, updateType, barItem);
	}

	public virtual void RecordRemove(BarItem sourceItem, IBarItemContainer destination)
	{
		BarItem barItem = null;
		barItem = ((!(sourceItem is ParentBarItem parentBarItem)) ? (sourceItem.Clone() as BarItem) : (parentBarItem.Clone(copyClones: true) as ParentBarItem));
		if (groupBeginersHash.Contains(sourceItem))
		{
			groupBeginersHash.Remove(sourceItem);
		}
		groupBeginersHash.Add(sourceItem, destination.IsGroupBeginning(sourceItem));
		int num = destination.Items.IndexOf(sourceItem);
		BarItem adjacentItem = ((num > 0) ? destination.Items[num - 1] : null);
		RecordCommon(sourceItem, adjacentItem, destination, UpdateType.Remove, barItem);
	}

	[DocumentationExclude]
	public void RecordModifiedPaintStyle(BarItem sourceItem, PaintStyle newStyle)
	{
		RecordCommon(null, null, sourceItem, UpdateType.ModifiedPaintStyle, newStyle);
	}

	[DocumentationExclude]
	public void RecordChangedImage(BarItem sourceItem, ImageExt image)
	{
		RecordCommon(null, null, sourceItem, UpdateType.ChangedImage, image);
	}

	[DocumentationExclude]
	public void RecordBarCaption(Bar sourceItem, string strCaption)
	{
		if (strCaption == null)
		{
			throw new ArgumentNullException("strCaption");
		}
		RecordCommon(null, null, sourceItem, UpdateType.ModifiedText, strCaption);
	}

	[DocumentationExclude]
	public void RecordModifiedCaption(BarItem sourceItem, string newCaption)
	{
		RecordCommon(null, null, sourceItem, UpdateType.ModifiedText, newCaption);
	}

	[DocumentationExclude]
	public void RecordModifiedGrouping(BarItem sourceItem, bool isGroupBeginner, IBarItemContainer parentItem)
	{
		RecordCommon(sourceItem, null, parentItem, UpdateType.ModifiedGrouping, isGroupBeginner);
	}

	[DocumentationExclude]
	public void RecordRecentlyUsedItemClicked(BarItem sourceItem)
	{
		RecordCommon(null, null, sourceItem, UpdateType.RecentlyUsedItemClicked, DateTime.Now);
	}

	[DocumentationExclude]
	public void RecordAddCustomParentMenu(string id)
	{
		RecordCommon(null, null, null, UpdateType.CustomParentItem, new BarItemID(id, ""));
	}

	[DocumentationExclude]
	public void RemoveCustomParentMenu(CustomParentMenuItem item)
	{
		foreach (BarUpdateInfo updateInfo in updateInfoList)
		{
			if (updateInfo.updateType == UpdateType.CustomParentItem && ((BarItemID)updateInfo.updateData).barItemID == item.ID)
			{
				updateInfoList.Remove(updateInfo);
				break;
			}
		}
		RemoveReferencesToBarItem(item);
	}

	[DocumentationExclude]
	public void RecordAddCustomBar(string barName)
	{
		RecordCommon(null, null, null, UpdateType.CustomBarAdded, barName);
	}

	[DocumentationExclude]
	private void RecordAddCustomBarInfo(Bar bar)
	{
		Bar updateData = bar.Clone(copyClones: true) as Bar;
		RecordCommon(null, null, null, UpdateType.CustomBarInfoAdded, updateData);
	}

	[DocumentationExclude]
	public void RemoveCustomBar(Bar bar)
	{
		foreach (BarUpdateInfo updateInfo in updateInfoList)
		{
			if (updateInfo.updateType == UpdateType.CustomBarAdded)
			{
				string text = updateInfo.updateData as string;
				if (text == bar.BarName)
				{
					updateInfoList.Remove(updateInfo);
					break;
				}
			}
			else if (updateInfo.updateType == UpdateType.CustomBarInfoAdded)
			{
				Bar bar2 = updateInfo.updateData as Bar;
				if (bar2.BarName == bar.BarName)
				{
					updateInfoList.Remove(updateInfo);
					break;
				}
			}
		}
		if (base.Bars.Contains(bar))
		{
			base.Bars.Remove(bar);
		}
		if (mainMenuBar == bar)
		{
			mainMenuBar = null;
		}
	}

	[DocumentationExclude]
	public bool IsBarUserDeletable(Bar bar)
	{
		bool result = false;
		foreach (BarUpdateInfo updateInfo in updateInfoList)
		{
			if (updateInfo.updateType == UpdateType.CustomBarAdded)
			{
				string text = updateInfo.updateData as string;
				if (text == bar.BarName)
				{
					result = true;
				}
			}
			else if (updateInfo.updateType == UpdateType.CustomBarInfoAdded)
			{
				Bar bar2 = updateInfo.updateData as Bar;
				if (bar2.BarName == bar.BarName)
				{
					result = true;
				}
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual void RecordCommon(BarItem sourceItem, BarItem adjacentItem, object destinationItem, UpdateType updateType, object updateData)
	{
		OnBeforeRecording(sourceItem, adjacentItem, destinationItem, updateType, updateData);
		BarItemID source = BarItemID.Empty;
		if (sourceItem != null)
		{
			BarManager manager = sourceItem.Manager;
			if (updateType == UpdateType.Remove && sourceItem.Manager == null)
			{
				manager = ((!(destinationItem is BarItem { Manager: not null } barItem)) ? this : barItem.Manager);
			}
			source = new BarItemID(sourceItem.ID, BarManager.GetFormTypeName(manager));
		}
		BarItemID adjacentItem2 = BarItemID.Empty;
		if (adjacentItem != null && !(adjacentItem is StandAloneBarItem))
		{
			adjacentItem2 = new BarItemID(adjacentItem.ID, BarManager.GetFormTypeName(adjacentItem.Manager));
		}
		object destination = null;
		if (destinationItem is Bar)
		{
			Bar bar = destinationItem as Bar;
			BarID barID = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager));
			destination = barID;
		}
		else if (destinationItem is BarItem)
		{
			BarItem barItem2 = destinationItem as BarItem;
			destination = new BarItemID(barItem2.ID, BarManager.GetFormTypeName(barItem2.Manager));
		}
		StoreUpdateInfo(new BarUpdateInfo(source, adjacentItem2, destination, updateType, updateData));
	}

	[DocumentationExclude]
	protected virtual void OnBeforeRecording(BarItem sourceItem, BarItem adjacentItem, object destinationItem, UpdateType updateType, object updateData)
	{
		if (updateType != UpdateType.UsePartialMenus && updateType != UpdateType.LargeIcons)
		{
			return;
		}
		foreach (BarUpdateInfo updateInfo in updateInfoList)
		{
			if ((updateInfo.updateType == UpdateType.UsePartialMenus && updateType == UpdateType.UsePartialMenus) || (updateInfo.updateType == UpdateType.LargeIcons && updateType == UpdateType.LargeIcons))
			{
				updateInfoList.Remove(updateInfo);
				break;
			}
		}
	}

	[DocumentationExclude]
	protected virtual void StoreUpdateInfo(BarUpdateInfo updateInfo)
	{
		if (updateInfo.updateType == UpdateType.RecentlyUsedItemClicked)
		{
			updateInfoList.Insert(0, updateInfo);
		}
		else
		{
			if (updateInfo.updateType == UpdateType.CustomBarInfoAdded)
			{
				string barName = (updateInfo.updateData as Bar).BarName;
				foreach (BarUpdateInfo updateInfo2 in updateInfoList)
				{
					if (updateInfo2.updateType == UpdateType.CustomBarInfoAdded)
					{
						string barName2 = (updateInfo2.updateData as Bar).BarName;
						if (barName == barName2)
						{
							return;
						}
					}
				}
			}
			updateInfoList.Add(updateInfo);
		}
		foreach (ArrayList value in formsByTypeName.Values)
		{
			foreach (Form item in value)
			{
				BarManager managerFrom = GetManagerFrom(item);
				bool keepUpdateInfo = true;
				if (managerFrom != null)
				{
					UpdateUserChangeIn(managerFrom, updateInfo, ref keepUpdateInfo);
				}
			}
		}
	}

	[DocumentationExclude]
	public virtual void OnFormClosed(Form form)
	{
		if (form == Form)
		{
			MessageFilterEntryHelper.RemoveMessageFilter(this);
			if (ResetCustomization)
			{
				AppStateSerializer.GetSingleton().SerializeObject(PersistenceID + ":CustomizedBarSettings", null);
				AppStateSerializer.GetSingleton().SerializeObject(PersistenceID + ":BarItemsVisibilityInBar", null);
				AppStateSerializer.GetSingleton().SerializeObject(PersistenceID + ":CustomBarsList", null);
				AppStateSerializer.GetSingleton().SerializeObject(PersistenceID + ":CustomItemsList", null);
				AppStateSerializer.GetSingleton().SerializeObject(PersistenceID + ":CustomItemsContainerList", null);
			}
			else if (AutoPersistCustomization)
			{
				SaveCustomizationInfo(AppStateSerializer.GetSingleton());
				SaveBarState(AppStateSerializer.GetSingleton());
			}
		}
		if (form != Form)
		{
			CommandBarManager commandBarManager = base.commandBarManager;
			commandBarManager?.SuspendLayout();
			OnMdiChildRemoved(form, fromClose: true);
			BarManager.htFormsVsBarManager.Remove(form);
			commandBarManager?.ResumeLayout();
		}
		activatedForms.Remove(form);
	}

	private void BringFormToFront(Form form)
	{
		ArrayList loadedFormsOfType = GetLoadedFormsOfType(BarManager.GetFormTypeName(form));
		loadedFormsOfType.Remove(form);
		loadedFormsOfType.Insert(0, form);
	}

	[DocumentationExclude]
	public virtual void OnFormActivated(Form form)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		bool flag = activatedForms[form] == null;
		if (!form.Visible && !flag)
		{
			return;
		}
		if (Form != form && (AutoPersistCustomization || AutoLoadToolBarPositions))
		{
			MdiChildrenFormName = form.Name;
		}
		if (mainMenuBar == null && mergedBars.Count == 0)
		{
			commandBarManager.LockBars();
			InitMergedBars();
			commandBarManager.UnLockBars();
		}
		BarManager managerFrom = GetManagerFrom(form);
		if (managerFrom != null)
		{
			activatedForms[form] = 1;
			if (IsRegisteredType(form.GetType()))
			{
				BringFormToFront(form);
				for (int num = managerFrom.Bars.Count - 1; num >= 0; num--)
				{
					Bar bar = managerFrom.Bars[num];
					if (htBarNameVsMergedBars.Contains(bar.BarName))
					{
						managerFrom.ReplaceBarsWithMergedBar(htBarNameVsMergedBars[bar.BarName] as Bar);
					}
				}
			}
			if (flag)
			{
				UpdateUserChangesIn(form);
			}
			if (form != Form || flag)
			{
				if (AutoLoadToolBarPositions && Form != form)
				{
					UpdateCommandBarState(form);
				}
				UpdateBars();
			}
			if (form != Form || Form.ActiveMdiChild == null)
			{
				ActiveForm = form;
			}
			if (IsRegisteredType(form.GetType()))
			{
				AttachCommandBarsOfForm(form, show: true, hideImmediately: false);
				if (mergedBars.Count > 0)
				{
					foreach (Bar mergedBar in mergedBars)
					{
						commandBarManager.RedrawBar(mergedBar);
					}
				}
			}
		}
		Form.ResumeLayout(performLayout: true);
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	[DocumentationExclude]
	public virtual void OnFormDeactivated(Form form, bool updateBars)
	{
		if (Form == form)
		{
			return;
		}
		BarManager managerFrom = GetManagerFrom(form);
		if (managerFrom != null && IsRegisteredType(form.GetType()))
		{
			if (AutoPersistCustomization)
			{
				MdiChildrenFormName = form.Name;
				SaveBarStateForForm(Form);
				SaveBarStateForForm(form);
				MdiChildrenFormName = string.Empty;
			}
			if (AutoLoadToolBarPositions && m_htChildForms.Count == 0)
			{
				UpdateCommandBarState(Form);
			}
			ArrayList loadedFormsOfType = GetLoadedFormsOfType(form.GetType().FullName);
			Form dummyFormOfType = GetDummyFormOfType(form.GetType());
			loadedFormsOfType.Remove(dummyFormOfType);
			loadedFormsOfType.Insert(0, dummyFormOfType);
			if (updateBars)
			{
				UpdateBars();
			}
			ActiveForm = Form;
			commandBarManager.HideBars(managerFrom, hideImmediately: false);
			AttachCommandBarsOfForm(dummyFormOfType, show: false, hideImmediately: false);
		}
	}

	[DocumentationExclude]
	protected internal override void OnBeginCustomization(EventArgs args)
	{
		cachedCustomizingState = true;
		if (!base.DesignMode)
		{
			if (mainWndSubclass.Handle != Form.Handle)
			{
				mainWndSubclass.AssignHandleCustom(Form);
			}
			mainWndSubclass.Active = true;
		}
		base.OnBeginCustomization(args);
	}

	[DocumentationExclude]
	protected internal override void OnCustomizationDone(EventArgs args)
	{
		cachedCustomizingState = false;
		if (!base.DesignMode)
		{
			mainWndSubclass.Active = false;
		}
		base.OnCustomizationDone(args);
	}

	[DocumentationExclude]
	protected virtual void RefreshContainer(IBarItemContainer container)
	{
		for (int i = 0; i < container.Items.Count; i++)
		{
			BarItem barItem = container.Items[i];
			if (barItem.IsDisposed)
			{
				continue;
			}
			if (barItem.Manager == null && container.Manager != null && !container.Manager.Items.Contains(barItem))
			{
				container.Manager.Items.Add(barItem);
			}
			if (barItem.Manager == null)
			{
				throw new NullReferenceException("A BarItem (Text: " + barItem.Text + ") that is not part of a BarManager is found in the menus or toolbars. Make sure to add the BarItem to a BarManager before adding it to the menus or toolbars.");
			}
			BarManager manager = barItem.Manager;
			Form form = manager.Form;
			if (barItem is StandAloneBarItem || form == null)
			{
				continue;
			}
			Form activeFormOfType = GetActiveFormOfType(BarManager.GetFormTypeName(manager));
			if (activeFormOfType == null || form == activeFormOfType)
			{
				continue;
			}
			BarItemID barItemID = new BarItemID(barItem.ID, BarManager.GetFormTypeName(form));
			BarItem barItemFromBarItemID = GetManagerFrom(activeFormOfType).GetBarItemFromBarItemID(barItemID);
			if (barItemFromBarItemID != null)
			{
				int index = container.Items.IndexOf(barItem);
				BarItem barItem2 = barItem;
				bool flag = container.IsGroupBeginning(barItem2);
				if (flag)
				{
					container.RemoveGroupAt(barItem2);
				}
				container.Items[index] = barItemFromBarItemID;
				if (flag)
				{
					container.BeginGroupAt(barItemFromBarItemID);
				}
			}
		}
	}

	[DocumentationExclude]
	protected virtual void UpdateBars()
	{
		foreach (object value in formsByTypeName.Values)
		{
			if (value is ArrayList { Count: not 0 } arrayList)
			{
				Form form = arrayList[0] as Form;
				BarManager managerFrom = GetManagerFrom(form);
				if (managerFrom != null && managerFrom.Bars != null)
				{
					UpdateBarsInManager(managerFrom);
				}
			}
		}
	}

	private void UpdateAllBars(Type unregisteringType)
	{
		ArrayList arrayList = formsByTypeName[unregisteringType.FullName] as ArrayList;
		foreach (object value in formsByTypeName.Values)
		{
			if (!(value is ArrayList arrayList2) || arrayList2 == arrayList)
			{
				continue;
			}
			foreach (Form item in arrayList2)
			{
				BarManager managerFrom = GetManagerFrom(item);
				if (managerFrom != null && managerFrom.Bars != null)
				{
					UpdateBarsInManager(managerFrom);
				}
			}
		}
	}

	private void UpdateBarsInManager(BarManager manager)
	{
		if (commandBarManager == null)
		{
			return;
		}
		foreach (Bar bar in manager.Bars)
		{
			CommandBarExt commandBarFromBar = commandBarManager.GetCommandBarFromBar(bar);
			commandBarFromBar?.SuspendRecalc();
			RefreshContainer(bar);
			commandBarFromBar?.ResumeRecalc(recalcIfNecessary: true);
		}
		for (int i = 0; i < manager.Items.Count; i++)
		{
			if (manager.Items[i] is ParentBarItem container)
			{
				RefreshContainer(container);
			}
		}
	}

	[DocumentationExclude]
	protected virtual void AddCustomBar(BarUpdateInfo updateInfo)
	{
		string text = (string)updateInfo.updateData;
		foreach (Bar bar in base.Bars)
		{
			if (bar.BarName == text)
			{
				return;
			}
		}
		Bar value = new Bar(this, text);
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		base.Bars.Add(value);
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	[DocumentationExclude]
	protected virtual void AddCustomBarInfo(BarUpdateInfo updateInfo)
	{
		Bar bar = updateInfo.updateData as Bar;
		if (!(bar.Clone(copyClones: true) is Bar bar2))
		{
			return;
		}
		foreach (Bar bar3 in base.Bars)
		{
			if (bar3.BarName == bar2.BarName)
			{
				return;
			}
		}
		base.Bars.Add(bar2);
	}

	public void SaveCustomData()
	{
		SaveCustomData(AppStateSerializer.GetSingleton());
	}

	public void SaveCustomData(AppStateSerializer serializer)
	{
		if (!AutoPersistCustomization)
		{
			SaveCustomDataEx(serializer);
		}
	}

	protected void SaveCustomDataEx(AppStateSerializer serializer)
	{
		m_bForceSaveLoadCustomData = true;
		if (ResetCustomization)
		{
			serializer.SerializeObject(PersistenceID + ":CustomizedBarSettings", null);
			serializer.SerializeObject(PersistenceID + ":BarItemsVisibilityInBar", null);
			serializer.SerializeObject(PersistenceID + ":CustomBarsList", null);
			serializer.SerializeObject(PersistenceID + ":CustomItemsList", null);
			serializer.SerializeObject(PersistenceID + ":CustomItemsContainerList", null);
		}
		else
		{
			foreach (BarUpdateInfo updateInfo in updateInfoList)
			{
				if (updateInfo.updateType == UpdateType.CustomBarAdded || updateInfo.updateType == UpdateType.CustomBarInfoAdded)
				{
					string empty = string.Empty;
					empty = ((updateInfo.updateType != UpdateType.CustomBarAdded) ? (updateInfo.updateData as Bar).BarName : ((string)updateInfo.updateData));
					if (!customAddedBarsVsNames.Contains(empty))
					{
						customAddedBarsVsNames.Add(empty);
					}
				}
				else
				{
					if (updateInfo.updateType != UpdateType.InsertAfter && updateInfo.updateType != UpdateType.InsertBefore && updateInfo.updateType != UpdateType.Remove)
					{
						continue;
					}
					BarItemID source = updateInfo.source;
					if (!customAddedItemsVsBarItemID.Contains(source))
					{
						customAddedItemsVsBarItemID.Add(source);
					}
					ArrayList arrayList = null;
					if (!customContainers.Contains(source))
					{
						arrayList = new ArrayList();
						arrayList.Add(updateInfo.destination);
						customContainers.Add(source, arrayList);
						continue;
					}
					arrayList = customContainers[source] as ArrayList;
					if (!arrayList.Contains(updateInfo.destination))
					{
						arrayList.Add(updateInfo.destination);
					}
				}
			}
			m_htWrapper.Clear();
			foreach (CommandBar commandBar in commandBarManager.GetCommandBarController().CommandBars)
			{
				CommandBarExtSerializer commandBarExtSerializer = new CommandBarExtSerializer();
				commandBarExtSerializer.GetCommandBarData(commandBar);
				m_htWrapper.Add(commandBar.Name, commandBarExtSerializer);
			}
			savedUpdateInfoList.Clear();
			savedUpdateInfoList.AddRange(updateInfoList);
			SaveCustomizationInfo(serializer);
			SaveBarState(serializer);
		}
		m_bForceSaveLoadCustomData = false;
	}

	public void LoadCustomData(AppStateSerializer serializer, bool loadBarsState)
	{
		if (!AutoPersistCustomization)
		{
			LoadCustomDataEx(serializer, loadBarsState);
		}
	}

	public void LoadCustomData()
	{
		LoadCustomData(AppStateSerializer.GetSingleton());
	}

	public void LoadCustomData(AppStateSerializer serializer)
	{
		LoadCustomData(serializer, loadBarsState: true);
	}

	protected void LoadCustomDataEx(AppStateSerializer serializer, bool loadBarsState)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		m_bForceSaveLoadCustomData = true;
		RevertNonSavedChanges(serializer);
		updateInfoList = new ArrayList();
		customAddedBarsVsNames = new ArrayList();
		customAddedItemsVsBarItemID = new ArrayList();
		barItemVisibilityInBars = new Hashtable();
		LoadCustomizationInfo(serializer);
		foreach (ArrayList value in formsByTypeName.Values)
		{
			foreach (Form item in value)
			{
				GetManagerFrom(item);
				UpdateUserChangesIn(item);
				AttachCommandBarsOfForm(item, show: true, hideImmediately: false);
			}
		}
		if (loadBarsState)
		{
			LoadBarStateInternal(serializer, lockBars: false);
		}
		foreach (CommandBar commandBar in commandBarManager.GetCommandBarController().CommandBars)
		{
			CommandBarExtSerializer commandBarExtSerializer = m_htWrapper[commandBar.Name] as CommandBarExtSerializer;
			if (!commandBar.Visible || commandBarExtSerializer == null || (commandBar.nMaxLength == commandBarExtSerializer.nMaxLength && !(commandBar.FloatBounds.Location != commandBarExtSerializer.ptFloat) && !(commandBar.FloatBounds.Size != commandBarExtSerializer.szFloat)))
			{
				continue;
			}
			if (commandBar.Floating)
			{
				commandBar.rcFloat = new Rectangle(commandBarExtSerializer.ptFloat, commandBarExtSerializer.szFloat);
				if (commandBar.Parent is CommandBarForm commandBarForm && commandBar.FloatBounds.Location != commandBarForm.Location)
				{
					commandBarForm.Location = commandBar.FloatBounds.Location;
				}
			}
			commandBar.bRedockNeeded = true;
			commandBar.bRecalcNeeded = true;
			CommandBarDockState cbDockStateT = commandBar.cbDockStateT;
			commandBar.cbDockStateT = commandBar.cbarDockState;
			commandBar.RedockIfNeeded();
			commandBar.RecalcIfNeeded();
			commandBar.cbDockStateT = cbDockStateT;
		}
		m_bForceSaveLoadCustomData = false;
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	protected void LoadCustomDataEx(AppStateSerializer serializer)
	{
		LoadCustomDataEx(serializer, loadBarsState: true);
	}

	private void RevertNonSavedChanges(AppStateSerializer serializer)
	{
		bool bNeedSaveCustomData = m_bNeedSaveCustomData;
		m_bNeedSaveCustomData = false;
		object obj = null;
		ArrayList arrayList = new ArrayList();
		ArrayList arrayList2 = new ArrayList();
		Hashtable hashtable = new Hashtable();
		obj = serializer.DeserializeObject(PersistenceID + ":CustomBarsList");
		if (obj != null)
		{
			arrayList = obj as ArrayList;
		}
		obj = serializer.DeserializeObject(PersistenceID + ":CustomItemsList");
		if (obj != null)
		{
			arrayList2 = obj as ArrayList;
		}
		obj = serializer.DeserializeObject(PersistenceID + ":CustomItemsContainerList");
		if (obj != null)
		{
			hashtable = obj as Hashtable;
		}
		for (int num = updateInfoList.Count - 1; num >= 0; num--)
		{
			BarUpdateInfo barUpdateInfo = (BarUpdateInfo)updateInfoList[num];
			if (barUpdateInfo.updateType == UpdateType.CustomBarAdded || barUpdateInfo.updateType == UpdateType.CustomBarInfoAdded)
			{
				string empty = string.Empty;
				empty = ((barUpdateInfo.updateType != UpdateType.CustomBarAdded) ? (barUpdateInfo.updateData as Bar).BarName : ((string)barUpdateInfo.updateData));
				if (!arrayList.Contains(empty))
				{
					for (int i = 0; i < base.Bars.Count; i++)
					{
						if (empty == base.Bars[i].BarName)
						{
							base.Bars.RemoveAt(i);
							num++;
							break;
						}
					}
				}
			}
			else if (barUpdateInfo.updateType == UpdateType.InsertAfter || barUpdateInfo.updateType == UpdateType.InsertBefore || barUpdateInfo.updateType == UpdateType.Remove)
			{
				ArrayList arrayList3 = hashtable[barUpdateInfo.source] as ArrayList;
				BarItemID source = barUpdateInfo.source;
				if (!arrayList2.Contains(source) || (arrayList3 != null && !arrayList3.Contains(barUpdateInfo.destination)))
				{
					for (int j = 0; j < base.Items.Count; j++)
					{
						BarItem barItem = base.Items[j];
						BarItemID barItemID = new BarItemID(barItem.ID, BarManager.GetFormTypeName(barItem.Manager));
						if (!(source == barItemID))
						{
							continue;
						}
						BarManager manager = barItem.Manager;
						IBarItemContainer destinationContainer = GetDestinationContainer(manager, barUpdateInfo.destination);
						BarItem barItem2 = manager.GetBarItemFromBarItemID(barUpdateInfo.adjacentItem);
						if (barItem2 == null)
						{
							barItem2 = SearchBarItem(barUpdateInfo.adjacentItem);
						}
						if (barUpdateInfo.updateType == UpdateType.Remove)
						{
							if (destinationContainer.Items.Contains(barItem))
							{
								int num2 = destinationContainer.Items.IndexOf(barItem);
								BarItem barItem3 = ((num2 < destinationContainer.Items.Count - 1) ? destinationContainer.Items[num2 + 1] : null);
								destinationContainer.Items.Remove(barItem);
								if (barItem3 != null && groupBeginersHash[barItem3] != null && (bool)groupBeginersHash[barItem3])
								{
									destinationContainer.BeginGroupAt(barItem3);
								}
							}
							int num3 = destinationContainer.Items.IndexOf(barItem2);
							destinationContainer.Items.Insert((num3 != -1) ? (num3 + 1) : 0, barItem);
							if (groupBeginersHash[barItem] != null && (bool)groupBeginersHash[barItem])
							{
								destinationContainer.BeginGroupAt(barItem);
							}
							break;
						}
						bool flag = true;
						foreach (BarUpdateInfo updateInfo in updateInfoList)
						{
							if (!(updateInfo.source == barUpdateInfo.source) || updateInfo.updateType != UpdateType.Remove)
							{
								continue;
							}
							flag = false;
							IBarItemContainer destinationContainer2 = GetDestinationContainer(barItem.Manager, updateInfo.destination);
							if (destinationContainer2 != destinationContainer && destinationContainer.Items.Contains(barItem))
							{
								int num4 = destinationContainer.Items.IndexOf(barItem);
								BarItem barItem4 = ((num4 < destinationContainer.Items.Count - 1) ? destinationContainer.Items[num4 + 1] : null);
								destinationContainer.Items.Remove(barItem);
								if (barItem4 != null && groupBeginersHash[barItem4] != null && (bool)groupBeginersHash[barItem4])
								{
									destinationContainer.BeginGroupAt(barItem4);
								}
							}
							break;
						}
						if (!flag)
						{
							break;
						}
						if (barItem.DesignTimeCreated)
						{
							if (destinationContainer.Items.Contains(barItem))
							{
								int num5 = destinationContainer.Items.IndexOf(barItem);
								BarItem barItem5 = ((num5 < destinationContainer.Items.Count - 1) ? destinationContainer.Items[num5 + 1] : null);
								destinationContainer.Items.Remove(barItem);
								if (barItem5 != null && groupBeginersHash[barItem5] != null && (bool)groupBeginersHash[barItem5])
								{
									destinationContainer.BeginGroupAt(barItem5);
								}
							}
						}
						else
						{
							RemoveReferencesToBarItem(barItem);
							num++;
						}
						break;
					}
				}
			}
			else if (barUpdateInfo.updateType == UpdateType.LargeIcons || barUpdateInfo.updateType == UpdateType.UsePartialMenus)
			{
				bool flag2 = false;
				foreach (BarUpdateInfo savedUpdateInfo in savedUpdateInfoList)
				{
					if ((barUpdateInfo.updateType == UpdateType.LargeIcons && savedUpdateInfo.updateType == UpdateType.LargeIcons) || (barUpdateInfo.updateType == UpdateType.UsePartialMenus && savedUpdateInfo.updateType == UpdateType.UsePartialMenus))
					{
						flag2 = true;
						if (barUpdateInfo.updateType == UpdateType.LargeIcons)
						{
							LargeIcons = (bool)savedUpdateInfo.updateData;
						}
						else
						{
							UsePartialMenus = (bool)savedUpdateInfo.updateData;
						}
						break;
					}
				}
				if (!flag2)
				{
					if (barUpdateInfo.updateType == UpdateType.LargeIcons)
					{
						LargeIcons = !LargeIcons;
					}
					else
					{
						UsePartialMenus = !UsePartialMenus;
					}
				}
			}
		}
		m_bNeedSaveCustomData = bNeedSaveCustomData;
	}

	private IBarItemContainer GetDestinationContainer(BarManager manager, object destination)
	{
		IBarItemContainer result = null;
		if (destination is BarID)
		{
			Bar bar = manager.GetBarFromBarID((BarID)destination);
			if (bar == null)
			{
				foreach (BarUpdateInfo updateInfo in updateInfoList)
				{
					if (updateInfo.updateType == UpdateType.CustomBarInfoAdded)
					{
						Bar bar2 = updateInfo.updateData as Bar;
						if (bar2.BarName == ((BarID)destination).containerName)
						{
							bar = bar2;
							break;
						}
					}
				}
			}
			if (bar != null)
			{
				result = bar;
			}
		}
		else if (destination is BarItemID)
		{
			BarItem barItemFromBarItemID = manager.GetBarItemFromBarItemID((BarItemID)destination);
			result = barItemFromBarItemID as ParentBarItem;
		}
		return result;
	}

	protected override void BarListCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		base.BarListCollectionChanged(sender, args);
		if (base.DesignMode || !endInitCalled || !m_bNeedSaveCustomData)
		{
			return;
		}
		Bar bar = args.Element as Bar;
		string text = CommandBarExt.SynthesizeNameFromBar(bar);
		if (MdiChildrenFormName != string.Empty)
		{
			text = text + "_" + MdiChildrenFormName;
		}
		if (!m_bForceSaveLoadCustomData)
		{
			CommandBarController commandBarController = commandBarManager.GetCommandBarController();
			CBCtrlrSerializationWrapper wpprCBController = commandBarController.wpprCBController;
			if (wpprCBController != null && wpprCBController.IsInitialized(text))
			{
				wpprCBController.RemoveCommandBarData(text);
			}
		}
		if (args.Action == CollectionChangeAction.Add)
		{
			if (!customAddedBarsVsNames.Contains(bar.BarName) && AutoSaveCustomData)
			{
				customAddedBarsVsNames.Add(bar.BarName);
			}
			RecordAddCustomBarInfo(bar);
		}
		else if (args.Action == CollectionChangeAction.Remove)
		{
			if (customAddedBarsVsNames.Contains(bar.BarName) && AutoSaveCustomData)
			{
				customAddedBarsVsNames.Remove(bar.BarName);
			}
			RemoveCustomBar(bar);
		}
	}

	[DocumentationExclude]
	protected virtual void UpdateUserChangeIn(BarManager manager, BarUpdateInfo updateInfo, ref bool keepUpdateInfo)
	{
		if (updateInfo.updateType == UpdateType.CustomBarAdded)
		{
			if (manager == this)
			{
				AddCustomBar(updateInfo);
			}
			return;
		}
		if (updateInfo.updateType == UpdateType.CustomBarInfoAdded)
		{
			string barName = (updateInfo.updateData as Bar).BarName;
			if (manager == this && customAddedBarsVsNames.Contains(barName) && (AutoLoadCustomData || m_bForceSaveLoadCustomData))
			{
				AddCustomBarInfo(updateInfo);
			}
			return;
		}
		if (updateInfo.updateType == UpdateType.CustomParentItem)
		{
			if (manager == this)
			{
				BarItemID barItemID = (BarItemID)updateInfo.updateData;
				if (base.Items.IsValidItemID(null, barItemID.barItemID))
				{
					CustomParentMenuItem customParentMenuItem = new CustomParentMenuItem();
					customParentMenuItem.Text = SR.GetString("NewMenu");
					customParentMenuItem.ID = barItemID.barItemID;
					customParentMenuItem.CategoryIndex = 1000;
					customParentMenuItem.Manager = this;
				}
			}
			return;
		}
		if (updateInfo.updateType == UpdateType.UsePartialMenus)
		{
			if (manager == this)
			{
				partialMenusMode = (bool)updateInfo.updateData;
			}
			return;
		}
		if (updateInfo.updateType == UpdateType.LargeIcons)
		{
			if (manager == this)
			{
				bool flag = largeIcs;
				largeIcs = (bool)updateInfo.updateData;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "LargeIcons", flag, largeIcs));
			}
			return;
		}
		if ((updateInfo.updateType == UpdateType.InsertAfter || updateInfo.updateType == UpdateType.InsertBefore || updateInfo.updateType == UpdateType.Remove) && manager == this)
		{
			BarItem barItemFromUpdateInfo = GetBarItemFromUpdateInfo(updateInfo, source: true);
			if (barItemFromUpdateInfo == null || !barItemFromUpdateInfo.DesignTimeCreated)
			{
				ArrayList arrayList = customContainers[updateInfo.source] as ArrayList;
				if ((!Customizing || base.CustomizationHelper.ParentItem != null) && m_bCustomContainersLoaded && (!customAddedItemsVsBarItemID.Contains(updateInfo.source) || (!AutoLoadCustomData && !m_bForceSaveLoadCustomData) || arrayList == null || !arrayList.Contains(updateInfo.destination)))
				{
					return;
				}
			}
		}
		BarItem barItemFromUpdateInfo2 = GetBarItemFromUpdateInfo(updateInfo, source: true);
		BarItem barItemFromUpdateInfo3 = GetBarItemFromUpdateInfo(updateInfo, source: false);
		IBarItemContainer barItemContainer = null;
		BarItem barItem = null;
		if (updateInfo.destination is BarID)
		{
			Bar bar = manager.GetBarFromBarID((BarID)updateInfo.destination);
			if (bar == null)
			{
				foreach (BarUpdateInfo updateInfo2 in updateInfoList)
				{
					if (updateInfo2.updateType == UpdateType.CustomBarInfoAdded)
					{
						Bar bar2 = updateInfo2.updateData as Bar;
						if (bar2.BarName == ((BarID)updateInfo.destination).containerName)
						{
							bar = bar2;
							break;
						}
					}
				}
			}
			if (bar != null)
			{
				bar.LoadBarInfo(updateInfo);
				barItemContainer = bar;
			}
		}
		else if (updateInfo.destination is BarItemID)
		{
			BarItem barItemFromBarItemID = manager.GetBarItemFromBarItemID((BarItemID)updateInfo.destination);
			barItemContainer = barItemFromBarItemID as ParentBarItem;
			if (barItemContainer == null || IsUpdateTypeForItemProperty(updateInfo.updateType))
			{
				barItem = barItemFromBarItemID;
				barItemContainer = null;
			}
		}
		if (barItemContainer != null)
		{
			manager.UpdateContainer(barItemContainer, barItemFromUpdateInfo2, barItemFromUpdateInfo3, updateInfo.updateType, updateInfo.updateData, ref keepUpdateInfo);
		}
		else if (barItem != null)
		{
			manager.UpdateItem(barItem, updateInfo.updateType, updateInfo.updateData, ref keepUpdateInfo);
		}
	}

	private BarItem GetBarItemFromUpdateInfo(BarUpdateInfo updateInfo, bool source)
	{
		BarItem barItem;
		if (source)
		{
			barItem = GetBarItemFromBarItemID(updateInfo.source);
			if (barItem == null)
			{
				barItem = SearchBarItem(updateInfo.source);
			}
			if (barItem == null && updateInfo.updateData is BarItem barItem2)
			{
				barItem = barItem2.Clone() as BarItem;
				bUpdateUserChangeIn = true;
				base.Items.SuspendEvents();
				barItem.Manager = this;
				base.Items.ResumeEvents(throwEvent: false);
				bUpdateUserChangeIn = false;
			}
		}
		else
		{
			barItem = GetBarItemFromBarItemID(updateInfo.adjacentItem);
			if (barItem == null)
			{
				barItem = SearchBarItem(updateInfo.adjacentItem);
			}
		}
		return barItem;
	}

	[DocumentationExclude]
	protected virtual void UpdateUserChangesIn(Form form)
	{
		if (!base.EnableCustomizing && !base.DesignMode)
		{
			return;
		}
		try
		{
			BarManager managerFrom = GetManagerFrom(form);
			bool flag = true;
			int num = updateInfoList.Count;
			for (int i = 0; i < num; i++)
			{
				BarUpdateInfo updateInfo = (BarUpdateInfo)updateInfoList[i];
				flag = true;
				UpdateUserChangeIn(managerFrom, updateInfo, ref flag);
				if (!flag)
				{
					updateInfoList.RemoveAt(i);
					num--;
					i--;
				}
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected internal BarItem SearchBarItem(BarItemID barItemID)
	{
		if (barItemID.barItemID == string.Empty)
		{
			return null;
		}
		BarItem barItem = null;
		foreach (ArrayList value in formsByTypeName.Values)
		{
			Form form = value[0] as Form;
			BarManager managerFrom = GetManagerFrom(form);
			if (managerFrom != null)
			{
				barItem = managerFrom.GetBarItemFromBarItemID(barItemID);
				if (barItem != null)
				{
					break;
				}
			}
		}
		return barItem;
	}

	public override void CopyTo(BarManager barManager)
	{
		MainFrameBarManager mainFrameBarManager = barManager as MainFrameBarManager;
		base.CopyTo(barManager);
		mainFrameBarManager.AutoLoadToolBarPositions = AutoLoadToolBarPositions;
		mainFrameBarManager.AutoPersistCustomization = AutoPersistCustomization;
		mainFrameBarManager.ThemesEnabled = ThemesEnabled;
	}

	internal override MergedParentBarItem[] GetMergedEquivalents(ParentBarItem originalParent)
	{
		ArrayList arrayList = new ArrayList();
		MergedParentBarItem[] mergedEquivalents = base.GetMergedEquivalents(originalParent);
		if (mergedEquivalents != null)
		{
			arrayList.AddRange(mergedEquivalents);
		}
		foreach (ChildFrameBarManager childManager in ChildManagers)
		{
			MergedParentBarItem[] mergedEquivalents2 = childManager.GetMergedEquivalents(originalParent);
			if (mergedEquivalents2 != null && mergedEquivalents2.Length > 0)
			{
				arrayList.AddRange(mergedEquivalents2);
			}
		}
		return (MergedParentBarItem[])arrayList.ToArray(typeof(MergedParentBarItem));
	}

	public Point PointToClient(int x, int y)
	{
		return PointToClient(new Point(x, y));
	}

	public Point PointToClient(Point p)
	{
		Point result = ((Form == null) ? new Point(int.MinValue, int.MinValue) : Form.PointToClient(p));
		if (commandBarManager != null)
		{
			CommandBarController commandBarController = commandBarManager.GetCommandBarController();
			if (commandBarController != null)
			{
				if (commandBarController.CommandDockBarT != null)
				{
					result.Offset(0, -commandBarController.CommandDockBarT.Height);
				}
				if (commandBarController.CommandDockBarL != null)
				{
					result.Offset(-commandBarController.CommandDockBarL.Width, 0);
				}
			}
		}
		return result;
	}

	private void OnAppDeactivated(object sender, EventArgs e)
	{
		if (commandBarManager != null)
		{
			commandBarManager.HintViaHotKeyPrefix = false;
			if (commandBarManager.IsKeyboardNavigationOn())
			{
				ProcessMenuKeyUp();
			}
		}
	}

	public void SuspendDockBarsRedrawSync()
	{
		NativeMethodsHelper.SuspendRedrawWindow(Form.Handle);
	}

	public void ResumeDockBarsRedrawSync()
	{
		NativeMethodsHelper.ResumeRedrawWindow(Form.Handle, bRedraw: true);
	}

	protected override void BarItemsCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		base.BarItemsCollectionChanged(sender, args);
		BarItem barItem = args.Element as BarItem;
		if (args.Action == CollectionChangeAction.Refresh || base.DesignMode || !endInitCalled || barItem is NewMenuItem || !m_bNeedSaveCustomData)
		{
			return;
		}
		switch (args.Action)
		{
		case CollectionChangeAction.Add:
			RecordInsertEx(barItem, overrideInfo: false);
			break;
		case CollectionChangeAction.Remove:
		{
			BarItemID barItemID = new BarItemID(barItem.ID, BarManager.GetFormTypeName(this));
			if (customAddedItemsVsBarItemID.Contains(barItemID) && AutoSaveCustomData)
			{
				customAddedBarsVsNames.Remove(barItemID);
			}
			if (barItem != null && helper.ParentItem != null && helper.ParentItem.Items != null)
			{
				RecordRemove(barItem, helper.ParentItem);
			}
			break;
		}
		}
	}

	internal void RecordInsertEx(BarItem item, bool overrideInfo)
	{
		BarItemID barItemID = new BarItemID(item.ID, BarManager.GetFormTypeName(item.Manager));
		bool insertBefore = false;
		if (!customAddedItemsVsBarItemID.Contains(barItemID) && AutoSaveCustomData)
		{
			customAddedItemsVsBarItemID.Add(barItemID);
		}
		BarItem barItem = null;
		if (helper.ParentItem != null && helper.ParentItem.Items.Count > 0)
		{
			int num = helper.ParentItem.Items.IndexOf(item);
			if (num < 0)
			{
				num = helper.ParentItem.Items.Count;
			}
			else if (num > 0)
			{
				barItem = helper.ParentItem.Items[--num];
			}
			else if (num == 0 && helper.ParentItem.Items.Count > 1)
			{
				insertBefore = true;
			}
		}
		if (overrideInfo)
		{
			if (helper.ParentItem == null)
			{
				return;
			}
			BarItemID barItemID2 = BarItemID.Empty;
			if (item != null)
			{
				barItemID2 = new BarItemID(item.ID, BarManager.GetFormTypeName(item.Manager));
			}
			for (int i = 0; i < updateInfoList.Count; i++)
			{
				BarUpdateInfo barUpdateInfo = (BarUpdateInfo)updateInfoList[i];
				if (barUpdateInfo.source == barItemID2 && barUpdateInfo.destination == null && (barUpdateInfo.updateType == UpdateType.InsertAfter || barUpdateInfo.updateType == UpdateType.InsertBefore))
				{
					object destination = null;
					IBarItemContainer parentItem = helper.ParentItem;
					if (parentItem is Bar)
					{
						Bar bar = parentItem as Bar;
						BarID barID = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager));
						destination = barID;
					}
					else if (parentItem is BarItem)
					{
						BarItem barItem2 = parentItem as BarItem;
						destination = new BarItemID(barItem2.ID, BarManager.GetFormTypeName(barItem2.Manager));
					}
					if (barItem != null)
					{
						barUpdateInfo.adjacentItem = new BarItemID(barItem.ID, BarManager.GetFormTypeName(barItem.Manager));
					}
					BarUpdateInfo barUpdateInfo2 = new BarUpdateInfo(barUpdateInfo.source, barUpdateInfo.adjacentItem, destination, barUpdateInfo.updateType, barUpdateInfo.updateData);
					updateInfoList.RemoveAt(i);
					updateInfoList.Add(barUpdateInfo2);
					break;
				}
			}
		}
		else
		{
			RecordInsert(item, barItem, helper.ParentItem, insertBefore);
		}
	}
}
