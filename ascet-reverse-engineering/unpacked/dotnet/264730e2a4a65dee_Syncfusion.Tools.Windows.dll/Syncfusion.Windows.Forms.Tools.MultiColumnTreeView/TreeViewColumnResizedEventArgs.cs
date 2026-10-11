using System;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewColumnResizedEventArgs : EventArgs
{
	private TreeColumnAdv m_column;

	private int m_lastWidth;

	private int m_currentWidth;

	public TreeColumnAdv Column => m_column;

	public int PreviousWidth => m_lastWidth;

	public int CurrentWidth => m_currentWidth;

	public TreeViewColumnResizedEventArgs(TreeColumnAdv column, int previous, int current)
	{
		m_column = column;
		m_lastWidth = previous;
		m_currentWidth = current;
	}
}
