using System;

namespace Syncfusion.Windows.Forms.Tools;

public class SelectedTabChangedEventArgs : EventArgs
{
	private ToolStripTabItem m_prevSelectedTab;

	private ToolStripTabItem m_newSelectedTab;

	public ToolStripTabItem PrevSelectedTab => m_prevSelectedTab;

	public ToolStripTabItem NewSelectedTab => m_newSelectedTab;

	public SelectedTabChangedEventArgs(ToolStripTabItem prevSelectedTab, ToolStripTabItem newSelectedTab)
	{
		m_newSelectedTab = newSelectedTab;
		m_prevSelectedTab = prevSelectedTab;
	}
}
