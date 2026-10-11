namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008OuterDragControl : DragOuterControl
{
	protected DragTargetControl m_currentTarget;

	protected VS2008FadeTimer m_fadeTimer;

	protected new VS2008DragTargetControl leftControl
	{
		get
		{
			return m_Controls[0] as VS2008DragTargetControl;
		}
		set
		{
			m_Controls[0] = value;
		}
	}

	protected new VS2008DragTargetControl topControl
	{
		get
		{
			return m_Controls[1] as VS2008DragTargetControl;
		}
		set
		{
			m_Controls[1] = value;
		}
	}

	protected new VS2008DragTargetControl rightControl
	{
		get
		{
			return m_Controls[2] as VS2008DragTargetControl;
		}
		set
		{
			m_Controls[2] = value;
		}
	}

	protected new VS2008DragTargetControl bottomControl
	{
		get
		{
			return m_Controls[3] as VS2008DragTargetControl;
		}
		set
		{
			m_Controls[3] = value;
		}
	}

	internal bool MouseIn
	{
		get
		{
			bool result = false;
			foreach (VS2008DragTargetControl control in m_Controls)
			{
				if (control.MouseIn)
				{
					result = true;
					break;
				}
			}
			return result;
		}
	}

	public VS2008OuterDragControl(VS2008DragControl parentControl)
		: base(parentControl)
	{
		m_fadeTimer = new VS2008FadeTimer();
	}

	protected override void InitializeProvider()
	{
		for (int i = 0; i < 4; i++)
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
		leftControl.DragTarget = DragTarget.OuterLeft;
		leftControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_LEFT_ACTIVE_TARGET);
		leftControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_LEFT_INACTIVE_TARGET);
		topControl.DragTarget = DragTarget.OuterTop;
		topControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_TOP_ACTIVE_TARGET);
		topControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_TOP_INACTIVE_TARGET);
		rightControl.DragTarget = DragTarget.OuterRight;
		rightControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_RIGHT_ACTIVE_TARGET);
		rightControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_RIGHT_INACTIVE_TARGET);
		bottomControl.DragTarget = DragTarget.OuterBottom;
		bottomControl.ActiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_BOTTOM_ACTIVE_TARGET);
		bottomControl.InactiveImage = base.ParentControl.GetImage(VS2005DragControlConsts.DEF_BOTTOM_INACTIVE_TARGET);
	}

	protected override void MouseEnterEvent(object sender, DragControlEventArgs e)
	{
		if (sender is DragTargetControl { InternalControl: { } internalControl } dragTargetControl)
		{
			m_fadeTimer.StopAnimation();
			internalControl.Opacity = 1.0;
			m_currentTarget = dragTargetControl;
		}
		base.MouseEnterEvent(sender, e);
	}

	protected override void MouseLeaveEvent(object sender, DragControlEventArgs e)
	{
		if (sender is DragTargetControl { InternalControl: { } internalControl })
		{
			internalControl.Opacity = VS2008DragControlConsts.DEF_TARGET_OPACITY;
			m_currentTarget = null;
		}
		base.MouseLeaveEvent(sender, e);
	}

	public override void HideControl()
	{
		base.HideControl();
		foreach (VS2008DragTargetControl control in m_Controls)
		{
			control.MouseIn = false;
		}
	}

	public override void ShowControl()
	{
		if (base.OuterDockAbility == DockAbility.All)
		{
			for (int i = 0; i < m_Controls.Count; i++)
			{
				getControl(i).InternalControl.Opacity = 0.0;
				getControl(i).ShowControl();
			}
		}
		else
		{
			if ((base.OuterDockAbility | DockAbility.Left) == base.OuterDockAbility)
			{
				getControl(0).InternalControl.Opacity = 0.0;
				getControl(0).ShowControl();
			}
			if ((base.OuterDockAbility | DockAbility.Top) == base.OuterDockAbility)
			{
				getControl(1).InternalControl.Opacity = 0.0;
				getControl(1).ShowControl();
			}
			if ((base.OuterDockAbility | DockAbility.Right) == base.OuterDockAbility)
			{
				getControl(2).InternalControl.Opacity = 0.0;
				getControl(2).ShowControl();
			}
			if ((base.OuterDockAbility | DockAbility.Bottom) == base.OuterDockAbility)
			{
				getControl(3).InternalControl.Opacity = 0.0;
				getControl(3).ShowControl();
			}
		}
		m_fadeTimer.FadeChange += drag2008_FadeChange;
		m_fadeTimer.InitAnimation();
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
