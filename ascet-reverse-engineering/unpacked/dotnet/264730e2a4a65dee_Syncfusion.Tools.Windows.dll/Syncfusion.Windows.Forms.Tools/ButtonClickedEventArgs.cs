using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ButtonClickedEventArgs : EventArgs
{
	private ButtonEditChildButton clickedButtonValue;

	public ButtonEditChildButton ClickedButton
	{
		get
		{
			return clickedButtonValue;
		}
		set
		{
			clickedButtonValue = value;
		}
	}

	public ButtonClickedEventArgs()
	{
		clickedButtonValue = new ButtonEditChildButton();
	}

	public ButtonClickedEventArgs(ButtonEditChildButton value)
		: this()
	{
		clickedButtonValue = value;
	}
}
