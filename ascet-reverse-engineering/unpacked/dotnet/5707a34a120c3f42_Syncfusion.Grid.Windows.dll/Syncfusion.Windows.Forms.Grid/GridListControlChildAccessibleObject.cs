using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridListControlChildAccessibleObject : Control.ControlAccessibleObject
{
	private GridListControl listControl;

	private GridListControlChild gridChild;

	internal GridListControl ListControl => listControl;

	public override AccessibleRole Role => AccessibleRole.List;

	public override string Name => listControl.AccessibleName;

	public override Rectangle Bounds => gridChild.RectangleToScreen(gridChild.ClientRectangle);

	public override string Description => listControl.AccessibleDescription;

	public override string Help => string.Empty;

	public override AccessibleObject Parent => listControl.AccessibilityObject;

	public override AccessibleStates State => AccessibleStates.None;

	public override string Value
	{
		get
		{
			return listControl.Text;
		}
		set
		{
			listControl.Text = value;
		}
	}

	public GridListControlChildAccessibleObject(GridListControlChild owner)
		: base(owner)
	{
		gridChild = owner;
		listControl = gridChild.ListControl;
	}

	public override int GetChildCount()
	{
		return listControl.Items.Count;
	}

	public override AccessibleObject GetChild(int index)
	{
		if (index < listControl.Items.Count)
		{
			return gridChild.ItemAccessibleObjects[index];
		}
		return null;
	}

	internal AccessibleObject NavigateFromChild(GridListControlItemAccessibleObject child, AccessibleNavigation navdir)
	{
		int num = child.Index;
		switch (navdir)
		{
		case AccessibleNavigation.FirstChild:
			num = 0;
			break;
		case AccessibleNavigation.LastChild:
			num = listControl.Items.Count - 1;
			break;
		case AccessibleNavigation.Up:
		case AccessibleNavigation.Left:
		case AccessibleNavigation.Previous:
			if (num > 0)
			{
				num--;
			}
			break;
		case AccessibleNavigation.Down:
		case AccessibleNavigation.Right:
		case AccessibleNavigation.Next:
			if (num < listControl.Items.Count)
			{
				num++;
			}
			break;
		}
		return GetChild(num);
	}

	internal void SelectChild(GridListControlItemAccessibleObject child, AccessibleSelection selection)
	{
		int index = child.Index;
		if ((selection & AccessibleSelection.TakeFocus) == 0)
		{
			return;
		}
		if ((selection & AccessibleSelection.TakeSelection) != AccessibleSelection.None)
		{
			listControl.SelectedIndex = index;
			listControl.SetSelected(index, value: true);
		}
		if ((selection & AccessibleSelection.AddSelection) != AccessibleSelection.None)
		{
			listControl.SetSelected(index, value: true);
		}
		if ((selection & AccessibleSelection.RemoveSelection) != AccessibleSelection.None)
		{
			listControl.SetSelected(index, value: false);
		}
		if ((selection & AccessibleSelection.ExtendSelection) == 0)
		{
			return;
		}
		int selectedIndex = listControl.SelectedIndex;
		if (selectedIndex < index)
		{
			for (int i = selectedIndex; i <= index; i++)
			{
				listControl.SetSelected(i, value: true);
			}
		}
		else
		{
			for (int j = index; j <= selectedIndex; j++)
			{
				listControl.SetSelected(j, value: true);
			}
		}
	}

	public override AccessibleObject GetFocused()
	{
		if (gridChild.Focused)
		{
			return GetSelected();
		}
		return base.GetFocused();
	}

	public override AccessibleObject GetSelected()
	{
		if (listControl.SelectedIndex != -1)
		{
			return GetChild(listControl.SelectedIndex + base.GetChildCount());
		}
		return base.GetSelected();
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point point = gridChild.PointToClient(new Point(x, y));
		GridRangeInfo gridRangeInfo = gridChild.PointToRangeInfo(point);
		if (!gridRangeInfo.IsEmpty && gridRangeInfo.Top > 0)
		{
			return gridChild.ItemAccessibleObjects[gridRangeInfo.Top];
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (GetSelected() is GridListControlItemAccessibleObject child)
		{
			return NavigateFromChild(child, navdir);
		}
		return base.Navigate(navdir);
	}
}
