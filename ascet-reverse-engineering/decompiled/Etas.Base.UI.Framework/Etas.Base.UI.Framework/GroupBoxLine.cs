using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework;

[Designer(typeof(GroupBoxLineDesigner))]
[ToolboxBitmap(typeof(GroupBoxLine), "Toolbox_GroupBoxLine.bmp")]
public class GroupBoxLine : GroupBox
{
	protected Color _lineColor;

	protected Color _textColor;

	private Container components;

	[Category("Appearance")]
	[Description("The line color.")]
	public Color LineColor
	{
		get
		{
			return _lineColor;
		}
		set
		{
			_lineColor = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("The text color.")]
	public Color TextColor
	{
		get
		{
			return _textColor;
		}
		set
		{
			_textColor = value;
			Invalidate();
		}
	}

	public GroupBoxLine()
	{
		_textColor = Color.FromArgb(0, 70, 213);
		_lineColor = Color.FromArgb(208, 208, 191);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		SolidBrush solidBrush = new SolidBrush(_textColor);
		Pen pen = new Pen(_lineColor);
		SizeF sizeF = graphics.MeasureString(Text, Font);
		graphics.DrawString(point: new PointF(0f, 0f), s: Text, font: Font, brush: solidBrush);
		graphics.DrawLine(pen, sizeF.Width, sizeF.Height / 2f, base.Width, sizeF.Height / 2f);
		solidBrush.Dispose();
		pen.Dispose();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}
}
