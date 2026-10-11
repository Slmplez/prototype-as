using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IMouseController
{
	string Name { get; }

	Cursor Cursor { get; }

	void MouseHoverEnter();

	void MouseHover(MouseEventArgs e);

	void MouseHoverLeave(EventArgs e);

	void MouseDown(MouseEventArgs e);

	void MouseMove(MouseEventArgs e);

	void MouseUp(MouseEventArgs e);

	void CancelMode();

	int HitTest(MouseEventArgs mouseEventArgs, IMouseController controller);
}
