using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class VSSubclass : NativeWindowSubclass
{
	public delegate void VisibleChangedEventH(object sender, bool visible);

	private bool m_bVisible;

	protected bool StudioVisible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
				RaiseVisibleChangedEvent();
			}
		}
	}

	public event VisibleChangedEventH VisibleChanged;

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 24)
		{
			if (m.WParam == IntPtr.Zero)
			{
				StudioVisible = false;
			}
			else
			{
				StudioVisible = true;
			}
		}
		base.WndProc(ref m);
	}

	private void RaiseVisibleChangedEvent()
	{
		if (this.VisibleChanged != null)
		{
			this.VisibleChanged(this, m_bVisible);
		}
	}
}
