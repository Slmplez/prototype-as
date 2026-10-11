using System;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFormulaParsingEventArgs : EventArgs
{
	private string text;

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

	public GridFormulaParsingEventArgs()
	{
	}

	public GridFormulaParsingEventArgs(string text)
	{
		this.text = text;
	}
}
