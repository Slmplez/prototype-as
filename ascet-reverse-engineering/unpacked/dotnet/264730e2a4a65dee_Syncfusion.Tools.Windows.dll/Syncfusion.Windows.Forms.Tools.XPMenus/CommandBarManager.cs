using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class CommandBarManager : IDisposable
{
	private const string BarVisibilitySettingsLabel = "BarVisibilitySettings";

	private Form form;

	private BarManager manager;

	private BarItem customizeItem;

	private Hashtable commandbarsByBarId;

	private Hashtable barsByFormType;

	private CommandBarControllerExt controller;

	private bool showMainMenusAutomatically;

	private Bar mainMenuBar;

	private CommandBarExt mainMenuCommandBar;

	private CommandBarExt selectedCommandBar;

	private Timer hideTimer;

	private ArrayList barsToHideInManagers;

	private bool loadedFromIsolatedStore;

	private ArrayListExt detachedCommandBars;

	private Hashtable barIdVisibilityPref;

	private PopupMenusManager popupMenusManager;

	private ToolbarListPopupMenu toolbarListPopup;

	private Hashtable m_htLoadedForm = new Hashtable();

	public PopupMenu DockBarContextMenu => toolbarListPopup;

	private bool ThemesEnabled
	{
		get
		{
			if (manager != null && manager.MainFrameBarManager != null)
			{
				return manager.MainFrameBarManager.ThemesEnabled;
			}
			return false;
		}
	}

	internal bool Customizing
	{
		get
		{
			if (manager != null)
			{
				return manager.Customizing;
			}
			return false;
		}
	}

	internal ArrayListExt DetachedCommandBars => detachedCommandBars;

	public BarManager BarManager => manager;

	internal string PersistenceID
	{
		get
		{
			if (manager != null && manager is MainFrameBarManager)
			{
				return ((MainFrameBarManager)manager).PersistenceID;
			}
			return string.Empty;
		}
	}

	public bool ShowMainMenusAutomatically
	{
		get
		{
			return showMainMenusAutomatically;
		}
		set
		{
			showMainMenusAutomatically = value;
		}
	}

	public bool HintViaHotKeyPrefix
	{
		set
		{
			if (mainMenuCommandBar != null)
			{
				BarControlInternal barControl = mainMenuCommandBar.BarControl;
				if (barControl != null)
				{
					barControl.HintViaHotKeyPrefix = value;
				}
			}
			foreach (CommandBarExt value2 in commandbarsByBarId.Values)
			{
				BarControlInternal barControl2 = value2.BarControl;
				if (barControl2 != null)
				{
					barControl2.HintViaHotKeyPrefix = value;
				}
			}
		}
	}

	public CommandBarExt SelectedCommandbar
	{
		get
		{
			return selectedCommandBar;
		}
		set
		{
			if (selectedCommandBar == value)
			{
				return;
			}
			selectedCommandBar = value;
			foreach (CommandBarExt value2 in commandbarsByBarId.Values)
			{
				value2.Refresh();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(Office2007Theme.Blue)]
	[Description("Colorschemes for Office2007 visual style.")]
	public Office2007Theme Office2007Theme
	{
		get
		{
			Office2007Theme result = Office2007Theme.Blue;
			if (controller != null)
			{
				result = controller.Office2007Theme;
			}
			return result;
		}
		set
		{
			if (controller != null)
			{
				controller.Office2007Theme = value;
			}
		}
	}

	static CommandBarManager()
	{
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(CommandBarManager).Assembly);
	}

	public CommandBarManager(Form form, BarManager manager)
	{
		this.form = form;
		this.manager = manager;
		popupMenusManager = CreateInternalPopupMenusManager();
		toolbarListPopup = CreateToolbarListPopup();
		controller = new CommandBarControllerExt(this);
		controller.PersistState = false;
		controller.CommandBarSerializer = typeof(CommandBarExtSerializer);
		controller.DockBarStateChanged += DockBarStateChanged;
		controller.HostForm = this.form;
		controller.InitializeCBController();
		controller.bDisableButtons = manager.DesignMode;
		controller.ThemesEnabled = ThemesEnabled;
		controller.Style = manager.Style;
		commandbarsByBarId = new Hashtable();
		barsByFormType = new Hashtable();
		barIdVisibilityPref = new Hashtable();
		hideTimer = new Timer();
		hideTimer.Interval = 100;
		hideTimer.Tick += HideBarsEvent;
		customizeItem = new BarItem(SR.GetString("CustomizeMenu"));
		customizeItem.Click += Customize_Clicked;
		this.manager.CustomizationBegin += CusomizationBegin;
		this.manager.CustomizationDone += CusomizationDone;
		this.manager.PropertyChanged += Property_Changed;
		barsToHideInManagers = new ArrayList();
		detachedCommandBars = new ArrayListExt();
		detachedCommandBars.CollectionChanged += DetachedBars_CollectionChanged;
		if (this.manager is MainFrameBarManager && !this.manager.DesignMode)
		{
			controller.Manager = this.manager as MainFrameBarManager;
		}
	}

	protected virtual PopupMenusManager CreateInternalPopupMenusManager()
	{
		return new PopupMenusManager();
	}

	protected virtual ToolbarListPopupMenu CreateToolbarListPopup()
	{
		return new ToolbarListPopupMenu(this);
	}

	private void CusomizationBegin(object sender, EventArgs e)
	{
		controller.bDisableButtons = true;
	}

	private void CusomizationDone(object sender, EventArgs e)
	{
		controller.bDisableButtons = manager.DesignMode;
	}

	public CommandBarController GetCommandBarController()
	{
		return controller;
	}

	private void DetachedBars_CollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		if (e.Action == CollectionChangeAction.Add)
		{
			controller.CommandBars.Add(e.Element as CommandBar);
		}
		else if (e.Action == CollectionChangeAction.Remove)
		{
			controller.CommandBars.Remove(e.Element as CommandBar);
		}
	}

	private void Property_Changed(object sender, SyncfusionPropertyChangedEventArgs args)
	{
		switch (args.PropertyName)
		{
		case "ThemesEnabled":
		{
			if (controller != null)
			{
				controller.ThemesEnabled = ThemesEnabled;
			}
			bool themesEnabled = (bool)args.NewValue;
			foreach (CommandBarExt value in commandbarsByBarId.Values)
			{
				value.BarControl.ThemesEnabled = themesEnabled;
			}
			break;
		}
		case "Style":
			if (controller != null)
			{
				controller.Style = manager.Style;
			}
			break;
		case "RightToLeft":
		{
			RightToLeft rightToLeft = ((manager != null) ? manager.RightToLeft : ((form != null) ? form.RightToLeft : RightToLeft.No));
			foreach (CommandBar detachedCommandBar in DetachedCommandBars)
			{
				detachedCommandBar.RightToLeft = rightToLeft;
			}
			break;
		}
		}
		if (args.PropertyChangeEffect == PropertyChangeEffect.NeedLayout)
		{
			RecalcLayout();
		}
	}

	public void RecalcLayout()
	{
		foreach (CommandBarExt value in commandbarsByBarId.Values)
		{
			bool needLayout = value.NeedLayout;
			bool dontRecalc = !value.NeedLayout;
			value.RecalcBarLayout(needLayout, dontRecalc);
		}
		controller.RecalcLayout(CommandBarDockBorder.Top | CommandBarDockBorder.Bottom | CommandBarDockBorder.Left | CommandBarDockBorder.Right);
	}

	~CommandBarManager()
	{
		Dispose(disposing: false);
	}

	public virtual void Dispose()
	{
		hideTimer.Tick -= HideBarsEvent;
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (!disposing)
		{
			return;
		}
		CleanupOnFormClose();
		if (mainMenuCommandBar != null)
		{
			mainMenuCommandBar.Dispose();
		}
		if (selectedCommandBar != null)
		{
			selectedCommandBar.Dispose();
		}
		if (toolbarListPopup != null)
		{
			toolbarListPopup.Dispose();
			toolbarListPopup = null;
		}
		if (controller != null)
		{
			controller.Dispose();
			controller = null;
		}
		if (manager != null)
		{
			manager.Bars.CollectionChanged -= BarCollectionChanged;
			manager.Bars.ItemPropertyChanged -= BarPropertyChanged;
			manager.CustomizationBegin -= CusomizationBegin;
			manager.CustomizationDone -= CusomizationDone;
			manager.PropertyChanged -= Property_Changed;
			manager = null;
		}
		if (popupMenusManager != null)
		{
			popupMenusManager.Dispose();
			popupMenusManager = null;
		}
		if (customizeItem != null)
		{
			customizeItem.Click -= Customize_Clicked;
			customizeItem.Dispose();
			customizeItem = null;
		}
		foreach (CommandBarExt item in commandbarsByBarId)
		{
			StopListeningForMousePress(item);
			item.Dispose();
		}
		commandbarsByBarId.Clear();
		barsByFormType.Clear();
		detachedCommandBars.CollectionChanged -= DetachedBars_CollectionChanged;
		detachedCommandBars.Clear();
		barsToHideInManagers.Clear();
		form = null;
	}

	public void CleanupOnFormClose()
	{
		commandbarsByBarId.Clear();
	}

	public void SaveCommandBarState(AppStateSerializer serializer)
	{
		serializer.SerializeObject(PersistenceID + ":BarVisibilitySettings", barIdVisibilityPref);
		try
		{
			controller.SaveCommandBarState(serializer);
		}
		catch
		{
		}
	}

	public void LockBars()
	{
		controller.FreezeLayout = true;
	}

	public void UnLockBars()
	{
		controller.FreezeLayout = false;
		if (controller.alDelayLoadBars.Count > 0)
		{
			for (int i = 0; i < controller.alDelayLoadBars.Count; i++)
			{
				CommandBar commandBar = controller.alDelayLoadBars[i] as CommandBar;
				if (commandBar.Visible)
				{
					CommandBarDockState dockBorder = commandBar.cdbParent.GetDockBorder();
					commandBar.cbarDockState = CommandBarDockState.None;
					commandBar.FireCommandBarStateChanging(new CommandBarStateChangingEventArgs(dockBorder));
					commandBar.cbarDockState = dockBorder;
					commandBar.cdbParent.IsInitializing = true;
					commandBar.cdbParent.AddCommandBar(commandBar, bcreatenewrow: false);
					commandBar.cdbParent.IsInitializing = false;
					commandBar.FireCommandBarStateChanged(EventArgs.Empty);
				}
			}
			foreach (CommandBar alDelayLoadBar in controller.alDelayLoadBars)
			{
				alDelayLoadBar.cdbParent.ReplaceBarLocation(alDelayLoadBar);
			}
			controller.alDelayLoadBars.Clear();
		}
		RecalcLayout();
	}

	public void LoadCommandBarState(AppStateSerializer serializer)
	{
		object obj = null;
		obj = serializer.DeserializeObject(PersistenceID + ":BarVisibilitySettings");
		if (obj != null)
		{
			barIdVisibilityPref = obj as Hashtable;
		}
		try
		{
			loadedFromIsolatedStore = controller.LoadCommandBarState(serializer);
		}
		catch
		{
		}
		UpdateCommandBarsVisibility();
	}

	private void UpdateCommandBarsVisibility()
	{
		foreach (CommandBar commandBar in controller.CommandBars)
		{
			if (commandBar is CommandBarExt)
			{
				CommandBarExt commandBarExt = commandBar as CommandBarExt;
				Bar bar = commandBarExt.Bar;
				if (bar != null)
				{
					ShowOrHideBar(bar, bar.Manager, show: true);
				}
			}
		}
	}

	public void LoadCommandBarState_Changed()
	{
		if (manager.MainFrameBarManager != null && !manager.MainFrameBarManager.AutoLoadToolBarPositions)
		{
			loadedFromIsolatedStore = false;
			controller.LoseCachedCommandBarState();
		}
	}

	public bool ProcessShortcut(char c)
	{
		bool flag = false;
		if ((Control.ModifierKeys & Keys.Alt) != Keys.None)
		{
			if (mainMenuCommandBar != null)
			{
				flag = mainMenuCommandBar.ProcessShortcut(c);
			}
			if (!flag)
			{
				foreach (CommandBarExt value in commandbarsByBarId.Values)
				{
					if (value.Visible)
					{
						flag |= value.ProcessShortcut(c);
					}
					if (flag)
					{
						break;
					}
				}
			}
		}
		return flag;
	}

	public void AttachMainMenuBar(Bar mainMenuBar)
	{
		if (this.mainMenuBar == mainMenuBar)
		{
			return;
		}
		if (this.mainMenuBar != null)
		{
			string key = new BarID(this.mainMenuBar.BarName, BarManager.GetFormTypeName(this.mainMenuBar.Manager)).ToString();
			commandbarsByBarId.Remove(key);
		}
		this.mainMenuBar = mainMenuBar;
		if (mainMenuBar == null)
		{
			mainMenuCommandBar = null;
		}
		if (this.mainMenuBar != null)
		{
			string key2 = new BarID(mainMenuBar.BarName, BarManager.GetFormTypeName(mainMenuBar.Manager)).ToString();
			if (mainMenuCommandBar == null)
			{
				mainMenuCommandBar = BindBarInternal(mainMenuBar);
				return;
			}
			commandbarsByBarId[key2] = mainMenuCommandBar;
			mainMenuCommandBar = BindBarInternal(mainMenuBar);
		}
	}

	public void UpdateDesignTimeVisibility(bool visible)
	{
		foreach (CommandBar commandBar in controller.CommandBars)
		{
			if (commandBar.DockState == CommandBarDockState.Float && commandBar.Visible && commandBar.Parent != null)
			{
				commandBar.Parent.Visible = visible;
			}
		}
	}

	internal void SuspendLayout()
	{
		controller.SuspendLayout();
	}

	internal void ResumeLayout()
	{
		controller.ResumeLayout();
	}

	public void StartKeyboardNavigationInMainMenu()
	{
		if (mainMenuCommandBar != null)
		{
			IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(Control.MousePosition.X, Control.MousePosition.Y);
			Control control = Control.FromHandle(intPtr);
			if ((control != null && control != mainMenuCommandBar) || intPtr != IntPtr.Zero)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(intPtr, 675, 0, 0);
			}
			if (mainMenuCommandBar.BarControl.IsKeyboardNavigationOn())
			{
				mainMenuCommandBar.BarControl.StopKeyboardBasedNavigation();
				(BarManager as MainFrameBarManager).ignoreNextAltKeyUp = false;
			}
			else
			{
				mainMenuCommandBar.BarControl.StartKeyboardBasedNavigation();
			}
		}
	}

	internal void MoveMenuNavigation(CommandBarExt cbe, bool forward)
	{
		ArrayList arrayList = new ArrayList();
		foreach (CommandBarExt value in commandbarsByBarId.Values)
		{
			arrayList.Add(value);
		}
		if (forward)
		{
			int num = -1;
			{
				foreach (CommandBarExt item in arrayList)
				{
					num++;
					if (item != cbe)
					{
						continue;
					}
					int num2 = num + 1;
					if (num2 >= arrayList.Count)
					{
						num2 = 0;
					}
					CommandBarExt commandBarExt2 = null;
					for (int i = num2; i != num; i++)
					{
						CommandBarExt commandBarExt3 = arrayList[i] as CommandBarExt;
						if (commandBarExt3.BarControl.CanStartKeybardBasedNavigation())
						{
							commandBarExt2 = commandBarExt3;
							break;
						}
						if (i == arrayList.Count - 1)
						{
							i = -1;
						}
					}
					if (commandBarExt2 != null && commandBarExt2 != cbe)
					{
						commandBarExt2.BarControl.StartKeyboardBasedNavigation();
					}
				}
				return;
			}
		}
		int num3 = -1;
		foreach (CommandBarExt item2 in arrayList)
		{
			num3++;
			if (item2 != cbe)
			{
				continue;
			}
			int num4 = num3 - 1;
			if (num4 < 0)
			{
				num4 = arrayList.Count - 1;
			}
			CommandBarExt commandBarExt5 = null;
			for (int num5 = num4; num5 != num3; num5--)
			{
				CommandBarExt commandBarExt6 = arrayList[num5] as CommandBarExt;
				if (commandBarExt6.BarControl.CanStartKeybardBasedNavigation())
				{
					commandBarExt5 = commandBarExt6;
					break;
				}
				if (num5 == 0)
				{
					num5 = arrayList.Count;
				}
			}
			if (commandBarExt5 != null && commandBarExt5 != cbe)
			{
				commandBarExt5.BarControl.StartKeyboardBasedNavigation();
			}
		}
	}

	public bool IsKeyboardNavigationOn()
	{
		bool flag = false;
		if (mainMenuCommandBar != null)
		{
			flag = mainMenuCommandBar.BarControl.IsKeyboardNavigationOn();
		}
		if (!flag)
		{
			foreach (CommandBarExt value in commandbarsByBarId.Values)
			{
				if (value.BarControl.IsKeyboardNavigationOn())
				{
					flag = true;
					break;
				}
			}
		}
		return flag;
	}

	public void StopKeyboardNavigationInMainMenu()
	{
		BarControlInternal barControlInternal = null;
		if (mainMenuCommandBar != null && mainMenuCommandBar.BarControl.IsKeyboardNavigationOn())
		{
			barControlInternal = mainMenuCommandBar.BarControl;
		}
		else
		{
			foreach (CommandBarExt value in commandbarsByBarId.Values)
			{
				if (value.BarControl.IsKeyboardNavigationOn())
				{
					barControlInternal = value.BarControl;
					break;
				}
			}
		}
		barControlInternal?.StopKeyboardBasedNavigation();
	}

	private bool IsActiveManager(BarManager manager)
	{
		if (manager.DesignMode)
		{
			return true;
		}
		return manager.MainFrameBarManager.Form.ActiveMdiChild == manager.Form;
	}

	private void Customize_Clicked(object sender, EventArgs e)
	{
		StartCustomize();
	}

	private void StartCustomize()
	{
		manager.Customize(start: true);
	}

	private void UserChangedBarVisibility(object sender, EventArgs e)
	{
		BarItem barItem = (BarItem)sender;
		if (barItem.Tag != null)
		{
			CommandBarExt commandBarExt = barItem.Tag as CommandBarExt;
			bool visible = !barItem.Checked;
			Bar bar = commandBarExt.Bar;
			SetBarVisibility(bar, visible);
			barItem.Checked = commandBarExt.Visible;
			if (manager != null && bar != null)
			{
				manager.OnUserChangedBarVisibility(bar);
			}
		}
	}

	public void SetBarVisibility(Bar bar, bool visible)
	{
		string key = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		CommandBarExt commandBarExt = commandbarsByBarId[key] as CommandBarExt;
		if (bar.Manager.DesignMode)
		{
			if (visible)
			{
				bar.BarStyle |= BarStyle.Visible;
			}
			else
			{
				bar.BarStyle &= ~BarStyle.Visible;
			}
			commandBarExt.OnBarChanged();
		}
		else
		{
			bool flag = IsActiveManager(bar.Manager);
			flag |= bar.Manager is MainFrameBarManager;
			bool flag2 = false;
			if (visible && flag && (bar.BarStyle & BarStyle.Visible) <= BarStyle.None)
			{
				flag2 = true;
				bar.BarStyle |= BarStyle.Visible;
			}
			if (!visible || !flag || flag2)
			{
				barIdVisibilityPref[key] = visible;
			}
			if ((!visible && !flag) || (visible && flag && !flag2))
			{
				barIdVisibilityPref.Remove(key);
			}
			if (commandBarExt != null)
			{
				commandBarExt.Visible = visible;
			}
		}
		if (controller != null)
		{
			controller.LayoutDockBarsExceptBar(commandBarExt.Parent as CommandDockBar);
		}
	}

	public bool IsBarVisible(Bar bar)
	{
		return GetCommandBarFromBar(bar)?.Visible ?? false;
	}

	private void HideBarsEvent(object sender, EventArgs e)
	{
		if (barsToHideInManagers.Count > 0)
		{
			foreach (BarManager barsToHideInManager in barsToHideInManagers)
			{
				ShowOrHideBars(barsToHideInManager, show: false);
			}
			barsToHideInManagers.Clear();
		}
		hideTimer.Stop();
	}

	protected virtual void ShowOrHideBars(BarManager manager, bool show)
	{
		Bars bars = manager.Bars;
		if (bars == null)
		{
			return;
		}
		foreach (Bar item in bars)
		{
			ShowOrHideBar(item, manager, show);
		}
	}

	private void ShowOrHideBar(Bar bar, BarManager manager, bool show)
	{
		bool flag = show;
		if (!bar.Manager.DesignMode)
		{
			flag &= ((bar.BarStyle & BarStyle.Visible) > BarStyle.None) | ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None);
		}
		string text = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		if (IsUserPrefAvailable(text))
		{
			flag = GetUserVisibilityPrefOfBar(text);
		}
		if (bar is MergedBar)
		{
			MergedBar mergedBar = bar as MergedBar;
			if (!mergedBar.CurrentVisibleStateDueToMerge)
			{
				flag = false;
			}
		}
		if (commandbarsByBarId[text] is CommandBarExt commandBarExt)
		{
			if (flag)
			{
				commandBarExt.Visible = true;
			}
			else
			{
				commandBarExt.Visible = false;
			}
		}
	}

	public void ShowBars(BarManager manager)
	{
		if (barsToHideInManagers.Count > 0)
		{
			foreach (BarManager barsToHideInManager in barsToHideInManagers)
			{
				if (barsToHideInManager.Form.GetType() == manager.Form.GetType())
				{
					barsToHideInManagers.Remove(barsToHideInManager);
					break;
				}
			}
		}
		ShowOrHideBars(manager, show: true);
	}

	public void HideBars(BarManager manager, bool hideImmediately)
	{
		foreach (BarManager barsToHideInManager in barsToHideInManagers)
		{
			if (barsToHideInManager.Form.GetType() == manager.Form.GetType())
			{
				barsToHideInManagers.Remove(barsToHideInManager);
				break;
			}
		}
		barsToHideInManagers.Add(manager);
		HideBarsEvent(this, EventArgs.Empty);
	}

	public void RedrawBar(Bar bar)
	{
		if (bar != null)
		{
			if (bar == mainMenuBar)
			{
				mainMenuCommandBar.OnBarBoundsChanged();
			}
			else
			{
				GetCommandBarFromBar(bar)?.OnBarBoundsChanged();
			}
		}
	}

	public bool GetUserVisibilityPrefOfBar(Bar bar)
	{
		string barIdAsString = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		return GetUserVisibilityPrefOfBar(barIdAsString);
	}

	private bool GetUserVisibilityPrefOfBar(string barIdAsString)
	{
		if (barIdVisibilityPref[barIdAsString] != null)
		{
			return (bool)barIdVisibilityPref[barIdAsString];
		}
		return true;
	}

	public bool IsUserPrefAvailable(Bar bar)
	{
		string barIdAsString = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		return IsUserPrefAvailable(barIdAsString);
	}

	private bool IsUserPrefAvailable(string barIdAsString)
	{
		return barIdVisibilityPref[barIdAsString] != null;
	}

	protected internal virtual void StartListeningForMousePress(Control control)
	{
		popupMenusManager.SetXPContextMenu(control, toolbarListPopup);
	}

	protected internal virtual void StopListeningForMousePress(Control control)
	{
		if (control != null && popupMenusManager != null)
		{
			popupMenusManager.SetXPContextMenu(control, null);
		}
	}

	public virtual void PrepareToolbarListItem(ParentBarItem parent)
	{
		parent.Items.Clear();
		parent.Style = BarManager.Style;
		foreach (CommandBarExt value in commandbarsByBarId.Values)
		{
			if (value.Bar == mainMenuBar || !value.Bar.AllowHiding)
			{
				continue;
			}
			bool flag = true;
			if (value.Bar is MergedBar mergedBar)
			{
				flag = mergedBar.CurrentVisibleStateDueToMerge;
			}
			if (flag)
			{
				string text = value.Text;
				if (value.Bar != null)
				{
					text = ((value.Bar.Caption == null) ? value.Text : value.Bar.Caption);
				}
				BarItem barItem = new BarItem(text);
				barItem.Tag = value;
				barItem.Checked = value.Visible;
				barItem.MergeOrder = value.Bar.MenuItemMergeOrder;
				barItem.Click += UserChangedBarVisibility;
				parent.Items.Insert(parent.Items.FindMergePosition(barItem.MergeOrder), barItem);
			}
		}
		if (BarManager.EnableCustomizing | BarManager.DesignMode)
		{
			parent.Items.Add(customizeItem);
			parent.BeginGroupAt(customizeItem);
		}
	}

	private void DockBarStateChanged(object sender, CommandBarController.DockBarStateEventArgs args)
	{
		if (args.Created)
		{
			StartListeningForMousePress(args.CommandDockBar);
			args.CommandDockBar.DoubleClick += DockBarDoubleClick;
		}
		else
		{
			StopListeningForMousePress(args.CommandDockBar);
			args.CommandDockBar.DoubleClick -= DockBarDoubleClick;
		}
	}

	private void DockBarDoubleClick(object sender, EventArgs e)
	{
		StartCustomize();
	}

	public void SetDesigntimeSelectedBar(Bar bar)
	{
		if (!manager.DesignMode)
		{
			return;
		}
		if (bar == null)
		{
			SelectedCommandbar = null;
			return;
		}
		CommandBarExt commandBarFromBar = GetCommandBarFromBar(bar);
		if (commandBarFromBar != null)
		{
			SelectedCommandbar = commandBarFromBar;
		}
	}

	public void AttachBars(BarManager manager)
	{
		Bars bars = manager.Bars;
		string formTypeName = BarManager.GetFormTypeName(manager);
		if (barsByFormType[formTypeName] == bars)
		{
			return;
		}
		if (barsByFormType[formTypeName] != null)
		{
			ReleaseBars(barsByFormType[formTypeName] as Bars);
		}
		barsByFormType[formTypeName] = bars;
		bars.CollectionChanged += BarCollectionChanged;
		bars.ItemPropertyChanged += BarPropertyChanged;
		LockBars();
		foreach (Bar item in bars)
		{
			BindBar(item);
		}
		UnLockBars();
		if (manager.MainFrameBarManager != null && manager.MainFrameBarManager.AutoLoadToolBarPositions)
		{
			LoadDesignerState(manager, loadImmediately: false);
		}
	}

	public void LoadDesignerState(BarManager manager, bool loadImmediately)
	{
		if ((manager is MainFrameBarManager && !loadedFromIsolatedStore) || manager.DesignMode)
		{
			LoadDesignerStateInternal(manager, loadImmediately);
		}
		if (manager is ChildFrameBarManager childManger && !IsLoadedChildFrameBarManager(childManger) && !manager.DesignMode)
		{
			LoadChildState(childManger);
		}
	}

	private bool IsLoadedChildFrameBarManager(ChildFrameBarManager childManger)
	{
		bool flag = false;
		if (childManger != null)
		{
			flag = m_htLoadedForm.ContainsValue(childManger.FormName);
			if (!flag)
			{
				flag = controller.IsLoaded(childManger.Form);
			}
		}
		return flag;
	}

	private void LoadChildState(ChildFrameBarManager manager)
	{
		if (manager != null)
		{
			MemoryStream barPosInfo = manager.barPosInfo;
			if (barPosInfo != null && barPosInfo.CanRead)
			{
				controller.SetChildStartLocation();
				m_htLoadedForm.Add(manager.FormName.GetHashCode(), manager.FormName);
			}
		}
	}

	internal void LoadDesignerStateInternal(BarManager manager, bool loadImmediately)
	{
		MemoryStream barPosInfo = manager.barPosInfo;
		bool flag = false;
		if (barPosInfo != null && barPosInfo.CanRead)
		{
			flag = true;
			barPosInfo.Position = 0L;
			try
			{
				controller.LoadFromStream(barPosInfo);
			}
			catch
			{
				flag = false;
			}
		}
		if (manager.DesignMode && !flag)
		{
			SetDefaultBarPositions(manager.Bars);
		}
		if (!loadImmediately)
		{
			return;
		}
		foreach (Bar bar in manager.Bars)
		{
			CommandBarExt commandBarFromBar = GetCommandBarFromBar(bar);
			if (commandBarFromBar != null)
			{
				controller.LoadCommandBarStateFromCache(commandBarFromBar);
			}
		}
	}

	private void SetDefaultBarPositions(Bars bars)
	{
		if (bars.manager == null || bars.manager.Designer == null)
		{
			return;
		}
		int num = 0;
		Syncfusion.Runtime.InteropServices.NativeMethods.POINT pt = new Syncfusion.Runtime.InteropServices.NativeMethods.POINT(0, 0);
		Syncfusion.Runtime.InteropServices.NativeMethods.ClientToScreen(manager.Designer.MdiClientWnd, ref pt);
		num = pt.Y;
		foreach (Bar bar in bars)
		{
			CommandBarExt commandBarFromBar = GetCommandBarFromBar(bar);
			if (commandBarFromBar == null)
			{
				continue;
			}
			commandBarFromBar.RedockIfNeeded();
			if (commandBarFromBar.DockState == CommandBarDockState.Float)
			{
				Rectangle rcFloat = commandBarFromBar.rcFloat;
				if (rcFloat.Top == 0)
				{
					commandBarFromBar.TopLevelControl.Location = new Point(pt.X, num);
				}
				num += rcFloat.Height;
			}
		}
	}

	public MemoryStream GetBarPositionInfo()
	{
		MemoryStream memoryStream = new MemoryStream();
		controller.SaveToStream(memoryStream);
		return memoryStream;
	}

	public void RemoveBars(BarManager manager, bool saveCommandBarState)
	{
		HideBars(manager, hideImmediately: true);
		ReleaseBars(manager.Bars);
		string formTypeName = BarManager.GetFormTypeName(manager);
		barsByFormType.Remove(formTypeName);
		foreach (Bar bar in manager.Bars)
		{
			if (saveCommandBarState)
			{
				controller.AppendCommandBarInfoForPersistance(GetCommandBarFromBar(bar));
			}
			UnbindBar(bar);
		}
	}

	public CommandBarExt GetCommandBarFromBar(Bar bar)
	{
		string key = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		return commandbarsByBarId[key] as CommandBarExt;
	}

	public void ReleaseBars(Bars bars)
	{
		bars.CollectionChanged -= BarCollectionChanged;
		bars.ItemPropertyChanged -= BarPropertyChanged;
	}

	private void BarCollectionChanged(object sender, CollectionChangeEventArgs args)
	{
		if (args.Action == CollectionChangeAction.Add)
		{
			BindBar(args.Element as Bar);
			SetDefaultBarPositions(sender as Bars);
		}
		else if (args.Action == CollectionChangeAction.Remove && controller != null)
		{
			UnbindBar(args.Element as Bar);
		}
	}

	private void BarPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyName == "BarName")
		{
			Bar bar = sender as Bar;
			BarID barID = new BarID((string)e.OldValue, BarManager.GetFormTypeName(bar.Manager));
			CommandBarExt commandBarExt = commandbarsByBarId[barID.ToString()] as CommandBarExt;
			commandbarsByBarId.Remove(barID.ToString());
			if (commandBarExt != null)
			{
				BarID barID2 = new BarID((string)e.NewValue, BarManager.GetFormTypeName(bar.Manager));
				commandbarsByBarId[barID2.ToString()] = commandBarExt;
			}
		}
	}

	protected internal void UnbindBar(Bar bar)
	{
		CommandBarExt commandBarExt = null;
		string text = null;
		if (mainMenuBar == bar)
		{
			if (BarManager.DesignMode)
			{
				mainMenuBar = null;
				mainMenuCommandBar = null;
			}
			else
			{
				text = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
				commandBarExt = commandbarsByBarId[text] as CommandBarExt;
				AttachMainMenuBar(null);
			}
		}
		text = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		if (commandBarExt == null)
		{
			commandBarExt = commandbarsByBarId[text] as CommandBarExt;
		}
		if (commandBarExt != null)
		{
			StopListeningForMousePress(commandBarExt);
			StopListeningForMousePress(commandBarExt.BarControl);
			commandBarExt.Visible = false;
			commandBarExt.Bar = null;
			controller.CommandBars.Remove(commandBarExt);
			commandbarsByBarId.Remove(text);
			commandBarExt.Dispose();
		}
	}

	protected void BindBar(Bar bar)
	{
		if (showMainMenusAutomatically || (bar.BarStyle & BarStyle.IsMainMenu) <= BarStyle.None || bar.Manager is MainFrameBarManager)
		{
			if ((bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None)
			{
				AttachMainMenuBar(bar);
			}
			else
			{
				BindBarInternal(bar);
			}
		}
	}

	protected internal virtual void InitQuickCustomizePopup(CommandBarExt commandBar)
	{
		ParentBarItem parentBarItem = new ParentBarItem();
		BarManager barManager;
		if (BarManager is MainFrameBarManager mainFrameBarManager)
		{
			barManager = new MainFrameBarManager(new Form());
			(barManager as MainFrameBarManager).ThemesEnabled = mainFrameBarManager.ThemesEnabled;
		}
		else
		{
			barManager = new BarManager();
		}
		barManager.Style = BarManager.Style;
		parentBarItem.Manager = barManager;
		parentBarItem.CloseOnClick = false;
		commandBar.PopupMenu.ParentBarItem = parentBarItem;
		BarItems invisibleBarItems = commandBar.BarControl.barRenderer.InvisibleBarItems;
		foreach (BarItem item in invisibleBarItems)
		{
			parentBarItem.Items.Add(item);
		}
		if ((commandBar.Bar.BarStyle & BarStyle.AllowQuickCustomizing) > BarStyle.None)
		{
			ParentBarItem addOrRemoveButtonsParentItem = GetAddOrRemoveButtonsParentItem(parentBarItem.Manager, commandBar);
			parentBarItem.Items.Add(addOrRemoveButtonsParentItem);
		}
	}

	protected virtual ParentBarItem GetAddOrRemoveButtonsParentItem(BarManager manager, CommandBarExt commandBar)
	{
		ParentBarItem parentBarItem = new ParentBarItem(SR.GetString("AddOrRemoveButtons"));
		parentBarItem.Manager = manager;
		parentBarItem.Manager.Style = BarManager.Style;
		MainFrameBarManager mainFrameBarManager = parentBarItem.Manager as MainFrameBarManager;
		MainFrameBarManager mainFrameBarManager2 = BarManager as MainFrameBarManager;
		if (mainFrameBarManager != null && mainFrameBarManager2 != null)
		{
			mainFrameBarManager.ThemesEnabled = mainFrameBarManager2.ThemesEnabled;
		}
		parentBarItem.Items.Add(GetButtonsList(commandBar, parentBarItem.Manager));
		if (BarManager.EnableCustomizing | BarManager.DesignMode)
		{
			parentBarItem.Items.Add(customizeItem);
			parentBarItem.BeginGroupAt(customizeItem);
		}
		return parentBarItem;
	}

	protected virtual ParentBarItem GetButtonsList(CommandBarExt commandBar, BarManager manager)
	{
		ParentBarItem parentBarItem = new ParentBarItem(commandBar.Text);
		parentBarItem.CloseOnClick = false;
		parentBarItem.Manager = manager;
		parentBarItem.Manager.Style = BarManager.Style;
		IMergedContainer mergedContainer = commandBar.Bar as IMergedContainer;
		foreach (BarItem item in commandBar.Bar.Items)
		{
			if (item.Visible && (mergedContainer == null || !mergedContainer.IsItemHiddenByMerge(item)))
			{
				parentBarItem.Items.Add(new ButtonVisibilityToggleBarItem(item, commandBar.Bar));
			}
		}
		if (BarManager.EnableCustomizing | BarManager.DesignMode)
		{
			ResetToolBarBarItem resetToolBarBarItem = new ResetToolBarBarItem(this.manager);
			resetToolBarBarItem.Text = SR.GetString("ResetToolBarMenu");
			resetToolBarBarItem.CurrentBar = commandBar;
			parentBarItem.Items.Add(resetToolBarBarItem);
			parentBarItem.BeginGroupAt(resetToolBarBarItem);
		}
		return parentBarItem;
	}

	protected virtual BarControlInternal CreateBarControl()
	{
		return new BarControlInternal();
	}

	protected virtual CommandBarExt CreateCommandBar()
	{
		return new CommandBarExt(this);
	}

	protected CommandBarExt BindBarInternal(Bar bar)
	{
		if (manager == null)
		{
			return null;
		}
		string key = new BarID(bar.BarName, BarManager.GetFormTypeName(bar.Manager)).ToString();
		CommandBarExt commandBarExt = commandbarsByBarId[key] as CommandBarExt;
		if (commandBarExt == null)
		{
			commandBarExt = CreateCommandBar();
			commandBarExt.SuspendLayout();
			StartListeningForMousePress(commandBarExt);
			commandbarsByBarId[key] = commandBarExt;
			controller.CommandBars.Add(commandBarExt);
			if (!(manager is MainFrameBarManager))
			{
				if (manager.Designer != null && manager.Designer.DesignerHost.GetDesigner(manager) is BarManagerDesigner { Active: false })
				{
					commandBarExt.Controller.bLoadVisibility = false;
				}
				commandBarExt.DisableDocking = true;
				commandBarExt.DockState = CommandBarDockState.Float;
			}
			else
			{
				commandBarExt.DockState = CommandBarDockState.Top;
			}
			BarControlInternal barControlInternal = CreateBarControl();
			StartListeningForMousePress(barControlInternal);
			commandBarExt.AttachBarControl(barControlInternal);
			commandBarExt.Bar = bar;
			barControlInternal = null;
			if (!manager.DesignMode && manager.MainFrameBarManager != null && manager.MainFrameBarManager.AutoLoadToolBarPositions)
			{
				controller.LoadCommandBarStateFromCache(commandBarExt);
			}
			commandBarExt.ResumeLayout();
		}
		else
		{
			commandBarExt.Bar = bar;
		}
		return commandBarExt;
	}
}
