using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class NumberModifyState
{
	public string initialString;

	public string changedString;

	public string changedValue;

	public int startPositionJustNumbers;

	public bool inDecimalPosition;

	public bool moveBack;

	public bool success = true;

	public bool handled = true;

	public string message;

	public bool isNegative;

	public bool initialNegativeState;
}
