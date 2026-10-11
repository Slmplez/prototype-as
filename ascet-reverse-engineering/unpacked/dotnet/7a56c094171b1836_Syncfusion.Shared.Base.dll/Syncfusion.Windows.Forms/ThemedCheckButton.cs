using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ThemedCheckButton : ThemedButtonBase
{
	private ThemedControlDrawing tcd;

	private bool m_bSelected;

	public bool Checked
	{
		get
		{
			return base.CheckState == CheckState.Checked;
		}
		set
		{
			base.CheckState = (value ? CheckState.Checked : CheckState.Unchecked);
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

	protected override void Dispose(bool disposing)
	{
		if (disposing && tcd != null)
		{
			tcd.Dispose();
			tcd = null;
		}
	}

	public ThemedCheckButton()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive)
		{
			tcd = new ThemedControlDrawing("BUTTON");
		}
	}

	protected override void DrawThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		int num = 1;
		switch (checkState)
		{
		case CheckState.Unchecked:
			num = 1;
			break;
		case CheckState.Checked:
			num = 5;
			break;
		case CheckState.Indeterminate:
			num = 9;
			break;
		}
		if (mouseOver && buttonState != ButtonState.Pushed)
		{
			num++;
		}
		else
		{
			switch (buttonState)
			{
			case ButtonState.Normal:
				num = num;
				break;
			case ButtonState.Flat:
				num++;
				break;
			case ButtonState.Pushed:
				num += 2;
				break;
			case ButtonState.Inactive:
				num += 3;
				break;
			}
		}
		tcd.DrawThemeBackground(g, 3, num, base.ClientRectangle);
	}

	protected override void DrawNotThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		ButtonState buttonState2 = buttonState;
		switch (checkState)
		{
		case CheckState.Checked:
			buttonState2 = ButtonState.Checked;
			if (buttonState == ButtonState.Inactive)
			{
				buttonState2 = ButtonState.All;
			}
			break;
		case CheckState.Indeterminate:
			buttonState2 = ButtonState.All;
			break;
		}
		ControlPaint.DrawCheckBox(g, base.ClientRectangle, buttonState2);
	}

	protected override void DrawStyledControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		if (base.Style == VisualStyle.Office2007)
		{
			g.DrawRectangle(GetOffice2007BorderPen(buttonState), 0, 0, base.Width - 1, base.Height - 1);
			Color color;
			Color color2;
			if (buttonState == ButtonState.Pushed)
			{
				color = office2007ColorTable.DataTimePickerCheckBoxInnerRectBorderPushedColor;
				color2 = office2007ColorTable.DataTimePickerCheckBoxInnerRectFillPushedColor;
			}
			else if (mouseOver || base.Parent.Focused || Selected || checkState == CheckState.Indeterminate)
			{
				color = office2007ColorTable.DataTimePickerCheckBoxInnerRectBorderSelectedColor;
				color2 = office2007ColorTable.DataTimePickerCheckBoxInnerRectFillSelectedColor;
			}
			else
			{
				color = office2007ColorTable.DataTimePickerCheckBoxInnerRectBorderNormalColor;
				color2 = office2007ColorTable.DataTimePickerCheckBoxInnerRectFillNormalColor;
			}
			Rectangle clientRectangle = base.ClientRectangle;
			Pen pen = new Pen(new LinearGradientBrush(clientRectangle, color, Color.White, LinearGradientMode.ForwardDiagonal));
			LinearGradientBrush brush = new LinearGradientBrush(clientRectangle, color2, Color.White, LinearGradientMode.ForwardDiagonal);
			clientRectangle.Inflate(-2, -2);
			clientRectangle.Width--;
			clientRectangle.Height--;
			g.DrawRectangle(pen, clientRectangle);
			clientRectangle.Inflate(-1, -1);
			clientRectangle.Width++;
			clientRectangle.Height++;
			g.FillRectangle(brush, clientRectangle);
			Pen pen2;
			switch (checkState)
			{
			case CheckState.Checked:
				pen2 = ((!mouseOver && !base.Parent.Focused && !Selected) ? new Pen(office2007ColorTable.DataTimePickerCheckBoxNormalColor, 2f) : new Pen(office2007ColorTable.DataTimePickerCheckBoxSelectedColor, 2f));
				break;
			default:
				pen2 = new Pen(office2007ColorTable.DataTimePickerCheckBoxBorderNormalColor, 2f);
				break;
			case CheckState.Unchecked:
				return;
			}
			Point[] points = new Point[3]
			{
				new Point(clientRectangle.X, clientRectangle.Y + clientRectangle.Height / 2),
				new Point(clientRectangle.X + clientRectangle.Width / 2 - 1, clientRectangle.Bottom - 2),
				new Point(clientRectangle.Right - 1, clientRectangle.Top - 1)
			};
			SmoothingMode smoothingMode = g.SmoothingMode;
			g.SmoothingMode = SmoothingMode.AntiAlias;
			g.DrawLines(pen2, points);
			g.SmoothingMode = smoothingMode;
		}
		else
		{
			DrawNotThemedControl(g, buttonState, checkState);
		}
	}

	private Pen GetOffice2007BorderPen(ButtonState buttonState)
	{
		if (buttonState == ButtonState.Pushed)
		{
			return new Pen(office2007ColorTable.DataTimePickerCheckBoxBorderPushedColor);
		}
		if (mouseOver || base.Parent.Focused || Selected)
		{
			return new Pen(office2007ColorTable.DataTimePickerBorderColor);
		}
		return new Pen(office2007ColorTable.DataTimePickerCheckBoxBorderNormalColor);
	}
}
