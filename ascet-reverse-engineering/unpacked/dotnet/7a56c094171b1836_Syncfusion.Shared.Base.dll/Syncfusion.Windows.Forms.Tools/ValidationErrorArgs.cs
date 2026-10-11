using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ValidationErrorArgs : EventArgs
{
	private string invalidText;

	private int startPosition;

	private string errorMessage = "Invalid content.";

	public string InvalidText => invalidText;

	public int StartPosition => startPosition;

	public string ErrorMessage => errorMessage;

	public ValidationErrorArgs(string invalidText, int startPosition)
	{
		this.invalidText = invalidText;
		this.startPosition = startPosition;
	}

	public ValidationErrorArgs(string invalidText, int startPosition, string errorMessage)
	{
		this.invalidText = invalidText;
		this.startPosition = startPosition;
		this.errorMessage = errorMessage;
	}
}
