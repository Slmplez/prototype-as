using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CalculatorStyleChangedEventArgs
{
	private FlatStyle flatStyle;

	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			flatStyle = value;
		}
	}

	public CalculatorStyleChangedEventArgs(FlatStyle flatStyle)
	{
		this.flatStyle = flatStyle;
	}
}
