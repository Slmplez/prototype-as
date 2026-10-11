using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public interface INeedKeyboardMessages
{
	bool KeyboardMessage(ref Message m);
}
