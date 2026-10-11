using System;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewColumnResizeEventArgs : EventArgs
{
	private TreeColumnAdv m_column;

	private int m_lastPosition;

	private int m_currentPos;

	public TreeColumnAdv Column => m_column;

	public int PreviousPosition => m_lastPosition;

	public int CurrentPosition => m_currentPos;

	public TreeViewColumnResizeEventArgs(TreeColumnAdv column, int previous, int current)
	{
		m_column = column;
		m_lastPosition = previous;
		m_currentPos = current;
	}
}
