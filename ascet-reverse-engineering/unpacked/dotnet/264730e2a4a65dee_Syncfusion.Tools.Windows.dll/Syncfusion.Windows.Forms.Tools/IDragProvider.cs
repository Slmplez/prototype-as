using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IDragProvider
{
	IDraggable DraggingControl { get; set; }

	bool CanFloatWhenDisallowFloating { get; }

	bool SingleTabOperate { get; set; }

	bool AllowDrag { get; set; }

	void ProcessMouseDown(DockControllerBase controller, IDraggable ctrl, Point ptscreen);

	void ProcessMouseUp(DockControllerBase controller, IDraggable ctrl, Point ptscreen);

	void ProcessMouseMove(DockControllerBase controller, IDraggable ctrl, Point ptscreen);

	void ProcessDoubleClick();

	void TerminateDrag(IDraggable ctrl, Point ptscreen);

	Control GetUnderlyingControl(Point point);

	void UpdateColors();

	void ForceStopDrag();

	void Dispose();

	void ProcessCtrlKeyDown();

	void ProcessCtrlKeyUp();
}
