namespace Syncfusion.Windows.Forms.Tools;

public class CalculatorClosingEventArgs
{
	private CalculatorCloseType closeType;

	private CalculatorValue finalValue;

	public CalculatorCloseType CloseType => closeType;

	public CalculatorValue FinalValue => finalValue;

	public CalculatorClosingEventArgs(CalculatorCloseType closeType, CalculatorValue finalValue)
	{
		this.finalValue = finalValue;
		this.closeType = closeType;
	}
}
