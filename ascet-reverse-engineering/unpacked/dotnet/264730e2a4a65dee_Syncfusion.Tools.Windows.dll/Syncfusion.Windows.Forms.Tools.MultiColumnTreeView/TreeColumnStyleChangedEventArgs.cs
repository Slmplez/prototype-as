using System;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeColumnStyleChangedEventArgs : EventArgs
{
	private StyleChangedEventArgs m_args;

	private TreeColumnAdv m_column;

	public TreeColumnAdv Column => m_column;

	public StyleChangedEventArgs StyleChange => m_args;

	public TreeColumnStyleChangedEventArgs(TreeColumnAdv column, StyleChangedEventArgs change)
	{
		m_column = column;
		m_args = change;
	}
}
