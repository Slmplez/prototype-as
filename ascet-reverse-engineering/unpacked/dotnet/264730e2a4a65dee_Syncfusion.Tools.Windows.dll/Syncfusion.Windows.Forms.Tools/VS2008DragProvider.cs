using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008DragProvider : WhidbeyDragProvider
{
	private const int DEF_BORDER_WIDTH = 3;

	private const double DEF_TARGET_OPACITY = 0.3;

	private Color m_targetBorderColor = Color.Empty;

	private Color m_targetBackColor = Color.Empty;

	private readonly Color TARGET_FORM_COLOR = Color.FromArgb(21, 132, 255);

	public VS2008DragProvider(DockingManager manager)
		: base(manager)
	{
	}

	protected override void InitializeProvider()
	{
		dragControl = new VS2008DragControl();
		dragControl.OnMouseEnter += base.dragControl_OnMouseEnter;
		dragControl.OnMouseLeave += base.dragControl_OnMouseLeave;
		dragControl.OnMouseUp += base.dragControl_OnMouseUp;
		dragControl.OnAllowHighlight += base.dragControl_OnAllowHighlight;
		CreateTargetForm(base.DockingManager);
	}

	public override void UpdateColors()
	{
		m_targetBackColor = TARGET_FORM_COLOR;
		m_targetBorderColor = SystemColors.ControlDark;
	}

	protected override void CreateTargetForm(DockingManager dockingManager)
	{
		UpdateColors();
		targetForm = new TargetForm(dockingManager);
		targetForm.BackColor = m_targetBackColor;
		targetForm.BorderColor = m_targetBorderColor;
		targetForm.BorderWidth = 3;
		targetForm.Opacity = 0.3;
	}
}
