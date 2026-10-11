using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.ComponentModel.Design.Serialization;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BarManagerDesigner : ComponentDesigner, IListenForMainFormVisibilityChange, IProvideController, IBarManagerDesigner, ICallWndProcListener, IGetMsgProcListener
{
	private const int DEF_COLLAPSED = 30000;

	private Adorner m_adorner;

	private IntPtr VSMainForm = IntPtr.Zero;

	private static Control LButtonDownControl = null;

	private static Point LButtonDownPoint = Point.Empty;

	private static bool bKeyBdEvent = false;

	private bool lastKnownCustState;

	private bool dontListenForCustomizationDone;

	private bool designerActive = true;

	private bool serializationBegun;

	private BarManager m_manager;

	private DesignerVerbCollection verbs;

	private IComponentChangeService iComponentChangeService;

	private ISelectionService iSelectionService;

	internal IDesignerHost iDesignerHost;

	protected CBSerializationProvider cbSerProvider;

	protected CommandDockBarSerializationProvider m_cdbSerProvider;

	private ContainerInsertingSerializationProvider bmSerProvider;

	private SerializationListener serListener;

	internal IntPtr hVSMDIClient;

	private bool ininitialize;

	private DesignerActionListCollection actionLists;

	private BarControlInternal lastEnteredBarControl;

	internal bool Active => designerActive;

	IntPtr IBarManagerDesigner.MdiClientWnd => hVSMDIClient;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new BarManagerActionList(base.Component));
			}
			return actionLists;
		}
	}

	public CommandBarController Controller
	{
		get
		{
			if (m_manager != null)
			{
				return m_manager.GetCommandBarManager().GetCommandBarController();
			}
			return null;
		}
	}

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb("Customize...", OnCustomize));
				verbs.Add(new DesignerVerb("Activate Menus", OnActivateMenus));
				if (base.Component is MainFrameBarManager)
				{
					verbs.Add(new DesignerVerb("Add Detached CommandBar", OnAddDetachedCommandBar));
					verbs.Add(new DesignerVerb("Add Detached ControlBar", OnAddDetachedControlBar));
				}
			}
			return verbs;
		}
	}

	IDesignerHost IBarManagerDesigner.DesignerHost => GetService(typeof(IDesignerHost)) as IDesignerHost;

	public override void Initialize(IComponent component)
	{
		ininitialize = true;
		base.Initialize(component);
		iComponentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
		iComponentChangeService.ComponentRemoving += OnComponentRemoving;
		iComponentChangeService.ComponentRemoved += OnComponentRemoved;
		iComponentChangeService.ComponentAdded += OnComponentAdded;
		iComponentChangeService.ComponentChanged += OnComponentChanged;
		iDesignerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		m_manager = base.Component as BarManager;
		if (!VerifySingleInstance(destroyIfMultiple: false))
		{
			if (m_manager != null)
			{
				m_manager.CustomDragChanged += OnCustomDragChanged;
			}
			InitializeDragDrop();
			iDesignerHost.Activated += OnActivated;
			iDesignerHost.Deactivated += OnDeactivated;
			iDesignerHost.LoadComplete += OnLoadComplete;
			if (iDesignerHost.Loading)
			{
				SetupManager();
			}
			else
			{
				OnLoadComplete(null, EventArgs.Empty);
			}
			IntPtr foregroundWindow = Syncfusion.Runtime.InteropServices.NativeMethods.GetForegroundWindow();
			if (foregroundWindow != IntPtr.Zero)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.EnumChildWindowsCallBack lpEnumFunc = EnumChildWindows_Callback;
				Syncfusion.Runtime.InteropServices.NativeMethods.EnumChildWindows(foregroundWindow, lpEnumFunc, (IntPtr)0);
			}
			iSelectionService = (ISelectionService)GetService(typeof(ISelectionService));
			iSelectionService.SelectionChanged += SelectionChanged;
			IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
			if (designerSerializationManager != null && (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion < 2 || iDesignerHost.Loading))
			{
				designerSerializationManager.SerializationComplete += OnSerializationComplete;
			}
			iDesignerHost.TransactionClosed += DesingerTransClosed;
			iDesignerHost.TransactionOpened += DesingerTransOpened;
			m_cdbSerProvider = new CommandDockBarSerializationProvider();
			cbSerProvider = new CBSerializationProvider();
			bmSerProvider = new ContainerInsertingSerializationProvider(typeof(BarManager), applyOnDerivedClasses: true);
			IDesignerSerializationManager designerSerializationManager2 = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
			if (designerSerializationManager2 != null)
			{
				designerSerializationManager2.AddSerializationProvider(m_cdbSerProvider);
				designerSerializationManager2.AddSerializationProvider(cbSerProvider);
				designerSerializationManager2.AddSerializationProvider(bmSerProvider);
				if (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion > 1 || (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion == 1 && Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MinorRuntimeVersion > 0))
				{
					serListener = new SerializationListener(designerSerializationManager2);
					serListener.SerializationBegin += SerializationBegin;
				}
			}
		}
		ininitialize = false;
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	public bool EnumChildWindows_Callback(IntPtr hwnd, IntPtr lparam)
	{
		if (hwnd != IntPtr.Zero)
		{
			StringBuilder stringBuilder = new StringBuilder(100);
			Syncfusion.Runtime.InteropServices.NativeMethods.GetClassName(hwnd, stringBuilder, 100);
			if (stringBuilder.ToString() == "MDIClient")
			{
				hVSMDIClient = hwnd;
				return false;
			}
		}
		return true;
	}

	protected virtual bool VerifySingleInstance(bool destroyIfMultiple)
	{
		ComponentCollection components = iDesignerHost.Container.Components;
		bool flag = false;
		foreach (IComponent item in components)
		{
			if (item is BarManager && item != base.Component)
			{
				flag = true;
				break;
			}
		}
		if (flag && destroyIfMultiple)
		{
			MessageBox.Show("Cannot have more than one instance of ChildFrameBarManager or MainFrameBarManager. Deleting this new instance.", "Multiple BarManager instances warning", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			iDesignerHost.DestroyComponent(base.Component);
		}
		return flag;
	}

	object IBarManagerDesigner.GetService(Type serviceType)
	{
		return base.GetService(serviceType);
	}

	private void DesingerTransClosed(object sender, DesignerTransactionCloseEventArgs args)
	{
	}

	private void DesingerTransOpened(object sender, EventArgs args)
	{
	}

	private void SelectionChanged(object sender, EventArgs e)
	{
		if (m_manager != null)
		{
			BarItem barItem = iSelectionService.PrimarySelection as BarItem;
			if (m_manager.Items.Contains(barItem))
			{
				m_manager.CustomizingItem = barItem;
			}
		}
	}

	private void Manager_CustomizingItem_Changed(object sender, EventArgs args)
	{
		BarItem customizingItem = m_manager.CustomizingItem;
		if (customizingItem != null && customizingItem.DesignMode)
		{
			iSelectionService.SetSelectedComponents(new object[1] { customizingItem }, SelectionTypes.Replace);
		}
	}

	protected void CustomizationDone(object sender, EventArgs e)
	{
		if (!dontListenForCustomizationDone)
		{
			lastKnownCustState = false;
		}
	}

	public void GetMsgProc(int nCode, IntPtr wparam, IntPtr lparam)
	{
		Message message = (Message)Marshal.PtrToStructure(lparam, typeof(Message));
		if (message.Msg != 513 && message.Msg != 515 && message.Msg != 512 && message.Msg != 514)
		{
			return;
		}
		Control control = Control.FromHandle(message.HWnd);
		if (control == null || !(control is ICommandBarDesignerMouseHook commandBarDesignerMouseHook))
		{
			return;
		}
		Point position = Cursor.Position;
		if (message.Msg == 512)
		{
			if (message.WParam == (IntPtr)1)
			{
				if (LButtonDownControl != null && ((position.X >= LButtonDownPoint.X - 1 && position.Y >= LButtonDownPoint.Y - 1 && position.X <= LButtonDownPoint.X + 1 && position.Y <= LButtonDownPoint.Y + 1) || bKeyBdEvent))
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.keybd_event(27, 0, 0u, IntPtr.Zero);
					Syncfusion.Runtime.InteropServices.NativeMethods.keybd_event(27, 0, 2u, IntPtr.Zero);
					if (bKeyBdEvent)
					{
						bKeyBdEvent = false;
					}
				}
				commandBarDesignerMouseHook.HandleMouseMove(MouseButtons.Left, position);
			}
			else
			{
				commandBarDesignerMouseHook.HandleMouseMove(MouseButtons.None, position);
			}
		}
		else if (message.Msg == 513 && !bKeyBdEvent)
		{
			if (!(control is CommandBarExt) && (!(control is CommandBarForm) || control.Controls.Count <= 0 || !(control.Controls[0] is CommandBarExt)))
			{
				commandBarDesignerMouseHook.HandleMouseDown(MouseButtons.Left, position);
				LButtonDownControl = control;
				LButtonDownPoint = position;
				bKeyBdEvent = true;
				if (Syncfusion.Runtime.InteropServices.NativeMethods.GetCapture() != control.Handle)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(control.Handle);
				}
			}
		}
		else if (message.Msg == 514)
		{
			if (!(control is CommandBarExt) && (!(control is CommandBarForm) || control.Controls.Count <= 0 || !(control.Controls[0] is CommandBarExt)))
			{
				commandBarDesignerMouseHook.HandleMouseUp(MouseButtons.Left, position);
				if (LButtonDownControl != null)
				{
					LButtonDownControl = null;
					LButtonDownPoint = Point.Empty;
					bKeyBdEvent = false;
					Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseCapture();
				}
			}
		}
		else if (message.Msg == 515 && !(control is CommandBarExt) && (!(control is CommandBarForm) || control.Controls.Count <= 0 || !(control.Controls[0] is CommandBarExt)))
		{
			commandBarDesignerMouseHook.HandleDoubleClick(position);
		}
	}

	public void CallWndProc(int nCode, IntPtr wparam, IntPtr lparam)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT cWPSTRUCT = (Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT)Marshal.PtrToStructure(lparam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.CWPSTRUCT));
		if (nCode < 0)
		{
			return;
		}
		if (cWPSTRUCT.message == 533 && LButtonDownControl != null && cWPSTRUCT.hwnd == LButtonDownControl.Handle)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(LButtonDownControl.Handle);
		}
		if (cWPSTRUCT.message == 131 && cWPSTRUCT.wParam != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS nCCALCSIZE_PARAMS = (Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS)Marshal.PtrToStructure(cWPSTRUCT.lParam, typeof(Syncfusion.Runtime.InteropServices.NativeMethods.NCCALCSIZE_PARAMS));
			if (Math.Abs(nCCALCSIZE_PARAMS.rgrc0.left) > 30000 && Math.Abs(nCCALCSIZE_PARAMS.rgrc1.left) < 30000)
			{
				OnChangedVisibility(visible: false);
			}
			else if (Math.Abs(nCCALCSIZE_PARAMS.rgrc0.left) < 30000 && Math.Abs(nCCALCSIZE_PARAMS.rgrc1.left) > 30000)
			{
				OnChangedVisibility(visible: true);
			}
		}
		if ((cWPSTRUCT.message != 24 && cWPSTRUCT.message != 28) || !(cWPSTRUCT.hwnd == VSMainForm))
		{
			return;
		}
		if (cWPSTRUCT.wParam != IntPtr.Zero)
		{
			if (cWPSTRUCT.lParam != IntPtr.Zero)
			{
				OnChangedVisibility(visible: true);
			}
		}
		else
		{
			OnChangedVisibility(visible: false);
		}
	}

	public void OnChangedVisibility(bool visible)
	{
		if (m_manager == null)
		{
			return;
		}
		if (visible)
		{
			if (lastKnownCustState && designerActive)
			{
				m_manager.Customize((IDesignerHost)GetService(typeof(IDesignerHost)));
			}
		}
		else if (m_manager.Customizing)
		{
			dontListenForCustomizationDone = true;
			m_manager.Customize(start: false);
			dontListenForCustomizationDone = false;
			bool shouldHidePopup = m_manager.ShouldHidePopup;
			m_manager.ShouldHidePopup = true;
			m_manager.HidePopups();
			m_manager.ShouldHidePopup = shouldHidePopup;
		}
		if (designerActive)
		{
			m_manager.GetCommandBarManager().UpdateDesignTimeVisibility(visible);
		}
	}

	protected void OnActivated(object sender, EventArgs e)
	{
		designerActive = true;
		OnChangedVisibility(visible: true);
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	protected void OnDeactivated(object sender, EventArgs e)
	{
		OnChangedVisibility(visible: false);
		designerActive = false;
		DesignerHooks.RemoveGetMsgProcListener(this);
		DesignerHooks.RemoveCallWndProcListener(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			bKeyBdEvent = false;
			LButtonDownControl = null;
			LButtonDownPoint = Point.Empty;
			DesignerHooks.RemoveGetMsgProcListener(this);
			DesignerHooks.RemoveCallWndProcListener(this);
			VSMainForm = IntPtr.Zero;
			if (iComponentChangeService != null)
			{
				iComponentChangeService.ComponentRemoving -= OnComponentRemoving;
				iComponentChangeService.ComponentRemoving -= OnComponentRemoved;
				iComponentChangeService.ComponentAdded -= OnComponentAdded;
				iComponentChangeService.ComponentChanged -= OnComponentChanged;
			}
			if (iDesignerHost != null)
			{
				iDesignerHost.Activated -= OnActivated;
				iDesignerHost.Deactivated -= OnDeactivated;
				iDesignerHost.LoadComplete -= OnLoadComplete;
			}
			if (iSelectionService != null)
			{
				iSelectionService.SelectionChanged -= SelectionChanged;
			}
			IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
			if (designerSerializationManager != null)
			{
				designerSerializationManager.SerializationComplete -= OnSerializationComplete;
				designerSerializationManager.RemoveSerializationProvider(m_cdbSerProvider);
				designerSerializationManager.RemoveSerializationProvider(cbSerProvider);
				designerSerializationManager.RemoveSerializationProvider(bmSerProvider);
				if (serListener != null)
				{
					designerSerializationManager.RemoveSerializationProvider(serListener);
				}
			}
		}
		base.Dispose(disposing);
	}

	private Form GetHostForm()
	{
		if (!(iDesignerHost.RootComponent is Form result))
		{
			throw new ApplicationException("A BarManager can only be dropped on a Form Designer");
		}
		return result;
	}

	public override void DoDefaultAction()
	{
		if (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion > 1 || (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion == 1 && Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MinorRuntimeVersion > 0))
		{
			OnSerializationComplete(this, EventArgs.Empty);
		}
		else
		{
			base.DoDefaultAction();
		}
	}

	private void SerializationBegin(object sender, EventArgs e)
	{
		if (!serializationBegun)
		{
			IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
			if (designerSerializationManager != null && designerSerializationManager is DesignerSerializationManager designerSerializationManager2)
			{
				designerSerializationManager2.SessionCreated += dsm_SessionCreated;
			}
			serializationBegun = true;
		}
	}

	private void dsm_SessionCreated(object sender, EventArgs e)
	{
		DesignerSerializationManager designerSerializationManager = (DesignerSerializationManager)sender;
		IDesignerSerializationManager designerSerializationManager2 = designerSerializationManager;
		designerSerializationManager.SessionCreated -= dsm_SessionCreated;
		designerSerializationManager2.SerializationComplete += OnSerializationComplete;
	}

	private void OnLoadComplete(object sender, EventArgs e)
	{
		if (m_manager.Form == null)
		{
			SetupManager();
		}
		if (!m_manager.Form.Visible)
		{
			m_manager.Form.VisibleChanged += BarManagerForm_VisibleChanged;
			return;
		}
		m_manager.FormLoaded(null, EventArgs.Empty);
		m_manager.RefreshCommandBarsAfterDesignerLoad(saveCommandBarState: false);
	}

	protected void BarManagerForm_VisibleChanged(object sender, EventArgs e)
	{
		if (m_manager.Form.Visible)
		{
			m_manager.Form.VisibleChanged -= BarManagerForm_VisibleChanged;
			m_manager.FormLoaded(null, EventArgs.Empty);
			m_manager.RefreshCommandBarsAfterDesignerLoad(saveCommandBarState: false);
		}
	}

	private void InitializeDragDrop()
	{
		if (base.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.GetService(typeof(BehaviorService)) is BehaviorService behaviorService)
		{
			m_adorner = new Adorner();
			m_adorner.Enabled = false;
			DragDropBehavior dragDropBehavior = new DragDropBehavior();
			dragDropBehavior.DragDrop += OnDragDrop;
			dragDropBehavior.DragOver += OnDragOver;
			dragDropBehavior.DragLeave += OnDragLeave;
			dragDropBehavior.MouseUp += OnMouseUp;
			dragDropBehavior.MouseDown += OnMouseDown;
			dragDropBehavior.MouseMove += OnMouseMove;
			DragDropGlyph value = new DragDropGlyph(dragDropBehavior);
			m_adorner.Glyphs.Add(value);
			behaviorService.Adorners.Add(m_adorner);
		}
	}

	private void OnCustomDragChanged(object sender, EventArgs e)
	{
		m_adorner.Enabled = m_manager != null && m_manager.CustomDrag;
	}

	private void OnMouseMove(object sender, EventArgs e)
	{
		if (m_manager != null && m_manager.CustomizingItem == null)
		{
			m_manager.CustomDrag = false;
		}
	}

	private void OnMouseDown(object sender, EventArgs e)
	{
		if (m_adorner.Enabled)
		{
			m_adorner.Enabled = false;
			if (m_manager != null)
			{
				m_manager.CustomDrag = false;
			}
		}
	}

	private void OnMouseUp(object sender, EventArgs e)
	{
		if (m_manager != null)
		{
			BarControlInternal barControlForDragDrop = m_manager.GetBarControlForDragDrop();
			m_manager.CustomDrag = m_manager.CustomDrag && barControlForDragDrop != null;
		}
	}

	private void OnDragOver(object sender, DragEventArgs e)
	{
		if (m_manager != null)
		{
			BarControlInternal barControlForDragDrop = m_manager.GetBarControlForDragDrop();
			if (lastEnteredBarControl != null && lastEnteredBarControl != barControlForDragDrop)
			{
				lastEnteredBarControl.ProcessDragLeave(e);
			}
			barControlForDragDrop?.ProcessDragOver(e);
			lastEnteredBarControl = barControlForDragDrop;
		}
	}

	private void OnDragLeave(object sender, EventArgs e)
	{
		if (m_manager != null)
		{
			m_manager.GetBarControlForDragDrop()?.ProcessDragLeave(e);
		}
	}

	private void OnDragDrop(object sender, DragEventArgs e)
	{
		if (m_manager != null)
		{
			m_manager.GetBarControlForDragDrop()?.ProcessDragDrop(e);
			m_manager.CustomDrag = false;
		}
	}

	protected virtual void SetupManager()
	{
		if (m_manager != null)
		{
			m_manager.Form = GetHostForm();
			m_manager.CustomizationDone += CustomizationDone;
			m_manager.InitFromDesigner();
			m_manager.CustomizingItemChanged += Manager_CustomizingItem_Changed;
		}
	}

	private void OnSerializationComplete(object sender, EventArgs args)
	{
		serializationBegun = false;
		if (m_manager != null && m_manager.Form == null && base.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			m_manager.Form = designerHost.RootComponent as Form;
		}
		Process currentProcess = Process.GetCurrentProcess();
		VSMainForm = currentProcess.MainWindowHandle;
		if ((Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion > 1 || (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion == 1 && Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MinorRuntimeVersion > 0)) && !iDesignerHost.Loading && m_manager != null)
		{
			m_manager.RefreshCommandBarsAfterDesignerLoad(saveCommandBarState: true);
		}
	}

	private void OnComponentChanged(object sender, ComponentChangedEventArgs args)
	{
		if (m_manager != null && args.Component == m_manager.Form && args.Member != null && args.Member.Name == "IsMdiContainer")
		{
			_ = (IDesignerHost)sender;
			ReloadDesigner();
		}
	}

	private void OnComponentAdded(object sender, ComponentEventArgs args)
	{
		if (args.Component == base.Component)
		{
			VerifySingleInstance(destroyIfMultiple: true);
		}
	}

	private void InsertDockFilledPanel(Form form)
	{
		Panel panel = (Panel)iDesignerHost.CreateComponent(typeof(Panel));
		Control[] array = new Control[form.Controls.Count];
		int num = 0;
		foreach (Control control3 in form.Controls)
		{
			array[num++] = control3;
		}
		Control[] array2 = array;
		foreach (Control control2 in array2)
		{
			control2.Parent = panel;
		}
		panel.Dock = DockStyle.Fill;
		form.Controls.Add(panel);
	}

	private bool IsDockFilledContainerControlAvailable(Form form)
	{
		foreach (Control control in form.Controls)
		{
			if (control is ContainerControl && control.Dock == DockStyle.Fill)
			{
				return true;
			}
		}
		return false;
	}

	private void OnComponentRemoved(object sender, ComponentEventArgs args)
	{
		CommandBar commandBar = args.Component as CommandBar;
		MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
		if (commandBar != null && mainFrameBarManager != null)
		{
			XPMenuGridFactory.ReleaseAllGrids();
			ArrayList detachedCommandBars = mainFrameBarManager.DetachedCommandBars;
			if (detachedCommandBars.Count > 0 && detachedCommandBars.Contains(commandBar))
			{
				detachedCommandBars.Remove(args.Component);
				MessageBox.Show("The CommandBar is removed from the \"DetachedCommandBars\" list. Undoing this delete will not add it back to the list. If you need to undo this delete, close the designer and undo in the corresponding source code file, if it is open.", "BarManager Designer Information");
			}
		}
	}

	private void OnComponentRemoving(object sender, ComponentEventArgs args)
	{
		if (base.Component == null)
		{
			return;
		}
		if (args.Component is BarItem)
		{
			XPMenuGridFactory.ReleaseAllGrids();
			BarItem barItem = (BarItem)args.Component;
			m_manager.CustomizationDialog.RemoveReferencesToItem(barItem);
			if (!barItem.IsDisposing)
			{
				MessageBox.Show("All references to the deleted bar item in the CommandBars and Menus have been deleted. Undoing this Delete will not restore these references. However, closing the designer and the source file without saving the changes will restore the original settings.", "BarManager Designer Information");
			}
		}
		else if (args.Component is Bar)
		{
			XPMenuGridFactory.ReleaseAllGrids();
			Bar bar = (Bar)args.Component;
			m_manager.CustomizationDialog.RemoveReferencesToItem(bar);
			MessageBox.Show("The Bar has been deleted from the BarManager. Undoing this Delete will not restore the Bar. However, closing the designer and the source file without saving the changes will restore the original settings.", "BarManager Designer Information");
		}
		if (args.Component.Equals(base.Component))
		{
			IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
			if (designerSerializationManager != null)
			{
				designerSerializationManager.RemoveSerializationProvider(m_cdbSerProvider);
				designerSerializationManager.RemoveSerializationProvider(cbSerProvider);
				designerSerializationManager.RemoveSerializationProvider(bmSerProvider);
			}
		}
	}

	private void ReloadDesigner()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost == null || designerHost.Loading)
		{
			return;
		}
		IDesignerLoaderService designerLoaderService = (IDesignerLoaderService)GetService(typeof(IDesignerLoaderService));
		if (designerLoaderService == null)
		{
			return;
		}
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			if (designerSerializationManager is DesignerSerializationManager designerSerializationManager2)
			{
				designerSerializationManager2.SessionCreated += dsm_SessionCreated;
			}
			designerLoaderService.Reload();
		}
	}

	private void OnAddDetachedCommandBar(object sender, EventArgs e)
	{
		CommandBar value = (CommandBar)iDesignerHost.CreateComponent(typeof(CommandBar));
		MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
		mainFrameBarManager.DetachedCommandBars.Add(value);
	}

	private void OnAddDetachedControlBar(object sender, EventArgs e)
	{
		ControlBar value = (ControlBar)iDesignerHost.CreateComponent(typeof(ControlBar));
		MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
		mainFrameBarManager.DetachedCommandBars.Add(value);
	}

	private void OnActivateMenus(object sender, EventArgs eevent)
	{
		OnSerializationComplete(this, EventArgs.Empty);
	}

	private void OnCustomize(object sender, EventArgs eevent)
	{
		if (m_manager.Form == null)
		{
			MessageBox.Show("Please assign a Form to the BarManager before Customizing it.");
			return;
		}
		lastKnownCustState = true;
		m_manager.Customize((IDesignerHost)GetService(typeof(IDesignerHost)));
		if (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion > 1 || (Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MajorRuntimeVersion == 1 && Syncfusion.Runtime.InteropServices.RuntimeEnvironment.MinorRuntimeVersion > 0))
		{
			OnSerializationComplete(this, EventArgs.Empty);
		}
	}

	void IBarManagerDesigner.SetDirty()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (!ininitialize && !designerHost.Loading)
		{
			MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Bars"];
			if (designerHost != null)
			{
				RaiseComponentChanged(member, null, null);
			}
		}
	}
}
