using System;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeViewCommand : ICommand
{
	private int m_index = -1;

	private TreeNodeAdv m_node;

	private TreeNodeAdv m_parentNode;

	private Action m_action = Action.None;

	private string m_strPreviousText;

	private string m_strNewText;

	public TreeNodeAdv Node => m_node;

	public Action Action => m_action;

	public TreeViewCommand(TreeNodeAdv node, string newText)
		: this(node, Action.Edit)
	{
		m_strNewText = newText;
		m_strPreviousText = node.Text;
	}

	public TreeViewCommand(TreeNodeAdv node, Action action)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		m_node = node;
		m_action = action;
		m_parentNode = node.Parent;
		m_index = node.Index;
	}

	public void Execute()
	{
		m_node.IsUndoRedoPerforming = true;
		switch (m_action)
		{
		case Action.Add:
			m_parentNode.Nodes.Insert(m_index, m_node);
			break;
		case Action.Remove:
			m_parentNode.Nodes.Remove(m_node);
			break;
		case Action.Edit:
			m_node.Text = m_strNewText;
			break;
		}
		m_node.IsUndoRedoPerforming = false;
	}

	public void Reverse()
	{
		switch (m_action)
		{
		case Action.Add:
			m_action = Action.Remove;
			break;
		case Action.Remove:
			m_action = Action.Add;
			break;
		case Action.Edit:
		{
			string strNewText = m_strNewText;
			m_strNewText = m_strPreviousText;
			m_strPreviousText = strNewText;
			break;
		}
		}
	}
}
