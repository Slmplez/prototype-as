using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridListControlItemAccessibleObject : AccessibleObject
{
	private GridListControl listControl;

	private GridListControlChild gridChild;

	private int index;

	public int Index => index;

	internal GridListControlChildAccessibleObject GridAccessibilityObject => gridChild.AccessibilityObject as GridListControlChildAccessibleObject;

	public override AccessibleStates State
	{
		get
		{
			AccessibleStates accessibleStates = AccessibleStates.Focusable | AccessibleStates.Selectable;
			if (listControl.GetSelected(index))
			{
				accessibleStates |= AccessibleStates.Selected;
			}
			if (listControl.SelectedIndex == index)
			{
				accessibleStates |= AccessibleStates.Focused;
			}
			if (index + 1 < gridChild.TopRowIndex || index + 1 > gridChild.ViewLayout.LastVisibleRow)
			{
				accessibleStates |= AccessibleStates.Invisible | AccessibleStates.Offscreen;
			}
			if (listControl.SelectionMode != SelectionMode.One)
			{
				accessibleStates |= AccessibleStates.MultiSelectable;
			}
			return accessibleStates;
		}
	}

	public override AccessibleRole Role => AccessibleRole.ListItem;

	public override AccessibleObject Parent => gridChild.AccessibilityObject;

	public override string Name => listControl.Items[index].ToString();

	public override string DefaultAction => "Click";

	public override Rectangle Bounds => gridChild.RectangleToScreen(gridChild.RangeInfoToRectangle(GridRangeInfo.Row(index + 1)));

	public override string Description => listControl.GetItemText(listControl.Items[Index]);

	public GridListControlItemAccessibleObject(GridListControlChild grid, int index)
	{
		gridChild = grid;
		listControl = grid.ListControl;
		this.index = index;
	}

	public override void Select(AccessibleSelection flags)
	{
		if ((flags & AccessibleSelection.TakeFocus) != AccessibleSelection.None && !gridChild.Focused)
		{
			gridChild.Focus();
		}
		if ((flags & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			GridAccessibilityObject.SelectChild(this, flags);
		}
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return GridAccessibilityObject.NavigateFromChild(this, navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeFocus | AccessibleSelection.TakeSelection);
	}

	public override AccessibleObject GetFocused()
	{
		return GridAccessibilityObject.GetFocused();
	}
}
