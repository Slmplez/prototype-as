using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPageAdvClosingEventArgs : CancelEventArgs
{
	private TabPageAdv m_tabPage;

	public TabPageAdv TabPageAdv => m_tabPage;

	public TabPageAdvClosingEventArgs(TabPageAdv tabPage)
		: base(cancel: false)
	{
		m_tabPage = tabPage;
	}

	public TabPageAdvClosingEventArgs(TabPageAdv tabPage, bool cancel)
		: base(cancel)
	{
		m_tabPage = tabPage;
	}
}
