using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class QueryDragInsertInfoEventArgs : EventArgs
{
	private Color m_clrDragInsertColor = Color.Black;

	private TreeNodeAdv m_nodeTree;

	public Color DragInsertColor
	{
		get
		{
			return m_clrDragInsertColor;
		}
		set
		{
			if (m_clrDragInsertColor != value)
			{
				m_clrDragInsertColor = value;
			}
		}
	}

	public TreeNodeAdv Node => m_nodeTree;

	public QueryDragInsertInfoEventArgs(TreeNodeAdv node)
	{
		m_nodeTree = node;
	}
}
