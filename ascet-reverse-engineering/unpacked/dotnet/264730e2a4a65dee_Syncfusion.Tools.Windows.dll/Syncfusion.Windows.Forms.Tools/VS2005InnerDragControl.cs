using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2005InnerDragControl : DragInnerControl, IArrowDragControl, IDragControl
{
	private const int DEF_LEFT_TARGET = 0;

	private const int DEF_TOP_TARGET = 1;

	private const int DEF_RIGHT_TARGET = 2;

	private const int DEF_BOTTOM_TARGET = 3;

	private const int DEF_TAB_TARGET = 4;

	private const int DEF_INNER_TARGET_START_INDEX = 5;

	private const int DEF_BORDER_WIDTH = 1;

	private Size m_ControlSize = new Size(121, 121);

	private Bitmap m_innerCross;

	private Point m_crossLocation;

	private Size m_tabSize = new Size(29, 29);

	private Point[] m_hilightPath;

	private Size m_hitSize = new Size(29, 29);

	private bool m_bTabbedSelection;

	private static readonly Color DEF_SELECT_COLOR = Color.FromArgb(65, 112, 202);

	public new event MouseEnterHandler OnMouseEnter;

	public new event MouseLeaveHandler OnMouseLeave;

	public new event AllowHighlightHandler OnAllowHighlight;

	public VS2005InnerDragControl(DragControl parentControl)
		: base(parentControl)
	{
		m_ParentControl = parentControl;
		CalculateControlsPosition();
	}

	protected override void InitializeControl()
	{
		m_internalControl = new DragTargetForm();
		m_internalControl.ShowInTaskbar = false;
		m_internalControl.FormBorderStyle = FormBorderStyle.None;
		m_internalControl.TransparencyKey = m_internalControl.BackColor;
		m_internalControl.StartPosition = FormStartPosition.Manual;
		m_internalControl.TopMost = true;
		m_internalControl.Paint += OnPaint;
		m_innerCross = m_ParentControl.GetImage(4);
	}

	protected override void CalculateControlsPosition()
	{
		m_Center.X = (m_ControlSize.Width + 1) / 2;
		m_Center.Y = (m_ControlSize.Height + 1) / 2;
		Size size = m_innerCross.Size;
		m_crossLocation = new Point(base.Center.X - size.Width / 2, base.Center.Y - size.Height / 2);
		ref Rectangle reference = ref m_Rectangles[4];
		reference = new Rectangle(m_Center.X - (m_tabSize.Width + 1) / 2, m_Center.Y - (m_tabSize.Height + 1) / 2, m_tabSize.Width, m_tabSize.Height);
		ref Rectangle reference2 = ref m_Rectangles[0];
		reference2 = new Rectangle(base.m_TabRectangle.X - m_hitSize.Width - 1, base.m_TabRectangle.Y, m_hitSize.Width, m_hitSize.Height);
		ref Rectangle reference3 = ref m_Rectangles[1];
		reference3 = new Rectangle(base.m_TabRectangle.X, base.m_TabRectangle.Y - m_hitSize.Height - 1, m_hitSize.Width, m_hitSize.Height);
		ref Rectangle reference4 = ref m_Rectangles[2];
		reference4 = new Rectangle(base.m_TabRectangle.X + m_tabSize.Width + 1, base.m_TabRectangle.Y, m_hitSize.Width, m_hitSize.Height);
		ref Rectangle reference5 = ref m_Rectangles[3];
		reference5 = new Rectangle(base.m_TabRectangle.X, base.m_TabRectangle.Y + m_tabSize.Height + 1, m_hitSize.Width, m_hitSize.Height);
	}

	public override void OnPaint(object sender, PaintEventArgs e)
	{
		if (base.DockAbility == DockAbility.None)
		{
			return;
		}
		Graphics graphics = e.Graphics;
		Point center = base.Center;
		Size size = m_innerCross.Size;
		m_crossLocation = new Point(center.X - size.Width / 2, center.Y - size.Height / 2);
		graphics.FillRectangle(new SolidBrush(Color.Transparent), new Rectangle(m_crossLocation, size));
		Pen pen = new Pen(DEF_SELECT_COLOR, 1f);
		graphics.DrawImage(m_innerCross, m_crossLocation);
		if ((base.DockAbility | DockAbility.Left) == base.DockAbility)
		{
			graphics.DrawImage(m_ParentControl.GetImage(5), m_Rectangles[0]);
		}
		if ((base.DockAbility | DockAbility.Top) == base.DockAbility)
		{
			graphics.DrawImage(m_ParentControl.GetImage(6), m_Rectangles[1]);
		}
		if ((base.DockAbility | DockAbility.Right) == base.DockAbility)
		{
			graphics.DrawImage(m_ParentControl.GetImage(7), m_Rectangles[2]);
		}
		if ((base.DockAbility | DockAbility.Bottom) == base.DockAbility)
		{
			graphics.DrawImage(m_ParentControl.GetImage(8), m_Rectangles[3]);
		}
		if ((base.DockAbility | DockAbility.Tabbed) == base.DockAbility)
		{
			graphics.DrawImage(m_ParentControl.GetImage(9), m_Rectangles[4]);
		}
		if (m_ActiveControlIndex != -1 && m_hilightPath != null)
		{
			if (m_bTabbedSelection)
			{
				graphics.DrawLine(pen, m_hilightPath[1], m_hilightPath[2]);
				graphics.DrawLine(pen, m_hilightPath[3], m_hilightPath[4]);
				graphics.DrawLine(pen, m_hilightPath[5], m_hilightPath[6]);
				graphics.DrawLine(pen, m_hilightPath[7], m_hilightPath[0]);
			}
			else
			{
				graphics.DrawLines(pen, m_hilightPath);
			}
		}
	}

	protected bool IsControlEnabled(int index)
	{
		switch (index)
		{
		case 0:
			if ((base.DockAbility | DockAbility.Left) == base.DockAbility)
			{
				return true;
			}
			break;
		case 1:
			if ((base.DockAbility | DockAbility.Top) == base.DockAbility)
			{
				return true;
			}
			break;
		case 2:
			if ((base.DockAbility | DockAbility.Right) == base.DockAbility)
			{
				return true;
			}
			break;
		case 3:
			if ((base.DockAbility | DockAbility.Bottom) == base.DockAbility)
			{
				return true;
			}
			break;
		case 4:
			if ((base.DockAbility | DockAbility.Tabbed) == base.DockAbility)
			{
				return true;
			}
			break;
		}
		return false;
	}

	public override bool ProcessMouseMove(Point point)
	{
		if (!base.Visible)
		{
			return false;
		}
		bool result = false;
		point = m_internalControl.PointToClient(point);
		int num = -1;
		for (int i = 0; i < DragControlConsts.DEF_INNER_CONTROL_COUNT; i++)
		{
			if (m_Rectangles[i].Contains(point))
			{
				point.X -= m_Rectangles[i].Location.X;
				point.Y -= m_Rectangles[i].Location.Y;
				if (IsControlEnabled(i))
				{
					num = i;
					result = true;
					break;
				}
			}
		}
		if (m_ActiveControlIndex != num)
		{
			m_hilightPath = null;
			if (m_ActiveControlIndex != -1)
			{
				if (this.OnMouseLeave != null)
				{
					string name = Enum.GetName(base.DragTarget.GetType(), m_ActiveControlIndex);
					DragTarget dragTarget = (DragTarget)Enum.Parse(base.DragTarget.GetType(), name);
					this.OnMouseLeave(this, new DragControlEventArgs(dragTarget, base.ControllerRect));
				}
				m_internalControl.Invalidate();
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
					m_hilightPath = GenerateGraphicsPath(num);
					if (this.OnMouseEnter != null)
					{
						this.OnMouseEnter(this, new DragControlEventArgs(dragTarget2, base.ControllerRect));
					}
					m_internalControl.Invalidate();
				}
				m_ActiveControlIndex = num;
			}
			else
			{
				m_ActiveControlIndex = -1;
			}
		}
		return result;
	}

	public override void Dispose()
	{
		base.Dispose();
		if (m_internalControl != null)
		{
			m_internalControl.Dispose();
			m_internalControl = null;
		}
		m_innerCross.Dispose();
		m_innerCross = null;
	}

	protected virtual Point[] GenerateGraphicsPath(int controlIndex)
	{
		Size size = new Size(22, 28);
		m_bTabbedSelection = false;
		Point[] array;
		switch (controlIndex)
		{
		case 0:
		{
			array = new Point[4]
			{
				default(Point),
				default(Point),
				new Point(base.m_LeftRectangle.X, base.m_LeftRectangle.Y),
				default(Point)
			};
			ref Point reference18 = ref array[3];
			reference18 = new Point(base.m_LeftRectangle.X + size.Width, array[2].Y);
			ref Point reference19 = ref array[1];
			reference19 = new Point(base.m_LeftRectangle.X, array[2].Y + size.Height);
			ref Point reference20 = ref array[0];
			reference20 = new Point(array[3].X, array[1].Y);
			break;
		}
		case 1:
		{
			array = new Point[4];
			ref Point reference14 = ref array[1];
			reference14 = new Point(base.m_TopRectangle.X, base.m_TopRectangle.Y);
			ref Point reference15 = ref array[0];
			reference15 = new Point(base.m_TopRectangle.X, base.m_TopRectangle.Y + size.Width);
			ref Point reference16 = ref array[2];
			reference16 = new Point(base.m_TopRectangle.X + size.Height, base.m_TopRectangle.Y);
			ref Point reference17 = ref array[3];
			reference17 = new Point(array[2].X, array[0].Y);
			break;
		}
		case 2:
		{
			array = new Point[4]
			{
				default(Point),
				new Point(base.m_RightRectangle.X + base.m_RightRectangle.Width, base.m_RightRectangle.Y),
				default(Point),
				default(Point)
			};
			ref Point reference11 = ref array[0];
			reference11 = new Point(array[1].X - size.Width, base.m_RightRectangle.Y);
			ref Point reference12 = ref array[2];
			reference12 = new Point(array[1].X, array[1].Y + size.Height);
			ref Point reference13 = ref array[3];
			reference13 = new Point(array[0].X, array[2].Y);
			break;
		}
		case 3:
		{
			array = new Point[4]
			{
				default(Point),
				new Point(base.m_BottomRectangle.X, base.m_BottomRectangle.Y + base.m_BottomRectangle.Height),
				default(Point),
				default(Point)
			};
			ref Point reference8 = ref array[0];
			reference8 = new Point(base.m_BottomRectangle.X, array[1].Y - size.Width);
			ref Point reference9 = ref array[2];
			reference9 = new Point(array[1].X + size.Height, array[1].Y);
			ref Point reference10 = ref array[3];
			reference10 = new Point(array[2].X, array[0].Y);
			break;
		}
		case 4:
		{
			array = new Point[8]
			{
				default(Point),
				new Point(base.m_TopRectangle.X, base.m_TopRectangle.Y + size.Width),
				default(Point),
				default(Point),
				default(Point),
				default(Point),
				default(Point),
				default(Point)
			};
			ref Point reference = ref array[0];
			reference = new Point(array[1].X + size.Height, array[1].Y);
			ref Point reference2 = ref array[2];
			reference2 = new Point(base.m_LeftRectangle.X + size.Width, base.m_LeftRectangle.Y);
			ref Point reference3 = ref array[3];
			reference3 = new Point(array[2].X, base.m_LeftRectangle.Y + size.Height);
			ref Point reference4 = ref array[4];
			reference4 = new Point(base.m_BottomRectangle.X, base.m_BottomRectangle.Y + m_hitSize.Height - size.Width - 1);
			ref Point reference5 = ref array[5];
			reference5 = new Point(base.m_BottomRectangle.X + size.Height, array[4].Y);
			ref Point reference6 = ref array[7];
			reference6 = new Point(base.m_RightRectangle.X + m_hitSize.Width - size.Width - 2, base.m_LeftRectangle.Y - 1);
			ref Point reference7 = ref array[6];
			reference7 = new Point(array[7].X, base.m_RightRectangle.Y + base.m_RightRectangle.Height);
			m_bTabbedSelection = true;
			break;
		}
		default:
			array = null;
			break;
		}
		return array;
	}
}
