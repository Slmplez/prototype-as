using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class HexagonColorControl : UserControl
{
	private Label label1;

	private Container components;

	private ColorCellCollection m_items;

	private ColorCell m_selectedCell;

	private Color m_selectedColor = Color.Empty;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ColorCell SelectedCell
	{
		get
		{
			return m_selectedCell;
		}
		set
		{
			if (m_selectedCell != value)
			{
				m_selectedCell = value;
			}
		}
	}

	[Browsable(false)]
	public ColorCellCollection Items
	{
		get
		{
			return m_items;
		}
		set
		{
			m_items = value;
		}
	}

	public Color SelectedColor
	{
		get
		{
			return m_selectedColor;
		}
		set
		{
			if (m_selectedColor != value)
			{
				m_selectedColor = value;
			}
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

	public HexagonColorControl()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
		Init();
	}

	private void Init()
	{
		BackColor = Color.FromArgb(255, 251, 255);
		if (m_items == null)
		{
			m_items = new ColorCellCollection(this);
		}
		m_items.Add(new ColorCell(Color.FromArgb(0, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(8, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(24, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(49, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(74, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(99, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 16, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(24, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(57, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(107, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(156, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 90)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 36, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 32, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 12, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(49, 4, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(123, 4, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 4, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 4, 247)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 148)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 74)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 56, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 69, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 60, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 69, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(123, 65, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 65, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 65, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 4, 181)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 99)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 49)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 77, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 113, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 130, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 130, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 142, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 138, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 138, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 65, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 4, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 57)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 24)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 97, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 154, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 195, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 199, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 199, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(214, 211, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 211, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 138, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 65, 123)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 4, 49)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 24)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 8)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 255, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 255, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 255, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(214, 255, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 255, 255)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 211, 214)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 138, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 65, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 4, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 0, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 0, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 99)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 156)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 255, 198)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 255, 198)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 255, 198)));
		m_items.Add(new ColorCell(Color.FromArgb(214, 255, 214)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 255, 214)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 190, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 121, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 52, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 24, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 12, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 74)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 115)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 255, 132)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 255, 132)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 255, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 255, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 255, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 186, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 113, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 60, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 28, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 57)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 255, 57)));
		m_items.Add(new ColorCell(Color.FromArgb(66, 255, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(123, 255, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 255, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 251, 66)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 182, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 101, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 48, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 33)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 33)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 255, 8)));
		m_items.Add(new ColorCell(Color.FromArgb(49, 255, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(123, 255, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(198, 255, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(255, 247, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 146, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 73, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 16)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 190, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(24, 190, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(57, 190, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(107, 190, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(156, 194, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 186, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 93, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(0, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(8, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(24, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(49, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(74, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(99, 117, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(115, 113, 0)));
		m_items.Add(new ColorCell(Color.FromArgb(222, 223, 222)));
		m_items.Add(new ColorCell(Color.FromArgb(206, 207, 206)));
		m_items.Add(new ColorCell(Color.FromArgb(189, 190, 189)));
		m_items.Add(new ColorCell(Color.FromArgb(173, 174, 173)));
		m_items.Add(new ColorCell(Color.FromArgb(156, 154, 156)));
		m_items.Add(new ColorCell(Color.FromArgb(140, 142, 140)));
		m_items.Add(new ColorCell(Color.FromArgb(123, 125, 123)));
		m_items.Add(new ColorCell(Color.FromArgb(107, 109, 107)));
		m_items.Add(new ColorCell(Color.FromArgb(90, 93, 90)));
		m_items.Add(new ColorCell(Color.FromArgb(74, 77, 74)));
		m_items.Add(new ColorCell(Color.FromArgb(57, 60, 57)));
		m_items.Add(new ColorCell(Color.FromArgb(49, 48, 49)));
		m_items.Add(new ColorCell(Color.FromArgb(33, 36, 33)));
		m_items.Add(new ColorCell(Color.FromArgb(16, 20, 16)));
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		for (int i = 0; i < Items.Count; i++)
		{
			ColorCell colorCell = Items[i];
			using SolidBrush brush = new SolidBrush(colorCell.Color);
			graphics.FillRegion(brush, colorCell.Bounds);
		}
		if (m_selectedCell != null && m_selectedCell.State == ColorCellState.Selected)
		{
			graphics.DrawPath(new Pen(Color.Black, 4f), m_selectedCell.Path);
			graphics.DrawPath(new Pen(Color.White, 2f), m_selectedCell.Path);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		int num = HitTest(e.X, e.Y);
		if (e.Button == MouseButtons.Left && num != -1)
		{
			ChangeSelection(num);
		}
	}

	private int HitTest(int x, int y)
	{
		Point point = new Point(x, y);
		int result = -1;
		foreach (ColorCell item in Items)
		{
			if (item.Bounds.IsVisible(point))
			{
				result = item.Index;
				break;
			}
		}
		return result;
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		int num = HitTest(e.X, e.Y);
		if (e.Button == MouseButtons.Left && num != -1)
		{
			ChangeSelection(num);
		}
	}

	internal void ChangeSelection(int index)
	{
		_ = Rectangle.Empty;
		ColorCell colorCell = Items[index];
		if (m_selectedCell != colorCell)
		{
			if (m_selectedCell != null)
			{
				m_selectedCell.State = ColorCellState.Normal;
				Invalidate();
			}
			colorCell.State = ColorCellState.Selected;
			m_selectedCell = colorCell;
			SelectedColor = m_selectedCell.Color;
			Invalidate();
			OnPicked(EventArgs.Empty);
		}
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
		int num = -1;
		if (m_selectedCell == null)
		{
			m_selectedCell = Items[0];
			m_selectedCell.State = ColorCellState.Selected;
			Invalidate();
			return;
		}
		switch (e.KeyCode)
		{
		case Keys.Down:
			if (m_selectedCell.VerticalPosition >= 6)
			{
				num = m_selectedCell.Index + Math.Abs(6 - m_selectedCell.VerticalPosition + 13);
			}
			else if (m_selectedCell.VerticalPosition < 6)
			{
				num = m_selectedCell.Index + Math.Abs(-(6 - m_selectedCell.VerticalPosition) + 14);
			}
			if (num > Items.Count - 1)
			{
				num = m_selectedCell.Index;
			}
			if (num != m_selectedCell.Index)
			{
				ChangeSelection(num);
			}
			break;
		case Keys.Up:
			num = ((m_selectedCell.VerticalPosition <= 6) ? (m_selectedCell.Index - Math.Abs(-(6 - m_selectedCell.VerticalPosition) + 13)) : (m_selectedCell.Index - Math.Abs(6 - m_selectedCell.VerticalPosition + 14)));
			if (num < 0)
			{
				num = m_selectedCell.Index;
			}
			if (num != m_selectedCell.Index)
			{
				ChangeSelection(num);
			}
			break;
		case Keys.Right:
			num = ((m_selectedCell.Index < Items.Count - 1) ? (m_selectedCell.Index + 1) : 0);
			ChangeSelection(num);
			break;
		case Keys.Left:
			num = ((m_selectedCell.Index <= 0) ? (Items.Count - 1) : (m_selectedCell.Index - 1));
			ChangeSelection(num);
			break;
		}
	}

	private void InitializeComponent()
	{
		this.label1 = new System.Windows.Forms.Label();
		base.SuspendLayout();
		this.label1.Location = new System.Drawing.Point(8, 8);
		this.label1.Name = "label1";
		this.label1.Size = new System.Drawing.Size(48, 23);
		this.label1.TabIndex = 0;
		this.label1.Text = Syncfusion.Windows.Forms.Tools.SR.GetString("ColorEditorColorsLabel");
		base.Controls.Add(this.label1);
		base.Name = "HexagonColorControl";
		base.Size = new System.Drawing.Size(252, 294);
		base.ResumeLayout(false);
	}
}
