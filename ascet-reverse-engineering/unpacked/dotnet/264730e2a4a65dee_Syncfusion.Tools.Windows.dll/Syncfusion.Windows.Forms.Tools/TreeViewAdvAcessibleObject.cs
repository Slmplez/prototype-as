using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeViewAdvAcessibleObject : Control.ControlAccessibleObject
{
	private TreeViewAdv tree;

	public override AccessibleRole Role => AccessibleRole.Outline;

	public override string Name => tree.AccessibleName;

	public override Rectangle Bounds => tree.RectangleToScreen(tree.ClientRectangle);

	public override string Description => tree.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => tree.Parent.AccessibilityObject;

	public override AccessibleStates State
	{
		get
		{
			if (!tree.Visible)
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
			return tree.Text;
		}
		set
		{
			tree.Text = value;
		}
	}

	public TreeViewAdvAcessibleObject(TreeViewAdv tree)
		: base(tree)
	{
		this.tree = tree;
	}

	public override int GetChildCount()
	{
		return tree.Root.Nodes.Count;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < GetChildCount())
		{
			return tree.Root.Nodes[index].AccesibleObject;
		}
		return null;
	}

	public override AccessibleObject GetFocused()
	{
		if (tree.Focused)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		if (tree.SelectedNode != null)
		{
			return tree.SelectedNode.AccesibleObject;
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		TreeNodeAdv nodeAtPoint = tree.GetNodeAtPoint(tree.PointToClient(new Point(x, y)));
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
			if (tree.Root.FirstNode != null)
			{
				return tree.Root.FirstNode.AccesibleObject;
			}
			return null;
		default:
			return base.Navigate(navdir);
		}
	}
}
