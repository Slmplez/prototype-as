using System.Collections;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008InnerDragControl : VS2008OuterDragControl
{
	protected const int DEF_INNER_CONTROL_INDEX = 4;

	protected const int DEF_INNER_TAB_OFFSET = 15;

	protected readonly Size DEF_TARGET_SIZE = new Size(107, 105);

	protected readonly Size DEF_TAB_SIZE = new Size(77, 75);

	protected DockAbility m_DockAbility = DockAbility.All;

	protected DragControlEventArgs m_tabArgs;

	protected bool m_bTabControlHighLight = true;

	protected bool m_bVisible;

	protected Hashtable m_disableArrows;

	protected VS2008DragTargetControl tabControl
	{
		get
		{
			return m_Controls[4] as VS2008DragTargetControl;
		}
		set
		{
			m_Controls[4] = value;
		}
	}

	public override Rectangle ControllerRect
	{
		get
		{
			return base.ControllerRect;
		}
		set
		{
			if (m_ControllerRect != value)
			{
				m_ControllerRect = value;
				CalculateControlsBounds(value);
				if (m_bVisible)
				{
					HideControl();
					ShowControl();
				}
			}
		}
	}

	public override DockAbility DockAbility
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
				if ((value | DockAbility.Tabbed) != value)
				{
					tabControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_INNER_TARGET);
					tabControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_INNER_TARGET);
					tabControl.AllowHighLight = false;
				}
				else
				{
					tabControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_ACTIVE_TAB);
					tabControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_INACTIVE_TAB);
					tabControl.AllowHighLight = true;
				}
			}
		}
	}

	public VS2008InnerDragControl(VS2008DragControl parent)
		: base(parent)
	{
		m_disableArrows = new Hashtable();
	}

	public override bool ProcessMouseMove(Point point)
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

	protected override void InitializeProvider()
	{
		for (int i = 0; i < 5; i++)
		{
			DragTargetControl dragTargetControl = new VS2008DragTargetControl();
			m_Controls.Add(dragTargetControl);
			dragTargetControl.OnMouseEnter += MouseEnterEvent;
			dragTargetControl.OnMouseLeave += MouseLeaveEvent;
			dragTargetControl.OnMouseUp += base.MouseUpEvent;
			dragTargetControl.OnMouseMove += base.MouseMoveEvent;
			dragTargetControl.InternalControl.Opacity = VS2008DragControlConsts.DEF_TARGET_OPACITY;
			dragTargetControl.ParentControl = this;
		}
		base.leftControl.DragTarget = DragTarget.InnerLeft;
		base.leftControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_LEFT_INNER_ACTIVE_TARGET);
		base.leftControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_LEFT_INNER_INACTIVE_TARGET);
		base.topControl.DragTarget = DragTarget.InnerTop;
		base.topControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_TOP_INNER_ACTIVE_TARGET);
		base.topControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_TOP_INNER_INACTIVE_TARGET);
		base.rightControl.DragTarget = DragTarget.InnerRight;
		base.rightControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_RIGHT_INNER_ACTIVE_TARGET);
		base.rightControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_RIGHT_INNER_INACTIVE_TARGET);
		base.bottomControl.DragTarget = DragTarget.InnerBottom;
		base.bottomControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_BOTTOM_INNER_ACTIVE_TARGET);
		base.bottomControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_BOTTOM_INNER_INACTIVE_TARGET);
		tabControl.DragTarget = DragTarget.InnerTab;
		tabControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_ACTIVE_TAB);
		tabControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_INACTIVE_TAB);
		foreach (DragTargetControl control in m_Controls)
		{
			if (control != tabControl)
			{
				control.InternalControl.Owner = tabControl.InternalControl;
			}
		}
	}

	protected override void MouseEnterEvent(object sender, DragControlEventArgs e)
	{
		if (!(sender is VS2008DragTargetControl { InternalControl: var internalControl } vS2008DragTargetControl))
		{
			return;
		}
		AllowHighlightEventArgs e2 = new AllowHighlightEventArgs(vS2008DragTargetControl.DragTarget);
		AllowHighlightEvent(this, e2);
		if (m_disableArrows.ContainsKey(vS2008DragTargetControl))
		{
			m_disableArrows.Remove(vS2008DragTargetControl);
		}
		m_disableArrows.Add(vS2008DragTargetControl, vS2008DragTargetControl.AllowHighLight);
		vS2008DragTargetControl.AllowHighLight = e2.AllowHighlight;
		if (!vS2008DragTargetControl.AllowHighLight || internalControl == null)
		{
			return;
		}
		if (vS2008DragTargetControl != tabControl)
		{
			m_bTabControlHighLight = tabControl.AllowHighLight;
			tabControl.AllowHighLight = false;
			if (tabControl == m_currentTarget)
			{
				tabControl.InternalControl.Opacity = VS2008DragControlConsts.DEF_TARGET_OPACITY;
				RaiseOnMouseLeave(tabControl, m_tabArgs);
				tabControl.MouseIn = false;
			}
		}
		else
		{
			m_tabArgs = e;
		}
		m_fadeTimer.StopAnimation();
		internalControl.Opacity = 1.0;
		m_currentTarget = vS2008DragTargetControl;
		RaiseOnMouseEnter(sender, e);
	}

	protected override void MouseLeaveEvent(object sender, DragControlEventArgs e)
	{
		if (sender is VS2008DragTargetControl { InternalControl: { } internalControl } vS2008DragTargetControl)
		{
			internalControl.Opacity = VS2008DragControlConsts.DEF_TARGET_OPACITY;
			if (vS2008DragTargetControl != tabControl)
			{
				tabControl.AllowHighLight = m_bTabControlHighLight;
			}
			RaiseOnMouseLeave(sender, e);
		}
	}

	private void CalculateControlsBounds(Rectangle area)
	{
		Rectangle rectangle = new Rectangle(Point.Empty, DEF_TARGET_SIZE);
		Point location = new Point(area.Width / 2, area.Height / 2);
		location.Offset(area.Location.X, area.Location.Y);
		location.Offset(-DEF_TARGET_SIZE.Width / 2, -DEF_TARGET_SIZE.Height / 2);
		rectangle.Location = location;
		Rectangle bounds = new Rectangle
		{
			X = rectangle.Left,
			Y = rectangle.Top + (rectangle.Height - base.leftControl.InactiveImage.Height) / 2,
			Width = base.leftControl.InactiveImage.Width,
			Height = base.leftControl.InactiveImage.Height
		};
		Rectangle bounds2 = new Rectangle
		{
			X = rectangle.Left + (rectangle.Width - base.topControl.InactiveImage.Width) / 2,
			Y = rectangle.Top,
			Width = base.topControl.InactiveImage.Width,
			Height = base.topControl.InactiveImage.Height
		};
		Rectangle bounds3 = new Rectangle
		{
			X = rectangle.Left + rectangle.Width - base.rightControl.InactiveImage.Width,
			Y = rectangle.Top + (rectangle.Height - base.rightControl.InactiveImage.Height) / 2,
			Width = base.rightControl.InactiveImage.Width,
			Height = base.rightControl.InactiveImage.Height
		};
		Rectangle bounds4 = new Rectangle
		{
			X = rectangle.Left + (rectangle.Width - base.bottomControl.InactiveImage.Width) / 2,
			Y = rectangle.Top + rectangle.Height - base.bottomControl.InactiveImage.Height,
			Width = base.bottomControl.InactiveImage.Width,
			Height = base.bottomControl.InactiveImage.Height
		};
		Rectangle bounds5 = new Rectangle(Point.Empty, DEF_TAB_SIZE);
		bounds5.Location = new Point(bounds.X + 15, bounds2.Y + 15);
		base.leftControl.SetBounds(bounds);
		base.rightControl.SetBounds(bounds3);
		base.topControl.SetBounds(bounds2);
		base.bottomControl.SetBounds(bounds4);
		tabControl.SetBounds(bounds5);
	}

	public override void ShowControl()
	{
		if (DockAbility == DockAbility.All)
		{
			for (int i = 0; i < m_Controls.Count; i++)
			{
				getControl(i).InternalControl.Opacity = 0.0;
				getControl(i).ShowControl();
			}
		}
		else
		{
			if ((DockAbility | DockAbility.Left) == DockAbility)
			{
				getControl(0).InternalControl.Opacity = 0.0;
				getControl(0).ShowControl();
			}
			if ((DockAbility | DockAbility.Top) == DockAbility)
			{
				getControl(1).InternalControl.Opacity = 0.0;
				getControl(1).ShowControl();
			}
			if ((DockAbility | DockAbility.Right) == DockAbility)
			{
				getControl(2).InternalControl.Opacity = 0.0;
				getControl(2).ShowControl();
			}
			if ((DockAbility | DockAbility.Bottom) == DockAbility)
			{
				getControl(3).InternalControl.Opacity = 0.0;
				getControl(3).ShowControl();
			}
			getControl(4).InternalControl.Opacity = 0.0;
			getControl(4).ShowControl();
		}
		m_bVisible = true;
		m_fadeTimer.FadeChange += drag2008_FadeChange;
		m_fadeTimer.InitAnimation();
	}

	public override void HideControl()
	{
		foreach (VS2008DragTargetControl control in m_Controls)
		{
			control.HideControl();
			if (control.MouseIn)
			{
				if (control != tabControl)
				{
					tabControl.AllowHighLight = m_bTabControlHighLight;
				}
				control.MouseIn = false;
			}
		}
		foreach (VS2008DragTargetControl key in m_disableArrows.Keys)
		{
			key.AllowHighLight = (bool)m_disableArrows[key];
		}
		if (m_tabArgs != null)
		{
			tabControl.AllowHighLight = m_bTabControlHighLight;
		}
		m_disableArrows.Clear();
		m_bVisible = false;
		m_bTabControlHighLight = true;
		m_tabArgs = null;
		m_currentTarget = null;
	}

	private void drag2008_FadeChange(FadeEventArgs args)
	{
		foreach (DragTargetControl control in m_Controls)
		{
			if (control.Visible)
			{
				control.InternalControl.Opacity = args.Opacity;
			}
		}
		if (args.Opacity == VS2008DragControlConsts.DEF_TARGET_OPACITY)
		{
			m_fadeTimer.FadeChange -= drag2008_FadeChange;
		}
	}
}
