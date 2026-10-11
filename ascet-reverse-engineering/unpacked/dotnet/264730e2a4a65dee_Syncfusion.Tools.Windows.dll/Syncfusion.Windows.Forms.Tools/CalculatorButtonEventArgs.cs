namespace Syncfusion.Windows.Forms.Tools;

public class CalculatorButtonEventArgs
{
	private CalcActions action;

	public CalcActions Action
	{
		get
		{
			return action;
		}
		set
		{
			action = value;
		}
	}

	public CalculatorButtonEventArgs(CalcActions action)
	{
		this.action = action;
	}
}
