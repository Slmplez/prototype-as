using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandDockBarAccessibleObject : Control.ControlAccessibleObject
{
	public override AccessibleRole Role => AccessibleRole.Client;

	public override string Name => "CommandDockBar" + " " + base.Owner.Dock;

	public override Rectangle Bounds => base.Owner.RectangleToScreen(base.Owner.ClientRectangle);

	public override string Description => Name;

	public override string Help => string.Empty;

	public override AccessibleStates State => AccessibleStates.None;

	public override string Value
	{
		get
		{
			return base.Owner.Text;
		}
		set
		{
			base.Owner.Text = value;
		}
	}

	public override AccessibleObject Parent => base.Parent;

	public CommandDockBarAccessibleObject(CommandDockBar dockbar)
		: base(dockbar)
	{
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		Point pt = base.Owner.PointToClient(new Point(x, y));
		foreach (Control control in base.Owner.Controls)
		{
			if (control.Visible && control.Bounds.Contains(pt))
			{
				return control.AccessibilityObject;
			}
		}
		return base.HitTest(x, y);
	}

	public override AccessibleObject Navigate(AccessibleNavigation navdir)
	{
		return base.Navigate(navdir);
	}
}
