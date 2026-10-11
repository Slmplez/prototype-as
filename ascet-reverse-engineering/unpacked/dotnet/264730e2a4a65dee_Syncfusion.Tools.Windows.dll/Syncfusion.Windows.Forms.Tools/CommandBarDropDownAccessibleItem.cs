using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandBarDropDownAccessibleItem : AccessibleObject
{
	private CommandBar cmdBarOwner;

	public override AccessibleStates State => AccessibleStates.Focusable;

	public override AccessibleRole Role => AccessibleRole.ButtonMenu;

	public override AccessibleObject Parent => cmdBarOwner.AccessibilityObject;

	public override string Name => "Toolbar Options";

	public override string DefaultAction => "Open";

	public override Rectangle Bounds => cmdBarOwner.RectangleToScreen(cmdBarOwner.DropDownRect);

	public override string Description => Name + " " + "control";

	public CommandBarDropDownAccessibleItem(CommandBar owner)
	{
		cmdBarOwner = owner;
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		if (navdir == AccessibleNavigation.Left || navdir == AccessibleNavigation.Previous)
		{
			CommandBarAccessibleObject commandBarAccessibleObject = cmdBarOwner.AccessibilityObject as CommandBarAccessibleObject;
			commandBarAccessibleObject.GetChild(commandBarAccessibleObject.GetChildCount() - 2);
		}
		return base.Navigate(navdir);
	}

	public override void DoDefaultAction()
	{
		Select(AccessibleSelection.TakeFocus);
	}
}
