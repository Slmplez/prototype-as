using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

internal class Office2003ButtonRenderer : ButtonRenderer
{
	private Brush grayBrush;

	private Brush orangeBrush;

	private Brush redBrush;

	private Pen borderPen;

	private Pen focusBorderPen;

	public Office2003ButtonRenderer(ButtonAdv button)
		: base(button)
	{
	}

	protected override void OnDispose(bool disposing)
	{
		if (disposing)
		{
			DisposeDrawingObjects();
		}
		base.OnDispose(disposing);
	}

	private void DisposeDrawingObjects()
	{
		if (grayBrush != null)
		{
			DisposeHelper.Dispose(ref orangeBrush);
			DisposeHelper.Dispose(ref redBrush);
			DisposeHelper.Dispose(ref borderPen);
			DisposeHelper.Dispose(ref focusBorderPen);
			DisposeHelper.Dispose(ref grayBrush);
		}
	}

	private void CreateDrawingObjects()
	{
		grayBrush = new SolidBrush(base.Button.BackColor);
		orangeBrush = new SolidBrush(ButtonOffice2003Colors.MouseOverColor);
		redBrush = new SolidBrush(ButtonOffice2003Colors.PressedColor);
		borderPen = new Pen(ButtonOffice2003Colors.BorderColor, 1f);
		focusBorderPen = new Pen(ButtonOffice2003Colors.FocusBorderColor, 1f);
	}

	public override void Render(Graphics g)
	{
		CreateDrawingObjects();
		if (IsPressed(base.Button))
		{
			if (base.Button.IsMouseDown && IsMouseOver(base.Button))
			{
				g.FillRectangle(redBrush, bounds);
			}
			else if (IsMouseOver(base.Button))
			{
				g.FillRectangle(orangeBrush, bounds);
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
			g.DrawRectangle(focusBorderPen, 0, 0, bounds.Width - 1, bounds.Height - 1);
		}
		DisposeDrawingObjects();
		DrawTextAndImage(g);
	}
}
