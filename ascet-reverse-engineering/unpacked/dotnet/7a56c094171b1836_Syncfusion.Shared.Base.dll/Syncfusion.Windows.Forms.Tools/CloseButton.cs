using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class CloseButton : Button
{
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = string.Empty;
		}
	}

	public CloseButton()
	{
		base.Size = new Size(16, 16);
	}

	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		Pen pen = new Pen(SystemColors.ControlText, 2f);
		_ = base.Bounds;
		Graphics graphics = pe.Graphics;
		graphics.DrawLine(pen, new Point(4, 4), new Point(12, 12));
		graphics.DrawLine(pen, new Point(4, 12), new Point(12, 4));
	}
}
