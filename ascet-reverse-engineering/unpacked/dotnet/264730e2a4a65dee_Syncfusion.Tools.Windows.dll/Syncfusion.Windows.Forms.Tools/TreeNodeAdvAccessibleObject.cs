using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeNodeAdvAccessibleObject : AccessibleObject
{
	private TreeNodeAdv node;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.None;
			if (node.TreeView != null)
			{
				accessibleStates = ((!node.Enabled) ? (accessibleStates | AccessibleStates.Unavailable) : (accessibleStates | AccessibleStates.Selectable));
				if (node.Checked)
				{
					accessibleStates |= AccessibleStates.Checked;
				}
				accessibleStates = ((!node.Expanded) ? (accessibleStates | AccessibleStates.Collapsed) : (accessibleStates | AccessibleStates.Expanded));
				if (node.TreeView.SelectionMode != TreeSelectionMode.Single)
				{
					accessibleStates |= AccessibleStates.ExtSelectable;
				}
				if (node.TreeView.HotTracking)
				{
					accessibleStates |= AccessibleStates.HotTracked;
				}
				if (!node.Visible)
				{
					accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
				}
				if (!node.IsSelected)
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
			if (node.TreeView != null)
			{
				return node.TreeView.AccessibilityObject;
			}
			return null;
		}
	}

	public override string Name => node.Text;

	public override string DefaultAction
	{
		get
		{
			if (node.HasChildren || (node.TreeView.LoadOnDemand && !node.ExpandedOnce))
			{
				if (node.Expanded)
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
			if (node.TreeView != null)
			{
				return node.TreeView.RectangleToScreen(node.Bounds);
			}
			return Rectangle.Empty;
		}
	}

	public override string Description => node.Text;

	public TreeNodeAdvAccessibleObject(TreeNodeAdv node)
	{
		this.node = node;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		switch (navdir)
		{
		case AccessibleNavigation.Down:
			if (node.NextVisibleNode != null)
			{
				return node.NextVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.FirstChild:
			if (node.FirstNode != null)
			{
				return node.FirstNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.LastChild:
			if (node.LastNode != null)
			{
				return node.LastNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Left:
			if (node.Parent != null)
			{
				return node.Parent.AccesibleObject;
			}
			return node.TreeView.AccessibilityObject;
		case AccessibleNavigation.Next:
			if (node.NextVisibleNode != null)
			{
				return node.NextVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Previous:
			if (node.PrevVisibleNode != null)
			{
				return node.PrevVisibleNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Right:
			if (node.FirstNode != null)
			{
				return node.FirstNode.AccesibleObject;
			}
			return null;
		case AccessibleNavigation.Up:
			if (node.PrevVisibleNode != null)
			{
				return node.PrevVisibleNode.AccesibleObject;
			}
			return null;
		default:
			return null;
		}
	}

	public override void DoDefaultAction()
	{
		if (node.HasChildren || (node.TreeView.LoadOnDemand && !node.ExpandedOnce))
		{
			node.Expanded = !node.Expanded;
		}
		else
		{
			Select(AccessibleSelection.TakeSelection);
		}
	}

	public override void Select(AccessibleSelection flags)
	{
		if (node != node.TreeView.Root)
		{
			if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !node.TreeView.Focused)
			{
				node.TreeView.Focus();
			}
			if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
			{
				node.TreeView.SelectedNode = node;
			}
			else if ((flags & AccessibleSelection.ExtendSelection) != AccessibleSelection.None)
			{
				node.TreeView.ExtendSelectionTo(node);
			}
			else if ((flags & AccessibleSelection.AddSelection) != AccessibleSelection.None)
			{
				node.TreeView.SelectedNodes.Add(node);
			}
			else if ((flags & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
			{
				node.TreeView.SelectedNodes.Remove(node);
			}
		}
	}
}
