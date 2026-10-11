using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ProvideFontInfoEventArgs : EventArgs
{
	private Font font;

	public Font Font
	{
		get
		{
			return font;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentException("Font property cannot be set to null in the ProvideFontInfoEventArgs.");
			}
			font = value;
		}
	}

	public ProvideFontInfoEventArgs(Font font)
	{
		this.font = font;
	}
}
