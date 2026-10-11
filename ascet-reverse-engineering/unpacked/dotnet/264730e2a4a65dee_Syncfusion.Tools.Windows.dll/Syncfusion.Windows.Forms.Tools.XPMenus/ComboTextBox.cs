using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class ComboTextBox : TextBox, IToolbarControl, IDontCallKillFocus
{
	private EditableComboRenderer renderer;

	internal Control prevControlWithFocus;

	public ComboTextBox(EditableComboRenderer renderer)
	{
		this.renderer = renderer;
		base.BorderStyle = BorderStyle.None;
		base.TabStop = false;
		base.AcceptsReturn = true;
		if (renderer.BarItem != null)
		{
			base.Name = "comboTextBox" + renderer.BarItem.ID;
		}
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (keyData == Keys.Return)
		{
			return true;
		}
		return base.IsInputKey(keyData);
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		switch (keyData)
		{
		case Keys.Return:
			renderer.HitReturn();
			return true;
		case Keys.Escape:
			renderer.HitEscape();
			return true;
		default:
			return base.ProcessDialogKey(keyData);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Clicks == 2)
		{
			renderer.OnDoubleClick();
		}
		else
		{
			((Control)this).OnMouseDown(e);
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		renderer.TextBoxValueChanged();
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

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 || m.Msg == 6)
		{
			StorePrevFocus();
			m.Result = (IntPtr)1;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		base.OnMouseEnter(e);
		renderer.TextBoxMouseEnter();
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		renderer.TextBoxMouseLeave();
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
		renderer.TextBoxGotFocus();
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		renderer.TextBoxLostFocus(Text);
	}

	void IToolbarControl.OnMouseDownOutside()
	{
		renderer.UpdateTextBoxValue();
	}
}
