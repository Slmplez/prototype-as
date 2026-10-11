using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface IDelegateFocusToPrevWindow
{
	Control PreviousWindow { get; }
}
