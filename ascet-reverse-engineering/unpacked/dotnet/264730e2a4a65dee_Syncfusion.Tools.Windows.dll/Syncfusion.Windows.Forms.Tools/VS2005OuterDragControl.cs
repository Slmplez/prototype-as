namespace Syncfusion.Windows.Forms.Tools;

internal class VS2005OuterDragControl : DragOuterControl, IArrowDragControl, IDragControl
{
	public VS2005OuterDragControl(DragControl parentControl)
		: base(parentControl)
	{
	}

	protected override void InitializeProvider()
	{
		for (int i = 0; i < 4; i++)
		{
			VS2005DragTargetControl vS2005DragTargetControl = new VS2005DragTargetControl();
			m_Controls.Add(vS2005DragTargetControl);
			vS2005DragTargetControl.OnMouseEnter += MouseEnterEvent;
			vS2005DragTargetControl.OnMouseLeave += MouseLeaveEvent;
			vS2005DragTargetControl.OnMouseUp += base.MouseUpEvent;
			vS2005DragTargetControl.OnMouseMove += base.MouseMoveEvent;
			vS2005DragTargetControl.ParentControl = this;
		}
		base.leftControl.DragTarget = DragTarget.OuterLeft;
		base.leftControl.InactiveImage = GetImage(DragControlConsts.DEF_LEFT_INACTIVE_TARGET);
		base.topControl.DragTarget = DragTarget.OuterTop;
		base.topControl.InactiveImage = GetImage(DragControlConsts.DEF_TOP_INACTIVE_TARGET);
		base.rightControl.DragTarget = DragTarget.OuterRight;
		base.rightControl.InactiveImage = GetImage(DragControlConsts.DEF_RIGHT_INACTIVE_TARGET);
		base.bottomControl.DragTarget = DragTarget.OuterBottom;
		base.bottomControl.InactiveImage = GetImage(DragControlConsts.DEF_BOTTOM_INACTIVE_TARGET);
	}

	public override void Dispose()
	{
		for (int i = 0; i < 4; i++)
		{
			if (m_Controls[i] is DragTargetControl dragTargetControl)
			{
				dragTargetControl.OnMouseMove -= base.MouseMoveEvent;
			}
		}
		base.Dispose();
	}
}
