using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CalculatorButtonStyle
{
	private Font font;

	private Color foreColor;

	private FlatStyle flatStyle;

	public Font Font
	{
		get
		{
			return font;
		}
		set
		{
			font = value;
		}
	}

	public Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			foreColor = value;
		}
	}

	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			flatStyle = value;
			RaiseStyleChangedEvent();
		}
	}

	public event EventHandler StyleChanged;

	public CalculatorButtonStyle()
	{
		font = FontUtil.CreateFont(Control.DefaultFont.Name, 8f);
		foreColor = Control.DefaultForeColor;
	}

	public CalculatorButtonStyle(Color foreColor, Font font, FlatStyle flatStyle)
	{
		this.foreColor = foreColor;
		this.font = font;
		this.flatStyle = flatStyle;
	}

	public CalculatorButtonStyle(CalculatorButtonStyle btnStyle)
	{
		font = btnStyle.Font;
		foreColor = btnStyle.ForeColor;
		flatStyle = btnStyle.FlatStyle;
	}

	protected void RaiseStyleChangedEvent()
	{
		OnStyleChanged(EventArgs.Empty);
	}

	protected virtual void OnStyleChanged(EventArgs args)
	{
		if (this.StyleChanged != null)
		{
			this.StyleChanged(this, args);
		}
	}
}
