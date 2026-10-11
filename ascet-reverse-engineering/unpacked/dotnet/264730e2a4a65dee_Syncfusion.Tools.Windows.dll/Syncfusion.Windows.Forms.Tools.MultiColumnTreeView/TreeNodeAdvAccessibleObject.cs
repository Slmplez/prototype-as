using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class TreeNodeAdvAccessibleObject : AccessibleObject
{
	private TreeNodeAdv m_node;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.None;
			if (m_node.TreeView != null)
			{
				accessibleStates = ((!m_node.Enabled) ? (accessibleStates | AccessibleStates.Unavailable) : (accessibleStates | AccessibleStates.Selectable));
				if (m_node.Checked)
				{
					accessibleStates |= AccessibleStates.Checked;
				}
				accessibleStates = ((!m_node.Expanded) ? (accessibleStates | AccessibleStates.Collapsed) : (accessibleStates | AccessibleStates.Expanded));
				if (m_node.TreeView.SelectionMode != TreeSelectionMode.Single)
				{
					accessibleStates |= AccessibleStates.ExtSelectable;
				}
				if (m_node.TreeView.HotTracking)
				{
					accessibleStates |= AccessibleStates.HotTracked;
				}
				if (!m_node.Visible)
				{
					accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
				}
				if (!m_node.IsSelected)
				{
					accessibleStates |= AccessibleStates.Selected;
				}
			}
			else
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.OutlineItem;

	public override AccessibleObject Parent
	{
		get
		{
			if (m_node.TreeView != null)
			{
				return m_node.TreeView.AccessibilityObject;
			}
			return null;
		}
	}

	public override string Name => m_node.Text;

	public override string DefaultAction
	{
		get
		{
			if (m_node.HasNodes || (m_node.TreeView.LoadOnDemand && !m_node.ExpandedOnce))
			{
				if (m_node.Expanded)
				{
					return "Collapse";
				}
				return "Expand";
			}
			return "Select";
		}
	}

	public override Rectangle Bounds
	{
		get
		{
			if (m_node.TreeView != null)
			{
				return m_node.TreeView.RectangleToScreen(m_node.Bounds);
			}
			return Rectangle.Empty;
		}
	}

	public override string Description => m_node.Text;

	public TreeNodeAdvAccessibleObject(TreeNodeAdv node)
	{
		m_node = node;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		switch (navdir)
		{
		case AccessibleNavigation.Down:
			if (m_node.NextVisibleNode != null)
			{
				return m_node.NextVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.FirstChild:
			if (m_node.FirstNode != null)
			{
				return m_node.FirstNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.LastChild:
			if (m_node.LastNode != null)
			{
				return m_node.LastNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Left:
			if (m_node.Parent != null)
			{
				return m_node.Parent.AccesibleObject;
			}
			return m_node.TreeView.AccessibilityObject;
		case AccessibleNavigation.Next:
			if (m_node.NextVisibleNode != null)
			{
				return m_node.NextVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Previous:
			if (m_node.PrevVisibleNode != null)
			{
				return m_node.PrevVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Right:
			if (m_node.FirstNode != null)
			{
				return m_node.FirstNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Up:
			if (m_node.PrevVisibleNode != null)
			{
				return m_node.PrevVisibleNode.AccesibleObject;
			}
			return null;
		default:
			return null;
		}
	}

	public override void DoDefaultAction()
	{
		if (m_node.HasNodes || (m_node.TreeView.LoadOnDemand && !m_node.ExpandedOnce))
		{
			m_node.Expanded = !m_node.Expanded;
		}
		else
		{
			Select(AccessibleSelection.TakeSelection);
		}
	}

	public override void Select(AccessibleSelection flags)
	{
		if (m_node != m_node.TreeView.Root)
		{
			if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !m_node.TreeView.Focused)
			{
				m_node.TreeView.Focus();
			}
			if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
			{
				m_node.TreeView.SelectedNode = m_node;
			}
			else if ((flags & AccessibleSelection.ExtendSelection) != AccessibleSelection.None)
			{
				m_node.TreeView.ExtendSelectionTo(m_node);
			}
			else if ((flags & AccessibleSelection.AddSelection) != AccessibleSelection.None)
			{
				m_node.TreeView.SelectedNodes.Add(m_node);
			}
			else if ((flags & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
			{
				m_node.TreeView.SelectedNodes.Remove(m_node);
			}
		}
	}
}
