using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class NativeWindowEx : NativeWindow
{
	private IMessageFilter m_messageFilter;

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

	public NativeWindowEx(IntPtr hWnd)
	{
		AssignHandle(hWnd);
	}

	protected override void WndProc(ref Message m)
	{
		if (m_messageFilter == null || !m_messageFilter.PreFilterMessage(ref m))
		{
			base.WndProc(ref m);
		}
	}
}
