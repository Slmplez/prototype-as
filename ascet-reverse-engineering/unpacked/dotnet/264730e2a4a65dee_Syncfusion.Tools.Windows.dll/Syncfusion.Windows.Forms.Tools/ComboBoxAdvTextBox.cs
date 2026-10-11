using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class ComboBoxAdvTextBox : TextBox
{
	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (base.BorderStyle == BorderStyle.None && !Multiline)
		{
			if (base.Left != x || base.Top != y || base.Width != width || base.Height != height)
			{
				if (!base.IsHandleCreated)
				{
					UpdateBounds(x, y, width, height);
				}
				else
				{
					Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, x, y, width, height, 20);
				}
			}
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}
}
