using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.PopupControlContainer.bmp")]
[Description("A panel-derived class that will let you design custom popups within a designer.")]
[DesignerSerializer(typeof(PopupControlContainerSerializer), typeof(CodeDomSerializer))]
public class PopupControlContainer : Panel, IPopupControlContainer, IPopupChild, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient, IPopupParent, IPopupItem
{
	private class FormWindowSubclss : NativeWindow
	{
		private PopupControlContainer _popupContainer;

		public FormWindowSubclss(PopupControlContainer popupContainer)
		{
			_popupContainer = popupContainer;
		}

		protected override void WndProc(ref Message m)
		{
			if (_popupContainer != null && m.Msg == 28 && m.WParam == IntPtr.Zero)
			{
				_popupContainer.HidePopup(PopupCloseType.Deactivated);
			}
			base.WndProc(ref m);
		}

		public override void DestroyHandle()
		{
			base.DestroyHandle();
			_popupContainer = null;
		}
	}

	private Control parentControl;

	private IPopupParent popupParent;

	private Point discreetLocation;

	private PopupHost popupHost;

	private PopupCloseRequestListener listener;

	private MouseProcHookerUtil mouseHooker;

	private bool fakeFocus;

	internal bool bIgnoreDialogKey;

	private bool bIgnoreKeys;

	private bool bIgnoreMouseMessages;

	private IPopupChild currentPopupChild;

	private bool m_bNeedDisposeHost = true;

	private FormWindowSubclss _formSubclass;

	private bool m_bCloseOnTab = true;

	private Form parentForm;

	private bool inSetFocus;

	private bool inOnPopup;

	internal MouseProcHookerUtil MouseHooker
	{
		get
		{
			return mouseHooker;
		}
		set
		{
			mouseHooker = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool DesignMode => base.DesignMode;

	protected override Size DefaultSize => new Size(200, 100);

	protected override Padding DefaultMargin => new Padding(0);

	[DefaultValue(false)]
	[Browsable(false)]
	[Description("Specifies whether the popup should send a KillFocus message to the control with focus when the popup was shown.")]
	public bool FakeFocus
	{
		get
		{
			return fakeFocus;
		}
		set
		{
			fakeFocus = value;
		}
	}

	[Description("Gets or sets a reference to the PopupHost that will be used to host this PopupControlContainer when dropped down.")]
	[DefaultValue(null)]
	[Browsable(false)]
	public PopupHost PopupHost
	{
		get
		{
			return popupHost;
		}
		set
		{
			if (this.popupHost != value)
			{
				PopupHost popupHost = this.popupHost;
				this.popupHost = value;
				if (popupHost != null)
				{
					popupHost.PopupControlContainer = null;
				}
				if (this.popupHost != null && this.popupHost.PopupControlContainer != this)
				{
					this.popupHost.PopupControlContainer = this;
				}
				m_bNeedDisposeHost = false;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	public Point DiscreetLocation
	{
		get
		{
			return discreetLocation;
		}
		set
		{
			discreetLocation = value;
		}
	}

	[Category("Popup")]
	[Description("Specifies the PopupControlContainer's Control Parent.")]
	[DefaultValue(null)]
	public Control ParentControl
	{
		get
		{
			return parentControl;
		}
		set
		{
			if (parentControl != value)
			{
				DetachDelegates();
			}
			parentControl = value;
			if (parentControl != null)
			{
				AttachDelegates();
				UpdateRightToLeftFromParentControl();
			}
			discreetLocation = Point.Empty;
		}
	}

	[DefaultValue(null)]
	[Browsable(false)]
	[Description("Specifies the IPopupParent parent.")]
	public IPopupParent PopupParent
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

	[Description("Specifies whether or not to ignore dialog keys.")]
	[Category("Popup")]
	[DefaultValue(false)]
	public bool IgnoreDialogKey
	{
		get
		{
			return bIgnoreDialogKey;
		}
		set
		{
			bIgnoreDialogKey = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether or not to ignore all mouse messages.")]
	[Category("Popup")]
	public bool IgnoreMouseMessages
	{
		get
		{
			return bIgnoreMouseMessages;
		}
		set
		{
			bIgnoreMouseMessages = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies whether or not to ignore all keys.")]
	[Category("Popup")]
	public bool IgnoreKeys
	{
		get
		{
			return bIgnoreKeys;
		}
		set
		{
			bIgnoreKeys = value;
		}
	}

	[Description("Specifies whether the drop down need to be closed on pressing tab on the last item and shift tab on the first item in the drop down.")]
	[DefaultValue(true)]
	[Browsable(true)]
	public bool CloseOnTab
	{
		get
		{
			return m_bCloseOnTab;
		}
		set
		{
			if (m_bCloseOnTab != value)
			{
				m_bCloseOnTab = value;
			}
		}
	}

	bool IPopupParent.IsRightToLeft => RightToLeft.Yes == RightToLeft;

	[DefaultValue(null)]
	[Description("Specifies the current popup child in the popup hierarchy.")]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public IPopupChild CurrentPopupChild
	{
		get
		{
			return currentPopupChild;
		}
		set
		{
			if (currentPopupChild != value)
			{
				if (currentPopupChild != null)
				{
					currentPopupChild.HidePopup(PopupCloseType.Canceled);
					currentPopupChild = null;
				}
				currentPopupChild = value;
			}
		}
	}

	[Description("Occurs before a popup is closed.")]
	public event CancelEventHandler BeforeCloseUp;

	[Description("Occurs when a popup is closed.")]
	public event PopupClosedEventHandler CloseUp;

	[Description("Occurs when the popup is about to be shown.")]
	public event CancelEventHandler BeforePopup;

	[Description("Occurs after the popup has beedn dropped down and made visible.")]
	public event EventHandler Popup;

	public void EnsurePopupHost()
	{
		if (popupHost == null)
		{
			PopupHost = CreatePopupHost();
			m_bNeedDisposeHost = true;
		}
	}

	protected virtual PopupHost CreatePopupHost()
	{
		return new PopupHost();
	}

	private void AttachDelegates()
	{
		if (parentControl != null)
		{
			parentControl.RightToLeftChanged += ParentControl_RightToLeftChanged;
			parentForm = parentControl.FindForm();
			if (parentForm != null)
			{
				parentForm.Disposed += ParentControl_Disposed;
			}
		}
	}

	private void DetachDelegates()
	{
		if (parentControl != null)
		{
			parentControl.RightToLeftChanged -= ParentControl_RightToLeftChanged;
			if (parentForm != null)
			{
				parentForm.Disposed -= ParentControl_Disposed;
			}
		}
	}

	private void ParentControl_Disposed(object sender, EventArgs e)
	{
		if (popupHost != null)
		{
			popupHost.Dispose();
			popupHost = null;
		}
	}

	private void UpdateRightToLeftFromParentControl()
	{
		ParentControl_RightToLeftChanged(null, null);
	}

	private void ParentControl_RightToLeftChanged(object sender, EventArgs e)
	{
		if (parentControl != null)
		{
			RightToLeft = parentControl.RightToLeft;
		}
	}

	private bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	public PopupControlContainer()
	{
		listener = new PopupCloseRequestListener(this);
		_formSubclass = new FormWindowSubclss(this);
	}

	[Obsolete("This constructor is equal to default constructor. Use default constructor instead of this, because PopupControlContainer is Control, not component.")]
	public PopupControlContainer(IContainer container)
		: this()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (IsShowing())
			{
				HidePopup();
			}
			DetachDelegates();
			if (MouseHooker != null)
			{
				mouseHooker.Dispose();
				mouseHooker = null;
			}
			if (listener != null)
			{
				listener.Dispose();
				listener = null;
			}
			if (PopupHost != null)
			{
				PopupHost popupHost = PopupHost;
				bool bNeedDisposeHost = m_bNeedDisposeHost;
				PopupHost = null;
				if (bNeedDisposeHost)
				{
					popupHost.Dispose();
					popupHost = null;
				}
			}
			if (_formSubclass != null)
			{
				_formSubclass.ReleaseHandle();
				_formSubclass = null;
			}
			parentControl = null;
		}
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	bool INeedMouseMoveMessages.MouseMessage(ref Message m)
	{
		Control control = Control.FromHandle(m.HWnd);
		if (control == null)
		{
			control = PopupUtils.GetADotNetParentControl(m.HWnd);
		}
		return ProcessMouseMessage(control, m.Msg, m.LParam, m.WParam);
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		Control destination = Control.FromHandle(hwnd);
		return ProcessMouseMessage(destination, msg, IntPtr.Zero, IntPtr.Zero);
	}

	protected virtual bool ProcessMouseMessage(Control destination, int msg, IntPtr lParam, IntPtr wParam)
	{
		if (!IgnoreMouseMessages)
		{
			if (!DesignMode && (msg == 512 || msg == 675 || msg == 673))
			{
				if (destination != null && IsRelatedControl(destination, askPopupParent: true))
				{
					return false;
				}
				return true;
			}
			VeryifyMouseBasedDeactivation(destination, msg);
		}
		return false;
	}

	[DocumentationExclude]
	bool INeedKeyboardMessages.KeyboardMessage(ref Message m)
	{
		bool result = false;
		if (!bIgnoreKeys)
		{
			Control control = Control.FromHandle(NativeMethods.GetFocus());
			if (control == null)
			{
				control = PopupUtils.GetADotNetParentControl(NativeMethods.GetFocus());
			}
			if (!IsRelatedControl(control, askPopupParent: true) && (m.Msg == 256 || m.Msg == 258))
			{
				Keys keyData = (Keys)m.WParam.ToInt32();
				if (!ProcessDialogKey(keyData) && popupParent != null && popupParent is IPopupChild)
				{
					result = ((IPopupChild)popupParent).KeyboardMessage(ref m);
				}
			}
		}
		return result;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		if (!bIgnoreKeys)
		{
			Control control = Control.FromHandle(NativeMethods.GetFocus());
			if (control == null)
			{
				control = PopupUtils.GetADotNetParentControl(NativeMethods.GetFocus());
			}
			if (!IsRelatedControl(control, askPopupParent: true))
			{
				if ((lParam & 0x80000000u) == 0)
				{
					if (!ProcessDialogKey((Keys)wParam) && popupParent != null && popupParent is IPopupChild)
					{
						((IPopupChild)popupParent).KeyboardHookProc(wParam, lParam);
					}
				}
				return true;
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual void VeryifyMouseBasedDeactivation(Control destinationControl, int msg)
	{
		switch (msg)
		{
		default:
			return;
		case 33:
		case 513:
		case 516:
		case 519:
			if (IsRelatedControl(destinationControl, askPopupParent: true))
			{
				return;
			}
			break;
		case 161:
		case 164:
		case 167:
			break;
		}
		if (destinationControl != null && !IsRelatedControl(destinationControl, !DesignMode))
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}

	[DocumentationExclude]
	public virtual Point GetPreferredLocation(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment)
	{
		if (popupParent != null)
		{
			Point locationForPopupAlignment = popupParent.GetLocationForPopupAlignment(prevAlignment, out newAlignment);
			if (locationForPopupAlignment != Point.Empty)
			{
				return locationForPopupAlignment;
			}
		}
		if (discreetLocation != Point.Empty)
		{
			newAlignment = PopupRelativeAlignment.Default;
			return discreetLocation;
		}
		Point empty = Point.Empty;
		if (parentControl != null)
		{
			Rectangle bounds = parentControl.Bounds;
			empty = PopupUtils.ComputeDefaultTopBottomAlignmentExt(prevAlignment, out newAlignment, parentControl, bounds, GetIsMirrored());
			if (parentControl.Parent != null)
			{
				empty = parentControl.Parent.PointToScreen(empty);
			}
		}
		else
		{
			newAlignment = PopupRelativeAlignment.Default;
			empty = new Point(1, 1);
		}
		return empty;
	}

	public virtual void ShowPopup(Point location)
	{
		EnsurePopupHost();
		CancelEventArgs e = new CancelEventArgs(cancel: false);
		OnBeforePopup(e);
		if (!e.Cancel)
		{
			discreetLocation = location;
			popupHost.ShowPopup();
			OnPopup(EventArgs.Empty);
		}
	}

	public virtual void HidePopup()
	{
		HidePopup(PopupCloseType.Canceled);
	}

	public virtual void ConfirmDeactivate()
	{
		bool flag = false;
		Point mousePosition = Control.MousePosition;
		foreach (Control control in base.Controls)
		{
			Point pt = control.PointToClient(mousePosition);
			if (control.Bounds.Contains(pt))
			{
				flag = true;
				break;
			}
		}
		if (listener.ignoreDeactivateTick <= Environment.TickCount && !inOnPopup && !flag)
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}

	public virtual void HidePopup(PopupCloseType popupCloseType)
	{
		if (IsShowing())
		{
			CancelEventArgs e = new CancelEventArgs();
			if (this.BeforeCloseUp != null)
			{
				this.BeforeCloseUp(this, e);
			}
			if (!e.Cancel && popupHost.IsShowing())
			{
				popupHost.HidePopup();
				OnCloseUp(new PopupClosedEventArgs(popupCloseType));
			}
		}
	}

	protected override bool ProcessDialogKey(Keys key)
	{
		if (bIgnoreDialogKey)
		{
			return base.ProcessDialogKey(key);
		}
		Keys keys = key & Keys.KeyCode;
		bool flag = (Control.ModifierKeys & Keys.Alt) != 0;
		switch (keys)
		{
		case Keys.Down:
			if (!flag)
			{
				break;
			}
			goto case Keys.F4;
		case Keys.F4:
			HidePopup(PopupCloseType.Canceled);
			FocusParent();
			return true;
		case Keys.Tab:
		case Keys.Return:
		case Keys.F2:
			if (CloseOnTab)
			{
				HidePopup(PopupCloseType.Done);
				FocusParent();
				return true;
			}
			return false;
		case Keys.Escape:
			HidePopup(PopupCloseType.Canceled);
			FocusParent();
			return true;
		}
		return false;
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33)
		{
			listener.ignoreDeactivateTick = Environment.TickCount + 100;
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	public virtual void FocusParent()
	{
		inSetFocus = true;
		try
		{
			if (ParentControl != null && ParentControl.Visible)
			{
				ParentControl.Focus();
			}
		}
		finally
		{
			inSetFocus = false;
		}
	}

	[DocumentationExclude]
	public virtual void FocusFirstVisibleParent()
	{
		for (Control control = ParentControl; control != null; control = control.Parent)
		{
			if (control.Visible)
			{
				inSetFocus = true;
				try
				{
					control.Focus();
					break;
				}
				finally
				{
					inSetFocus = false;
				}
			}
		}
	}

	[DocumentationExclude]
	public bool IsInSetFocus()
	{
		return inSetFocus;
	}

	protected virtual Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment)
	{
		newAlignment = PopupRelativeAlignment.Default;
		return Point.Empty;
	}

	Point IPopupParent.GetLocationForPopupAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment)
	{
		return GetLocationForPopupAlignment(prevAlignment, out newAlignment);
	}

	protected virtual Point[] GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		return null;
	}

	Point[] IPopupParent.GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		return null;
	}

	protected virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (childUI == currentPopupChild && popupCloseType != PopupCloseType.Deactivated)
		{
			PopupManager.SetCurrentPopupClient(this, active: true, callKillFocusOnFocused: false);
		}
		else
		{
			HidePopup(PopupCloseType.Deactivated);
		}
		currentPopupChild = null;
	}

	void IPopupParent.ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		ChildClosing(childUI, popupCloseType);
	}

	Control IPopupItem.GetPopupParentControl()
	{
		if (popupParent != null)
		{
			return popupParent.GetPopupParentControl();
		}
		return parentControl;
	}

	[DocumentationExclude]
	public virtual bool IsRelatedControl(Control control, bool askPopupParent)
	{
		if (!IsShowing())
		{
			return false;
		}
		if (control == this || Contains(control) || control == base.Parent)
		{
			return true;
		}
		if (askPopupParent)
		{
			if (popupParent != null)
			{
				return popupParent.IsRelatedControl(control, askPopupParent);
			}
			if (control != null && parentControl != null && (control == parentControl || parentControl.Contains(control)))
			{
				return true;
			}
		}
		if (control is ScrollBarCustomDraw scroll)
		{
			foreach (Control control2 in base.Controls)
			{
				if (ScrollersFrame.IsRelated(control2, scroll))
				{
					return true;
				}
			}
		}
		return false;
	}

	public bool IsShowing()
	{
		if (popupHost != null)
		{
			return popupHost.IsShowing();
		}
		return false;
	}

	protected virtual void OnBeforePopup(CancelEventArgs args)
	{
		if (parentControl is Form form && _formSubclass != null)
		{
			_formSubclass.ReleaseHandle();
			_formSubclass.AssignHandle(form.Handle);
		}
		if (this.BeforePopup != null)
		{
			this.BeforePopup(this, args);
		}
	}

	protected virtual void OnCloseUp(PopupClosedEventArgs args)
	{
		if (_formSubclass != null)
		{
			_formSubclass.ReleaseHandle();
		}
		CurrentPopupChild = null;
		IPopupParent popupParent = this.popupParent;
		listener.ParentControl = null;
		listener.PopupHost = null;
		PopupManager.SetCurrentPopupClient(this, active: false, fakeFocus);
		if (this.CloseUp != null)
		{
			this.CloseUp(this, args);
		}
		popupParent?.ChildClosing(this, args.PopupCloseType);
	}

	protected virtual void OnPopup(EventArgs args)
	{
		inOnPopup = true;
		try
		{
			if (popupParent != null)
			{
				listener.ParentControl = popupParent.GetPopupParentControl();
			}
			else
			{
				listener.ParentControl = ParentControl;
			}
			listener.PopupHost = PopupHost;
			PopupManager.SetCurrentPopupClient(this, active: true, !DesignMode && fakeFocus);
			if (this.Popup != null)
			{
				this.Popup(this, args);
			}
		}
		finally
		{
			inOnPopup = false;
			listener.ignoreDeactivateTick = Environment.TickCount + 100;
		}
	}
}
