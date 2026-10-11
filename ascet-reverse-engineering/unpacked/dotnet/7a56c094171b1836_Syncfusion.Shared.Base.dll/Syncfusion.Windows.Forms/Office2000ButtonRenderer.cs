using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

internal class Office2000ButtonRenderer : ButtonRenderer
{
	private const int OutsidePadding = 1;

	private const int InsidePadding = 2;

	public Office2000ButtonRenderer(ButtonAdv button)
		: base(button)
	{
	}

	public override void Render(Graphics g)
	{
		Rectangle clientRectangle = base.Button.ClientRectangle;
		if (IsPressed(base.Button))
		{
			if (IsMouseOver(base.Button))
			{
				ControlPaint.DrawButton(g, clientRectangle, ButtonState.Flat);
				ControlPaint.DrawSelectionFrame(g, active: true, new Rectangle(1, 1, base.Button.Bounds.Width - 1, base.Button.Bounds.Height - 1), new Rectangle(2, 2, base.Button.Bounds.Width - 3, base.Button.Bounds.Height - 3), base.Button.BackColor);
			}
			else
			{
				ControlPaint.DrawButton(g, clientRectangle, ButtonState.Pushed);
			}
		}
		else if (IsDefault(base.Button))
		{
			ControlPaint.DrawButton(g, clientRectangle, ButtonState.Flat);
		}
		else if (IsMouseOver(base.Button))
		{
			ControlPaint.DrawButton(g, clientRectangle, ButtonState.Normal);
		}
		DrawTextAndImage(g);
	}
}
