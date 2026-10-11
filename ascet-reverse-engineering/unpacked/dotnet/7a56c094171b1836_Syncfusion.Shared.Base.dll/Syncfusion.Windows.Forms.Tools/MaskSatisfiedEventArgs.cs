using System;

namespace Syncfusion.Windows.Forms.Tools;

public class MaskSatisfiedEventArgs : EventArgs
{
	private string invalidText;

	private int startPosition;

	public string InvalidText => invalidText;

	public int StartPosition => startPosition;

	public MaskSatisfiedEventArgs(string invalidText, int startPosition)
	{
		this.invalidText = invalidText;
		this.startPosition = startPosition;
	}
}
