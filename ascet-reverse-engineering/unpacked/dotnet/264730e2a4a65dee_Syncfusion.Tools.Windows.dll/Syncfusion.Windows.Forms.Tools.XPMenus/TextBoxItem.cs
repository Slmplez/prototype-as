using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
public class TextBoxItem : TextBox, IToolbarControl, IDontCallKillFocus
{
	private TextBoxBarItemRenderer renderer;

	internal Control prevControlWithFocus;

	public TextBoxItem(TextBoxBarItemRenderer renderer)
	{
		this.renderer = renderer;
		base.BorderStyle = BorderStyle.None;
		base.TabStop = false;
		base.AcceptsReturn = true;
		if (renderer.BarItem != null)
		{
			base.Name = "TextBox" + renderer.BarItem.ID;
		}
	}

	internal void StorePrevFocus()
	{
		IntPtr focus = Syncfusion.Runtime.InteropServices.NativeMethods.GetFocus();
		Control control = Control.FromHandle(focus);
		if (control != this)
		{
			prevControlWithFocus = control;
		}
	}

	void IToolbarControl.OnMouseDownOutside()
	{
	}
}
