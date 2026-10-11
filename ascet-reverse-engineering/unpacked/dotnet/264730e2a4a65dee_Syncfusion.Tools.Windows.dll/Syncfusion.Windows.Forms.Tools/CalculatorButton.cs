using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class CalculatorButton : XPButton
{
	private CalculatorButtonStyle btnStyleObject;

	private string title;

	private CalcActions calcAction;

	private ICalculatorButtonParent buttonParent;

	[Browsable(false)]
	public CalcActions Action
	{
		get
		{
			return calcAction;
		}
		set
		{
			calcAction = value;
		}
	}

	public CalculatorButtonStyle ButtonStyle
	{
		get
		{
			return btnStyleObject;
		}
		set
		{
			btnStyleObject = value;
			ApplyStyles();
		}
	}

	public event CalculatorButtonEventHandler ButtonAction;

	public CalculatorButton(ICalculatorButtonParent buttonParent)
	{
		btnStyleObject = null;
		title = string.Empty;
		this.buttonParent = buttonParent;
		base.TabStop = false;
	}

	public bool Initialize(CalculatorButtonStyle btnStyle, CalcActions action, string title)
	{
		btnStyleObject = btnStyle;
		ApplyStyles();
		calcAction = action;
		this.title = title;
		Text = this.title;
		ButtonStyle.StyleChanged += HandleStyleChanged;
		return true;
	}

	private void ApplyStyles()
	{
		base.FlatStyle = ButtonStyle.FlatStyle;
		Font = ButtonStyle.Font;
		ForeColor = ButtonStyle.ForeColor;
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		if (buttonParent != null)
		{
			buttonParent.ButtonAction(calcAction);
		}
		RaiseCalculatorButtonEvent(calcAction);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (buttonParent != null)
		{
			buttonParent.HandleChildKeyDown(e);
		}
	}

	private void RaiseCalculatorButtonEvent(CalcActions action)
	{
		CalculatorButtonEventArgs arg = new CalculatorButtonEventArgs(action);
		OnCalculatorButton(arg);
	}

	protected virtual void OnCalculatorButton(CalculatorButtonEventArgs arg)
	{
		if (this.ButtonAction != null)
		{
			this.ButtonAction(this, arg);
		}
	}

	private void HandleStyleChanged(object sender, EventArgs args)
	{
		CalculatorButtonStyle buttonStyle = sender as CalculatorButtonStyle;
		ButtonStyle = buttonStyle;
		Invalidate();
	}
}
