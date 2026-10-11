using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using Syncfusion.ComponentModel;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

internal class WindowsXPButtonRenderer : ButtonRenderer
{
	private const int c_INCREASE_HEIGHT_VALUE = 1;

	private Brush topColorBrush;

	private Brush bottomColorBrush;

	private Brush gradientBrush;

	private Brush invertGradientBrush;

	private Brush mouseOverBrush;

	private Brush pressedBrush;

	private Pen borderPen;

	private GraphicsPath fullPath;

	private GraphicsPath bottomPath;

	private RectangleF topRect;

	private RectangleF middleRect;

	private RectangleF bottomRect;

	private RectangleF fullRectangle;

	private RectangleF fillRectangle;

	private RectangleF leftBorderRectangle;

	private RectangleF topBorderRectangle;

	private RectangleF rightBorderRectangle;

	private RectangleF bottomBorderRectangle;

	private Brush arcColorBrush;

	private Brush fillColorBrush;

	private Brush fillColorMouseOverBrush;

	private Brush fillColorPressedBrush;

	private Brush borderColorBrush;

	private WindowsXPColorScheme colorScheme = WindowsXPColorScheme.DefaultBlue;

	public WindowsXPButtonRenderer(ButtonAdv button)
		: base(button)
	{
		SetColorScheme();
		CreateDrawingObjects();
	}

	protected override void OnDispose(bool disposing)
	{
		if (disposing)
		{
			DisposeHelper.Dispose(ref arcColorBrush);
			DisposeHelper.Dispose(ref fillColorBrush);
			DisposeHelper.Dispose(ref fillColorMouseOverBrush);
			DisposeHelper.Dispose(ref fillColorPressedBrush);
			DisposeHelper.Dispose(ref borderColorBrush);
			DisposeHelper.Dispose(ref topColorBrush);
			DisposeHelper.Dispose(ref bottomColorBrush);
			DisposeHelper.Dispose(ref gradientBrush);
			DisposeHelper.Dispose(ref invertGradientBrush);
			DisposeHelper.Dispose(ref mouseOverBrush);
			DisposeHelper.Dispose(ref pressedBrush);
			DisposeHelper.Dispose(ref borderPen);
			DisposeHelper.Dispose(ref fullPath);
			DisposeHelper.Dispose(ref bottomPath);
		}
		base.OnDispose(disposing);
	}

	protected internal override void SetBounds(Rectangle bounds)
	{
		base.SetBounds(bounds);
		RectangleF rectangleF = base.bounds;
		switch (colorScheme)
		{
		case WindowsXPColorScheme.DefaultBlue:
			SetBoundsDefaultBlue(rectangleF);
			break;
		case WindowsXPColorScheme.DefaultBlueCombo:
			SetBoundsDefaultBlueCombo(rectangleF);
			break;
		case WindowsXPColorScheme.OliveGreen:
			SetBoundsOliveGreen(rectangleF);
			break;
		case WindowsXPColorScheme.OliveGreenCombo:
			SetBoundsOliveGreenCombo(rectangleF);
			break;
		case WindowsXPColorScheme.Silver:
			SetBoundsSilver(rectangleF);
			break;
		case WindowsXPColorScheme.SilverCombo:
			SetBoundsSilverCombo(rectangleF);
			break;
		}
	}

	public override void Render(Graphics g)
	{
		switch (colorScheme)
		{
		case WindowsXPColorScheme.DefaultBlue:
			RenderDefault(g);
			break;
		case WindowsXPColorScheme.DefaultBlueCombo:
			RenderDefaultBlueCombo(g);
			break;
		case WindowsXPColorScheme.OliveGreen:
			RenderDefault(g);
			break;
		case WindowsXPColorScheme.OliveGreenCombo:
			RenderOliveGreenCombo(g);
			break;
		case WindowsXPColorScheme.Silver:
			RenderDefault(g);
			break;
		case WindowsXPColorScheme.SilverCombo:
			RenderSilverCombo(g);
			break;
		}
		DrawTextAndImage(g);
	}

	public override void DrawKnownImage(Graphics g, RectangleF bounds, ButtonTypes buttonImageType, Point offset, Color imageColor)
	{
		if (colorScheme == WindowsXPColorScheme.OliveGreenCombo && buttonImageType == ButtonTypes.ComboXPDown)
		{
			base.DrawKnownImage(g, bounds, buttonImageType, offset, Color.White);
		}
		else
		{
			base.DrawKnownImage(g, bounds, buttonImageType, offset, imageColor);
		}
	}

	public void SetColorScheme(WindowsXPColorScheme colorScheme)
	{
		this.colorScheme = colorScheme;
		CreateDrawingObjects();
	}

	public void SetColorScheme()
	{
		if (base.Button.IsComboButton)
		{
			if (XPThemes.IsSilverThemeOn)
			{
				colorScheme = WindowsXPColorScheme.SilverCombo;
			}
			else if (XPThemes.IsOliveGreenThemeOn)
			{
				colorScheme = WindowsXPColorScheme.OliveGreenCombo;
			}
			else
			{
				colorScheme = WindowsXPColorScheme.DefaultBlueCombo;
			}
		}
		else if (XPThemes.IsSilverThemeOn)
		{
			colorScheme = WindowsXPColorScheme.Silver;
		}
		else if (XPThemes.IsOliveGreenThemeOn)
		{
			colorScheme = WindowsXPColorScheme.OliveGreen;
		}
		else
		{
			colorScheme = WindowsXPColorScheme.DefaultBlue;
		}
	}

	private void CreateDrawingObjects()
	{
		switch (colorScheme)
		{
		case WindowsXPColorScheme.DefaultBlue:
			topColorBrush = new SolidBrush(WindowsXPColors.DefaultBlueTopColor);
			bottomColorBrush = new SolidBrush(WindowsXPColors.DefaultBlueBottomColor);
			gradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.DefaultBlueGradientStartColor, WindowsXPColors.DefaultBlueGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.DefaultBlueGradientEndColor, WindowsXPColors.DefaultBlueGradientStartColor, LinearGradientMode.Vertical);
			mouseOverBrush = new SolidBrush(WindowsXPColors.DefaultBlueMouseOverColor);
			pressedBrush = new SolidBrush(Color.Blue);
			borderPen = new Pen(WindowsXPColors.DefaultBlueBorderColor, 1f);
			break;
		case WindowsXPColorScheme.DefaultBlueCombo:
			arcColorBrush = new SolidBrush(WindowsXPColors.DefaultBlueComboArcColor);
			fillColorBrush = new SolidBrush(WindowsXPColors.DefaultBlueComboButtonColor);
			fillColorMouseOverBrush = new SolidBrush(WindowsXPColors.DefaultBlueComboButtonMouseOverColor);
			fillColorPressedBrush = new SolidBrush(WindowsXPColors.DefaultBlueComboButtonPressedColor);
			borderColorBrush = new SolidBrush(WindowsXPColors.DefaultBlueComboButtonBorderColor);
			break;
		case WindowsXPColorScheme.OliveGreen:
			topColorBrush = new SolidBrush(WindowsXPColors.OliveGreenTopColor);
			bottomColorBrush = new SolidBrush(WindowsXPColors.OliveGreenBottomColor);
			gradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.OliveGreenGradientStartColor, WindowsXPColors.OliveGreenGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.OliveGreenGradientEndColor, WindowsXPColors.OliveGreenGradientStartColor, LinearGradientMode.Vertical);
			mouseOverBrush = new SolidBrush(WindowsXPColors.OliveGreenMouseOverColor);
			pressedBrush = new SolidBrush(Color.Blue);
			borderPen = new Pen(WindowsXPColors.OliveGreenBorderColor, 1f);
			break;
		case WindowsXPColorScheme.OliveGreenCombo:
			arcColorBrush = new SolidBrush(WindowsXPColors.OliveGreenComboArcColor);
			fillColorBrush = new SolidBrush(WindowsXPColors.OliveGreenComboButtonColor);
			fillColorMouseOverBrush = new SolidBrush(WindowsXPColors.OliveGreenComboButtonMouseOverColor);
			fillColorPressedBrush = new SolidBrush(WindowsXPColors.OliveGreenComboButtonPressedColor);
			borderColorBrush = new SolidBrush(WindowsXPColors.OliveGreenComboButtonBorderColor);
			break;
		case WindowsXPColorScheme.Silver:
		case WindowsXPColorScheme.SilverCombo:
			topColorBrush = new SolidBrush(WindowsXPColors.SilverTopColor);
			bottomColorBrush = new SolidBrush(WindowsXPColors.SilverBottomColor);
			gradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.SilverGradientStartColor, WindowsXPColors.SilverGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(bounds, WindowsXPColors.SilverGradientEndColor, WindowsXPColors.SilverGradientStartColor, LinearGradientMode.Vertical);
			mouseOverBrush = new SolidBrush(WindowsXPColors.SilverMouseOverColor);
			pressedBrush = new SolidBrush(Color.Blue);
			borderPen = new Pen(WindowsXPColors.SilverBorderColor, 1f);
			break;
		}
	}

	private void SetBoundsDefaultBlue(RectangleF buttonRect)
	{
		CalcBounds(buttonRect);
		if (middleRect.Width > 0f && middleRect.Height > 0f)
		{
			gradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.DefaultBlueGradientStartColor, WindowsXPColors.DefaultBlueGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.DefaultBlueGradientEndColor, WindowsXPColors.DefaultBlueGradientStartColor, LinearGradientMode.Vertical);
		}
	}

	private void CalcBounds(RectangleF buttonRect)
	{
		float width = buttonRect.Width;
		float num = buttonRect.Height / 3f;
		float num2 = num;
		if (num2 > 0f)
		{
			num2 = (float)(Math.Floor(num2) + 1.0 / 3.0);
		}
		topRect = new RectangleF(bounds.Left, bounds.Top, width, num + 1f);
		middleRect = new RectangleF(bounds.Left, (float)bounds.Top + num2, width, num + 1f);
		bottomRect = new RectangleF(bounds.Left, (float)bounds.Top + num * 2f, width, num);
	}

	private void SetBoundsDefaultBlueCombo(RectangleF buttonRect)
	{
		float num = 1f;
		float num2 = 1f;
		fullRectangle = new RectangleF(new PointF(buttonRect.Location.X + num, buttonRect.Location.Y + num), new SizeF(buttonRect.Size.Width - 2f * num, buttonRect.Size.Height - 2f * num));
		fillRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + num + num2), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, buttonRect.Size.Height - 2f * num - 2f * num2));
		topBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + num), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, num2));
		rightBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + buttonRect.Width - num - num2, buttonRect.Location.Y + num + num2), new SizeF(num2, buttonRect.Size.Height - 2f * num - 2f * num2));
		bottomBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + buttonRect.Height - num - num2), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, num));
		leftBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num, buttonRect.Location.Y + num + num2), new SizeF(num2, buttonRect.Size.Height - 2f * num - 2f * num2));
	}

	private void SetBoundsOliveGreen(RectangleF buttonRect)
	{
		CalcBounds(buttonRect);
		if (middleRect.Width > 0f && middleRect.Height > 0f)
		{
			gradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.OliveGreenGradientStartColor, WindowsXPColors.OliveGreenGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.OliveGreenGradientEndColor, WindowsXPColors.OliveGreenGradientStartColor, LinearGradientMode.Vertical);
		}
	}

	private void SetBoundsOliveGreenCombo(RectangleF buttonRect)
	{
		float num = 1f;
		float num2 = 1f;
		fullRectangle = new RectangleF(new PointF(buttonRect.Location.X + num, buttonRect.Location.Y + num), new SizeF(buttonRect.Size.Width - 2f * num, buttonRect.Size.Height - 2f * num));
		fillRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + num + num2), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, buttonRect.Size.Height - 2f * num - 2f * num2));
		topBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + num), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, num2));
		rightBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + buttonRect.Width - num - num2, buttonRect.Location.Y + num + num2), new SizeF(num2, buttonRect.Size.Height - 2f * num - 2f * num2));
		bottomBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num + num2, buttonRect.Location.Y + buttonRect.Height - num - num2), new SizeF(buttonRect.Size.Width - 2f * num - 2f * num2, num));
		leftBorderRectangle = new RectangleF(new PointF(buttonRect.Location.X + num, buttonRect.Location.Y + num + num2), new SizeF(num2, buttonRect.Size.Height - 2f * num - 2f * num2));
	}

	private void SetBoundsSilver(RectangleF buttonRect)
	{
		CalcBounds(buttonRect);
		if (middleRect.Width > 0f && middleRect.Height > 0f)
		{
			gradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.SilverGradientStartColor, WindowsXPColors.SilverGradientEndColor, LinearGradientMode.Vertical);
			invertGradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.SilverGradientEndColor, WindowsXPColors.SilverGradientStartColor, LinearGradientMode.Vertical);
		}
	}

	private void SetBoundsSilverCombo(RectangleF buttonRect)
	{
		float num = 1f;
		float num2 = 1f;
		float num3 = 1f;
		float num4 = 0f;
		float num5 = 1f;
		float num6 = buttonRect.Width - 2f * num - 2f * num3 + num4;
		float num7 = (buttonRect.Height - 2f * num2 - 2f * num3) / 3f;
		fullPath = new GraphicsPath();
		fullPath.AddLine(num + num3, 0f, buttonRect.Width - num3 - num, 0f);
		fullPath.AddLine(buttonRect.Width - num3, num2, buttonRect.Width - num3, buttonRect.Height - num2 - num3);
		fullPath.AddLine(buttonRect.Width - num - num3, buttonRect.Height - num3, num + num3, buttonRect.Height - num3);
		fullPath.AddLine(0f + num3, buttonRect.Height - num2 - num3, 0f + num3, num2);
		topRect = new RectangleF(num3 + num + 1f, num3 + num2, num6 - 1f, num7);
		middleRect = new RectangleF(num3 + num + 1f, num3 + num2 + num7 - num5, num6 - 1f, num7 + 2f * num5);
		bottomRect = new RectangleF(num3 + num + 1f, num3 + num2 + num7 * 2f, num6 - 1f, num7 + num5 - 1f);
		gradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.SilverGradientStartColor, WindowsXPColors.SilverGradientEndColor, LinearGradientMode.Vertical);
		invertGradientBrush = new LinearGradientBrush(middleRect, WindowsXPColors.SilverGradientEndColor, WindowsXPColors.SilverGradientStartColor, LinearGradientMode.Vertical);
		bottomPath = new GraphicsPath();
		bottomPath.AddLine(num3, buttonRect.Height - num2 - num3, buttonRect.Width - num3, buttonRect.Height - num2 - num3);
		bottomPath.AddLine(buttonRect.Width - num3 - num, buttonRect.Height - num3, num3 + num, buttonRect.Width - num3);
	}

	private void RenderDefault(Graphics g)
	{
		if ((base.Button.State & ButtonAdvState.Pressed) == ButtonAdvState.Pressed)
		{
			g.FillRectangle(bottomColorBrush, topRect);
			g.FillRectangle(invertGradientBrush, middleRect);
			g.FillRectangle(topColorBrush, bottomRect);
			if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
			{
				g.DrawRectangle(new Pen(mouseOverBrush), new Rectangle(bounds.Location, new Size(bounds.Width - 1, bounds.Height - 1)));
			}
			else
			{
				g.DrawRectangle(new Pen(topColorBrush), new Rectangle(bounds.Location, new Size(bounds.Width - 1, bounds.Height - 1)));
			}
		}
		else if ((base.Button.State & ButtonAdvState.Default) == ButtonAdvState.Default)
		{
			g.FillRectangle(topColorBrush, topRect);
			g.FillRectangle(gradientBrush, middleRect);
			g.FillRectangle(bottomColorBrush, bottomRect);
		}
		else if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
		{
			g.FillRectangle(topColorBrush, topRect);
			g.FillRectangle(gradientBrush, middleRect);
			g.FillRectangle(bottomColorBrush, bottomRect);
			g.DrawRectangle(new Pen(mouseOverBrush), new Rectangle(bounds.Location, new Size(bounds.Width - 1, bounds.Height - 1)));
		}
	}

	private void RenderDefaultBlueCombo(Graphics g)
	{
		g.FillRectangle(new SolidBrush(base.Button.ComboEditBackColor), base.Button.ClientRectangle);
		g.FillRectangle(arcColorBrush, fullRectangle);
		g.FillRectangle(fillColorBrush, fillRectangle);
		if ((base.Button.State & ButtonAdvState.Pressed) == ButtonAdvState.Pressed)
		{
			if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
			{
				g.FillRectangle(fillColorMouseOverBrush, fillRectangle);
			}
			else
			{
				g.FillRectangle(fillColorPressedBrush, fillRectangle);
			}
		}
		else if ((base.Button.State & ButtonAdvState.Default) == ButtonAdvState.Default)
		{
			g.FillRectangle(fillColorBrush, fillRectangle);
		}
		else if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
		{
			g.FillRectangle(fillColorMouseOverBrush, fillRectangle);
		}
		g.FillRectangle(borderColorBrush, leftBorderRectangle);
		g.FillRectangle(borderColorBrush, rightBorderRectangle);
		g.FillRectangle(borderColorBrush, topBorderRectangle);
		g.FillRectangle(borderColorBrush, bottomBorderRectangle);
	}

	private void RenderOliveGreenCombo(Graphics g)
	{
		g.FillRectangle(new SolidBrush(base.Button.ComboEditBackColor), base.Button.ClientRectangle);
		g.FillRectangle(arcColorBrush, fullRectangle);
		g.FillRectangle(fillColorBrush, fillRectangle);
		if ((base.Button.State & ButtonAdvState.Pressed) == ButtonAdvState.Pressed)
		{
			if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
			{
				g.FillRectangle(fillColorPressedBrush, fillRectangle);
			}
			else
			{
				g.FillRectangle(fillColorMouseOverBrush, fillRectangle);
			}
		}
		else if ((base.Button.State & ButtonAdvState.Default) == ButtonAdvState.Default)
		{
			g.FillRectangle(fillColorBrush, fillRectangle);
		}
		else if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
		{
			g.FillRectangle(fillColorMouseOverBrush, fillRectangle);
		}
		g.FillRectangle(borderColorBrush, leftBorderRectangle);
		g.FillRectangle(borderColorBrush, rightBorderRectangle);
		g.FillRectangle(borderColorBrush, topBorderRectangle);
		g.FillRectangle(borderColorBrush, bottomBorderRectangle);
	}

	private void RenderSilverCombo(Graphics g)
	{
		g.FillRectangle(new SolidBrush(base.Button.BackColor), base.Button.ClientRectangle);
		if (base.Button.GetIsLastLeftButton())
		{
			Rectangle rect = new Rectangle(base.Button.ClientRectangle.Location, new Size(base.Button.ClientRectangle.Width / 2, base.Button.ClientRectangle.Height));
			g.FillRectangle(new SolidBrush(base.Button.ComboEditBackColor), rect);
		}
		if (base.Button.GetIsFirstRightButton())
		{
			Rectangle rect2 = new Rectangle(new Point(base.Button.ClientRectangle.Location.X + base.Button.ClientRectangle.Width / 2, base.Button.ClientRectangle.Location.Y), new Size(base.Button.ClientRectangle.Width / 2, base.Button.ClientRectangle.Height));
			g.FillRectangle(new SolidBrush(base.Button.ComboEditBackColor), rect2);
		}
		if ((base.Button.State & ButtonAdvState.Pressed) == ButtonAdvState.Pressed)
		{
			if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
			{
				g.FillPath(mouseOverBrush, fullPath);
				g.FillRectangle(bottomColorBrush, topRect);
				g.FillRectangle(gradientBrush, middleRect);
				g.FillRectangle(topColorBrush, bottomRect);
				g.DrawPath(borderPen, fullPath);
			}
			else
			{
				g.FillPath(topColorBrush, fullPath);
				g.FillRectangle(bottomColorBrush, topRect);
				g.FillRectangle(invertGradientBrush, middleRect);
				g.FillRectangle(topColorBrush, bottomRect);
				g.DrawPath(borderPen, fullPath);
			}
		}
		else if ((base.Button.State & ButtonAdvState.Default) == ButtonAdvState.Default)
		{
			g.FillPath(topColorBrush, fullPath);
			g.FillRectangle(topColorBrush, topRect);
			g.FillRectangle(gradientBrush, middleRect);
			g.FillRectangle(bottomColorBrush, bottomRect);
			g.FillPath(bottomColorBrush, bottomPath);
			g.DrawPath(borderPen, fullPath);
		}
		else if ((base.Button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver)
		{
			g.FillPath(mouseOverBrush, fullPath);
			g.FillRectangle(topColorBrush, topRect);
			g.FillRectangle(gradientBrush, middleRect);
			g.FillRectangle(bottomColorBrush, bottomRect);
			g.DrawPath(borderPen, fullPath);
		}
	}
}
