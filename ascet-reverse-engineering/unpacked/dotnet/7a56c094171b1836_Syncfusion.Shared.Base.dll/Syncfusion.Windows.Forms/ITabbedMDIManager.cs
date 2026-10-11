using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface ITabbedMDIManager
{
	Form GetMDIParent();

	bool ProcessCmdKey(ref Message msg, Keys keyData);
}
