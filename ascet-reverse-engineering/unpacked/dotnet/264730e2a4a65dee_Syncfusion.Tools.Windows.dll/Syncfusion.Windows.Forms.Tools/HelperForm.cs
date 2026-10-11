using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class HelperForm : Form
{
	private Color m_borderColor;

	private int m_borderWidth;

	private RectangleF[] m_boundsScans;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			return createParams;
		}
	}

	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
			}
		}
	}

	public int BorderWidth
	{
		get
		{
			return m_borderWidth;
		}
		set
		{
			if (m_borderWidth != value)
			{
				m_borderWidth = value;
			}
		}
	}

	internal RectangleF[] BoundsScans
	{
		get
		{
			return m_boundsScans;
		}
		set
		{
			if (m_boundsScans != value)
			{
				m_boundsScans = value;
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 132)
		{
			m.Result = (IntPtr)(-1);
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		if (base.Region != null)
		{
			PaintRegionBorders(graphics);
		}
		else
		{
			Rectangle rect = new Rectangle(0, 0, base.Width, base.Height);
			rect.Inflate(-m_borderWidth, -m_borderWidth);
			graphics.FillRectangle(new SolidBrush(BorderColor), rect);
		}
		base.OnPaint(e);
	}

	protected virtual void PaintRegionBorders(Graphics g)
	{
		RectangleF[] boundsScans = m_boundsScans;
		foreach (RectangleF value in boundsScans)
		{
			g.FillRectangle(new SolidBrush(BorderColor), Rectangle.Round(value));
		}
	}
}
