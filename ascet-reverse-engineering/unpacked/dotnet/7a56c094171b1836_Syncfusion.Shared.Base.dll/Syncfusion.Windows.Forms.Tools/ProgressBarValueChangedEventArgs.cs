using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ProgressBarValueChangedEventArgs : EventArgs
{
	private string text;

	private bool handled;

	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			text = value;
		}
	}

	public bool Handled
	{
		get
		{
			return handled;
		}
		set
		{
			handled = value;
		}
	}
}
