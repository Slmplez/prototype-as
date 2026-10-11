using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class DateTimePickerUpDownButton : ScrollButtons
{
	private bool m_bMouseHovered;

	private Point m_pMouseLocation;

	private bool m_bMousePressed;

	protected override void OnMouseHover(EventArgs e)
	{
		m_bMouseHovered = true;
		Invalidate();
		base.OnMouseHover(e);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_bMouseHovered = false;
		Invalidate();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		m_pMouseLocation = new Point(e.X, e.Y);
		m_bMousePressed = true;
		base.OnMouseDown(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		m_bMousePressed = false;
		base.OnMouseUp(e);
	}

	protected override void DrawOffice2007ScrollButtonBackground(Graphics g, Rectangle rect, ButtonState buttonState)
	{
		Brush brush;
		if (base.Enabled)
		{
			Blend blend = new Blend();
			Color color = Color.Empty;
			Color color2 = Color.Empty;
			m_arrowColor = m_office2007ColorTable.DataTimePickerDropDownArrowColor;
			bool flag = m_bMousePressed && rect.Contains(m_pMouseLocation);
			if (flag)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownSelectedLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownSelectedDarkColor;
			}
			else if (m_bMouseHovered)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownHighLightLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownHighLightDarkColor;
			}
			else if (base.Selected)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownDarkColor;
				if (base.Office2007ColorScheme == Office2007Theme.Black)
				{
					m_arrowColor = Color.White;
				}
			}
			else if (base.ButtonState == ButtonState.Normal)
			{
				brush = new SolidBrush(Color.White);
			}
			blend.Positions = new float[4] { 0f, 0.45f, 0.45099998f, 1f };
			if (flag)
			{
				blend.Factors = new float[4] { 0f, 0.8f, 1f, 0.4f };
			}
			else
			{
				blend.Factors = new float[4] { 0f, 0.5f, 1f, 0f };
			}
			brush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical);
			(brush as LinearGradientBrush).Blend = blend;
		}
		else
		{
			brush = new SolidBrush(BackColor);
		}
		g.FillRectangle(brush, rect);
	}

	protected override void DrawOffice2007ScrollButtonArrow(Graphics g, Rectangle rect, System.Windows.Forms.ScrollButton scroll, ButtonState buttonState)
	{
		if (base.VSLikeButton)
		{
			DrawVSLikeButtonArrow(g, rect, scroll, m_arrowColor, buttonState);
		}
		else
		{
			base.DrawOffice2007ScrollButtonArrow(g, rect, scroll, buttonState);
		}
	}
}
