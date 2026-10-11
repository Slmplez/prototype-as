using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008DragTargetControl : DragTargetControl
{
	private bool m_bAllowHighlight = true;

	internal bool AllowHighLight
	{
		get
		{
			return m_bAllowHighlight;
		}
		set
		{
			if (m_bAllowHighlight != value)
			{
				m_bAllowHighlight = value;
				InternalControl.Invalidate();
				InternalControl.Update();
				if (!AllowHighLight)
				{
					MouseIn = false;
				}
			}
		}
	}

	internal bool MouseIn
	{
		get
		{
			return m_mouseIn;
		}
		set
		{
			if (m_mouseIn != value && (AllowHighLight || !value))
			{
				m_mouseIn = value;
			}
		}
	}

	public override void OnPaint(object sender, PaintEventArgs e)
	{
		e.Graphics.DrawImage((m_mouseIn && AllowHighLight) ? activeImage : inactiveImage, m_internalControl.ClientRectangle);
	}

	public override bool ProcessMouseUp(Point point)
	{
		if (m_mouseIn)
		{
			RaiseMouseUpEvent();
			return true;
		}
		return false;
	}

	public override bool ProcessMouseMove(Point point)
	{
		bool result = false;
		if (AllowHighLight && base.Visible)
		{
			bool flag = false;
			if (m_internalControl.Bounds.Contains(point))
			{
				Point point2 = m_internalControl.PointToClient(point);
				if (CurrentImage is Bitmap bitmap)
				{
					flag = bitmap.GetPixel(point2.X, point2.Y).ToArgb() != 0;
				}
			}
			if (MouseIn != flag)
			{
				if (MouseIn)
				{
					RaiseMouseLeaveEvent();
				}
				else
				{
					RaiseMouseEnterEvent();
				}
				MouseIn = !m_mouseIn;
				m_internalControl.Invalidate();
				result = true;
			}
			else if (flag)
			{
				RaiseMouseMoveEvent();
			}
		}
		return result;
	}

	public override void HideControl()
	{
		if (MouseIn)
		{
			RaiseMouseLeaveEvent();
		}
		base.HideControl();
	}
}
