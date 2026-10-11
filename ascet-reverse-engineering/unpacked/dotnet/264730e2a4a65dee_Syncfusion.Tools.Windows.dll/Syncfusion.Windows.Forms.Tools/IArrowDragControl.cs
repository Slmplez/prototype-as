using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal interface IArrowDragControl : IDragControl
{
	Rectangle ControllerRect { get; set; }

	DockAbility DockAbility { get; set; }

	DockAbility OuterDockAbility { get; set; }

	event MouseEnterHandler OnMouseEnter;

	event MouseLeaveHandler OnMouseLeave;

	event MouseUpHandler OnMouseUp;

	event MouseMoveHandler OnMouseMove;

	event AllowHighlightHandler OnAllowHighlight;
}
