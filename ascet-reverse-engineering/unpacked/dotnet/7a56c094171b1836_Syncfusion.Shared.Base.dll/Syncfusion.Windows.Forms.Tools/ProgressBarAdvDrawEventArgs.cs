using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class ProgressBarAdvDrawEventArgs : EventArgs
{
	private Rectangle rect;

	private Graphics graphics;

	private bool handled;

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

	public Rectangle Rectangle => rect;

	public Graphics Graphics => graphics;

	public ProgressBarAdvDrawEventArgs(Graphics g, Rectangle rect)
	{
		graphics = g;
		this.rect = rect;
	}
}
