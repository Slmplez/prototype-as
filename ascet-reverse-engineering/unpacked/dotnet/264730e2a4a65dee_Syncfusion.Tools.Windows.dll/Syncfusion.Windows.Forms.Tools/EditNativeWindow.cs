using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class EditNativeWindow : NativeWindow
{
	private bool m_bIsListening;

	private ButtonEdit m_btnEdit;

	public event EventHandler GotFocus;

	public event EventHandler LostFocus;

	public EditNativeWindow(ButtonEdit btnEdit)
	{
		if (btnEdit == null)
		{
			throw new ArgumentNullException("btnEdit");
		}
		m_btnEdit = btnEdit;
		m_bIsListening = true;
		AssignHandle(m_btnEdit.TextBox.Handle);
	}

	public void StopListening()
	{
		m_bIsListening = false;
	}

	private bool IsFocusChanged(IntPtr handle)
	{
		if (m_btnEdit == null)
		{
			return false;
		}
		if (handle == m_btnEdit.Handle || handle == IntPtr.Zero)
		{
			return false;
		}
		int i = 0;
		for (int count = m_btnEdit.Controls.Count; i < count; i++)
		{
			if (m_btnEdit.Controls[i].Handle == handle && m_btnEdit.Controls[i] != m_btnEdit.TextBox)
			{
				return false;
			}
		}
		return true;
	}

	protected override void WndProc(ref Message m)
	{
		if (m_bIsListening)
		{
			if (m.Msg == 7)
			{
				if (this.GotFocus != null && IsFocusChanged(m.WParam))
				{
					this.GotFocus(this, EventArgs.Empty);
				}
			}
			else if (m.Msg == 8 && this.LostFocus != null && IsFocusChanged(m.WParam))
			{
				this.LostFocus(this, EventArgs.Empty);
			}
		}
		base.WndProc(ref m);
	}
}
