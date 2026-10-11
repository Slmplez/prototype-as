using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CBControllerDesigner : ComponentDesigner, IProvideController, IGetMsgProcListener, ICallWndProcListener
{
	private IntPtr VSMainForm = IntPtr.Zero;

	private static Control LButtonDownControl = null;

	private static Point LButtonDownPoint = Point.Empty;

	private static bool bKeyBdEvent = false;

	private DesignerVerb dvAddCommandBar;

	private DesignerVerb dvAddControlBar;

	private DesignerVerb dvRemoveCommandBar;

	private DesignerVerbCollection dvcVerbs;

	internal CommandBarController cbController;

	private CommandDockBarSerializationProvider cbSerProvider;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (cbController.GetCommandBarsList().Count > 0)
			{
				dvRemoveCommandBar.Enabled = true;
			}
			else
			{
				dvRemoveCommandBar.Enabled = false;
			}
			return dvcVerbs;
		}
	}

	public CommandBarController Controller => base.Component as CommandBarController;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		ComponentCollection components = designerHost.Container.Components;
		foreach (IComponent item in components)
		{
			if (item is CommandBarController && item != component)
			{
				throw new ApplicationException("Only one instance of the CommandBarController can exist on a form.");
			}
		}
		cbController = component as CommandBarController;
		if (!(designerHost.RootComponent is Form hostForm))
		{
			throw new ApplicationException("A CommandBar host must be a top-level form.");
		}
		cbController.HostForm = hostForm;
		if (!designerHost.Loading)
		{
			ICBControllerDesignerInvoke iCBControllerDesignerInvoke = cbController;
			iCBControllerDesignerInvoke.InitializeCBController();
		}
		dvAddCommandBar = new DesignerVerb("Add CommandBar", OnAddCommandBar);
		dvAddControlBar = new DesignerVerb("Add ControlBar", OnAddControlBar);
		dvRemoveCommandBar = new DesignerVerb("Remove CommandBar", OnRemoveCommandBar);
		dvRemoveCommandBar.Enabled = false;
		DesignerVerb[] value = new DesignerVerb[3] { dvAddCommandBar, dvAddControlBar, dvRemoveCommandBar };
		dvcVerbs = new DesignerVerbCollection(value);
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		componentChangeService.ComponentChanged += IComponentChangeService_ComponentChanged;
		componentChangeService.ComponentRemoved += IComponentChangeService_ComponentRemoved;
		designerHost.Activated += IDesignerHost_Activated;
		designerHost.Deactivated += IDesignerHost_Deactivated;
		designerHost.LoadComplete += IDesignerHost_LoadComplete;
		cbSerProvider = new CommandDockBarSerializationProvider();
		((IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager)))?.AddSerializationProvider(cbSerProvider);
		OnSerializationComplete(null, EventArgs.Empty);
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	private void OnSerializationComplete(object sender, EventArgs args)
	{
		try
		{
			VSMainForm = Syncfusion.Runtime.InteropServices.NativeMethods.GetAncestor(cbController.HostForm.Handle, 3);
		}
		catch (Exception)
		{
		}
	}

	public void ToggleFloatingFormVisibility(bool bvisible)
	{
		foreach (CommandBar commandBar in cbController.CommandBars)
		{
			if (commandBar.DockState == CommandBarDockState.Float && commandBar.Parent != null)
			{
				if (bvisible)
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.ShowWindow(commandBar.Parent.Handle, 4);
					commandBar.Parent.Visible = bvisible;
				}
				else
				{
					commandBar.Parent.Visible = false;
				}
			}
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
			commandBarDesignerMouseHook.HandleMouseDown(MouseButtons.Left, position);
			LButtonDownControl = control;
			LButtonDownPoint = position;
			bKeyBdEvent = true;
			if (Syncfusion.Runtime.InteropServices.NativeMethods.GetCapture() != control.Handle)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.SetCapture(control.Handle);
			}
		}
		else if (message.Msg == 514)
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
		else if (message.Msg == 515)
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
		if ((cWPSTRUCT.message == 24 || cWPSTRUCT.message == 28) && cWPSTRUCT.hwnd == VSMainForm)
		{
			if (cWPSTRUCT.wParam.ToInt32() == 1)
			{
				ToggleFloatingFormVisibility(bvisible: true);
			}
			else
			{
				ToggleFloatingFormVisibility(bvisible: false);
			}
		}
	}

	public void OnAddCommandBar(object sender, EventArgs e)
	{
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		CommandBarController.CommandBarsCollection commandBars = cbController.CommandBars;
		CommandBar commandBar = (CommandBar)designerHost.CreateComponent(typeof(CommandBar));
		commandBar.Text = TypeDescriptor.GetComponentName(commandBar);
		cbController.CommandBars.Add(commandBar);
		RaiseComponentChanged(TypeDescriptor.GetProperties(cbController)["CommandBars"], commandBars, cbController.CommandBars);
	}

	public void OnAddControlBar(object sender, EventArgs e)
	{
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		CommandBarController.CommandBarsCollection commandBars = cbController.CommandBars;
		ControlBar controlBar = (ControlBar)designerHost.CreateComponent(typeof(ControlBar));
		controlBar.Text = TypeDescriptor.GetComponentName(controlBar);
		cbController.CommandBars.Add(controlBar);
		RaiseComponentChanged(TypeDescriptor.GetProperties(cbController)["CommandBars"], commandBars, cbController.CommandBars);
	}

	public void OnRemoveCommandBar(object sender, EventArgs e)
	{
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		CommandBarController.CommandBarsCollection commandBars = cbController.CommandBars;
		if (commandBars.Count > 0)
		{
			CommandBar cbar = commandBars[commandBars.Count - 1];
			cbController.CommandBars.Remove(cbar);
			designerHost.DestroyComponent(cbar);
			RaiseComponentChanged(TypeDescriptor.GetProperties(cbController)["CommandBars"], commandBars, cbController.CommandBars);
		}
	}

	private void IComponentChangeService_ComponentChanged(object sender, ComponentChangedEventArgs e)
	{
		if (dvcVerbs != null && dvcVerbs.Count > 0)
		{
			if (cbController.CommandBars.Count > 0)
			{
				dvRemoveCommandBar.Enabled = true;
			}
			else
			{
				dvRemoveCommandBar.Enabled = false;
			}
		}
	}

	private void IComponentChangeService_ComponentRemoved(object sender, ComponentEventArgs e)
	{
		if (!(e.Component is CommandBar))
		{
			return;
		}
		CommandBar commandBar = e.Component as CommandBar;
		if (cbController.CommandBars.Contains(commandBar))
		{
			if (commandBar.Floating && commandBar.Parent != null)
			{
				CommandBarForm commandBarForm = commandBar.Parent as CommandBarForm;
				commandBarForm.Visible = false;
				commandBarForm.Controls.Remove(commandBar);
				Syncfusion.Runtime.InteropServices.NativeMethods.PostMessage(commandBarForm.Handle, 33025, IntPtr.Zero, IntPtr.Zero);
			}
			cbController.CommandBars.Remove(commandBar);
		}
	}

	private void IDesignerHost_Activated(object sender, EventArgs e)
	{
		ToggleFloatingFormVisibility(bvisible: true);
		DesignerHooks.AddGetMsgProcListener(this);
		DesignerHooks.AddCallWndProcListener(this);
	}

	private void IDesignerHost_Deactivated(object sender, EventArgs e)
	{
		ToggleFloatingFormVisibility(bvisible: false);
		DesignerHooks.RemoveGetMsgProcListener(this);
		DesignerHooks.RemoveCallWndProcListener(this);
	}

	private void IDesignerHost_LoadComplete(object sender, EventArgs e)
	{
		cbController.ResetDockBarZOrder();
	}

	protected override void Dispose(bool disposing)
	{
		DesignerHooks.RemoveGetMsgProcListener(this);
		DesignerHooks.RemoveCallWndProcListener(this);
		VSMainForm = IntPtr.Zero;
		((IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager)))?.RemoveSerializationProvider(cbSerProvider);
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentChanged -= IComponentChangeService_ComponentChanged;
			componentChangeService.ComponentRemoved -= IComponentChangeService_ComponentRemoved;
		}
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			designerHost.Activated -= IDesignerHost_Activated;
			designerHost.Deactivated -= IDesignerHost_Deactivated;
			designerHost.LoadComplete -= IDesignerHost_LoadComplete;
		}
		base.Dispose(disposing);
	}
}
