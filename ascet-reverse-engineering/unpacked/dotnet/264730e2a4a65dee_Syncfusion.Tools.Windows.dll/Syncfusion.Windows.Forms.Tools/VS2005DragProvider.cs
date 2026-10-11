using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2005DragProvider : WhidbeyDragProvider
{
	private Color m_targetBorderColor = Color.Empty;

	private Color m_targetBackColor = Color.Empty;

	public VS2005DragProvider(DockingManager dockingManager)
		: base(dockingManager)
	{
	}

	protected override void InitializeProvider()
	{
		dragControl = new VS2005DragControl();
		dragControl.OnMouseEnter += base.dragControl_OnMouseEnter;
		dragControl.OnMouseLeave += base.dragControl_OnMouseLeave;
		dragControl.OnMouseUp += base.dragControl_OnMouseUp;
		dragControl.OnAllowHighlight += base.dragControl_OnAllowHighlight;
		CreateTargetForm(base.DockingManager);
	}

	public override void UpdateColors()
	{
		m_targetBackColor = SystemColors.ActiveCaption;
		m_targetBorderColor = SystemColors.ControlDark;
	}

	protected override void CreateTargetForm(DockingManager dockingManager)
	{
		UpdateColors();
		targetForm = new TargetForm(dockingManager);
		targetForm.BackColor = m_targetBackColor;
		targetForm.BorderColor = m_targetBorderColor;
		targetForm.BorderWidth = 2;
		targetForm.Opacity = 0.25;
	}
}
