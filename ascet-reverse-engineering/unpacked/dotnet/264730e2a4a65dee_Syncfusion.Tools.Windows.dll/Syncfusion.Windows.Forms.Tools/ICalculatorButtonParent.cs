using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ICalculatorButtonParent
{
	void ButtonAction(CalcActions action);

	void HandleChildKeyDown(KeyEventArgs e);
}
