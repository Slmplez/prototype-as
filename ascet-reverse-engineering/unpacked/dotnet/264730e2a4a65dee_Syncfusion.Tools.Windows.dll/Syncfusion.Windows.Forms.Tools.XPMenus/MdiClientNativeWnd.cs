using System;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class MdiClientNativeWnd : NativeWindowSubclass
{
	private MdiSysMenuProvider m_owner;

	public MdiClientNativeWnd(MdiSysMenuProvider owner)
	{
		if (owner == null)
		{
			throw new ArgumentNullException("owner");
		}
		m_owner = owner;
		AssignHandleCustom(owner.m_wndMdiClient);
	}

	protected override void WndProc(ref Message m)
	{
		BarManager managerFromForm = BarManager.GetManagerFromForm(m_owner.MainForm);
		if (managerFromForm != null)
		{
			if (m.Msg == 560)
			{
				m_owner.m_mnuActiveChild = m.WParam;
				return;
			}
			if (m.Msg == 564)
			{
				return;
			}
			if (m.Msg == 545)
			{
				m_owner.m_hashMenus.Remove(m.WParam);
			}
			else if (m.Msg == 8 && m_owner.MainForm.Handle == m.WParam)
			{
				bool bValue = false;
				IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(m_owner.m_wndMdiClient.Handle, 553, IntPtr.Zero, out bValue);
				Form form = Control.FromHandle(intPtr) as Form;
				if (!bValue && form != null && form.WindowState == FormWindowState.Minimized)
				{
					m_owner.m_wndMdiClient.Focus();
				}
			}
		}
		base.WndProc(ref m);
	}
}
