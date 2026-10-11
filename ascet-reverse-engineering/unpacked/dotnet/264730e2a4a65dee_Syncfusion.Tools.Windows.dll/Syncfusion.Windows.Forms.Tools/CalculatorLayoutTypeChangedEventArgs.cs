namespace Syncfusion.Windows.Forms.Tools;

public class CalculatorLayoutTypeChangedEventArgs
{
	private CalculatorLayoutTypes layoutType;

	public CalculatorLayoutTypes LayoutType
	{
		get
		{
			return layoutType;
		}
		set
		{
			layoutType = value;
		}
	}

	public CalculatorLayoutTypeChangedEventArgs(CalculatorLayoutTypes layoutType)
	{
		this.layoutType = layoutType;
	}
}
