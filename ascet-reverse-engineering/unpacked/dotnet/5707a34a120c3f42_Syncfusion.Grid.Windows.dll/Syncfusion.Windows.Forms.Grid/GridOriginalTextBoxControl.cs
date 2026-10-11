using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridOriginalTextBoxControl : TextBox, IGridTextBoxControl, ISupportsPopupControlContainer
{
	private const int SES_ALLOWBEEPS = 256;

	private const int SES_BEEPONMAXTEXT = 2;

	private bool floatDone;

	private GridTextBoxCellRenderer parent;

	internal bool inInit;

	internal readonly GridMargins textBoxMargins = new GridMargins(2, 0, 1, 0);

	private IGridDropDownContainer dropDownContainer;

	private int suspendEvents;

	private bool ignoreWmPaste;

	GridMargins IGridTextBoxControl.TextBoxMargins => textBoxMargins;

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle &= -259;
			return createParams;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsSuspendEvents => suspendEvents > 0;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Initializing => inInit;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridCellRendererBase ParentCell => parent;

	public bool FloatDone
	{
		get
		{
			return floatDone;
		}
		set
		{
			floatDone = value;
		}
	}

	public virtual bool Floatable
	{
		get
		{
			if (ParentCell.Model is GridStaticCellModel gridStaticCellModel)
			{
				return gridStaticCellModel.AllowFloating;
			}
			return false;
		}
		set
		{
		}
	}

	public bool DroppedDown
	{
		get
		{
			if (PopupControlContainer != null)
			{
				return PopupControlContainer.IsShowing();
			}
			return false;
		}
		set
		{
			if (PopupControlContainer != null)
			{
				if (value)
				{
					PopupControlContainer.ShowPopup(Point.Empty);
				}
				else
				{
					PopupControlContainer.HidePopup(PopupCloseType.Canceled);
				}
			}
		}
	}

	IGridDropDownContainer ISupportsPopupControlContainer.PopupControlContainer
	{
		get
		{
			return PopupControlContainer;
		}
		set
		{
			PopupControlContainer = value;
		}
	}

	protected virtual IGridDropDownContainer PopupControlContainer
	{
		get
		{
			return dropDownContainer;
		}
		set
		{
			dropDownContainer = value;
			if (dropDownContainer != null)
			{
				dropDownContainer.ParentControl = this;
			}
		}
	}

	public GridOriginalTextBoxControl(GridTextBoxCellRenderer parent)
	{
		this.parent = parent;
		base.BorderStyle = BorderStyle.None;
		base.CausesValidation = false;
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.StandardClick | ControlStyles.StandardDoubleClick, value: true);
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
	}

	public void SuspendEvents()
	{
		suspendEvents++;
	}

	public void ResumeEvents()
	{
		if (suspendEvents > 0)
		{
			suspendEvents--;
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		if (suspendEvents <= 0)
		{
			base.OnTextChanged(e);
		}
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (ContextMenu == null)
		{
			if (base.Parent.ContextMenu != null)
			{
				ContextMenu = base.Parent.ContextMenu;
			}
			else
			{
				ContextMenu = new ContextMenu();
			}
		}
		base.OnGotFocus(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
	}

	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
	}

	protected override void OnLeave(EventArgs e)
	{
		base.OnLeave(e);
	}

	public override bool PreProcessMessage(ref Message msg)
	{
		if (parent.Grid.NotifyCurrentCellControlPreProcessMessage(ref msg))
		{
			return true;
		}
		return base.PreProcessMessage(ref msg);
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message msg)
	{
		if (parent.Grid.NotifyCurrentCellControlWndProc(ref msg))
		{
			return;
		}
		try
		{
			switch (msg.Msg)
			{
			case 770:
				if (!ignoreWmPaste)
				{
					ParentCell.Grid.Model.CutPaste.Paste();
				}
				return;
			case 256:
				ParentCell.ignoreWmChar = false;
				break;
			case 257:
			{
				Keys keys = (Keys)((int)msg.WParam & 0xFFFF);
				if (keys == Keys.Menu)
				{
					ParentCell.ignoreWmChar = false;
				}
				break;
			}
			case 258:
				if (!ParentCell.HasFocusControl || ParentCell.ignoreWmChar)
				{
					return;
				}
				break;
			case 296:
				msg.Result = IntPtr.Zero;
				return;
			case 297:
				msg.Result = (IntPtr)2;
				return;
			}
			if (msg.Msg == 256)
			{
				Keys keys2 = (Keys)((int)msg.WParam & 0xFFFF);
				if (parent != null && keys2 == Keys.ControlKey)
				{
					parent.Grid.EnableForwardCurrentCellControlKeyMessages(value: false);
					parent.Grid.ProcessMessage(ref msg);
					parent.Grid.EnableForwardCurrentCellControlKeyMessages(value: true);
				}
			}
			base.WndProc(ref msg);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			if (parent != null)
			{
				parent.Grid.NotifyCancelMode();
			}
		}
	}

	protected override bool IsInputKey(Keys keyData)
	{
		switch (keyData & Keys.KeyCode)
		{
		case Keys.Tab:
			return ParentCell.Grid.WantTabKey;
		case Keys.Escape:
			return ParentCell.Grid.WantEscapeKey;
		case Keys.Return:
			return ParentCell.Grid.WantEnterKey;
		case Keys.V:
			ignoreWmPaste = true;
			return false;
		default:
			return base.IsInputKey(keyData);
		}
	}

	protected override bool ProcessKeyMessage(ref Message m)
	{
		if (m.Msg == 257)
		{
			ignoreWmPaste = false;
		}
		if (!(ParentCell is GridTextBoxCellRenderer gridTextBoxCellRenderer))
		{
			return base.ProcessKeyMessage(ref m);
		}
		if (gridTextBoxCellRenderer.DisableTextBox)
		{
			return false;
		}
		Rectangle rectangle = Rectangle.Intersect(base.Bounds, parent.Grid.GridBounds);
		Keys keys = (Keys)((int)m.WParam & 0xFFFF);
		if (m.Msg == 258 || (gridTextBoxCellRenderer.Grid.HandleWMSYSCHAR && m.Msg == 260))
		{
			if ((parent.Grid.WantEnterKey && keys == Keys.Return) || (parent.Grid.WantEscapeKey && keys == Keys.Escape))
			{
				return true;
			}
			if (rectangle != base.Bounds)
			{
				parent.Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
			}
			return ParentCell.RaiseProcessKeyEventArgs(ref m) || ProcessKeyEventArgs(ref m);
		}
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		bool flag2 = (Control.ModifierKeys & Keys.Alt) != 0;
		bool flag3 = (Control.ModifierKeys & Keys.Shift) != 0;
		bool callProcessKeyPreview = false;
		bool scrollInView = false;
		bool callBaseProcessKeyMessage = true;
		Keys keys2 = keys;
		if (RightToLeft == RightToLeft.Yes)
		{
			switch (keys2)
			{
			case Keys.Left:
				keys2 = Keys.Right;
				break;
			case Keys.Right:
				keys2 = Keys.Left;
				break;
			}
		}
		switch (keys2)
		{
		case Keys.End:
		case Keys.Home:
			if (flag)
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Left:
			if (flag || (base.SelectionStart <= 0 && (SelectionLength == 0 || !flag3)))
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Right:
			if (flag || base.SelectionStart + SelectionLength >= Text.Length)
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Up:
			if (flag || GetLineFromCharIndex(base.SelectionStart) <= 0)
			{
				callProcessKeyPreview = true;
			}
			else
			{
				scrollInView = true;
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Down:
			if (flag || GetLineFromCharIndex(base.SelectionStart + SelectionLength) >= GetLineFromCharIndex(Text.Length))
			{
				callBaseProcessKeyMessage = !flag2;
				callProcessKeyPreview = !flag2;
			}
			else
			{
				scrollInView = true;
				callBaseProcessKeyMessage = false;
			}
			break;
		case Keys.Tab:
		case Keys.Prior:
		case Keys.Next:
		case Keys.F2:
			callProcessKeyPreview = true;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Escape:
			if (parent.Grid.WantEscapeKey)
			{
				callProcessKeyPreview = true;
				scrollInView = true;
				callBaseProcessKeyMessage = false;
			}
			break;
		case Keys.Return:
			if (parent.Grid.WantEnterKey)
			{
				if (!parent.StyleInfo.AllowEnter && !flag)
				{
					callProcessKeyPreview = true;
				}
				scrollInView = true;
				callBaseProcessKeyMessage = false;
			}
			break;
		case Keys.V:
			scrollInView = flag;
			callProcessKeyPreview = flag || flag2;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.C:
		case Keys.X:
			scrollInView = flag;
			callProcessKeyPreview = false;
			callBaseProcessKeyMessage = true;
			break;
		case Keys.Insert:
			scrollInView = true;
			callProcessKeyPreview = ((flag || flag3) && SelectionLength == 0) || flag2;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Back:
			if (ParentCell.Grid.IsWindowless)
			{
				return true;
			}
			scrollInView = true;
			callProcessKeyPreview = (flag || flag2 || flag3) && SelectionLength == 0;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.Delete:
			scrollInView = true;
			callProcessKeyPreview = (flag || flag2 || flag3) && SelectionLength == 0;
			callBaseProcessKeyMessage = false;
			break;
		case Keys.F4:
			if (flag || flag2)
			{
				return base.ProcessKeyMessage(ref m);
			}
			callBaseProcessKeyMessage = false;
			break;
		case Keys.ShiftKey:
		case Keys.ControlKey:
			callProcessKeyPreview = true;
			callBaseProcessKeyMessage = false;
			break;
		default:
			callProcessKeyPreview = flag || flag2;
			break;
		}
		GridCurrentCellControlKeyMessageEventArgs e = new GridCurrentCellControlKeyMessageEventArgs(this, m, scrollInView, callProcessKeyPreview, callBaseProcessKeyMessage, result: true);
		parent.Grid.RaiseCurrentCellControlKeyMessage(e);
		if (e.Handled)
		{
			return e.Result;
		}
		scrollInView = e.ScrollInView;
		callProcessKeyPreview = e.CallProcessKeyPreview;
		callBaseProcessKeyMessage = e.CallBaseProcessKeyMessage;
		if (scrollInView && rectangle != base.Bounds)
		{
			parent.Grid.CurrentCell.ScrollInView(GridScrollCurrentCellReason.KeyPress);
		}
		if (callProcessKeyPreview)
		{
			ProcessKeyPreview(ref m);
			return true;
		}
		if (callBaseProcessKeyMessage)
		{
			return base.ProcessKeyMessage(ref m);
		}
		return ParentCell.RaiseProcessKeyEventArgs(ref m) || ProcessKeyEventArgs(ref m);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
	}

	protected override void OnKeyUp(KeyEventArgs e)
	{
		((Control)this).OnKeyUp(e);
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		if (ParentCell != null)
		{
			string text = Text;
			if (!e.Handled)
			{
				string text2 = string.Empty;
				if (SelectionLength == -1)
				{
					text2 = e.KeyChar.ToString();
				}
				else
				{
					if (base.SelectionStart > 0)
					{
						text2 = text.Substring(0, base.SelectionStart);
					}
					text2 += e.KeyChar;
					if (base.SelectionStart + SelectionLength < Text.Length)
					{
						text2 += text.Substring(base.SelectionStart + SelectionLength);
					}
				}
				if (!ParentCell.ValidateString(text2))
				{
					e.Handled = true;
				}
			}
		}
		base.OnKeyPress(e);
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		base.OnPaintBackground(pevent);
	}

	[SecurityPermission(SecurityAction.Demand, UnmanagedCode = true)]
	public void LineScroll(int count)
	{
		NativeMethods.SendMessage(base.Handle, 182, 0, count);
	}

	public void BeginInit()
	{
		if (inInit)
		{
			throw new Exception("BeginInit called twice.");
		}
		inInit = true;
		SuspendEvents();
	}

	public void EndInit()
	{
		ResumeEvents();
		inInit = false;
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		if (parent != null)
		{
			parent.Grid.GetGridWindow().ProcessMouseWheel(e);
		}
	}
}
