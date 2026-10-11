using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class DragTargetControl : IDragTargetControl, IDragControl
{
	protected Form m_internalControl;

	protected bool m_mouseIn;

	private DragTarget m_DragTarget = DragTarget.None;

	private IArrowDragControl m_ParentControl;

	protected Image activeImage;

	protected Image inactiveImage;

	public IArrowDragControl ParentControl
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

	public Image ActiveImage
	{
		get
		{
			return activeImage;
		}
		set
		{
			activeImage = value;
		}
	}

	public Image InactiveImage
	{
		get
		{
			return inactiveImage;
		}
		set
		{
			inactiveImage = value;
		}
	}

	public bool Visible
	{
		get
		{
			if (m_internalControl != null)
			{
				return m_internalControl.Visible;
			}
			return false;
		}
	}

	public virtual Image CurrentImage
	{
		get
		{
			if (m_mouseIn)
			{
				return activeImage;
			}
			return inactiveImage;
		}
	}

	public DragTarget DragTarget
	{
		get
		{
			return m_DragTarget;
		}
		set
		{
			m_DragTarget = value;
		}
	}

	public virtual Form InternalControl => m_internalControl;

	public Rectangle ControllerRect => m_ParentControl.ControllerRect;

	public event MouseEnterHandler OnMouseEnter;

	public event MouseLeaveHandler OnMouseLeave;

	public event MouseUpHandler OnMouseUp;

	public event MouseMoveHandler OnMouseMove;

	public DragTargetControl()
	{
		m_internalControl = new DragTargetForm();
		m_internalControl.ShowInTaskbar = false;
		m_internalControl.FormBorderStyle = FormBorderStyle.None;
		m_internalControl.TransparencyKey = m_internalControl.BackColor;
		m_internalControl.StartPosition = FormStartPosition.Manual;
		m_internalControl.TopMost = true;
		m_internalControl.Paint += OnPaint;
	}

	public virtual void ShowControl()
	{
		m_internalControl.Show();
	}

	public virtual void HideControl()
	{
		m_internalControl.Hide();
	}

	public virtual void OnPaint(object sender, PaintEventArgs e)
	{
		e.Graphics.DrawImage(m_mouseIn ? activeImage : inactiveImage, m_internalControl.ClientRectangle);
	}

	public virtual void SetBounds(Rectangle bounds)
	{
		m_internalControl.Bounds = bounds;
	}

	public virtual bool ProcessMouseMove(Point point)
	{
		if (!Visible)
		{
			return false;
		}
		bool flag = false;
		if (m_internalControl.Bounds.Contains(point))
		{
			Point point2 = m_internalControl.PointToClient(point);
			if (CurrentImage is Bitmap bitmap)
			{
				flag = bitmap.GetPixel(point2.X, point2.Y).ToArgb() != 0;
			}
		}
		if (flag)
		{
			RaiseMouseMoveEvent();
		}
		if (m_mouseIn != flag)
		{
			if (m_mouseIn)
			{
				RaiseMouseLeaveEvent();
			}
			else
			{
				RaiseMouseEnterEvent();
			}
			m_mouseIn = !m_mouseIn;
			m_internalControl.Invalidate();
			return true;
		}
		return false;
	}

	protected void RaiseMouseEnterEvent()
	{
		if (this.OnMouseEnter != null)
		{
			this.OnMouseEnter(this, new DragControlEventArgs(m_DragTarget, ControllerRect));
		}
	}

	protected void RaiseMouseMoveEvent()
	{
		if (this.OnMouseMove != null)
		{
			this.OnMouseMove(this, new DragControlEventArgs(m_DragTarget, ControllerRect));
		}
	}

	protected void RaiseMouseLeaveEvent()
	{
		if (this.OnMouseLeave != null)
		{
			this.OnMouseLeave(this, new DragControlEventArgs(m_DragTarget, ControllerRect));
		}
	}

	public virtual bool ProcessMouseUp(Point point)
	{
		if (m_mouseIn)
		{
			RaiseMouseUpEvent();
			m_mouseIn = false;
			return true;
		}
		return false;
	}

	protected void RaiseMouseUpEvent()
	{
		if (this.OnMouseUp != null)
		{
			this.OnMouseUp(this, new DragControlEventArgs(m_DragTarget, ControllerRect));
		}
	}

	public virtual void Dispose()
	{
		activeImage = null;
		inactiveImage = null;
		if (m_internalControl != null)
		{
			m_internalControl.Paint -= OnPaint;
			m_internalControl.Dispose();
			m_internalControl = null;
		}
		m_ParentControl = null;
	}
}
