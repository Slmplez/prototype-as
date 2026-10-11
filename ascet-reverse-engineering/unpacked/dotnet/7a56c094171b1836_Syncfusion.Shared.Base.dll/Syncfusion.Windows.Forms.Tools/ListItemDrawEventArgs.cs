using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ListItemDrawEventArgs : EventArgs
{
	private bool selected;

	private Color backColor = Control.DefaultBackColor;

	private bool handled;

	private int index;

	public bool Selected => selected;

	public Color BackColor
	{
		get
		{
			return backColor;
		}
		set
		{
			backColor = value;
		}
	}

	public int Index
	{
		get
		{
			return index;
		}
		set
		{
			index = value;
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

	public ListItemDrawEventArgs(bool selected, int index)
	{
		this.selected = selected;
		this.index = index;
		handled = false;
	}
}
