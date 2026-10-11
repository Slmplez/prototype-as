using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.IO;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class DockingManagerDesigner : ComponentDesigner, IDockingManagerDesignerComponentInvoke, IGetMsgProcListener, ICallWndProcListener
{
	private static Control LButtonDownControl = null;

	private static Point LButtonDownPoint = Point.Empty;

	private static bool bKeyBdEvent = false;

	internal bool bReloading;

	private DMgrSerializationProvider dmSerProvider;

	internal bool bRemoved;

	private ArrayList alRemoved = new ArrayList();

	private DockPropertiesExtender propertyExtender;

	private bool m_bEscapeFired;

	private bool m_bAdornersVisible = true;

	private DesignerActionListCollection actionLists;

	private bool bAllowAdornerSwitching = true;

	private BehaviorService behavior;

	private Hashtable nativeWindows = new Hashtable();

	private bool hostFormMinimized;

	private bool activateApp = true;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new DockingManagerActionList(base.Component));
			}
			return actionLists;
		}
	}

	private IntPtr VSMainForm
	{
		get
		{
			DockingManager dockingManager = base.Component as DockingManager;
			return Syncfusion.Runtime.InteropServices.NativeMethods.GetAncestor(dockingManager.HostControl.Handle, 3);
		}
	}

	public override void InitializeNewComponent(IDictionary defaultValues)
	{
		base.InitializeNewComponent(defaultValues);
		InitDMCaptionButtons();
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IDesignerHost designerHost = component.Site.Container as IDesignerHost;
		ComponentCollection components = designerHost.Container.Components;
		foreach (IComponent item in components)
		{
			if (item is DockingManager && item != component)
			{
				throw new ApplicationException("Only one instance of the DockingManager can exist on a form.");
			}
		}
		designerHost.LoadComplete += IDesignerHost_LoadComplete;
		ContainerControl hostControl = designerHost.RootComponent as ContainerControl;
		designerHost.Activated += IDesignerHost_Activated;
		designerHost.Deactivated += IDesignerHost_Deactivated;
		DockingManager dockingManager = component as DockingManager;
		dockingManager.HostControl = hostControl;
		dockingManager.OnEnabledDocking += dmgr_OnEnabledDocking;
		behavior = GetService(typeof(BehaviorService)) as BehaviorService;
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentAdded += IComponentChangeService_ComponentAdded;
			componentChangeService.ComponentRename += IComponentChangeService_ComponentRename;
			componentChangeService.ComponentRemoving += IComponentChangeService_ComponentRemoving;
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanging += ISelectionService_SelectionChanging;
			selectionService.SelectionChanged += ISelectionService_SelectionChanged;
		}
		if (dockingManager.DockLayoutStream != null && dockingManager.DockLayoutStream.Length > 0)
		{
			byte[] array = dockingManager.DockLayoutStream.ToArray();
			dockingManager.DockLayoutStream = new MemoryStream();
			dockingManager.DockLayoutStream.Write(array, 0, array.Length);
		}
		else
		{
			dockingManager.DockLayoutStream = new MemoryStream();
		}
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		ArrayList enableDockingList = dockingManagerDesignerInvoke.GetEnableDockingList();
		ArrayList inheritedControlsList = dockingManagerDesignerInvoke.GetInheritedControlsList();
		foreach (Control item2 in enableDockingList)
		{
			inheritedControlsList.Add(item2);
		}
		try
		{
			bAllowAdornerSwitching = false;
			foreach (Control item3 in inheritedControlsList)
			{
				dockingManager.SetEnableDocking(item3, value: false);
			}
		}
		finally
		{
			bAllowAdornerSwitching = true;
		}
		enableDockingList.AddRange(inheritedControlsList);
		dmSerProvider = new DMgrSerializationProvider(this);
		((IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager)))?.AddSerializationProvider(dmSerProvider);
		propertyExtender = new DockPropertiesExtender(this);
		IExtenderProviderService extenderProviderService = GetService(typeof(IExtenderProviderService)) as IExtenderProviderService;
		extenderProviderService.AddExtenderProvider(propertyExtender);
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	private void dmgr_OnEnabledDocking(Control ctrl, bool enabledDocking)
	{
		if (enabledDocking)
		{
			HideAdorners();
			AssignHandle(ctrl);
		}
		else
		{
			ShowAdorners();
			ReleaseHandle(ctrl);
		}
	}

	private void AssignHandle(Control control)
	{
		if (!nativeWindows.Contains(control))
		{
			ControlNativeWindow controlNativeWindow = new ControlNativeWindow();
			controlNativeWindow.AssignHandle(control.Handle);
			nativeWindows[control] = controlNativeWindow;
		}
	}

	private void ReleaseHandle(Control control)
	{
		if (nativeWindows.Contains(control))
		{
			ControlNativeWindow controlNativeWindow = nativeWindows[control] as ControlNativeWindow;
			controlNativeWindow.ReleaseHandle();
			nativeWindows.Remove(control);
		}
	}

	private void InitDMCaptionButtons()
	{
		if (base.Component is DockingManager dockingManager)
		{
			dockingManager.CaptionButtons = dockingManager.GetDefaultCaptionButtons();
		}
	}

	private void IDesignerHost_LoadComplete(object sender, EventArgs e)
	{
		DockingManager dockingManager = base.Component as DockingManager;
		dockingManager.DesignDockStateLoad = true;
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		dockingManagerDesignerInvoke.GetHostFormController().UpdateFormClientSetting();
		dockingManagerDesignerInvoke.GetHostFormController().AdjustLayoutDockArea();
		Hashtable textTable = dockingManagerDesignerInvoke.GetTextTable();
		Hashtable iconTable = dockingManagerDesignerInvoke.GetIconTable();
		Hashtable hashtable = dockingManagerDesignerInvoke.GetmIconTable();
		Hashtable dockAbilityTable = dockingManagerDesignerInvoke.GetDockAbilityTable();
		Hashtable outerDockAbilityTable = dockingManagerDesignerInvoke.GetOuterDockAbilityTable();
		ArrayList freezeResizeControllers = dockingManagerDesignerInvoke.GetFreezeResizeControllers();
		bReloading = true;
		foreach (Control enableDocking in dockingManagerDesignerInvoke.GetEnableDockingList())
		{
			dockingManager.SetEnableDocking(enableDocking, value: true);
			if (textTable.Contains(enableDocking))
			{
				dockingManager.SetDockLabel(enableDocking, (string)textTable[enableDocking]);
			}
			if (iconTable.Contains(enableDocking))
			{
				dockingManager.SetDockIcon(enableDocking, (int)iconTable[enableDocking]);
			}
			if (hashtable.Contains(enableDocking))
			{
				dockingManager.SetMDIChildIcon(enableDocking, (int)hashtable[enableDocking]);
			}
			if (dockAbilityTable.Contains(enableDocking))
			{
				dockingManager.SetDockAbility(enableDocking, (DockAbility)dockAbilityTable[enableDocking]);
			}
			if (outerDockAbilityTable.Contains(enableDocking))
			{
				dockingManager.SetOuterDockAbility(enableDocking, (DockAbility)outerDockAbilityTable[enableDocking]);
			}
			if (freezeResizeControllers.Contains(enableDocking))
			{
				dockingManager.SetFreezeResize(enableDocking, freeze: true);
			}
		}
		if (dockingManager.DockLayoutStream != null && dockingManager.DockLayoutStream.Length > 0)
		{
			dockingManager.DockLayoutStream.Seek(0L, SeekOrigin.Begin);
			if (dockingManagerDesignerInvoke.LoadFromStream(dockingManager.DockLayoutStream))
			{
				dockingManagerDesignerInvoke.ApplyDHCFloatOnlySettings();
			}
			else
			{
				MessageBox.Show("The DockingManager designer has failed to load the dockstate. Please restart Visual Studio.NET and reload the project.", "Syncfusion - Essential Tools", MessageBoxButtons.OK, MessageBoxIcon.Hand);
			}
		}
		bAllowAdornerSwitching = true;
		if (GetService(typeof(ISelectionService)) is ISelectionService { PrimarySelection: Control primarySelection })
		{
			if (dockingManagerDesignerInvoke.GetEnableDockingList().Contains(primarySelection))
			{
				HideAdorners();
			}
			else if (primarySelection == dockingManager.HostControl)
			{
				ShowAdorners();
			}
		}
		bReloading = false;
		dockingManager.DesignDockStateLoad = false;
	}

	private void ISelectionService_SelectionChanging(object sender, EventArgs e)
	{
		if (!(GetService(typeof(ISelectionService)) is ISelectionService selectionService))
		{
			return;
		}
		DockingManager dockingManager = base.Component as DockingManager;
		if (selectionService.PrimarySelection is DockHost || selectionService.PrimarySelection is FloatingForm)
		{
			selectionService.SetSelectedComponents(new Control[1] { dockingManager.HostControl }, SelectionTypes.Click);
			return;
		}
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		DockHostController dHCInFocus = dockingManagerDesignerInvoke.GetDHCInFocus();
		Control item = selectionService.PrimarySelection as Control;
		if (!dockingManagerDesignerInvoke.GetEnableDockingList().Contains(item))
		{
			ShowAdorners();
		}
		if (dHCInFocus == null || dHCInFocus.HostControl.Controls[0] == selectionService.PrimarySelection)
		{
			return;
		}
		DockHost dockHost = dHCInFocus.HostControl as DockHost;
		if (!dHCInFocus.HideCaption)
		{
			if (dockingManager.VisualStyle != VisualStyle.Default)
			{
				dockHost.Invalidate(new Rectangle(dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.ThinBorderWidth, dockHost.Bounds.Width - 2 * dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.CaptionWidth));
			}
			else
			{
				dockHost.Invalidate(dockHost.TitleBar.CaptionRect);
			}
		}
		dockingManagerDesignerInvoke.SetDHCInFocus(null);
	}

	private void ShowAdorners()
	{
		if (!bAllowAdornerSwitching || m_bAdornersVisible)
		{
			return;
		}
		foreach (Adorner adorner in behavior.Adorners)
		{
			if (!IsControlBodyGlyphsAdorner(adorner))
			{
				adorner.Enabled = true;
			}
		}
		m_bAdornersVisible = true;
	}

	private void HideAdorners()
	{
		if (!bAllowAdornerSwitching || !m_bAdornersVisible)
		{
			return;
		}
		foreach (Adorner adorner in behavior.Adorners)
		{
			if (!IsControlBodyGlyphsAdorner(adorner))
			{
				adorner.Enabled = false;
			}
		}
		m_bAdornersVisible = false;
	}

	private bool IsControlBodyGlyphsAdorner(Adorner adorner)
	{
		bool result = false;
		foreach (Glyph glyph in adorner.Glyphs)
		{
			if (glyph is ControlBodyGlyph)
			{
				result = true;
				break;
			}
		}
		return result;
	}

	private void ISelectionService_SelectionChanged(object sender, EventArgs e)
	{
		if (!(GetService(typeof(ISelectionService)) is ISelectionService selectionService))
		{
			return;
		}
		DockingManager dockingManager = base.Component as DockingManager;
		if (dockingManager.dhLastActive != null && dockingManager.VisualStyle != VisualStyle.Default)
		{
			dockingManager.dhLastActive.Invalidate(new Rectangle(dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.ThinBorderWidth, dockingManager.dhLastActive.Bounds.Width - 2 * dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.CaptionWidth));
			dockingManager.dhLastActive = null;
		}
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		ArrayList enableDockingList = dockingManagerDesignerInvoke.GetEnableDockingList();
		foreach (Control item in enableDockingList)
		{
			if (!selectionService.GetComponentSelected(item))
			{
				continue;
			}
			HideAdorners();
			DockHost dockHost = item.Parent as DockHost;
			if (!(dockHost.InternalController as DockHostController).HideCaption)
			{
				if (dockingManager.VisualStyle != VisualStyle.Default)
				{
					dockHost.Invalidate(new Rectangle(dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.ThinBorderWidth, dockHost.Bounds.Width - 2 * dockingManager.Renderer.ThinBorderWidth, dockingManager.Renderer.CaptionWidth));
				}
				else
				{
					dockHost.Invalidate(dockHost.TitleBar.CaptionRect);
				}
			}
			break;
		}
	}

	private void IComponentChangeService_ComponentAdded(object sender, ComponentEventArgs e)
	{
		DockingManager dockingManager = base.Component as DockingManager;
		if (e.Component is Control && e.Component != dockingManager.HostControl)
		{
			(e.Component as Control).ParentChanged += OnControlParentChanged;
		}
		else
		{
			if (e.Component != base.Component)
			{
				return;
			}
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			foreach (IComponent component in designerHost.Container.Components)
			{
				if (component is Control && component != dockingManager.HostControl)
				{
					Control control = component as Control;
					control.ParentChanged += OnControlParentChanged;
					TypeDescriptor.Refresh(control);
				}
			}
		}
	}

	private void IComponentChangeService_ComponentRename(object sender, ComponentRenameEventArgs e)
	{
		DockingManager dockingManager = base.Component as DockingManager;
		if (dockingManager.DesignMode)
		{
			dockingManager.UpdateDesigner();
		}
	}

	private void IComponentChangeService_ComponentRemoving(object sender, ComponentEventArgs e)
	{
		DockingManager dockingManager = base.Component as DockingManager;
		if (e.Component is Control && e.Component != dockingManager.HostControl)
		{
			Control control = e.Component as Control;
			control.ParentChanged -= OnControlParentChanged;
			IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
			Array array = dockingManagerDesignerInvoke.GetEnableDockingList().ToArray(typeof(Control));
			if (Array.IndexOf(array, control) >= 0)
			{
				dockingManager.SetEnableDocking(control, value: false);
			}
		}
	}

	private void OnControlParentChanged(object sender, EventArgs e)
	{
		Control control = sender as Control;
		if (!(base.Component is DockingManager dockingManager))
		{
			return;
		}
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		Array array = dockingManagerDesignerInvoke.GetEnableDockingList().ToArray(typeof(Control));
		if (Array.IndexOf(array, control) >= 0 && control.Parent != null && !(control.Parent is DockHost))
		{
			control.ParentChanged -= OnControlParentChanged;
			Control parent = control.Parent;
			Array array2 = dockingManagerDesignerInvoke.GetControllerList().ToArray(typeof(DockControllerBase));
			foreach (DockControllerBase item in array2)
			{
				if (item is DockHostController)
				{
					DockHostController dockHostController = item as DockHostController;
					if (dockHostController.HostControl.Controls.Count == 0)
					{
						dockHostController.HostControl.Controls.Add(control);
						break;
					}
				}
			}
			dockingManager.SetEnableDocking(control, value: false);
			control.Parent = parent;
			control.ParentChanged += OnControlParentChanged;
		}
		TypeDescriptor.Refresh(control);
	}

	private void IDesignerHost_Activated(object sender, EventArgs e)
	{
		if (bReloading)
		{
			bReloading = false;
		}
		ToggleFloatingState(bactivate: true);
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	private void IDesignerHost_Deactivated(object sender, EventArgs e)
	{
		ToggleFloatingState(bactivate: false);
		DesignerHooks.RemoveGetMsgProcListener(this);
		DesignerHooks.RemoveCallWndProcListener(this);
	}

	public void ToggleFloatingState(bool bactivate)
	{
		DockingManager dockingManager = base.Component as DockingManager;
		IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
		ArrayList fFControllerList = dockingManagerDesignerInvoke.GetFFControllerList();
		foreach (DockControllerBase item in fFControllerList)
		{
			item.HostControl.Visible = bactivate;
		}
	}

	public void GetMsgProc(int nCode, IntPtr wparam, IntPtr lparam)
	{
		Message message = (Message)Marshal.PtrToStructure(lparam, typeof(Message));
		if (message.Msg != 513 && message.Msg != 515 && message.Msg != 512 && message.Msg != 514 && message.Msg != 161 && message.Msg != 163)
		{
			return;
		}
		Control control = Control.FromHandle(message.HWnd);
		if (control == null)
		{
			return;
		}
		IDockingManagerDesignerMouseHook dockingManagerDesignerMouseHook = control as IDockingManagerDesignerMouseHook;
		if (dockingManagerDesignerMouseHook != null && dockingManagerDesignerMouseHook.GetDesignMode())
		{
			Point position = Cursor.Position;
			if (message.Msg == 512)
			{
				if (message.WParam == (IntPtr)1)
				{
					if (!m_bEscapeFired && LButtonDownControl != null && (Math.Abs(position.X - LButtonDownPoint.X) >= 1 || Math.Abs(position.Y - LButtonDownPoint.Y) >= 1 || bKeyBdEvent))
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.keybd_event(27, 0, 0u, IntPtr.Zero);
						Syncfusion.Runtime.InteropServices.NativeMethods.keybd_event(27, 0, 2u, IntPtr.Zero);
						bKeyBdEvent = false;
						m_bEscapeFired = true;
					}
					dockingManagerDesignerMouseHook.HandleMouseMove(MouseButtons.Left, position);
				}
				else
				{
					if (control.Cursor != Cursor.Current)
					{
						Cursor.Current = control.Cursor;
					}
					dockingManagerDesignerMouseHook.HandleMouseMove(MouseButtons.None, position);
				}
			}
			else if (message.Msg == 513)
			{
				dockingManagerDesignerMouseHook.HandleMouseDown(MouseButtons.Left, position);
				LButtonDownControl = control;
				LButtonDownPoint = position;
				m_bEscapeFired = false;
				if (Syncfusion.Runtime.InteropServices.NativeMethods.GetCapture() != control.Handle)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(control.Handle);
				}
			}
			else if (message.Msg == 162)
			{
				dockingManagerDesignerMouseHook.HandleMouseDown(MouseButtons.Left, position);
				LButtonDownControl = null;
				LButtonDownPoint = Point.Empty;
				bKeyBdEvent = false;
				Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseCapture();
			}
			else if (message.Msg == 514)
			{
				dockingManagerDesignerMouseHook.HandleMouseUp(MouseButtons.Left, position);
				if (LButtonDownControl != null)
				{
					LButtonDownControl = null;
					LButtonDownPoint = Point.Empty;
					bKeyBdEvent = false;
					Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseCapture();
				}
			}
			else if (message.Msg == 515)
			{
				dockingManagerDesignerMouseHook.HandleDoubleClick(position);
			}
			else if (message.Msg == 161)
			{
				int num = message.WParam.ToInt32();
				if (num == 2 && !bKeyBdEvent)
				{
					dockingManagerDesignerMouseHook.HandleMouseDown(MouseButtons.Left, position);
					LButtonDownControl = control;
					LButtonDownPoint = position;
					bKeyBdEvent = true;
					m_bEscapeFired = false;
					if (Syncfusion.Runtime.InteropServices.NativeMethods.GetCapture() != control.Handle)
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(control.Handle);
					}
				}
				else if (num >= 10 && num <= 17)
				{
					dockingManagerDesignerMouseHook.InitiateFloatingResize(position, num);
					LButtonDownControl = control;
					LButtonDownPoint = position;
					m_bEscapeFired = false;
					if (Syncfusion.Runtime.InteropServices.NativeMethods.GetCapture() != control.Handle)
					{
						Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(control.Handle);
					}
				}
			}
			else
			{
				int num2 = message.WParam.ToInt32();
				if (num2 == 2)
				{
					dockingManagerDesignerMouseHook.HandleDoubleClick(position);
				}
			}
		}
		else if (dockingManagerDesignerMouseHook == null && message.Msg == 513 && control.TopLevelControl is IDockingManagerDesignerMouseHook dockingManagerDesignerMouseHook2 && dockingManagerDesignerMouseHook2.GetDesignMode() && GetService(typeof(ISelectionService)) is ISelectionService selectionService && selectionService.PrimarySelection is Control && (!(selectionService.PrimarySelection is Control control2) || !control2.Equals(control)))
		{
			selectionService.SetSelectedComponents(new Control[1] { control }, SelectionTypes.Click);
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
		if (cWPSTRUCT.message == 6 && cWPSTRUCT.hwnd == VSMainForm)
		{
			int num = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(cWPSTRUCT.wParam);
			int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(cWPSTRUCT.wParam);
			if (num != 0)
			{
				hostFormMinimized = true;
			}
			if (num2 == 0)
			{
				activateApp = false;
			}
			else
			{
				DockingManager dockingManager = base.Component as DockingManager;
				bool flag = true;
				if (dockingManager != null && !dockingManager.bLoadVisibility)
				{
					flag = false;
				}
				activateApp = true;
				if (!hostFormMinimized && flag)
				{
					ToggleFloatingState(bactivate: true);
				}
			}
		}
		if (cWPSTRUCT.message == 28 && cWPSTRUCT.hwnd == VSMainForm)
		{
			if (cWPSTRUCT.wParam == IntPtr.Zero)
			{
				ToggleFloatingState(bactivate: false);
				DesignerHooks.RemoveGetMsgProcListener(this);
			}
			else
			{
				if (!hostFormMinimized && activateApp)
				{
					ToggleFloatingState(bactivate: true);
				}
				DesignerHooks.AddGetMsgProcListener(this);
			}
		}
		if (cWPSTRUCT.message == 5)
		{
			if (cWPSTRUCT.wParam == new IntPtr(1))
			{
				hostFormMinimized = true;
			}
			else
			{
				if (base.Component is DockingManager { bLoadVisibility: not false })
				{
					ToggleFloatingState(bactivate: true);
				}
				hostFormMinimized = false;
				activateApp = true;
			}
		}
		if (cWPSTRUCT.message != 794)
		{
			return;
		}
		DockingManager dockingManager3 = base.Component as DockingManager;
		if (dockingManager3.VisualStyle != VisualStyle.Default)
		{
			dockingManager3.Renderer.RefreshColors();
			if (dockingManager3.HostControl != null)
			{
				Graphics graphics = Graphics.FromHwnd(dockingManager3.HostControl.Handle);
				dockingManager3.UpdateFonts(graphics.DpiY);
			}
			NativeMethodsHelper.RedrawWindow(cWPSTRUCT.hwnd, 1025);
		}
	}

	public void RemoveUnserializableChildControls()
	{
		if (bRemoved)
		{
			return;
		}
		DockingManager dockingManager = base.Component as DockingManager;
		Control[] array = new Control[dockingManager.HostControl.Controls.Count];
		int num = 0;
		foreach (Control control3 in dockingManager.HostControl.Controls)
		{
			array[num++] = control3;
		}
		Control[] array2 = array;
		foreach (Control control2 in array2)
		{
			if (control2 is DockHost || control2 is DragSplitter || control2 is AHTabControl)
			{
				alRemoved.Add(control2);
				dockingManager.HostControl.Controls.Remove(control2);
			}
		}
		bRemoved = true;
	}

	public void ReaddUnserializableChildControls()
	{
		if (!bRemoved)
		{
			return;
		}
		DockingManager dockingManager = base.Component as DockingManager;
		foreach (Control item in alRemoved)
		{
			dockingManager.HostControl.Controls.Add(item);
		}
		alRemoved.Clear();
		bRemoved = false;
	}

	public void RaiseComponentChanged()
	{
		RaiseComponentChanged(null, null, null);
	}

	protected override void PostFilterProperties(IDictionary properties)
	{
		if (base.Component is DockingManager { HostControl: not null } dockingManager && !(dockingManager.HostControl is Form) && properties.Contains("PersistState"))
		{
			properties.Remove("PersistState");
		}
		base.PostFilterProperties(properties);
	}

	protected override void Dispose(bool bdisposing)
	{
		DesignerHooks.RemoveCallWndProcListener(this);
		DesignerHooks.RemoveGetMsgProcListener(this);
		foreach (ControlNativeWindow value in nativeWindows.Values)
		{
			value.ReleaseHandle();
		}
		nativeWindows.Clear();
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			designerSerializationManager.RemoveSerializationProvider(dmSerProvider);
			dmSerProvider.Dispose();
		}
		if (GetService(typeof(IExtenderProviderService)) is IExtenderProviderService extenderProviderService)
		{
			extenderProviderService.RemoveExtenderProvider(propertyExtender);
		}
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			DockingManager dockingManager = base.Component as DockingManager;
			foreach (IComponent component in designerHost.Container.Components)
			{
				if (component is Control && component != dockingManager.HostControl)
				{
					(component as Control).ParentChanged -= OnControlParentChanged;
				}
			}
			if (!designerHost.Loading)
			{
				IDockingManagerDesignerInvoke dockingManagerDesignerInvoke = dockingManager;
				if (dockingManager.DockLayoutStream != null)
				{
					dockingManager.DockLayoutStream.Close();
					dockingManager.DockLayoutStream = null;
				}
				Array array = dockingManagerDesignerInvoke.GetControllerList().ToArray(typeof(DockControllerBase));
				foreach (DockControllerBase item in array)
				{
					if (item is DockHostController dockHostController)
					{
						dockingManager.SetEnableDocking(dockHostController.HostControl.Controls[0], value: false);
					}
				}
			}
			designerHost.LoadComplete -= IDesignerHost_LoadComplete;
			designerHost.Activated -= IDesignerHost_Activated;
			designerHost.Deactivated -= IDesignerHost_Deactivated;
		}
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentAdded -= IComponentChangeService_ComponentAdded;
			componentChangeService.ComponentRemoving -= IComponentChangeService_ComponentRemoving;
			componentChangeService.ComponentRename -= IComponentChangeService_ComponentRename;
		}
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SelectionChanging -= ISelectionService_SelectionChanging;
			selectionService.SelectionChanged -= ISelectionService_SelectionChanged;
		}
		base.Dispose(bdisposing);
	}
}
