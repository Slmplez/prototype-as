using System;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewColumnSelectedChangedEventArgs : EventArgs
{
	private TreeColumnAdv m_column;

	public TreeColumnAdv Column => m_column;

	public TreeViewColumnSelectedChangedEventArgs(TreeColumnAdv column)
	{
		m_column = column;
	}
}
