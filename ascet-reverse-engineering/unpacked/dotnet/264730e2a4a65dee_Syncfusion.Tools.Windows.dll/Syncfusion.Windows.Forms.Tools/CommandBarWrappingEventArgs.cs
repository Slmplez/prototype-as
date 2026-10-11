using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandBarWrappingEventArgs : EventArgs
{
	protected Size szClient = Size.Empty;

	protected CommandBarResizeType cbResizeType;

	public Size ClientSize
	{
		get
		{
			return szClient;
		}
		set
		{
			szClient = value;
		}
	}

	public CommandBarResizeType CommandBarResizeType => cbResizeType;

	public CommandBarWrappingEventArgs(Size clientsize, CommandBarResizeType resizetype)
	{
		szClient = clientsize;
		cbResizeType = resizetype;
	}
}
