using System.Globalization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ICalculatorEngine
{
	NumberFormatInfo NumberFormatInfoObject { get; set; }

	bool HandleAction(CalcActions action);

	CalculatorValue GetValue();

	void SetValue(CalculatorValue value);

	void Reset();
}
