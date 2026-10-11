using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class UpDownOffice2007Renderer : UpDownRenderer
{
	private Office2007Theme m_colorSheme;

	private Office2007Colors m_colorTable = Office2007Colors.GetColorTable(Office2007Theme.Blue);

	private bool m_mouseOver;

	public Office2007Theme ColorSheme
	{
		get
		{
			return m_colorSheme;
		}
		set
		{
			if (value != m_colorSheme)
			{
				m_colorSheme = value;
				OnColorSchemeChanged();
			}
		}
	}

	public Color BorderColor => m_colorTable.UpDownBorderNormalColor;

	public UpDownOffice2007Renderer(UpDownBase upDownControl, Office2007Theme scheme)
		: base(upDownControl)
	{
		ColorSheme = scheme;
		base.UpDownTextBox.MouseMove += UpDownTextBox_MouseMove;
		base.UpDownTextBox.MouseLeave += UpDownTextBox_MouseLeave;
		base.UpDownTextBox.Validated += UpDownTextBox_ValidatedEnter;
		base.UpDownTextBox.Enter += UpDownTextBox_ValidatedEnter;
		base.UpDownTextBox.MouseEnter += UpDownTextBox_ValidatedEnter;
	}

	private void UpDownTextBox_ValidatedEnter(object sender, EventArgs e)
	{
		base.UpDownControl.Invalidate(invalidateChildren: true);
	}

	private void UpDownTextBox_MouseLeave(object sender, EventArgs e)
	{
		m_mouseOver = false;
		base.UpDownControl.Invalidate(invalidateChildren: true);
	}

	private void UpDownTextBox_MouseMove(object sender, MouseEventArgs e)
	{
		m_mouseOver = true;
	}

	protected virtual void OnColorSchemeChanged()
	{
		m_colorTable = Office2007Colors.GetColorTable(m_colorSheme);
	}

	private Point[] GetArrowPoints(Rectangle rectangle, bool upper)
	{
		int num = 1;
		if (!upper)
		{
			num = -num;
		}
		Point point;
		Point point2;
		Point point3;
		if (base.UpDownSpinOrientation == Orientation.Horizontal)
		{
			point = new Point(rectangle.Width / 2 + num + rectangle.X, rectangle.Height / 2 + rectangle.Y);
			point2 = new Point(point.X - num * 3, point.Y - 3);
			point3 = new Point(point.X - num * 3, point.Y + 3);
		}
		else
		{
			point = new Point(rectangle.Width / 2 + rectangle.X, rectangle.Height / 2 - 2 * num + rectangle.Y);
			point2 = new Point(point.X - 3, point.Y + num * 4);
			point3 = new Point(point.X + 3, point.Y + num * 3);
		}
		return new Point[3] { point, point2, point3 };
	}

	private Pen GetBorderPen(ButtonState buttonState)
	{
		return buttonState switch
		{
			ButtonState.Flat => new Pen(m_colorTable.UpDownBorderNormalColor), 
			ButtonState.Pushed => new Pen(m_colorTable.UpDownBorderPressedColor), 
			ButtonState.Inactive => new Pen(m_colorTable.UpDownBorderDisabledColor), 
			_ => new Pen(m_colorTable.UpDownBorderHotColor), 
		};
	}

	private void DrawHotBackground(Graphics g, Rectangle buttonRectangle)
	{
		using (Brush brush = new LinearGradientBrush(buttonRectangle, m_colorTable.UpDownInnerBorderHotStartColor, m_colorTable.UpDownInnerBorderHotEndColor, LinearGradientMode.ForwardDiagonal))
		{
			g.FillRectangle(brush, buttonRectangle);
		}
		buttonRectangle.Inflate(-1, -1);
		int num = buttonRectangle.Height / 2;
		Rectangle rect = new Rectangle(buttonRectangle.X, buttonRectangle.Y, buttonRectangle.Width, num);
		Rectangle rect2 = new Rectangle(buttonRectangle.X, buttonRectangle.Y + num, buttonRectangle.Width, buttonRectangle.Height - num);
		using (Brush brush2 = new LinearGradientBrush(rect, m_colorTable.UpDownBackgroundHotTopStartColor, m_colorTable.UpDownBackgroundHotTopEndColor, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush2, rect);
		}
		using Brush brush3 = new LinearGradientBrush(rect2, m_colorTable.UpDownBackgroundHotBottomStartColor, m_colorTable.UpDownBackgroundHotBottomEndColor, LinearGradientMode.Vertical);
		g.FillRectangle(brush3, rect2);
	}

	private void DrawPressedBackground(Graphics g, Rectangle buttonRectangle)
	{
		using (Brush brush = new LinearGradientBrush(buttonRectangle, m_colorTable.UpDownInnerBorderPressedStartColor, m_colorTable.UpDownInnerBorderPressedEndColor, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush, buttonRectangle);
		}
		buttonRectangle.Inflate(-1, -1);
		int num = buttonRectangle.Height / 2;
		Rectangle rect = new Rectangle(buttonRectangle.X, buttonRectangle.Y, buttonRectangle.Width, num);
		Rectangle rect2 = new Rectangle(buttonRectangle.X, buttonRectangle.Y + num, buttonRectangle.Width, buttonRectangle.Height - num);
		using (Brush brush2 = new LinearGradientBrush(rect, m_colorTable.UpDownBackgroundPressedTopStartColor, m_colorTable.UpDownBackgroundPressedTopEndColor, LinearGradientMode.Vertical))
		{
			g.FillRectangle(brush2, rect);
		}
		using Brush brush3 = new LinearGradientBrush(rect2, m_colorTable.UpDownBackgroundPressedBottomStartColor, m_colorTable.UpDownBackgroundPressedBottomEndColor, LinearGradientMode.Vertical);
		g.FillRectangle(brush3, rect2);
	}

	private void DrawDisabledBackground(Graphics g, Rectangle buttonRectangle)
	{
		using LinearGradientBrush brush = new LinearGradientBrush(buttonRectangle, m_colorTable.UpDownBackgroundDisabledStartColor, m_colorTable.UpDownBackgroundDisabledEndColor, LinearGradientMode.Vertical);
		g.FillRectangle(brush, buttonRectangle);
	}

	private void DrawButtonsNoBorder(Graphics g, Brush brush, ButtonState upButtonState, ButtonState downButtonState)
	{
		g.FillRectangle(brush, base.UpDownButtons.ClientRectangle);
		DrawArrow(g, base.UpButtonRectangle, upButtonState, upper: true);
		DrawArrow(g, base.DownButtonRectangle, downButtonState, upper: false);
	}

	public override void DrawArrow(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, bool upper)
	{
		Point[] arrowPoints = GetArrowPoints(buttonRectangle, upper);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(arrowPoints);
		RectangleF bounds = graphicsPath.GetBounds();
		if (!base.UpDownControl.Enabled)
		{
			using (Brush brush = new SolidBrush(m_colorTable.UpDownBorderDisabledColor))
			{
				g.FillPolygon(brush, arrowPoints);
				return;
			}
		}
		using Brush brush2 = new LinearGradientBrush(bounds, m_colorTable.UpDownArrowStartColor, m_colorTable.UpDownArrowEndColor, LinearGradientMode.Vertical);
		g.FillPolygon(brush2, arrowPoints);
	}

	public override void DrawScrollButtonBorder(Graphics g, Rectangle buttonRectangle, ButtonState buttonState)
	{
		buttonRectangle.Width--;
		buttonRectangle.Height--;
		Pen borderPen = GetBorderPen(buttonState);
		g.DrawRectangle(borderPen, buttonRectangle);
	}

	public override void DrawScrollButtonBackground(Graphics g, Rectangle buttonRectangle, ButtonState buttonState)
	{
		buttonRectangle.Inflate(-1, -1);
		switch (buttonState)
		{
		case ButtonState.Inactive:
			DrawDisabledBackground(g, buttonRectangle);
			break;
		case ButtonState.Normal:
			DrawHotBackground(g, buttonRectangle);
			break;
		case ButtonState.Pushed:
			DrawPressedBackground(g, buttonRectangle);
			break;
		}
	}

	public override void Render(Graphics g, ButtonState upButtonState, ButtonState downButtonState)
	{
		bool flag = upButtonState == ButtonState.Flat && downButtonState == ButtonState.Flat;
		if (!m_mouseOver && ((!base.UpDownTextBox.Focused && flag) || !base.UpDownControl.Enabled))
		{
			if (base.UpDownControl.BackColor != m_colorTable.UpDownBackgroundNormalColor)
			{
				base.UpDownControl.BackColor = m_colorTable.UpDownBackgroundNormalColor;
			}
			if (base.UpDownButtons.Enabled)
			{
				using (Brush brush = new SolidBrush(m_colorTable.UpDownBackgroundNormalColor))
				{
					DrawButtonsNoBorder(g, brush, upButtonState, downButtonState);
					return;
				}
			}
			return;
		}
		if (!base.UpDownControl.ReadOnly)
		{
			base.UpDownControl.BackColor = SystemColors.Window;
		}
		if (base.UpDownButtons.Enabled)
		{
			using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(base.UpDownButtons.ClientRectangle, m_colorTable.UpDownBackgroundNormalStartColor, m_colorTable.UpDownBackgroundNormalEndColor, LinearGradientMode.Vertical))
			{
				Blend blend = new Blend(4);
				blend.Factors = new float[4] { 0.9f, 0.4f, 0f, 1f };
				blend.Positions = new float[4] { 0f, 0.49f, 0.5f, 1f };
				linearGradientBrush.Blend = blend;
				DrawButtonsNoBorder(g, linearGradientBrush, upButtonState, downButtonState);
			}
			DrawScrollButtonBorder(g, base.UpDownButtons.ClientRectangle, ButtonState.Flat);
			if (!flag)
			{
				base.Render(g, upButtonState, downButtonState);
			}
		}
	}

	public override void DrawScrollButton(Graphics g, Rectangle buttonRectangle, ButtonState buttonState, ButtonID buttonID)
	{
		if (buttonState != ButtonState.Flat)
		{
			base.DrawScrollButton(g, buttonRectangle, buttonState, buttonID);
		}
	}
}
