using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IDraggable
{
	DockControllerBase InternalController { get; }

	DockInfo DragDockInfo { get; set; }

	Rectangle DragRectangle { get; set; }

	bool IsSuitableDockTarget(DockControllerBase dc);

	bool InitiateDrag(MouseAction action, Point pt);

	DragAxis AllowedDragAxis(ref Point ptdrag, Point ptdelta);

	bool DrawHollow();

	void AbortDrag();

	bool QueryDragProceedWithDock();
}
