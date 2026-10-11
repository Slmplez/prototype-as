using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(XPTaskPageDesigner))]
public class XPTaskPage : WizardPage
{
	protected override void OnPaint(PaintEventArgs e)
	{
		if ((base.Parent as WizardContainer).Parent is XPTaskPane { VisualStyle: VisualStyle.Office2007 } xPTaskPane)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			using SolidBrush brush = new SolidBrush(xPTaskPane.Office2007ColorTable.XPTaskPageBackColor);
			using GraphicsPath path = xPTaskPane.GetOffice2007PathFromBounds(clientRectangle);
			e.Graphics.FillPath(brush, path);
			return;
		}
		base.OnPaint(e);
	}
}
