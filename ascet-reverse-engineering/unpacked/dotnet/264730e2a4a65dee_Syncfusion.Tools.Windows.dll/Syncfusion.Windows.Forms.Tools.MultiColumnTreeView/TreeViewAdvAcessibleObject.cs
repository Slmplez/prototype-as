using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class TreeViewAdvAcessibleObject : Control.ControlAccessibleObject
{
	private MultiColumnTreeView m_tree;

	public override AccessibleRole Role => AccessibleRole.Outline;

	public override string Name => m_tree.AccessibleName;

	public override Rectangle Bounds => m_tree.RectangleToScreen(m_tree.ClientRectangle);

	public override string Description => m_tree.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => m_tree.Parent.AccessibilityObject;

	public override AccessibleStates State
	{
		get
		{
			if (!m_tree.Visible)
			{
				return AccessibleStates.Invisible;
			}
			return AccessibleStates.None;
		}
	}

	public override string Value
	{
		get
		{
			return m_tree.Text;
		}
		set
		{
			m_tree.Text = value;
		}
	}

	public TreeViewAdvAcessibleObject(MultiColumnTreeView tree)
		: base(tree)
	{
		m_tree = tree;
	}

	public override int GetChildCount()
	{
		return m_tree.Root.Nodes.Count;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < GetChildCount())
		{
			return m_tree.Root.Nodes[index].AccesibleObject;
		}
		return null;
	}

	public override AccessibleObject GetFocused()
	{
		if (m_tree.Focused)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		if (m_tree.SelectedNode != null)
		{
			return m_tree.SelectedNode.AccesibleObject;
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		TreeNodeAdv nodeAtPoint = m_tree.GetNodeAtPoint(m_tree.PointToClient(new Point(x, y)));
		if (nodeAtPoint != null)
		{
			return nodeAtPoint.AccesibleObject;
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		switch (navdir)
		{
		case AccessibleNavigation.Down:
		case AccessibleNavigation.Right:
		case AccessibleNavigation.Next:
		case AccessibleNavigation.FirstChild:
			if (m_tree.Root.FirstNode != null)
			{
				return m_tree.Root.FirstNode.AccesibleObject;
			}
			return null;
		default:
			return base.Navigate(navdir);
		}
	}
}
