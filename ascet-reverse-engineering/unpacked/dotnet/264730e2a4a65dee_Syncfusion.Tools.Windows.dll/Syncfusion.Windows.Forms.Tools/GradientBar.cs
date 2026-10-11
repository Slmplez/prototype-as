using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class GradientBar : UserControl
{
	public const int DEF_OFFCET = 4;

	private Container components;

	private Bitmap m_bitmap;

	private Color m_middleColor = Color.Gray;

	private int m_position = 142;

	private int m_bitmapHeight = 142;

	private int m_maxValue = 255;

	public Color MiddleColor
	{
		get
		{
			return m_middleColor;
		}
		set
		{
			m_middleColor = value;
			Invalidate();
		}
	}

	public int Position
	{
		get
		{
			return m_position;
		}
		set
		{
			m_position = value;
		}
	}

	public int BitmapHeight => m_bitmapHeight;

	public int MaxValue
	{
		get
		{
			return m_maxValue;
		}
		set
		{
			m_maxValue = value;
		}
	}

	public event EventHandler PositionChanged;

	protected virtual void OnPositionChanged(EventArgs e)
	{
		if (this.PositionChanged != null)
		{
			this.PositionChanged(this, e);
		}
	}

	public GradientBar()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		base.Name = "GradientBar";
		base.Size = new System.Drawing.Size(20, 150);
		base.SizeChanged += new System.EventHandler(GradientBar_SizeChanged);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (m_bitmap == null)
		{
			m_bitmap = new Bitmap(base.ClientRectangle.Width - 10, m_bitmapHeight);
		}
		Color[] colors = new Color[3]
		{
			Color.Black,
			MiddleColor,
			Color.White
		};
		BrushInfo brush = new BrushInfo(GradientStyle.Vertical, colors);
		Graphics graphics = Graphics.FromImage(m_bitmap);
		Rectangle r = new Rectangle(0, 0, base.Size.Width - 10, m_bitmapHeight);
		BrushPaint.FillRectangle(graphics, r, brush);
		graphics.Dispose();
		Rectangle rect = new Rectangle(new Point(0, 4), new Size(base.Size.Width - 10, m_bitmapHeight));
		e.Graphics.DrawImage(m_bitmap, rect);
		DrawPointer(e.Graphics);
	}

	private void DrawPointer(Graphics g)
	{
		int num = base.ClientRectangle.Right - 7;
		int num2 = Position + 3;
		GraphicsPath graphicsPath = new GraphicsPath();
		Point[] points = new Point[20]
		{
			new Point(num, num2),
			new Point(num + 1, num2),
			new Point(num + 1, num2 - 1),
			new Point(num + 3, num2 - 1),
			new Point(num + 3, num2 - 2),
			new Point(num + 4, num2 - 2),
			new Point(num + 4, num2 - 3),
			new Point(num + 6, num2 - 3),
			new Point(num + 6, num2 - 4),
			new Point(num + 7, num2 - 4),
			new Point(num + 7, num2 + 5),
			new Point(num + 6, num2 + 5),
			new Point(num + 6, num2 + 4),
			new Point(num + 4, num2 + 4),
			new Point(num + 4, num2 + 3),
			new Point(num + 3, num2 + 3),
			new Point(num + 3, num2 + 2),
			new Point(num + 1, num2 + 2),
			new Point(num + 1, num2 + 1),
			new Point(num + 1, num2 + 1)
		};
		graphicsPath.AddLines(points);
		graphicsPath.CloseFigure();
		g.FillPath(new SolidBrush(Color.Black), graphicsPath);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		ChangePosition(e.Y);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (e.Button == MouseButtons.Left)
		{
			ChangePosition(e.Y);
		}
	}

	internal void ChangePosition(int position)
	{
		position = ((position >= base.ClientRectangle.Height - 4) ? (base.ClientRectangle.Height - 8) : ((position >= 4) ? (position - 3) : 0));
		if (Position != position)
		{
			Position = position;
			Invalidate();
			OnPositionChanged(EventArgs.Empty);
		}
	}

	private void GradientBar_SizeChanged(object sender, EventArgs e)
	{
		if (base.Size.Width < 20)
		{
			base.Size = new Size(20, base.Size.Height);
		}
		m_bitmap = new Bitmap(base.ClientRectangle.Width - 10, m_bitmapHeight);
		m_bitmapHeight = base.Height - 8;
		m_position = base.Height - 8;
		Invalidate();
	}
}
