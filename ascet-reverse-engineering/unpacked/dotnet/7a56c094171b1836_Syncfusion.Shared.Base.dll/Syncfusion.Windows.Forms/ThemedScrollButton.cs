using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ThemedScrollButton : ThemedButtonBase
{
	private ThemedScrollButtonDrawing scrollDrawing;

	private ButtonID buttonID = ButtonID.Up;

	private ScrollButtonAppearance appearance = ScrollButtonAppearance.Horizontal;

	private ScrollButton sButton;

	private bool transparent;

	private Color m_arrowColor = Color.Black;

	public bool Transparent
	{
		get
		{
			return transparent;
		}
		set
		{
			if (transparent != value)
			{
				transparent = value;
				Invalidate();
			}
		}
	}

	public ScrollButton ButtonType
	{
		get
		{
			return sButton;
		}
		set
		{
			if (sButton != value)
			{
				sButton = value;
				switch (sButton)
				{
				case ScrollButton.Down:
					appearance = ScrollButtonAppearance.Vertical;
					buttonID = ButtonID.Down;
					break;
				case ScrollButton.Left:
					appearance = ScrollButtonAppearance.Horizontal;
					buttonID = ButtonID.Up;
					break;
				case ScrollButton.Right:
					appearance = ScrollButtonAppearance.Horizontal;
					buttonID = ButtonID.Down;
					break;
				case ScrollButton.Up:
					appearance = ScrollButtonAppearance.Vertical;
					buttonID = ButtonID.Up;
					break;
				}
				Invalidate();
			}
		}
	}

	public virtual Color ArrowColor
	{
		get
		{
			return m_arrowColor;
		}
		set
		{
			if (m_arrowColor != value)
			{
				m_arrowColor = value;
			}
		}
	}

	public ThemedScrollButton()
	{
		if (XPThemes.IsThemedOS)
		{
			scrollDrawing = new ThemedScrollButtonDrawing(this);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && scrollDrawing != null)
		{
			scrollDrawing.Dispose();
			scrollDrawing = null;
		}
	}

	protected override void DrawThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		if (scrollDrawing != null)
		{
			scrollDrawing.DrawScrollButton(g, base.ClientRectangle, buttonID, appearance, buttonState);
		}
	}

	protected override void DrawNotThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		ControlPaint.DrawScrollButton(g, base.ClientRectangle, sButton, buttonState);
	}

	protected virtual Color GetBackColor(ButtonState buttonState)
	{
		Color empty = Color.Empty;
		if (buttonState == ButtonState.Pushed)
		{
			if (base.Style == VisualStyle.OfficeXP)
			{
				return MenuColors.PressedSelColor;
			}
			return Office2003Colors.PressedSelColor;
		}
		if (mouseOver)
		{
			if (base.Style == VisualStyle.OfficeXP)
			{
				return MenuColors.SelColor;
			}
			return Office2003Colors.SelColor;
		}
		try
		{
			return base.Parent.Parent.BackColor;
		}
		catch
		{
			return SystemColors.Control;
		}
	}

	protected override void DrawStyledControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		if (base.Bounds.Width <= 0 || base.Bounds.Height <= 0)
		{
			return;
		}
		if (!transparent)
		{
			if (base.Style != VisualStyle.Office2007)
			{
				g.FillRectangle(GetBackGroundBrush(buttonState), base.ClientRectangle);
			}
			else
			{
				Rectangle clientRectangle = base.ClientRectangle;
				if (Dock == DockStyle.Right)
				{
					clientRectangle.Offset(2, 0);
				}
				else if (Dock == DockStyle.Left)
				{
					clientRectangle.Offset(1, 0);
				}
				clientRectangle.Width -= 3;
				clientRectangle.Height--;
				g.FillRectangle(GetBackGroundBrush(buttonState), clientRectangle);
			}
		}
		Point[] comboDropDownBorderBounds = GetComboDropDownBorderBounds(base.ClientRectangle);
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(comboDropDownBorderBounds);
		Color empty = Color.Empty;
		if (base.Style != VisualStyle.Office2007)
		{
			empty = SystemColors.ControlText;
			if (buttonState == ButtonState.Pushed)
			{
				empty = SystemColors.Window;
			}
			g.DrawRectangle(GetBorderPen(buttonState), new Rectangle(0, 0, base.Width - 1, base.Height - 1));
		}
		else
		{
			empty = ArrowColor;
			if (Dock == DockStyle.Right)
			{
				g.DrawLine(GetBorderPen(buttonState), new Point(0, 0), new Point(0, base.Bottom));
			}
			else if (Dock == DockStyle.Left)
			{
				g.DrawLine(GetBorderPen(buttonState), new Point(base.Right - 1, 0), new Point(base.Right - 1, base.Bottom));
			}
		}
		if (!base.Enabled)
		{
			empty = SystemColors.GrayText;
		}
		g.FillRegion(new SolidBrush(empty), new Region(graphicsPath));
	}

	protected virtual Pen GetBorderPen(ButtonState buttonState)
	{
		return new Pen(base.FlatColor);
	}

	protected virtual Brush GetBackGroundBrush(ButtonState buttonState)
	{
		return new SolidBrush(GetBackColor(buttonState));
	}

	private float GetComboDropDownArrowWidth()
	{
		float num = 7f;
		int num2 = (int)num;
		if (num2 % 2 == 0)
		{
			num += 1f;
		}
		return num;
	}

	private float GetComboDropDownArrowHeight()
	{
		return (int)GetComboDropDownArrowWidth() / 2 + 1;
	}

	private Point[] GetComboDropDownBorderBounds(Rectangle btnBounds)
	{
		int arWidth = (int)GetComboDropDownArrowWidth();
		int arHeight = (int)GetComboDropDownArrowHeight();
		return GetComboDropDownBorderBounds(btnBounds, arWidth, arHeight);
	}

	private Point[] GetComboDropDownBorderBounds(Rectangle btnBounds, int arWidth, int arHeight)
	{
		int num = 0;
		int num2 = 0;
		if (sButton == ScrollButton.Up || sButton == ScrollButton.Down)
		{
			num = btnBounds.Left + (btnBounds.Width - arWidth) / 2;
			num2 = btnBounds.Top + (btnBounds.Height - arHeight) / 2;
			if (base.Style == VisualStyle.Office2007)
			{
				num++;
			}
		}
		else
		{
			num = btnBounds.Left + (btnBounds.Width - arHeight) / 2;
			num2 = btnBounds.Top + (btnBounds.Height - arWidth) / 2;
		}
		Rectangle empty = Rectangle.Empty;
		empty = ((sButton != ScrollButton.Up && sButton != ScrollButton.Down) ? new Rectangle(num, num2, arHeight, arWidth) : new Rectangle(num, num2, arWidth, arHeight));
		Point[] result = new Point[0];
		switch (sButton)
		{
		case ScrollButton.Down:
			result = new Point[4]
			{
				new Point(empty.Left, empty.Top),
				new Point(empty.Right, empty.Top),
				new Point(num + arWidth / 2, empty.Bottom),
				new Point(empty.Left, empty.Top)
			};
			break;
		case ScrollButton.Left:
			result = new Point[4]
			{
				new Point(empty.Right, empty.Top),
				new Point(empty.Right, empty.Bottom),
				new Point(num, num2 + empty.Height / 2),
				new Point(empty.Right, empty.Top - 1)
			};
			break;
		case ScrollButton.Right:
			result = new Point[4]
			{
				new Point(empty.Left, empty.Top),
				new Point(empty.Left, empty.Bottom),
				new Point(empty.Right, num2 + empty.Height / 2),
				new Point(empty.Left, empty.Top - 1)
			};
			break;
		case ScrollButton.Up:
			result = new Point[4]
			{
				new Point(empty.Left, empty.Bottom),
				new Point(empty.Right, empty.Bottom),
				new Point(num + arWidth / 2, empty.Top - 1),
				new Point(empty.Left - 1, empty.Bottom)
			};
			break;
		}
		return result;
	}
}
