using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2005DragTargetControl : DragTargetControl
{
	private static readonly Color DEF_HILIGHT_COLOR = Color.FromArgb(65, 112, 202);

	public override Image CurrentImage => inactiveImage;

	public override void OnPaint(object sender, PaintEventArgs e)
	{
		e.Graphics.DrawImage(inactiveImage, m_internalControl.ClientRectangle);
		if (m_mouseIn)
		{
			Rectangle rect = new Rectangle(0, 0, inactiveImage.Width - 1, inactiveImage.Height - 1);
			e.Graphics.DrawRectangle(new Pen(DEF_HILIGHT_COLOR), rect);
		}
	}

	public override void HideControl()
	{
		if (m_mouseIn)
		{
			RaiseMouseLeaveEvent();
			m_mouseIn = false;
		}
		base.HideControl();
	}
}
