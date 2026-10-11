using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class TabBarPageDesigner : ScrollableControlDesigner
{
	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules selectionRules = base.SelectionRules;
			Control control = Control;
			if (control.Parent is TabBarSplitterControl)
			{
				selectionRules &= ~SelectionRules.AllSizeable;
			}
			return selectionRules;
		}
	}

	public override bool CanBeParentedTo(IDesigner parentDesigner)
	{
		return parentDesigner is TabBarSplitterControlDesigner;
	}

	private void DrawBorder(Graphics graphics)
	{
		Control control = (Control)base.Component;
		Rectangle clientRectangle = control.ClientRectangle;
		Color color = ((!((double)control.BackColor.GetBrightness() < 0.5)) ? ControlPaint.Dark(control.BackColor) : ControlPaint.Light(control.BackColor));
		Pen pen = new Pen(color);
		pen.DashStyle = DashStyle.Dash;
		clientRectangle.Width--;
		clientRectangle.Height--;
		graphics.DrawRectangle(pen, clientRectangle);
		pen.Dispose();
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		DrawBorder(pe.Graphics);
		base.OnPaintAdornments(pe);
	}
}
