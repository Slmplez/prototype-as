using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class DateTimePickerDropButton : ThemedScrollButton
{
	private bool m_bDropped;

	private bool m_bSelected;

	private Color m_normalColor = Color.Empty;

	private Color m_pressedColor = Color.Empty;

	private Color m_selectedColor = Color.Empty;

	private Color m_arrowColor = Office2007Colors.Default.DataTimePickerDropDownArrowColor;

	public bool Dropped
	{
		get
		{
			return m_bDropped;
		}
		set
		{
			m_bDropped = value;
		}
	}

	public bool Selected
	{
		get
		{
			return m_bSelected;
		}
		set
		{
			m_bSelected = value;
		}
	}

	public Color NormalColor
	{
		get
		{
			return m_normalColor;
		}
		set
		{
			if (m_normalColor != value)
			{
				m_normalColor = value;
				Invalidate();
			}
		}
	}

	public Color PressedColor
	{
		get
		{
			return m_pressedColor;
		}
		set
		{
			if (m_pressedColor != value)
			{
				m_pressedColor = value;
				Invalidate();
			}
		}
	}

	public Color SelectedColor
	{
		get
		{
			return m_selectedColor;
		}
		set
		{
			if (m_selectedColor != value)
			{
				m_selectedColor = value;
				Invalidate();
			}
		}
	}

	public override Color ArrowColor => m_arrowColor;

	protected override Color GetBackColor(ButtonState buttonState)
	{
		Color empty = Color.Empty;
		empty = ((buttonState == ButtonState.Pushed) ? PressedColor : ((!mouseOver) ? NormalColor : SelectedColor));
		if (empty != Color.Empty)
		{
			return empty;
		}
		return base.GetBackColor(buttonState);
	}

	protected override Brush GetBackGroundBrush(ButtonState buttonState)
	{
		if (base.Style == VisualStyle.Office2007)
		{
			LinearGradientBrush linearGradientBrush = null;
			Blend blend = new Blend();
			Color color = Color.Empty;
			Color color2 = Color.Empty;
			m_arrowColor = office2007ColorTable.DataTimePickerDropDownArrowColor;
			if (buttonState == ButtonState.Pushed)
			{
				color = office2007ColorTable.DataTimePickerDropDownSelectedLightColor;
				color2 = office2007ColorTable.DataTimePickerDropDownSelectedDarkColor;
			}
			else if (mouseOver)
			{
				color = office2007ColorTable.DataTimePickerDropDownHighLightLightColor;
				color2 = office2007ColorTable.DataTimePickerDropDownHighLightDarkColor;
			}
			else if (Selected && !mouseOver)
			{
				color = office2007ColorTable.DataTimePickerDropDownLightColor;
				color2 = office2007ColorTable.DataTimePickerDropDownDarkColor;
				if (base.Office2007Theme == Office2007Theme.Black)
				{
					m_arrowColor = Color.White;
				}
			}
			else if (buttonState == ButtonState.Normal)
			{
				return new SolidBrush(Color.White);
			}
			blend.Positions = new float[4] { 0f, 0.45f, 0.45099998f, 1f };
			if (buttonState == ButtonState.Pushed)
			{
				blend.Factors = new float[4] { 0f, 0.8f, 1f, 0.4f };
			}
			else
			{
				blend.Factors = new float[4] { 0f, 0.5f, 1f, 0f };
			}
			Rectangle clientRectangle = base.ClientRectangle;
			clientRectangle.Width -= 3;
			clientRectangle.Height--;
			linearGradientBrush = new LinearGradientBrush(clientRectangle, color, color2, LinearGradientMode.Vertical);
			linearGradientBrush.Blend = blend;
			return linearGradientBrush;
		}
		return base.GetBackGroundBrush(buttonState);
	}

	protected override Pen GetBorderPen(ButtonState buttonState)
	{
		if (base.Style == VisualStyle.Office2007)
		{
			Color color = Color.Empty;
			if (buttonState == ButtonState.Pushed)
			{
				color = office2007ColorTable.DataTimePickerSelectedBorderColor;
			}
			else if (mouseOver || base.Parent.Focused)
			{
				color = office2007ColorTable.DataTimePickerHighLightedBorderColor;
			}
			else if (Selected && !mouseOver)
			{
				color = office2007ColorTable.DataTimePickerBorderColor;
			}
			else if (buttonState == ButtonState.Normal)
			{
				color = Color.White;
			}
			return new Pen(color);
		}
		return base.GetBorderPen(buttonState);
	}

	protected override void DrawStyledControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		bool flag = mouseOver;
		if (base.Style != VisualStyle.Office2007)
		{
			mouseOver = flag || Selected;
		}
		if (Dropped)
		{
			buttonState = ButtonState.Pushed;
		}
		base.DrawStyledControl(g, buttonState, checkState);
		mouseOver = flag;
	}
}
