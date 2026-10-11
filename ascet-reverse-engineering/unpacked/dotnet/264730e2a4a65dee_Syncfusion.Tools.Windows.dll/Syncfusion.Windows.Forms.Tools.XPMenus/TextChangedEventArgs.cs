using System;
using System.Diagnostics;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TextChangedEventArgs : EventArgs
{
	private static readonly TextChangedEventArgs _empty = new TextChangedEventArgs();

	private string m_strText;

	public new static TextChangedEventArgs Empty
	{
		[DebuggerStepThrough]
		get
		{
			return _empty;
		}
	}

	public string Text => m_strText;

	private TextChangedEventArgs()
	{
	}

	[DebuggerStepThrough]
	public TextChangedEventArgs(string strText)
	{
		m_strText = strText;
	}
}
