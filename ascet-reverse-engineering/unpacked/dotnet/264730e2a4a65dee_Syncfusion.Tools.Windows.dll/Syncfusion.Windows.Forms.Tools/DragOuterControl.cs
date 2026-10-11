using System.Collections;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class DragOuterControl : IArrowDragControl, IDragControl
{
	protected const int DEF_LEFT_CONTROL_INDEX = 0;

	protected const int DEF_TOP_CONTROL_INDEX = 1;

	protected const int DEF_RIGHT_CONTROL_INDEX = 2;

	protected const int DEF_BOTTOM_CONTROL_INDEX = 3;

	protected ArrayList m_Controls = new ArrayList(4);

	protected DragControl m_ParentControl;

	protected Rectangle m_ControllerRect = Rectangle.Empty;

	protected DragTargetControl leftControl
	{
		get
		{
			return m_Controls[0] as DragTargetControl;
		}
		set
		{
			m_Controls[0] = value;
		}
	}

	protected DragTargetControl topControl
	{
		get
		{
			return m_Controls[1] as DragTargetControl;
		}
		set
		{
			m_Controls[1] = value;
		}
	}

	protected DragTargetControl rightControl
	{
		get
		{
			return m_Controls[2] as DragTargetControl;
		}
		set
		{
			m_Controls[2] = value;
		}
	}

	protected DragTargetControl bottomControl
	{
		get
		{
			return m_Controls[3] as DragTargetControl;
		}
		set
		{
			m_Controls[3] = value;
		}
	}

	public virtual DockAbility DockAbility
	{
		get
		{
			return DockAbility.All;
		}
		set
		{
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

	public DragControl ParentControl
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

	public virtual Rectangle ControllerRect
	{
		get
		{
			return m_ControllerRect;
		}
		set
		{
			m_ControllerRect = value;
			Rectangle bounds = new Rectangle
			{
				X = value.Left + DragControlConsts.DEF_TARGET_MARGIN,
				Y = value.Top + (value.Height - leftControl.InactiveImage.Height) / 2,
				Width = leftControl.InactiveImage.Width,
				Height = leftControl.InactiveImage.Height
			};
			Rectangle bounds2 = new Rectangle
			{
				X = value.Left + (value.Width - topControl.InactiveImage.Width) / 2,
				Y = value.Top + DragControlConsts.DEF_TARGET_MARGIN,
				Width = topControl.InactiveImage.Width,
				Height = topControl.InactiveImage.Height
			};
			Rectangle bounds3 = new Rectangle
			{
				X = value.Left + value.Width - rightControl.InactiveImage.Width - DragControlConsts.DEF_TARGET_MARGIN,
				Y = value.Top + (value.Height - rightControl.InactiveImage.Height) / 2,
				Width = rightControl.InactiveImage.Width,
				Height = rightControl.InactiveImage.Height
			};
			Rectangle bounds4 = new Rectangle
			{
				X = value.Left + (value.Width - bottomControl.InactiveImage.Width) / 2,
				Y = value.Top + value.Height - bottomControl.InactiveImage.Height - DragControlConsts.DEF_TARGET_MARGIN,
				Width = bottomControl.InactiveImage.Width,
				Height = bottomControl.InactiveImage.Height
			};
			if (bounds.Right > bounds3.Left)
			{
				leftControl.SetBounds(Rectangle.Empty);
				rightControl.SetBounds(Rectangle.Empty);
			}
			else
			{
				leftControl.SetBounds(bounds);
				rightControl.SetBounds(bounds3);
			}
			if (bounds2.Bottom > bounds4.Top)
			{
				topControl.SetBounds(Rectangle.Empty);
				bottomControl.SetBounds(Rectangle.Empty);
			}
			else
			{
				topControl.SetBounds(bounds2);
				bottomControl.SetBounds(bounds4);
			}
		}
	}

	public event MouseEnterHandler OnMouseEnter;

	public event MouseLeaveHandler OnMouseLeave;

	public event MouseUpHandler OnMouseUp;

	public event MouseMoveHandler OnMouseMove;

	public event AllowHighlightHandler OnAllowHighlight;

	protected DragTargetControl getControl(int index)
	{
		return m_Controls[index] as DragTargetControl;
	}

	protected virtual void MouseEnterEvent(object sender, DragControlEventArgs e)
	{
		RaiseOnMouseEnter(sender, e);
	}

	protected void RaiseOnMouseEnter(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseEnter != null)
		{
			this.OnMouseEnter(sender, e);
		}
	}

	protected virtual void MouseLeaveEvent(object sender, DragControlEventArgs e)
	{
		RaiseOnMouseLeave(sender, e);
	}

	protected void RaiseOnMouseLeave(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseLeave != null)
		{
			this.OnMouseLeave(sender, e);
		}
	}

	protected void MouseUpEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseUp != null)
		{
			this.OnMouseUp(sender, e);
		}
	}

	protected void MouseMoveEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseMove != null)
		{
			this.OnMouseMove(sender, e);
		}
	}

	protected void AllowHighlightEvent(object sender, AllowHighlightEventArgs e)
	{
		if (this.OnAllowHighlight != null)
		{
			this.OnAllowHighlight(sender, e);
		}
	}

	public DragOuterControl(DragControl parentControl)
	{
		m_ParentControl = parentControl;
		InitializeProvider();
	}

	protected virtual void InitializeProvider()
	{
		for (int i = 0; i < 4; i++)
		{
			DragTargetControl dragTargetControl = new DragTargetControl();
			m_Controls.Add(dragTargetControl);
			dragTargetControl.OnMouseEnter += MouseEnterEvent;
			dragTargetControl.OnMouseLeave += MouseLeaveEvent;
			dragTargetControl.OnMouseUp += MouseUpEvent;
			dragTargetControl.ParentControl = this;
		}
		leftControl.DragTarget = DragTarget.OuterLeft;
		leftControl.ActiveImage = ParentControl.GetImage(DragControlConsts.DEF_LEFT_ACTIVE_TARGET);
		leftControl.InactiveImage = ParentControl.GetImage(DragControlConsts.DEF_LEFT_INACTIVE_TARGET);
		topControl.DragTarget = DragTarget.OuterTop;
		topControl.ActiveImage = ParentControl.GetImage(DragControlConsts.DEF_TOP_ACTIVE_TARGET);
		topControl.InactiveImage = ParentControl.GetImage(DragControlConsts.DEF_TOP_INACTIVE_TARGET);
		rightControl.DragTarget = DragTarget.OuterRight;
		rightControl.ActiveImage = ParentControl.GetImage(DragControlConsts.DEF_RIGHT_ACTIVE_TARGET);
		rightControl.InactiveImage = ParentControl.GetImage(DragControlConsts.DEF_RIGHT_INACTIVE_TARGET);
		bottomControl.DragTarget = DragTarget.OuterBottom;
		bottomControl.ActiveImage = ParentControl.GetImage(DragControlConsts.DEF_BOTTOM_ACTIVE_TARGET);
		bottomControl.InactiveImage = ParentControl.GetImage(DragControlConsts.DEF_BOTTOM_INACTIVE_TARGET);
	}

	public Image GetImage(int index)
	{
		return ParentControl.GetImage(index);
	}

	public virtual void ShowControl()
	{
		if (OuterDockAbility == DockAbility.All)
		{
			for (int i = 0; i < m_Controls.Count; i++)
			{
				getControl(i).ShowControl();
			}
			return;
		}
		if ((OuterDockAbility | DockAbility.Left) == OuterDockAbility)
		{
			getControl(0).ShowControl();
		}
		if ((OuterDockAbility | DockAbility.Top) == OuterDockAbility)
		{
			getControl(1).ShowControl();
		}
		if ((OuterDockAbility | DockAbility.Right) == OuterDockAbility)
		{
			getControl(2).ShowControl();
		}
		if ((OuterDockAbility | DockAbility.Bottom) == OuterDockAbility)
		{
			getControl(3).ShowControl();
		}
	}

	public virtual void HideControl()
	{
		for (int i = 0; i < m_Controls.Count; i++)
		{
			getControl(i).HideControl();
		}
	}

	public virtual bool ProcessMouseDown(Point point)
	{
		return true;
	}

	public virtual bool ProcessMouseMove(Point point)
	{
		for (int i = 0; i < m_Controls.Count; i++)
		{
			if (getControl(i).ProcessMouseMove(point))
			{
				return true;
			}
		}
		return false;
	}

	public virtual bool ProcessMouseUp(Point point)
	{
		for (int i = 0; i < m_Controls.Count; i++)
		{
			if (getControl(i).ProcessMouseUp(point))
			{
				return true;
			}
		}
		return false;
	}

	public virtual void Dispose()
	{
		for (int i = 0; i < 4; i++)
		{
			if (m_Controls[i] is DragTargetControl dragTargetControl)
			{
				dragTargetControl.OnMouseEnter -= MouseEnterEvent;
				dragTargetControl.OnMouseLeave -= MouseLeaveEvent;
				dragTargetControl.OnMouseUp -= MouseUpEvent;
				dragTargetControl.ParentControl = null;
				dragTargetControl.Dispose();
			}
		}
		m_Controls.Clear();
		m_Controls = null;
		m_ParentControl = null;
	}
}
