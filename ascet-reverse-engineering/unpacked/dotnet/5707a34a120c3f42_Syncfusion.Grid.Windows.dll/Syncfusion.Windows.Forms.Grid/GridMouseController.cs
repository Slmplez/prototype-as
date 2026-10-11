using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public abstract class GridMouseController : GridSubComponent, IMouseController, IGridFocusHelper
{
	public abstract string Name { get; }

	public abstract Cursor Cursor { get; }

	protected GridMouseController(GridControlBase grid)
		: base(grid)
	{
	}

	public abstract void MouseHoverEnter();

	public abstract void MouseHover(MouseEventArgs e);

	public abstract void MouseHoverLeave(EventArgs e);

	public abstract void MouseDown(MouseEventArgs e);

	public abstract void MouseMove(MouseEventArgs e);

	public abstract void MouseUp(MouseEventArgs e);

	public abstract void CancelMode();

	public abstract int HitTest(MouseEventArgs mouseEventArgs, IMouseController controller);

	public virtual bool GetAllowFixFocus()
	{
		return true;
	}
}
