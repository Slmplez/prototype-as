namespace Syncfusion.Windows.Forms.Tools;

public interface ICalculatorEngineParent
{
	bool RepeatAssignAction { get; }

	void EngineValueChanged(CalculatorValue internalValue, bool errorCondition, string feedbackMessage, double memoryValue);
}
