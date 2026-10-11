using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface INeedMouseMoveMessages
{
	bool MouseMessage(ref Message m);
}
