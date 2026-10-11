using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

internal class OfficeXPButtonRenderer : ButtonRenderer
{
	private Brush grayBrush;

	private Brush orangeBrush;

	private Brush redBrush;

	private Pen borderPen;

	public OfficeXPButtonRenderer(ButtonAdv button)
		: base(button)
	{
		grayBrush = new SolidBrush(button.BackColor);
		orangeBrush = new SolidBrush(Color.FromArgb(233, 234, 237));
		redBrush = new SolidBrush(Color.FromArgb(132, 146, 181));
		borderPen = new Pen(ButtonOfficeXPColors.BorderColor, 1f);
	}

	protected override void OnDispose(bool disposing)
	{
		if (disposing)
		{
			DisposeHelper.Dispose(ref grayBrush);
			DisposeHelper.Dispose(ref orangeBrush);
			DisposeHelper.Dispose(ref redBrush);
			DisposeHelper.Dispose(ref borderPen);
		}
		base.OnDispose(disposing);
	}

	private void CreateDrawingObjects()
	{
		grayBrush = new SolidBrush(base.Button.BackColor);
		orangeBrush = new SolidBrush(Color.FromArgb(233, 234, 237));
		redBrush = new SolidBrush(Color.FromArgb(132, 146, 181));
		borderPen = new Pen(ButtonOfficeXPColors.BorderColor, 1f);
	}

	public override void Render(Graphics g)
	{
		CreateDrawingObjects();
		if (IsPressed(base.Button))
		{
			if (IsMouseOver(base.Button))
			{
				g.FillRectangle(new SolidBrush(Color.OrangeRed), bounds);
			}
			else
			{
				g.FillRectangle(redBrush, bounds);
			}
		}
		else if (IsDefault(base.Button))
		{
			g.FillRectangle(grayBrush, bounds);
		}
		else if (IsMouseOver(base.Button))
		{
			g.FillRectangle(orangeBrush, bounds);
		}
		if (base.Button.BorderStyleAdv == ButtonAdvBorderStyle.Default)
		{
			g.DrawRectangle(borderPen, 0, 0, bounds.Width - 1, bounds.Height - 1);
		}
		DrawTextAndImage(g);
	}
}
