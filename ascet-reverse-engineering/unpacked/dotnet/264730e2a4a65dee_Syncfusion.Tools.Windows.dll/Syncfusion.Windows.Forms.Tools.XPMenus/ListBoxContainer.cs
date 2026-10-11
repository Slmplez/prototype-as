using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
[ToolboxItem(false)]
public class ListBoxContainer : PopupControlContainer
{
	private ListBox listBox;

	private ListBox defaultListBox;

	private bool m_bShouldHidePopup = true;

	private bool m_bCloseOnClick = true;

	protected internal bool CloseOnClick
	{
		get
		{
			return m_bCloseOnClick;
		}
		set
		{
			if (value != m_bCloseOnClick)
			{
				m_bCloseOnClick = value;
			}
		}
	}

	protected internal bool ShouldHidePopup
	{
		get
		{
			return m_bShouldHidePopup;
		}
		set
		{
			if (value != m_bShouldHidePopup)
			{
				m_bShouldHidePopup = value;
			}
		}
	}

	public ListBox ListBox
	{
		get
		{
			return listBox;
		}
		set
		{
			if (listBox != value)
			{
				DetachListBox();
				listBox = value;
				AttachListBox();
			}
		}
	}

	public ListBoxContainer()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		base.Size = new Size(20, 20);
		base.BorderStyle = BorderStyle.FixedSingle;
		ListBox = new GridComboBoxListBoxPart();
		defaultListBox = ListBox;
	}

	public override void ConfirmDeactivate()
	{
		if (m_bShouldHidePopup)
		{
			base.ConfirmDeactivate();
		}
	}

	protected internal virtual void AttachListBox()
	{
		if (listBox != null)
		{
			base.Controls.Add(listBox);
			listBox.BorderStyle = BorderStyle.None;
			listBox.Visible = true;
			listBox.Location = new Point(0, 0);
			if (listBox.Height < 10 || listBox.Items.Count == 0)
			{
				listBox.Height = 10;
			}
			base.Height = listBox.Height + 1;
			listBox.MouseUp += ListBoxMouseUp;
		}
	}

	protected virtual void DetachListBox()
	{
		if (listBox != null)
		{
			listBox.MouseUp -= ListBoxMouseUp;
			listBox = null;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (defaultListBox != listBox)
			{
				base.Controls.Remove(listBox);
				defaultListBox = null;
			}
			DetachListBox();
		}
		base.Dispose(disposing);
	}

	protected override void WndProc(ref Message msg)
	{
		if (msg.Msg == 33)
		{
			msg.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref msg);
		}
	}

	protected override void OnBeforePopup(CancelEventArgs args)
	{
		AttachListBox();
		base.OnBeforePopup(args);
	}

	protected override bool ProcessMouseMessage(Control destination, int msg, IntPtr lParam, IntPtr wParam)
	{
		if (msg == 522)
		{
			OnMouseWheel(new MouseEventArgs(MouseButtons.None, 0, 0, 0, wParam.ToInt32()));
		}
		if (!base.IgnoreMouseMessages)
		{
			if (!base.DesignMode && (msg == 512 || msg == 675 || msg == 673))
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

	private void ListBoxMouseUp(object sender, MouseEventArgs e)
	{
		if (m_bCloseOnClick)
		{
			HidePopup(PopupCloseType.Done);
		}
	}
}
