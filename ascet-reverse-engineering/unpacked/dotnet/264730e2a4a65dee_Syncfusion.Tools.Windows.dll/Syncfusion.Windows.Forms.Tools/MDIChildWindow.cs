using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class MDIChildWindow : NativeWindow, IMessageFilter, IDisposable
{
	private IMessageFilter m_messageFilter;

	private Form m_mdiChild;

	public IMessageFilter MessageFilter
	{
		get
		{
			return m_messageFilter;
		}
		set
		{
			m_messageFilter = value;
		}
	}

	public event EventHandler SetIcon;

	public MDIChildWindow(Form mdiChild)
	{
		if (mdiChild == null)
		{
			throw new ArgumentNullException("mdiChild");
		}
		m_mdiChild = mdiChild;
		if (m_mdiChild.IsHandleCreated)
		{
			AssignHandle();
		}
		else
		{
			m_mdiChild.HandleCreated += mdiChild_HandleCreated;
		}
	}

	private void mdiChild_HandleCreated(object sender, EventArgs e)
	{
		m_mdiChild.HandleCreated -= mdiChild_HandleCreated;
		AssignHandle();
	}

	private void AssignHandle()
	{
		AssignHandle(m_mdiChild.Handle);
	}

	internal void UpdateRegion(bool pIsDetached)
	{
		if (pIsDetached)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowRgn(base.Handle, IntPtr.Zero, bRedraw: true);
			return;
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
		Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowRect((int)base.Handle, ref lpRect);
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(0, 0, lpRect.Width, lpRect.Height);
		if (intPtr != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowRgn(base.Handle, intPtr, bRedraw: true);
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(intPtr);
		}
	}

	private bool OnWmNcActivate(ref Message m)
	{
		m.WParam = IntPtr.Zero;
		m.Result = (IntPtr)0;
		DefWndProc(ref m);
		return true;
	}

	private bool OnWmNcCalcSize(ref Message m)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT rECT = (Syncfusion.Runtime.InteropServices.NativeMethods.RECT)m.GetLParam(typeof(Syncfusion.Runtime.InteropServices.NativeMethods.RECT));
		DefWndProc(ref m);
		Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
		m.Result = IntPtr.Zero;
		return false;
	}

	private bool OnWmSize(ref Message m)
	{
		UpdateRegion(pIsDetached: false);
		return false;
	}

	private bool OnWmSetFocus()
	{
		if (m_mdiChild.MdiParent != null)
		{
			return m_mdiChild != m_mdiChild.MdiParent.ActiveMdiChild;
		}
		return false;
	}

	private bool OnWmMouseActivate()
	{
		m_mdiChild.Focus();
		return false;
	}

	private bool OnWmSetIcon()
	{
		if (this.SetIcon != null)
		{
			this.SetIcon(this, new EventArgs());
		}
		return false;
	}

	public bool PreFilterMessage(ref Message m)
	{
		bool result = false;
		switch (m.Msg)
		{
		case 131:
			result = OnWmNcCalcSize(ref m);
			break;
		case 5:
			result = OnWmSize(ref m);
			break;
		case 134:
			result = OnWmNcActivate(ref m);
			break;
		}
		return result;
	}

	protected override void WndProc(ref Message m)
	{
		bool flag = m_messageFilter != null && m_messageFilter.PreFilterMessage(ref m);
		if (!flag)
		{
			switch (m.Msg)
			{
			case 33:
				flag = OnWmMouseActivate();
				break;
			case 128:
				flag = OnWmSetIcon();
				break;
			}
		}
		if (!flag)
		{
			base.WndProc(ref m);
		}
	}

	~MDIChildWindow()
	{
		Dispose(bDisposing: false);
	}

	protected void Dispose(bool bDisposing)
	{
		if (bDisposing)
		{
			m_mdiChild = null;
			m_messageFilter = null;
		}
		ReleaseHandle();
	}

	public void Dispose()
	{
		GC.SuppressFinalize(this);
		Dispose(bDisposing: true);
	}
}
