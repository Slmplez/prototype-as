using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
[ToolboxItem(false)]
public class MenuArrowButtonControl : Control
{
	private class MenuButtonAccessibleObject : ControlAccessibleObject
	{
		private MenuArrowButtonControl parent;

		public override AccessibleRole Role => AccessibleRole.PushButton;

		public override string Name => parent.Text;

		public override AccessibleStates State
		{
			get
			{
				AccessibleStates state = base.State;
				state = (((parent.ArrowState & ScrollArrowState.Disabled) <= (ScrollArrowState)0) ? (state | AccessibleStates.Focusable) : (state | AccessibleStates.Unavailable));
				if (parent.MouseHovering)
				{
					state |= AccessibleStates.HotTracked;
				}
				if (parent.MousePressed)
				{
					state |= AccessibleStates.Focused;
				}
				return state;
			}
		}

		public MenuButtonAccessibleObject(MenuArrowButtonControl parent)
			: base(parent)
		{
			this.parent = parent;
		}
	}

	protected ScrollArrowState scrollArrowState = ScrollArrowState.Up;

	internal MenuArrowButtonControlWeakContainer menuArrowButtonControlWeakContainer;

	private bool mousePressed;

	private VisualStyle style = VisualStyle.OfficeXP;

	private bool mouseHover;

	public ScrollArrowState ArrowState
	{
		get
		{
			return scrollArrowState;
		}
		set
		{
			if (scrollArrowState != value)
			{
				scrollArrowState = value;
				if ((scrollArrowState & ScrollArrowState.Disabled) > (ScrollArrowState)0)
				{
					MouseHovering = false;
				}
				Invalidate();
			}
		}
	}

	protected virtual bool MousePressed
	{
		get
		{
			return mousePressed;
		}
		set
		{
			if (mousePressed != value)
			{
				mousePressed = value;
				Invalidate();
			}
		}
	}

	internal VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			style = value;
		}
	}

	protected bool MouseHovering
	{
		get
		{
			return mouseHover;
		}
		set
		{
			if (mouseHover != value)
			{
				mouseHover = value;
				if (mouseHover && (scrollArrowState & ScrollArrowState.Disabled) == 0)
				{
					BackColor = GetArrowBackHighlightColor(Style);
				}
				else
				{
					BackColor = MenuColors.MenuBGColor;
				}
				Invalidate();
			}
		}
	}

	public MenuArrowButtonControl(ScrollArrowState scrollArrowState)
	{
		SetStyle(ControlStyles.UserPaint, value: true);
		BackColor = MenuColors.MenuBGColor;
		this.scrollArrowState = scrollArrowState;
		base.TabStop = false;
		menuArrowButtonControlWeakContainer = new MenuArrowButtonControlWeakContainer(this);
		MenuColors.MenuColorsChanged += menuArrowButtonControlWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += menuArrowButtonControlWeakContainer.Office2003ColorsChangedWeakEventHandler;
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		return new MenuButtonAccessibleObject(this);
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
	}

	internal void MenuColorsChanged(object sender, EventArgs e)
	{
		BackColor = MenuColors.MenuBGColor;
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		MouseHovering = false;
		MousePressed = false;
		base.OnMouseLeave(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		MouseHovering = true;
		base.OnMouseMove(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		UpdateColorScheme();
		bool scrollDown = true;
		Graphics graphics = e.Graphics;
		Rectangle clientRectangle = base.ClientRectangle;
		if ((scrollArrowState & ScrollArrowState.Up) > (ScrollArrowState)0)
		{
			scrollDown = false;
		}
		switch (Style)
		{
		case VisualStyle.Office2003:
			DrawOffice2003Arrow(graphics, clientRectangle, scrollDown);
			break;
		case VisualStyle.VS2005:
			DrawVS2005Arrow(graphics, clientRectangle, scrollDown);
			break;
		case VisualStyle.Office2007Outlook:
			DrawOffice2007OutlookArrow(graphics, clientRectangle, scrollDown);
			break;
		default:
			DrawDefaultArrow(graphics, clientRectangle, scrollDown);
			break;
		}
	}

	private Color GetArrowBackHighlightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.SelColor, 
			VisualStyle.Office2007 => MenuColors.SelColor, 
			VisualStyle.VS2005 => VS2005Colors.MenuBackground, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.MenuBackground, 
			_ => MenuColors.SelColor, 
		};
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
	}

	private Rectangle GetArrowRect(Rectangle rect)
	{
		int num = 7;
		int num2 = 8;
		return new Rectangle(rect.Left + (rect.Width - num) / 2, rect.Top + (rect.Height - num2) / 2, num, num2);
	}

	private void DrawDoubleArrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		Rectangle arrowRect = GetArrowRect(rect);
		Pen pen = new Pen(Brushes.Black, 1f);
		if ((scrollArrowState & ScrollArrowState.Disabled) > (ScrollArrowState)0)
		{
			pen = new Pen(SystemColors.InactiveCaptionText, 1f);
		}
		Point[] array = null;
		if (!scrollDown)
		{
			Point[] array2 = new Point[3]
			{
				new Point(arrowRect.Left, arrowRect.Bottom - 4),
				new Point(arrowRect.Left + arrowRect.Width / 2, arrowRect.Top),
				new Point(arrowRect.Right - 1, arrowRect.Bottom - 4)
			};
			array = array2;
		}
		else
		{
			Point[] array3 = new Point[3]
			{
				new Point(arrowRect.Left, arrowRect.Top),
				new Point(arrowRect.Left + arrowRect.Width / 2, arrowRect.Bottom - 4),
				new Point(arrowRect.Right - 1, arrowRect.Top)
			};
			array = array3;
		}
		SmoothingMode smoothingMode = g.SmoothingMode;
		g.SmoothingMode = SmoothingMode.AntiAlias;
		if (mousePressed)
		{
			array[0].Offset(1, 1);
			array[1].Offset(1, 1);
			array[2].Offset(1, 1);
		}
		g.DrawLines(pen, array);
		array[0].Offset(0, 3);
		array[1].Offset(0, 3);
		array[2].Offset(0, 3);
		g.DrawLines(pen, array);
		g.SmoothingMode = smoothingMode;
	}

	private void DrawSingleArrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		Brush brush = new SolidBrush(Color.Black);
		Rectangle arrowRect = GetArrowRect(rect);
		GraphicsPath graphicsPath = new GraphicsPath();
		Point[] array = null;
		array = ((!scrollDown) ? new Point[3]
		{
			new Point(arrowRect.Left - 1, arrowRect.Bottom),
			new Point(arrowRect.Right, arrowRect.Bottom),
			new Point(arrowRect.Left + arrowRect.Width / 2, arrowRect.Bottom - 5)
		} : new Point[3]
		{
			new Point(arrowRect.Left, arrowRect.Top),
			new Point(arrowRect.Right, arrowRect.Top),
			new Point(arrowRect.Left + arrowRect.Width / 2, arrowRect.Bottom - 4)
		});
		graphicsPath.AddLines(array);
		g.FillPath(brush, graphicsPath);
	}

	private void DrawBorder(Graphics g, Rectangle rect)
	{
		if (MouseHovering && (scrollArrowState & ScrollArrowState.Disabled) == 0)
		{
			if (!mousePressed)
			{
				ControlPaint.DrawBorder3D(g, rect, Border3DStyle.RaisedOuter, Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom);
			}
			else
			{
				ControlPaint.DrawBorder3D(g, rect, Border3DStyle.SunkenOuter, Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom);
			}
		}
	}

	private void DrawDefaultArrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		DrawBorder(g, rect);
		DrawDoubleArrow(g, rect, scrollDown);
	}

	private void DrawOffice2003Arrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		Rectangle arrowRect = GetArrowRect(rect);
		GraphicsPath graphicsPath = new GraphicsPath();
		Rectangle rect2 = arrowRect;
		rect2.Width++;
		rect2.Inflate(3, 3);
		graphicsPath.AddEllipse(rect2);
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect2, Office2003Colors.MenuMarginColorLight, Office2003Colors.MenuMarginColorDark, LinearGradientMode.ForwardDiagonal);
		g.FillPath(linearGradientBrush, graphicsPath);
		linearGradientBrush.Dispose();
		graphicsPath.Dispose();
		DrawDefaultArrow(g, rect, scrollDown);
	}

	private void DrawVS2005Arrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		DrawSingleArrow(g, rect, scrollDown);
	}

	private void DrawOffice2007OutlookArrow(Graphics g, Rectangle rect, bool scrollDown)
	{
		DrawSingleArrow(g, rect, scrollDown);
	}
}
