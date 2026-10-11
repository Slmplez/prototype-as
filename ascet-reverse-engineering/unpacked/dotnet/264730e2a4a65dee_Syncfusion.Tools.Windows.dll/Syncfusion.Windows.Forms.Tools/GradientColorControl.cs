using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class GradientColorControl : UserControl
{
	private Container components;

	private Bitmap m_bitmap;

	private Point m_selectedPoint = new Point(-1, -1);

	private Color m_color = Color.Empty;

	private int m_horisontalStep = 7;

	private int m_verticalStep = 9;

	[Browsable(false)]
	public Bitmap Bitmap => m_bitmap;

	public Point SelectedPoint
	{
		get
		{
			return m_selectedPoint;
		}
		set
		{
			m_selectedPoint = value;
		}
	}

	public Color SelectedColor
	{
		get
		{
			return m_color;
		}
		set
		{
			m_color = value;
		}
	}

	public int HStep
	{
		get
		{
			return m_horisontalStep;
		}
		set
		{
			m_horisontalStep = value;
		}
	}

	public int VStep
	{
		get
		{
			return m_verticalStep;
		}
		set
		{
			m_verticalStep = value;
		}
	}

	public event EventHandler Picked;

	protected virtual void OnPicked(EventArgs e)
	{
		if (this.Picked != null)
		{
			this.Picked(this, e);
		}
	}

	public GradientColorControl()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
		if (m_bitmap == null)
		{
			m_bitmap = new Bitmap(base.ClientRectangle.Width, base.ClientRectangle.Height);
		}
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
		base.Name = "GradientColorControl";
		base.Size = new System.Drawing.Size(210, 150);
		base.SizeChanged += new System.EventHandler(GradientColorControl_SizeChanged);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (m_bitmap == null)
		{
			m_bitmap = new Bitmap(base.ClientRectangle.Width, base.ClientRectangle.Height);
		}
		Graphics graphics = Graphics.FromImage(m_bitmap);
		Color[] colors = new Color[7]
		{
			Color.Red,
			Color.FromArgb(255, 0, 255),
			Color.Blue,
			Color.FromArgb(0, 255, 255),
			Color.FromArgb(0, 255, 0),
			Color.Yellow,
			Color.Red
		};
		BrushInfo brush = new BrushInfo(GradientStyle.Horizontal, colors);
		BrushPaint.FillRectangle(graphics, base.ClientRectangle, brush);
		Color color = Color.FromArgb(0, Color.Gray);
		Color color2 = Color.FromArgb(255, Color.Gray);
		LinearGradientBrush brush2 = new LinearGradientBrush(base.ClientRectangle, color, color2, LinearGradientMode.Vertical);
		graphics.FillRectangle(brush2, base.ClientRectangle);
		graphics.Dispose();
		e.Graphics.DrawImage(m_bitmap, 0, 0);
		DrawSelection(e.Graphics);
	}

	private void DrawSelection(Graphics g)
	{
		Color color = Color.Black;
		if (!Focused)
		{
			color = Color.White;
		}
		Rectangle rect = new Rectangle(SelectedPoint.X - 9, SelectedPoint.Y - 1, 5, 3);
		Rectangle rect2 = new Rectangle(SelectedPoint.X - 1, SelectedPoint.Y - 9, 3, 5);
		Rectangle rect3 = new Rectangle(SelectedPoint.X + 4, SelectedPoint.Y - 1, 5, 3);
		Rectangle rect4 = new Rectangle(SelectedPoint.X - 1, SelectedPoint.Y + 4, 3, 5);
		SolidBrush brush = new SolidBrush(color);
		g.FillRectangle(brush, rect);
		g.FillRectangle(brush, rect2);
		g.FillRectangle(brush, rect3);
		g.FillRectangle(brush, rect4);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		ChangeSelection(new Point(e.X, e.Y));
		base.OnMouseDown(e);
	}

	internal void ChangeSelection(Point newPoint)
	{
		if (newPoint.X > base.ClientRectangle.Width - 1)
		{
			newPoint.X = base.ClientRectangle.Width - 1;
		}
		else if (newPoint.X < 0)
		{
			newPoint.X = 0;
		}
		if (newPoint.Y > base.ClientRectangle.Bottom - 1)
		{
			newPoint.Y = base.ClientRectangle.Bottom - 1;
		}
		else if (newPoint.Y < 0)
		{
			newPoint.Y = 0;
		}
		if (SelectedPoint != newPoint)
		{
			Invalidate(new Rectangle(SelectedPoint.X - 10, SelectedPoint.Y - 10, 20, 20));
			SelectedPoint = newPoint;
			SelectedColor = m_bitmap.GetPixel(SelectedPoint.X, SelectedPoint.Y);
			Invalidate(new Rectangle(SelectedPoint.X - 10, SelectedPoint.Y - 10, 20, 20));
			OnPicked(EventArgs.Empty);
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			ChangeSelection(new Point(e.X, e.Y));
		}
		base.OnMouseMove(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		Invalidate(new Rectangle(SelectedPoint.X - 10, SelectedPoint.Y - 10, 20, 20));
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (keyData >= Keys.Left && keyData <= Keys.Down)
		{
			return true;
		}
		return base.IsInputKey(keyData);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (SelectedPoint.X == -1 && SelectedPoint.Y == -1)
		{
			SelectedPoint = new Point(0, 0);
		}
		Point selectedPoint = SelectedPoint;
		switch (e.KeyCode)
		{
		case Keys.Left:
			if (selectedPoint.X > m_horisontalStep)
			{
				selectedPoint.X -= m_horisontalStep;
			}
			else
			{
				selectedPoint.X = 0;
			}
			ChangeSelection(selectedPoint);
			break;
		case Keys.Right:
			if (selectedPoint.X < base.ClientRectangle.Width - m_horisontalStep)
			{
				selectedPoint.X += m_horisontalStep;
			}
			else
			{
				selectedPoint.X = base.ClientRectangle.Width;
			}
			ChangeSelection(selectedPoint);
			break;
		case Keys.Down:
			if (selectedPoint.Y < base.ClientRectangle.Height - m_verticalStep)
			{
				selectedPoint.Y += m_verticalStep;
			}
			else
			{
				selectedPoint.Y = base.ClientRectangle.Height;
			}
			ChangeSelection(selectedPoint);
			break;
		case Keys.Up:
			if (selectedPoint.Y > m_verticalStep)
			{
				selectedPoint.Y -= m_verticalStep;
			}
			else
			{
				selectedPoint.Y = 0;
			}
			ChangeSelection(selectedPoint);
			break;
		}
	}

	private void GradientColorControl_SizeChanged(object sender, EventArgs e)
	{
		m_bitmap = new Bitmap(base.ClientRectangle.Width, base.ClientRectangle.Height);
		Invalidate();
	}
}
