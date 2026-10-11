using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Etas.Base.UI.Framework;

public class GroupBoxLineDesigner : ParentControlDesigner
{
	protected override void PostFilterProperties(IDictionary properties)
	{
		properties.Remove("FlatStyle");
		base.PostFilterProperties(properties);
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		DrawBorder(pe.Graphics);
		base.OnPaintAdornments(pe);
	}

	private void DrawBorder(Graphics graphics)
	{
		Control control = base.Control;
		Rectangle clientRectangle = control.ClientRectangle;
		Color color = ((!((double)control.BackColor.GetBrightness() < 0.5)) ? ControlPaint.Dark(control.BackColor) : ControlPaint.Light(control.BackColor));
		Pen pen = new Pen(color);
		pen.DashPattern = new float[2] { 3f, 1f };
		clientRectangle.Width--;
		clientRectangle.Height--;
		graphics.DrawRectangle(pen, clientRectangle);
		pen.Dispose();
	}
}
