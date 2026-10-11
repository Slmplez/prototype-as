using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IDockingManagerDesignerMouseHook
{
	void HandleMouseDown(MouseButtons button, Point ptscreen);

	void HandleMouseMove(MouseButtons button, Point ptscreen);

	void HandleMouseUp(MouseButtons button, Point ptscreen);

	void HandleDoubleClick(Point ptscreen);

	void HandleMouseLeave();

	void InitiateFloatingResize(Point ptscreen, int nchittest);

	bool GetDesignMode();
}
