using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IGroupViewDesignerInvoke
{
	void HandleMouseDown(MouseButtons button, Point pt);

	void HandleMouseUp(MouseButtons button, Point pt);
}
