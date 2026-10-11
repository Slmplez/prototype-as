using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public class ExtendableComboBoxTextBox : ExtendableTextBoxBase
{
	private ComboBox m_combo;

	public override IntPtr Handle
	{
		get
		{
			IntPtr result = IntPtr.Zero;
			NativeMethods.COMBOBOXINFO cbInfo = default(NativeMethods.COMBOBOXINFO);
			cbInfo.cbSize = Marshal.SizeOf((object)cbInfo);
			if (GetComboBoxInfo(ref cbInfo))
			{
				result = cbInfo.hwndEdit;
			}
			return result;
		}
	}

	public override bool Focused
	{
		get
		{
			bool result = false;
			IntPtr handle = Handle;
			if (handle != IntPtr.Zero)
			{
				result = NativeMethods.GetFocus() == handle;
			}
			return result;
		}
	}

	public override Color BackColor => m_combo.BackColor;

	public override Rectangle ClientRectangle
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			IntPtr handle = Handle;
			if (handle != IntPtr.Zero)
			{
				NativeMethods.RECT lpRect = default(NativeMethods.RECT);
				if (NativeMethods.GetClientRect(handle, ref lpRect))
				{
					result = Rectangle.FromLTRB(lpRect.left, lpRect.top, lpRect.right, lpRect.bottom);
				}
			}
			return result;
		}
	}

	public override Font Font => m_combo.Font;

	public override RightToLeft RightToLeft => m_combo.RightToLeft;

	public ExtendableComboBoxTextBox(ComboBox combo)
	{
		m_combo = combo;
		if (m_combo.IsHandleCreated)
		{
			ComboBoxHandleCreated(this, EventArgs.Empty);
		}
		m_combo.TextChanged += ComboBoxTextChanged;
		m_combo.HandleCreated += ComboBoxHandleCreated;
	}

	private void ComboBoxHandleCreated(object sender, EventArgs e)
	{
		OnHandleCreated(this, e);
		ComboBoxTextChanged(this, e);
	}

	private void ComboBoxTextChanged(object sender, EventArgs e)
	{
		OnTextBoxTextChanged(this, new ValueChangedEventArgs(null, m_combo.Text));
	}

	private bool GetComboBoxInfo(ref NativeMethods.COMBOBOXINFO cbInfo)
	{
		if (m_combo.IsHandleCreated)
		{
			return NativeMethods.GetComboBoxInfo(m_combo.Handle, ref cbInfo);
		}
		return false;
	}

	public override void Invalidate()
	{
		IntPtr handle = Handle;
		if (handle != IntPtr.Zero)
		{
			NativeMethods.RECT lpRect = default(NativeMethods.RECT);
			if (NativeMethods.GetClientRect(handle, ref lpRect))
			{
				NativeMethods.InvalidateRect(handle, ref lpRect, bErase: false);
			}
		}
	}
}
