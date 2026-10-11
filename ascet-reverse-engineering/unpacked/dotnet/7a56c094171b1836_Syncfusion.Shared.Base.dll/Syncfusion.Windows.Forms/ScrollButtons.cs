using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
[DocumentationExclude]
public class ScrollButtons : ThemedControl
{
	private const float DEF_SELECTIONCOLOR_PERCENT = 0.3f;

	private const float DEF_BACKCOLOR_PERCENT = 1.3f;

	private bool m_bIsReverseGradient;

	private ButtonID pushed;

	private ButtonID captured;

	private Timer timer = new Timer();

	private int timerInterval;

	private ButtonID tracking;

	private bool vsLikeScrollButton;

	private ThemedScrollButtonDrawing themedDrawing;

	private VisualStyle m_style;

	private Brush m_backgroundBrush;

	private int m_gradientOffset;

	private Office2007Theme m_Office2007ColorScheme;

	protected Office2007Colors m_office2007ColorTable;

	protected Color m_arrowColor = Color.FromArgb(0, 21, 110);

	private ScrollButtonAppearance scrollAppearence = ScrollButtonAppearance.Horizontal;

	private ButtonState buttonState;

	private bool maxButtonActive = true;

	private bool minButtonActive = true;

	private bool m_bSelected;

	public Brush BackGroundBrush
	{
		get
		{
			return m_backgroundBrush;
		}
		set
		{
			if (m_backgroundBrush != value)
			{
				m_backgroundBrush = value;
			}
		}
	}

	public ButtonID Tracking
	{
		get
		{
			return tracking;
		}
		set
		{
			if (value != tracking)
			{
				tracking = value;
			}
		}
	}

	public bool IsReverseGradient
	{
		get
		{
			return m_bIsReverseGradient;
		}
		set
		{
			if (value != m_bIsReverseGradient)
			{
				m_bIsReverseGradient = value;
			}
		}
	}

	public VisualStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			if (value != m_style)
			{
				m_style = value;
				if (m_style == VisualStyle.Office2007)
				{
					m_office2007ColorTable = Office2007Colors.GetColorTable(m_Office2007ColorScheme);
				}
				Invalidate();
			}
		}
	}

	public ScrollButtonAppearance ScrollButtonAppearance
	{
		get
		{
			return scrollAppearence;
		}
		set
		{
			if (scrollAppearence != value)
			{
				scrollAppearence = value;
				OnAlignmentChanged();
			}
		}
	}

	public ButtonState ButtonState
	{
		get
		{
			return buttonState;
		}
		set
		{
			buttonState = value;
		}
	}

	public bool MaxButtonActive
	{
		get
		{
			return maxButtonActive;
		}
		set
		{
			if (maxButtonActive != value)
			{
				maxButtonActive = value;
				if (!maxButtonActive)
				{
					EndButtonPress();
				}
				Invalidate();
			}
		}
	}

	public bool MinButtonActive
	{
		get
		{
			return minButtonActive;
		}
		set
		{
			if (minButtonActive != value)
			{
				minButtonActive = value;
				if (!minButtonActive)
				{
					EndButtonPress();
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	public bool VSLikeButton
	{
		get
		{
			return vsLikeScrollButton;
		}
		set
		{
			vsLikeScrollButton = value;
			Invalidate();
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

	[Browsable(true)]
	[Category("Appearance")]
	[Description("Specifies color scheme for the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_Office2007ColorScheme;
		}
		set
		{
			if (m_Office2007ColorScheme != value)
			{
				m_Office2007ColorScheme = value;
				if (Style == VisualStyle.Office2007)
				{
					m_office2007ColorTable = Office2007Colors.GetColorTable(m_Office2007ColorScheme);
					Invalidate();
				}
			}
		}
	}

	public int GradientInflateOffset
	{
		get
		{
			return m_gradientOffset;
		}
		set
		{
			if (value != m_gradientOffset)
			{
				m_gradientOffset = value;
			}
		}
	}

	public event UpDownEventHandler UpDown;

	protected virtual void OnAlignmentChanged()
	{
	}

	public ScrollButtons()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		timer.Tick += TimerHandler;
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedScrollButtonDrawing(this);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_backgroundBrush = null;
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
		}
		timer.Tick -= TimerHandler;
		base.Dispose(disposing);
	}

	protected virtual void OnUpDown(UpDownEventArgs upevent)
	{
		if (this.UpDown != null)
		{
			this.UpDown(this, upevent);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (vsLikeScrollButton)
		{
			OnPaint2D(e);
		}
		else
		{
			OnPaint3D(e);
		}
	}

	private static Color BlendColor(Color selectionColor, Color backColor)
	{
		return Color.FromArgb((int)((0.3f * (float)(int)selectionColor.R + (float)(int)backColor.R) / 1.3f), (int)((0.3f * (float)(int)selectionColor.G + (float)(int)backColor.G) / 1.3f), (int)((0.3f * (float)(int)selectionColor.B + (float)(int)backColor.B) / 1.3f));
	}

	protected virtual void OnPaint2D(PaintEventArgs e)
	{
		_ = base.ClientSize.Height / 2;
		Graphics graphics = e.Graphics;
		if (m_backgroundBrush != null)
		{
			graphics.FillRectangle(m_backgroundBrush, base.ClientRectangle);
		}
		ScrollButton scroll;
		ScrollButton scroll2;
		if (ScrollButtonAppearance == ScrollButtonAppearance.Horizontal)
		{
			scroll = ScrollButton.Left;
			scroll2 = ScrollButton.Right;
		}
		else
		{
			scroll = ScrollButton.Up;
			scroll2 = ScrollButton.Down;
		}
		if (tracking == ButtonID.Up)
		{
			if (minButtonActive)
			{
				DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scroll, ButtonState.Checked | buttonState);
			}
			else
			{
				DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scroll, ButtonState.Inactive | buttonState);
			}
		}
		else if (tracking == ButtonID.Down)
		{
			if (maxButtonActive)
			{
				DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scroll2, ButtonState.Checked | buttonState);
			}
			else
			{
				DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scroll2, ButtonState.Inactive | buttonState);
			}
		}
		if (pushed == ButtonID.Up)
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scroll, ButtonState.Pushed | buttonState);
		}
		else if (minButtonActive)
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scroll, buttonState);
		}
		else
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scroll, buttonState | ButtonState.Inactive);
		}
		if (pushed == ButtonID.Down)
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scroll2, ButtonState.Pushed | buttonState);
		}
		else if (maxButtonActive)
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scroll2, buttonState);
		}
		else
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scroll2, buttonState | ButtonState.Inactive);
		}
	}

	protected virtual void DrawOffice2007ScrollButtonBackground(Graphics g, Rectangle rect, ButtonState buttonState)
	{
		Brush brush;
		if (base.Enabled)
		{
			Blend blend = new Blend();
			Color color = Color.Empty;
			Color color2 = Color.Empty;
			if ((buttonState & ButtonState.Pushed) > ButtonState.Normal)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownSelectedLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownSelectedDarkColor;
			}
			else if (buttonState == ButtonState.Checked)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownHighLightLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownHighLightDarkColor;
			}
			else if (Selected)
			{
				color = m_office2007ColorTable.DataTimePickerDropDownLightColor;
				color2 = m_office2007ColorTable.DataTimePickerDropDownDarkColor;
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
			brush = new LinearGradientBrush(rect, color, color2, LinearGradientMode.Vertical);
			(brush as LinearGradientBrush).Blend = blend;
		}
		else
		{
			brush = new SolidBrush(BackColor);
		}
		g.FillRectangle(brush, rect);
	}

	protected virtual void DrawOffice2007ScrollButtonArrow(Graphics g, Rectangle rect, ScrollButton scroll, ButtonState buttonState)
	{
		if (!VSLikeButton)
		{
			using (GraphicsPath graphicsPath = new GraphicsPath())
			{
				Point[] array = new Point[0];
				graphicsPath.AddLines(scroll switch
				{
					ScrollButton.Up => new Point[3]
					{
						new Point(rect.Width / 2 - 2, rect.Height / 2 + 2),
						new Point(rect.Width / 2, rect.Height / 2 - 1),
						new Point(rect.Width / 2 + 2, rect.Height / 2 + 2)
					}, 
					ScrollButton.Down => new Point[3]
					{
						new Point(rect.Width / 2 - 1, rect.Height + rect.Height / 2),
						new Point(rect.Width / 2, rect.Height + rect.Height / 2 + 2),
						new Point(rect.Width / 2 + 2, rect.Height + rect.Height / 2)
					}, 
					ScrollButton.Left => new Point[3]
					{
						new Point(rect.Width / 2 + 2, rect.Height / 2 - 2),
						new Point(rect.Width / 2, rect.Height / 2),
						new Point(rect.Width / 2 + 2, rect.Height / 2 + 2)
					}, 
					_ => new Point[3]
					{
						new Point(rect.Width + rect.Width / 2, rect.Height / 2 - 2),
						new Point(rect.Width + rect.Width / 2 + 2, rect.Height / 2),
						new Point(rect.Width + rect.Width / 2, rect.Height / 2 + 2)
					}, 
				});
				using Brush brush = new SolidBrush(m_arrowColor);
				g.FillPath(brush, graphicsPath);
				return;
			}
		}
		DrawVSLikeButtonArrow(g, rect, scroll, Office2007Colors.GetColorTable(Office2007ColorScheme).TabScrollArrowColor, buttonState);
	}

	protected virtual void DrawVSLikeButtonArrow(Graphics g, Rectangle rect, ScrollButton scroll, Color arrowColor, ButtonState buttonState)
	{
		if ((buttonState & ButtonState.Inactive) == 0)
		{
			using (GraphicsPath path = GetNormalArrowPath(rect, scroll == ScrollButton.Up || scroll == ScrollButton.Left))
			{
				using SolidBrush brush = new SolidBrush(arrowColor);
				g.FillPath(brush, path);
				return;
			}
		}
		using GraphicsPath path2 = GetInactiveArrowPath(rect, scroll == ScrollButton.Up || scroll == ScrollButton.Left);
		using Pen pen = new Pen(arrowColor);
		g.DrawPath(pen, path2);
	}

	protected virtual void DrawScrollButton(Graphics g, Rectangle rect, ScrollButton scroll, ButtonState buttonState)
	{
		if (!base.Enabled)
		{
			buttonState |= ButtonState.Inactive;
		}
		if (Style == VisualStyle.Office2007)
		{
			DrawOffice2007ScrollButtonBackground(g, rect, buttonState);
		}
		if ((buttonState & ButtonState.Pushed) > ButtonState.Normal)
		{
			if (Style != VisualStyle.Office2007)
			{
				Pen pen = new Pen(SystemColors.ControlDarkDark);
				g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom - 1);
				g.DrawLine(pen, rect.Left, rect.Top, rect.Right - 1, rect.Top);
			}
			else
			{
				DrawOffice2007Border(g, rect, scroll, buttonState);
			}
		}
		else if (tracking != ButtonID.None && (buttonState & ButtonState.Inactive) == 0)
		{
			bool flag = false;
			switch (tracking)
			{
			case ButtonID.Down:
				if (scroll == ScrollButton.Right || scroll == ScrollButton.Down)
				{
					flag = true;
				}
				break;
			case ButtonID.Up:
				if (scroll == ScrollButton.Up || scroll == ScrollButton.Left)
				{
					flag = true;
				}
				break;
			}
			if (flag)
			{
				if (Style == VisualStyle.Office2007)
				{
					DrawOffice2007Border(g, rect, scroll, buttonState);
				}
				else if (Style == VisualStyle.VS2010)
				{
					Color.FromArgb(111, 119, 118);
					Color.FromArgb(79, 95, 116);
					using (Brush brush = new SolidBrush(Color.FromArgb(255, 252, 244)))
					{
						g.FillRectangle(brush, rect);
					}
					using Pen pen2 = new Pen(Color.FromArgb(229, 195, 101));
					Rectangle rect2 = new Rectangle(rect.X, rect.Y, rect.Width - 1, rect.Height - 1);
					g.DrawRectangle(pen2, rect2);
				}
				else
				{
					Pen pen3 = new Pen(SystemColors.ControlLightLight);
					Pen pen4 = new Pen(SystemColors.ControlDarkDark);
					g.DrawLine(pen3, rect.Left, rect.Top, rect.Left, rect.Bottom - 1);
					g.DrawLine(pen3, rect.Left, rect.Top, rect.Right - 1, rect.Top);
					g.DrawLine(pen4, rect.Right - 1, rect.Top + 1, rect.Right - 1, rect.Bottom - 1);
					g.DrawLine(pen4, rect.Right - 1, rect.Bottom - 1, rect.Left, rect.Bottom - 1);
				}
			}
		}
		else if (Selected && Style == VisualStyle.Office2007)
		{
			DrawOffice2007Border(g, rect, scroll, buttonState);
		}
		if (Style != VisualStyle.Office2007)
		{
			switch (scroll)
			{
			case ScrollButton.Left:
				rect = new Rectangle(rect.Left + (rect.Width - 6) / 2, rect.Top + (rect.Height - 11) / 2, 6, 11);
				if (Style == VisualStyle.VS2010)
				{
					DrawScrollImage(image: (tracking != ButtonID.Up || (buttonState & ButtonState.Inactive) != ButtonState.Normal) ? (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.VS2010LeftFilled : ScrollImages.VS2010LeftOut) : (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.leftFilled : ScrollImages.leftOut), g: g, rect: rect);
					break;
				}
				DrawScrollImage(g, rect, ((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.leftFilled : ScrollImages.leftOut);
				break;
			case ScrollButton.Right:
				rect = new Rectangle(rect.Right - 7 - (rect.Width - 6) / 2, rect.Top + (rect.Height - 11) / 2, 6, 11);
				if (Style == VisualStyle.VS2010)
				{
					DrawScrollImage(image: (tracking != ButtonID.Down || (buttonState & ButtonState.Inactive) != ButtonState.Normal) ? (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.VS2010RightFilled : ScrollImages.VS2010RightOut) : (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.rightFilled : ScrollImages.rightOut), g: g, rect: rect);
					break;
				}
				DrawScrollImage(g, rect, ((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.rightFilled : ScrollImages.rightOut);
				break;
			case ScrollButton.Up:
				rect = new Rectangle(rect.Left + (rect.Width - 11) / 2, rect.Top + (rect.Height - 6) / 2, 11, 6);
				if (Style == VisualStyle.VS2010)
				{
					DrawScrollImage(image: (tracking != ButtonID.Up || (buttonState & ButtonState.Inactive) != ButtonState.Normal) ? (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.VS2010UpFilled : ScrollImages.VS2010UpOut) : (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.upFilled : ScrollImages.upOut), g: g, rect: rect);
					break;
				}
				DrawScrollImage(g, rect, ((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.upFilled : ScrollImages.upOut);
				break;
			case ScrollButton.Down:
				rect = new Rectangle(rect.Left + (rect.Width - 11) / 2, rect.Bottom - 7 - (rect.Height - 6) / 2, 11, 6);
				if (Style == VisualStyle.VS2010)
				{
					DrawScrollImage(image: (tracking != ButtonID.Down || (buttonState & ButtonState.Inactive) != ButtonState.Normal) ? (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.VS2010DownFilled : ScrollImages.VS2010DownOut) : (((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.downFilled : ScrollImages.downOut), g: g, rect: rect);
					break;
				}
				DrawScrollImage(g, rect, ((buttonState & ButtonState.Inactive) == 0) ? ScrollImages.downFilled : ScrollImages.downOut);
				break;
			}
		}
		else
		{
			DrawOffice2007ScrollButtonArrow(g, rect, scroll, buttonState);
		}
	}

	private GraphicsPath GetNormalArrowPath(Rectangle scrollRect, bool upScroll)
	{
		Point[] points;
		if (ScrollButtonAppearance == ScrollButtonAppearance.Vertical)
		{
			Point location = new Point(scrollRect.X + scrollRect.Width / 2 - 4, scrollRect.Y + scrollRect.Height / 2 - 2);
			Size size = new Size(9, 5);
			Rectangle rectangle = new Rectangle(location, size);
			points = ((!upScroll) ? new Point[19]
			{
				new Point(rectangle.Left + 9, rectangle.Top),
				new Point(rectangle.Left + 9, rectangle.Top + 1),
				new Point(rectangle.Left + 8, rectangle.Top + 1),
				new Point(rectangle.Left + 8, rectangle.Top + 2),
				new Point(rectangle.Left + 7, rectangle.Top + 2),
				new Point(rectangle.Left + 7, rectangle.Top + 3),
				new Point(rectangle.Left + 6, rectangle.Top + 3),
				new Point(rectangle.Left + 6, rectangle.Top + 4),
				new Point(rectangle.Left + 5, rectangle.Top + 4),
				new Point(rectangle.Left + 5, rectangle.Top + 5),
				new Point(rectangle.Left + 4, rectangle.Top + 5),
				new Point(rectangle.Left + 4, rectangle.Top + 4),
				new Point(rectangle.Left + 3, rectangle.Top + 4),
				new Point(rectangle.Left + 3, rectangle.Top + 3),
				new Point(rectangle.Left + 2, rectangle.Top + 3),
				new Point(rectangle.Left + 2, rectangle.Top + 2),
				new Point(rectangle.Left + 1, rectangle.Top + 2),
				new Point(rectangle.Left + 1, rectangle.Top + 1),
				new Point(rectangle.Left, rectangle.Top)
			} : new Point[20]
			{
				new Point(rectangle.Left + 4, rectangle.Top),
				new Point(rectangle.Left + 4, rectangle.Top + 1),
				new Point(rectangle.Left + 5, rectangle.Top + 1),
				new Point(rectangle.Left + 5, rectangle.Top + 2),
				new Point(rectangle.Left + 6, rectangle.Top + 2),
				new Point(rectangle.Left + 6, rectangle.Top + 3),
				new Point(rectangle.Left + 7, rectangle.Top + 3),
				new Point(rectangle.Left + 7, rectangle.Top + 4),
				new Point(rectangle.Left + 8, rectangle.Top + 4),
				new Point(rectangle.Left + 8, rectangle.Top + 5),
				new Point(rectangle.Left + 9, rectangle.Top + 5),
				new Point(rectangle.Left, rectangle.Top + 6),
				new Point(rectangle.Left, rectangle.Top + 5),
				new Point(rectangle.Left + 1, rectangle.Top + 5),
				new Point(rectangle.Left + 1, rectangle.Top + 4),
				new Point(rectangle.Left + 2, rectangle.Top + 4),
				new Point(rectangle.Left + 2, rectangle.Top + 3),
				new Point(rectangle.Left + 3, rectangle.Top + 3),
				new Point(rectangle.Left + 3, rectangle.Top + 2),
				new Point(rectangle.Left + 4, rectangle.Top + 2)
			});
		}
		else
		{
			Point location = new Point(scrollRect.X + scrollRect.Width / 2 - 2, scrollRect.Y + scrollRect.Height / 2 - 4);
			Size size = new Size(5, 9);
			Rectangle rectangle = new Rectangle(location, size);
			points = ((!upScroll) ? new Point[20]
			{
				new Point(rectangle.Left, rectangle.Top + 9),
				new Point(rectangle.Left + 1, rectangle.Top + 9),
				new Point(rectangle.Left + 1, rectangle.Top + 8),
				new Point(rectangle.Left + 2, rectangle.Top + 8),
				new Point(rectangle.Left + 2, rectangle.Top + 7),
				new Point(rectangle.Left + 3, rectangle.Top + 7),
				new Point(rectangle.Left + 3, rectangle.Top + 6),
				new Point(rectangle.Left + 4, rectangle.Top + 6),
				new Point(rectangle.Left + 4, rectangle.Top + 5),
				new Point(rectangle.Left + 5, rectangle.Top + 5),
				new Point(rectangle.Left + 5, rectangle.Top + 4),
				new Point(rectangle.Left + 4, rectangle.Top + 4),
				new Point(rectangle.Left + 4, rectangle.Top + 3),
				new Point(rectangle.Left + 3, rectangle.Top + 3),
				new Point(rectangle.Left + 3, rectangle.Top + 2),
				new Point(rectangle.Left + 2, rectangle.Top + 2),
				new Point(rectangle.Left + 2, rectangle.Top + 1),
				new Point(rectangle.Left + 1, rectangle.Top + 1),
				new Point(rectangle.Left + 1, rectangle.Top),
				new Point(rectangle.Left, rectangle.Top)
			} : new Point[20]
			{
				new Point(rectangle.Left, rectangle.Top + 4),
				new Point(rectangle.Left + 1, rectangle.Top + 4),
				new Point(rectangle.Left + 1, rectangle.Top + 5),
				new Point(rectangle.Left + 2, rectangle.Top + 5),
				new Point(rectangle.Left + 2, rectangle.Top + 6),
				new Point(rectangle.Left + 3, rectangle.Top + 6),
				new Point(rectangle.Left + 3, rectangle.Top + 7),
				new Point(rectangle.Left + 4, rectangle.Top + 7),
				new Point(rectangle.Left + 4, rectangle.Top + 8),
				new Point(rectangle.Left + 5, rectangle.Top + 8),
				new Point(rectangle.Left + 5, rectangle.Top + 9),
				new Point(rectangle.Left + 6, rectangle.Top),
				new Point(rectangle.Left + 5, rectangle.Top),
				new Point(rectangle.Left + 5, rectangle.Top + 1),
				new Point(rectangle.Left + 4, rectangle.Top + 1),
				new Point(rectangle.Left + 4, rectangle.Top + 2),
				new Point(rectangle.Left + 3, rectangle.Top + 2),
				new Point(rectangle.Left + 3, rectangle.Top + 3),
				new Point(rectangle.Left + 2, rectangle.Top + 3),
				new Point(rectangle.Left + 2, rectangle.Top + 4)
			});
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private GraphicsPath GetInactiveArrowPath(Rectangle scrollRect, bool upScroll)
	{
		Point[] points;
		if (ScrollButtonAppearance == ScrollButtonAppearance.Vertical)
		{
			Point location = new Point(scrollRect.X + scrollRect.Width / 2 - 4, scrollRect.Y + scrollRect.Height / 2 - 2);
			Size size = new Size(9, 5);
			Rectangle rectangle = new Rectangle(location, size);
			points = ((!upScroll) ? new Point[4]
			{
				new Point(rectangle.Left + 4, rectangle.Top + 4),
				new Point(rectangle.Left + 8, rectangle.Top),
				new Point(rectangle.Left, rectangle.Top),
				new Point(rectangle.Left + 4, rectangle.Top + 4)
			} : new Point[4]
			{
				new Point(rectangle.Left + 4, rectangle.Top + 1),
				new Point(rectangle.Left + 8, rectangle.Top + 5),
				new Point(rectangle.Left, rectangle.Top + 5),
				new Point(rectangle.Left + 4, rectangle.Top + 1)
			});
		}
		else
		{
			Point location = new Point(scrollRect.X + scrollRect.Width / 2 - 2, scrollRect.Y + scrollRect.Height / 2 - 4);
			Size size = new Size(5, 9);
			Rectangle rectangle = new Rectangle(location, size);
			points = ((!upScroll) ? new Point[4]
			{
				new Point(rectangle.Left + 4, rectangle.Top + 4),
				new Point(rectangle.Left, rectangle.Top),
				new Point(rectangle.Left, rectangle.Top + 8),
				new Point(rectangle.Left + 4, rectangle.Top + 4)
			} : new Point[4]
			{
				new Point(rectangle.Left + 1, rectangle.Top + 4),
				new Point(rectangle.Left + 5, rectangle.Top),
				new Point(rectangle.Left + 5, rectangle.Top + 8),
				new Point(rectangle.Left + 1, rectangle.Top + 4)
			});
		}
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		return graphicsPath;
	}

	private void DrawOffice2007Border(Graphics g, Rectangle rect, ScrollButton scroll, ButtonState state)
	{
		Pen pen = new Pen(Color.White);
		if ((state & ButtonState.Pushed) > ButtonState.Normal)
		{
			pen = new Pen(m_office2007ColorTable.DataTimePickerSelectedBorderColor);
		}
		else if ((tracking != ButtonID.None || base.Parent.Focused) && (state & ButtonState.Inactive) == 0)
		{
			pen = new Pen(m_office2007ColorTable.DataTimePickerHighLightedBorderColor);
		}
		else if (Selected)
		{
			pen = new Pen(m_office2007ColorTable.DataTimePickerBorderColor);
		}
		switch (scroll)
		{
		case ScrollButton.Up:
			if (Dock == DockStyle.Right)
			{
				g.DrawLine(pen, rect.Left, rect.Top, rect.Left, rect.Bottom - 1);
				g.DrawLine(pen, rect.Left, rect.Bottom - 1, rect.Right - 1, rect.Bottom - 1);
			}
			else if (Dock == DockStyle.Left)
			{
				g.DrawLine(pen, rect.Right - 1, rect.Top, rect.Right - 1, rect.Bottom - 1);
				g.DrawLine(pen, rect.Left, rect.Bottom - 1, rect.Right - 1, rect.Bottom - 1);
			}
			break;
		case ScrollButton.Down:
			if (Dock == DockStyle.Right)
			{
				g.DrawLine(pen, rect.Left, rect.Top + 1, rect.Left, rect.Bottom);
				g.DrawLine(pen, rect.Left, rect.Top + 1, rect.Right - 1, rect.Top + 1);
			}
			else if (Dock == DockStyle.Left)
			{
				g.DrawLine(pen, rect.Right - 1, rect.Top + 1, rect.Right - 1, rect.Bottom);
				g.DrawLine(pen, rect.Left, rect.Top + 1, rect.Right - 1, rect.Top + 1);
			}
			break;
		}
	}

	protected void DrawScrollImage(Graphics g, Rectangle rect, Image image)
	{
		g.DrawImage(image, rect);
	}

	protected void DrawTriangle(Graphics g, Point[] bounds, bool fill)
	{
		if (fill)
		{
			byte[] types = new byte[3] { 0, 1, 1 };
			GraphicsPath path = new GraphicsPath(bounds, types);
			g.FillPath(new SolidBrush(SystemColors.ControlDarkDark), path);
		}
		else
		{
			g.DrawLine(new Pen(SystemColors.ControlDarkDark), bounds[0], bounds[1]);
			g.DrawLine(new Pen(SystemColors.ControlDarkDark), bounds[1], bounds[2]);
			g.DrawLine(new Pen(SystemColors.ControlDarkDark), bounds[2], bounds[0]);
		}
	}

	protected virtual void OnPaint3D(PaintEventArgs e)
	{
		_ = base.ClientSize.Height / 2;
		Graphics graphics = e.Graphics;
		graphics.FillRectangle(new SolidBrush(BackColor), base.ClientRectangle);
		ScrollButton scrollButton;
		ScrollButton scrollButton2;
		if (ScrollButtonAppearance == ScrollButtonAppearance.Horizontal)
		{
			scrollButton = ScrollButton.Left;
			scrollButton2 = ScrollButton.Right;
		}
		else
		{
			scrollButton = ScrollButton.Up;
			scrollButton2 = ScrollButton.Down;
		}
		ButtonState buttonState = ((pushed == ButtonID.Up) ? (ButtonState.Pushed | this.buttonState) : ((!minButtonActive) ? (this.buttonState | ButtonState.Inactive) : this.buttonState));
		ButtonState buttonState2 = ((pushed == ButtonID.Down) ? (ButtonState.Pushed | this.buttonState) : ((!maxButtonActive) ? (this.buttonState | ButtonState.Inactive) : this.buttonState));
		if (!base.Enabled)
		{
			buttonState |= ButtonState.Inactive;
			buttonState2 |= ButtonState.Inactive;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			if (tracking != ButtonID.None)
			{
				if (tracking == ButtonID.Down)
				{
					UpdateButtonStateForThemedDrawing(ref buttonState2);
				}
				else
				{
					UpdateButtonStateForThemedDrawing(ref buttonState);
				}
			}
			themedDrawing.DrawScrollButton(e.Graphics, GetButtonRect(ButtonID.Up), ButtonID.Up, ScrollButtonAppearance, buttonState);
			themedDrawing.DrawScrollButton(e.Graphics, GetButtonRect(ButtonID.Down), ButtonID.Down, ScrollButtonAppearance, buttonState2);
		}
		else if (Style == VisualStyle.Office2007)
		{
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scrollButton, buttonState);
			DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scrollButton2, buttonState2);
		}
		else
		{
			ControlPaint.DrawScrollButton(graphics, GetButtonRect(ButtonID.Up), scrollButton, buttonState);
			ControlPaint.DrawScrollButton(graphics, GetButtonRect(ButtonID.Down), scrollButton2, buttonState2);
		}
	}

	private void UpdateButtonStateForThemedDrawing(ref ButtonState state)
	{
		state &= ~ButtonState.Flat;
		state = state;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			EndButtonPress();
		}
	}

	protected virtual Rectangle GetButtonRect(ButtonID buttonID)
	{
		Rectangle empty = Rectangle.Empty;
		empty = base.ClientRectangle;
		if (ScrollButtonAppearance == ScrollButtonAppearance.Horizontal)
		{
			if (buttonID == ButtonID.Up)
			{
				empty.Width /= 2;
			}
			else
			{
				empty = new Rectangle(empty.Left + empty.Width / 2, empty.Top, empty.Width / 2, empty.Height);
			}
		}
		else if (buttonID == ButtonID.Up)
		{
			empty.Height /= 2;
		}
		else
		{
			empty = new Rectangle(empty.Left, empty.Top + empty.Height / 2, empty.Width, empty.Height / 2);
		}
		return empty;
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (base.Capture)
		{
			if (GetButtonRect(captured).Contains(e.X, e.Y))
			{
				if (pushed == captured)
				{
					return;
				}
				StartTimer();
				pushed = captured;
			}
			else
			{
				if (pushed == ButtonID.None)
				{
					return;
				}
				StopTimer();
				pushed = ButtonID.None;
			}
			Invalidate();
		}
		else
		{
			ButtonID buttonID = tracking;
			if (GetButtonRect(ButtonID.Up).Contains(e.X, e.Y))
			{
				tracking = ButtonID.Up;
			}
			else if (GetButtonRect(ButtonID.Down).Contains(e.X, e.Y))
			{
				tracking = ButtonID.Down;
			}
			else
			{
				tracking = ButtonID.None;
			}
			if (buttonID != tracking)
			{
				Invalidate();
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		tracking = ButtonID.None;
		Invalidate();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		tracking = ButtonID.None;
		if (e.Button == MouseButtons.Left)
		{
			BeginButtonPress(e);
			Invalidate();
		}
	}

	private void BeginButtonPress(MouseEventArgs e)
	{
		Rectangle buttonRect = GetButtonRect(ButtonID.Up);
		Point pt = new Point(e.X, e.Y);
		bool flag = false;
		if (buttonRect.Contains(pt))
		{
			if (minButtonActive)
			{
				captured = ButtonID.Up;
				pushed = ButtonID.Up;
				flag = true;
			}
		}
		else if (maxButtonActive)
		{
			captured = ButtonID.Down;
			pushed = ButtonID.Down;
			flag = true;
		}
		if (flag)
		{
			Invalidate();
			base.Capture = true;
			OnUpDown(new UpDownEventArgs((int)pushed));
			StartTimer();
		}
	}

	private void EndButtonPress()
	{
		pushed = ButtonID.None;
		captured = ButtonID.None;
		StopTimer();
		base.Capture = false;
		Invalidate();
	}

	protected void StartTimer()
	{
		timerInterval = 500;
		timer.Interval = timerInterval;
		timer.Start();
	}

	protected void StopTimer()
	{
		timer.Stop();
	}

	private void TimerHandler(object source, EventArgs args)
	{
		if (!base.Capture)
		{
			EndButtonPress();
			return;
		}
		OnUpDown(new UpDownEventArgs((int)pushed));
		timerInterval *= 7;
		timerInterval /= 10;
		if (timerInterval < 1)
		{
			timerInterval = 1;
		}
		else
		{
			timer.Interval = timerInterval;
		}
	}
}
