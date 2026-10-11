using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class DragInnerControl : DragTargetControl, IArrowDragControl, IDragControl
{
	private Rectangle m_ControllerRect = Rectangle.Empty;

	private Size m_ControlSize = new Size(121, 121);

	protected DragControl m_ParentControl;

	protected Point m_Center = Point.Empty;

	protected Bitmap[] m_Bitmaps = new Bitmap[DragControlConsts.DEF_INNER_CONTROL_COUNT];

	protected Rectangle[] m_Rectangles = new Rectangle[DragControlConsts.DEF_INNER_CONTROL_COUNT];

	protected DockAbility m_DockAbility;

	protected int m_ActiveControlIndex = -1;

	public new DragControl ParentControl
	{
		get
		{
			return m_ParentControl;
		}
		set
		{
			m_ParentControl = value;
		}
	}

	public Point Center => m_Center;

	public new Rectangle ControllerRect
	{
		get
		{
			return m_ControllerRect;
		}
		set
		{
			m_ControllerRect = value;
			UpdateControlPosition();
			if (m_internalControl.Visible)
			{
				m_internalControl.BringToFront();
			}
		}
	}

	public DockAbility DockAbility
	{
		get
		{
			return m_DockAbility;
		}
		set
		{
			if (m_DockAbility != value)
			{
				m_DockAbility = value;
				for (int i = 0; i < DragControlConsts.DEF_INNER_CONTROL_COUNT; i++)
				{
					InvalidateImage(i);
				}
			}
		}
	}

	public DockAbility OuterDockAbility
	{
		get
		{
			if (ParentControl != null)
			{
				return ParentControl.OuterDockAbility;
			}
			return DockAbility.All;
		}
		set
		{
		}
	}

	private Bitmap m_LeftBitmap => m_Bitmaps[0];

	private Bitmap m_TopBitmap => m_Bitmaps[1];

	private Bitmap m_RightBitmap => m_Bitmaps[2];

	private Bitmap m_BottomBitmap => m_Bitmaps[3];

	private Bitmap m_TabBitmap => m_Bitmaps[4];

	protected Rectangle m_LeftRectangle => m_Rectangles[0];

	protected Rectangle m_TopRectangle => m_Rectangles[1];

	protected Rectangle m_RightRectangle => m_Rectangles[2];

	protected Rectangle m_BottomRectangle => m_Rectangles[3];

	protected Rectangle m_TabRectangle => m_Rectangles[4];

	public new event MouseEnterHandler OnMouseEnter;

	public new event MouseLeaveHandler OnMouseLeave;

	public new event MouseUpHandler OnMouseUp;

	public event AllowHighlightHandler OnAllowHighlight;

	public DragInnerControl(DragControl parentControl)
	{
		m_ParentControl = parentControl;
		InitializeControl();
		CalculateControlsPosition();
	}

	protected virtual void InitializeControl()
	{
		m_internalControl = new DragTargetForm();
		m_internalControl.ShowInTaskbar = false;
		m_internalControl.FormBorderStyle = FormBorderStyle.None;
		m_internalControl.TransparencyKey = m_internalControl.BackColor;
		m_internalControl.StartPosition = FormStartPosition.Manual;
		m_internalControl.TopMost = true;
		m_internalControl.Paint += OnPaint;
		for (int i = 0; i < DragControlConsts.DEF_INNER_CONTROL_COUNT; i++)
		{
			m_Bitmaps[i] = new Bitmap(m_ParentControl.GetImage(i));
		}
	}

	protected virtual void CalculateControlsPosition()
	{
		m_Center.X = (m_ControlSize.Width + 1) / 2;
		m_Center.Y = (m_ControlSize.Height + 1) / 2;
		ref Rectangle reference = ref m_Rectangles[4];
		reference = new Rectangle(m_Center.X - (m_TabBitmap.Width - 1) / 2, m_Center.Y - (m_TabBitmap.Height - 1) / 2, m_TabBitmap.Width, m_TabBitmap.Height);
		ref Rectangle reference2 = ref m_Rectangles[0];
		reference2 = new Rectangle(m_TabRectangle.X - m_LeftBitmap.Width, m_Center.Y - (m_LeftBitmap.Height - 1) / 2, m_LeftBitmap.Width, m_LeftBitmap.Height);
		ref Rectangle reference3 = ref m_Rectangles[1];
		reference3 = new Rectangle(m_Center.X - (m_TopBitmap.Width - 1) / 2, m_TabRectangle.Y - m_TopBitmap.Height, m_TopBitmap.Width, m_TopBitmap.Height);
		ref Rectangle reference4 = ref m_Rectangles[2];
		reference4 = new Rectangle(m_TabRectangle.X + m_TabBitmap.Width, m_Center.Y - (m_RightBitmap.Height - 1) / 2, m_RightBitmap.Width, m_RightBitmap.Height);
		ref Rectangle reference5 = ref m_Rectangles[3];
		reference5 = new Rectangle(m_Center.X - (m_BottomBitmap.Width - 1) / 2, m_TabRectangle.Y + m_TabBitmap.Height, m_BottomBitmap.Width, m_BottomBitmap.Height);
	}

	public override void ShowControl()
	{
		m_internalControl.Show();
	}

	public override void HideControl()
	{
		m_internalControl.Hide();
	}

	public override void OnPaint(object sender, PaintEventArgs e)
	{
		if (DockAbility != DockAbility.None)
		{
			Graphics graphics = e.Graphics;
			Pen pen = new Pen(Color.FromArgb(177, 177, 177), 1f);
			Point center = Center;
			Point[] points = new Point[4]
			{
				new Point(center.X - DragControlConsts.DEF_INNER_CONTROL_MARGIN - 1, center.Y),
				new Point(center.X, center.Y - DragControlConsts.DEF_INNER_CONTROL_MARGIN - 1),
				new Point(center.X + DragControlConsts.DEF_INNER_CONTROL_MARGIN + 1, center.Y),
				new Point(center.X, center.Y + DragControlConsts.DEF_INNER_CONTROL_MARGIN + 1)
			};
			graphics.DrawPolygon(pen, points);
			Point[] points2 = new Point[4]
			{
				new Point(center.X - DragControlConsts.DEF_INNER_CONTROL_MARGIN, center.Y),
				new Point(center.X, center.Y - DragControlConsts.DEF_INNER_CONTROL_MARGIN),
				new Point(center.X + DragControlConsts.DEF_INNER_CONTROL_MARGIN, center.Y),
				new Point(center.X, center.Y + DragControlConsts.DEF_INNER_CONTROL_MARGIN)
			};
			pen.Color = Color.FromArgb(245, 238, 238);
			graphics.FillPolygon(pen.Brush, points2);
			if ((DockAbility | DockAbility.Left) == DockAbility)
			{
				graphics.DrawImage(m_Bitmaps[0], m_Rectangles[0]);
			}
			if ((DockAbility | DockAbility.Top) == DockAbility)
			{
				graphics.DrawImage(m_Bitmaps[1], m_Rectangles[1]);
			}
			if ((DockAbility | DockAbility.Right) == DockAbility)
			{
				graphics.DrawImage(m_Bitmaps[2], m_Rectangles[2]);
			}
			if ((DockAbility | DockAbility.Bottom) == DockAbility)
			{
				graphics.DrawImage(m_Bitmaps[3], m_Rectangles[3]);
			}
			if ((DockAbility | DockAbility.Tabbed) == DockAbility)
			{
				graphics.DrawImage(m_Bitmaps[4], m_Rectangles[4]);
			}
		}
	}

	public override bool ProcessMouseMove(Point point)
	{
		bool result = false;
		point = m_internalControl.PointToClient(point);
		int num = -1;
		for (int i = 0; i < DragControlConsts.DEF_INNER_CONTROL_COUNT; i++)
		{
			if (!m_Rectangles[i].Contains(point))
			{
				continue;
			}
			point.X -= m_Rectangles[i].Location.X;
			point.Y -= m_Rectangles[i].Location.Y;
			if (m_Bitmaps[i].GetPixel(point.X, point.Y).ToArgb() == 0)
			{
				continue;
			}
			switch (i)
			{
			case 0:
				if ((DockAbility | DockAbility.Left) == DockAbility)
				{
					num = i;
				}
				break;
			case 1:
				if ((DockAbility | DockAbility.Top) == DockAbility)
				{
					num = i;
				}
				break;
			case 2:
				if ((DockAbility | DockAbility.Right) == DockAbility)
				{
					num = i;
				}
				break;
			case 3:
				if ((DockAbility | DockAbility.Bottom) == DockAbility)
				{
					num = i;
				}
				break;
			case 4:
				if ((DockAbility | DockAbility.Tabbed) == DockAbility)
				{
					num = i;
				}
				break;
			}
			result = true;
			break;
		}
		if (m_ActiveControlIndex != num)
		{
			if (m_ActiveControlIndex != -1)
			{
				m_Bitmaps[m_ActiveControlIndex] = m_ParentControl.GetImage(m_ActiveControlIndex);
				if (this.OnMouseLeave != null)
				{
					string name = Enum.GetName(base.DragTarget.GetType(), m_ActiveControlIndex);
					DragTarget dragTarget = (DragTarget)Enum.Parse(base.DragTarget.GetType(), name);
					this.OnMouseLeave(this, new DragControlEventArgs(dragTarget, ControllerRect));
				}
				InvalidateImage(m_ActiveControlIndex);
			}
			bool flag = false;
			string name2 = Enum.GetName(base.DragTarget.GetType(), num);
			DragTarget dragTarget2 = (DragTarget)Enum.Parse(base.DragTarget.GetType(), name2);
			if (this.OnAllowHighlight != null)
			{
				AllowHighlightEventArgs e = new AllowHighlightEventArgs(dragTarget2);
				this.OnAllowHighlight(this, e);
				flag = e.AllowHighlight;
			}
			if (flag)
			{
				if (num != -1)
				{
					m_Bitmaps[num] = m_ParentControl.GetImage(num + DragControlConsts.DEF_INNER_CONTROL_COUNT);
					if (this.OnMouseEnter != null)
					{
						this.OnMouseEnter(this, new DragControlEventArgs(dragTarget2, ControllerRect));
					}
					InvalidateImage(num);
				}
				m_ActiveControlIndex = num;
			}
		}
		return result;
	}

	public override bool ProcessMouseUp(Point point)
	{
		if (m_ActiveControlIndex != -1 && this.OnMouseUp != null)
		{
			string name = Enum.GetName(base.DragTarget.GetType(), m_ActiveControlIndex);
			DragTarget dragTarget = (DragTarget)Enum.Parse(base.DragTarget.GetType(), name);
			this.OnMouseUp(this, new DragControlEventArgs(dragTarget, ControllerRect));
		}
		return m_ActiveControlIndex != -1;
	}

	private void InvalidateImage(int index)
	{
		m_internalControl.Invalidate(m_Rectangles[index]);
	}

	private void UpdateControlPosition()
	{
		m_internalControl.Size = m_ControlSize;
		int x = m_ControllerRect.X + (m_ControllerRect.Width - m_ControlSize.Width) / 2;
		int y = m_ControllerRect.Y + (m_ControllerRect.Height - m_ControlSize.Height) / 2;
		m_internalControl.Location = new Point(x, y);
	}

	public override void Dispose()
	{
		base.Dispose();
		m_Bitmaps = null;
		if (m_internalControl != null)
		{
			m_internalControl.Paint -= OnPaint;
			m_internalControl.Dispose();
			m_internalControl = null;
		}
		m_ParentControl = null;
	}
}
