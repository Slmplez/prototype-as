using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DesignTimeVisible(false)]
[DocumentationExclude]
public class CalculatorTextBox : TextBox
{
	private ICalculatorButtonParent calcParent;

	public CalculatorTextBox(ICalculatorButtonParent calcParent)
	{
		this.calcParent = calcParent;
		base.TabStop = true;
	}

	protected override void OnCreateControl()
	{
		base.OnCreateControl();
		SetStyle(ControlStyles.Selectable, value: false);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (calcParent != null)
		{
			calcParent.HandleChildKeyDown(e);
		}
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.Parent.Focus();
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 || m.Msg == 513 || m.Msg == 516 || m.Msg == 519)
		{
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
