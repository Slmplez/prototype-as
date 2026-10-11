using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

internal class ClassicButtonRenderer : ButtonRenderer
{
	public ClassicButtonRenderer(ButtonAdv button)
		: base(button)
	{
	}

	public override void Render(Graphics g)
	{
		Rectangle clientRectangle = base.Button.ClientRectangle;
		if (clientRectangle.IsEmpty)
		{
			return;
		}
		if (IsPressed(base.Button))
		{
			if (IsMouseOver(base.Button))
			{
				ControlPaint.DrawButton(g, clientRectangle, ButtonState.Normal);
				ControlPaint.DrawSelectionFrame(g, active: true, new Rectangle(1, 1, base.Button.Bounds.Width - 1, base.Button.Bounds.Height - 1), new Rectangle(2, 2, base.Button.Bounds.Width - 3, base.Button.Bounds.Height - 3), base.Button.BackColor);
			}
			ControlPaint.DrawButton(g, clientRectangle, ButtonState.Pushed);
		}
		else
		{
			ControlPaint.DrawButton(g, clientRectangle, ButtonState.Normal);
		}
		DrawTextAndImage(g);
	}
}
