using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class InternalButton : Component
{
	[DocumentationExclude]
	internal InternalButtonState state;

	[DocumentationExclude]
	internal bool dirty;

	[DocumentationExclude]
	internal object cookie;

	[DocumentationExclude]
	internal object owner;

	[DocumentationExclude]
	internal string tooltip = "";

	[DocumentationExclude]
	internal int tooltipID = -1;

	private Size size;

	private Rectangle bounds = Rectangle.Empty;

	private bool drawButton = true;

	private bool ignorePaint;

	private bool repeatClick = true;

	private SpinButtonType spinButtonType;

	private ThemedPushButtonDrawing themedDrawing;

	private TabBarSplitterStyle m_style;

	private Office2007Colors m_office2007ColorTable;

	private Office2007Theme m_colorScheme;

	[DocumentationExclude]
	protected ThemedPushButtonDrawing ThemedDrawing => themedDrawing;

	[Description("Specifies the style with which control will appear.")]
	[DefaultValue(TabBarSplitterStyle.Default)]
	[Category("Appearance")]
	public TabBarSplitterStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			if (m_style != value)
			{
				m_style = value;
				OnStyleChanged();
			}
		}
	}

	[Description("Gets or sets office 2007 color scheme.")]
	[Category("Appearance")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007ColorScheme
	{
		get
		{
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				OnStyleChanged();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => (m_office2007ColorTable == null) ? Office2007Colors.Default : m_office2007ColorTable;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object Owner
	{
		get
		{
			return owner;
		}
		set
		{
			if (owner != value)
			{
				owner = value;
				OnOwnerChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object Cookie
	{
		get
		{
			return cookie;
		}
		set
		{
			if (cookie != value)
			{
				dirty = true;
				cookie = value;
				OnCookieChanged();
			}
		}
	}

	public string ToolTip
	{
		get
		{
			return tooltip;
		}
		set
		{
			tooltip = value;
			if (tooltip != value)
			{
				dirty = true;
				tooltip = value;
				OnToolTipChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Rectangle Bounds
	{
		get
		{
			if (ignorePaint)
			{
				return Rectangle.Empty;
			}
			return bounds;
		}
		set
		{
			if (spinButtonType != SpinButtonType.None)
			{
				value.Height /= 2;
				if (spinButtonType == SpinButtonType.Down)
				{
					value.Y = value.Bottom;
				}
			}
			if (bounds != value)
			{
				bounds = value;
				dirty = true;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Size Size
	{
		get
		{
			return size;
		}
		set
		{
			if (size != value)
			{
				size = value;
				Dirty = true;
			}
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public SpinButtonType SpinButton
	{
		get
		{
			return spinButtonType;
		}
		set
		{
			spinButtonType = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HideButton
	{
		get
		{
			return ignorePaint;
		}
		set
		{
			ignorePaint = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool RepeatClick
	{
		get
		{
			return repeatClick;
		}
		set
		{
			repeatClick = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Dirty
	{
		get
		{
			return dirty;
		}
		set
		{
			dirty = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Enabled
	{
		get
		{
			return (state & InternalButtonState.Disabled) == 0;
		}
		set
		{
			if (value != Enabled)
			{
				if (value)
				{
					state &= ~InternalButtonState.Disabled;
				}
				else
				{
					state = InternalButtonState.Disabled | (state & InternalButtonState.Options);
				}
				dirty = true;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Hovered
	{
		get
		{
			return (state & InternalButtonState.Hovered) != 0;
		}
		set
		{
			if (Enabled && value != Hovered)
			{
				if (value)
				{
					state = InternalButtonState.Hovered | (state & InternalButtonState.Options);
				}
				else
				{
					state &= ~InternalButtonState.Hovered;
				}
				dirty = true;
				OnStateChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool Pushed
	{
		get
		{
			return (state & InternalButtonState.Pushed) != 0;
		}
		set
		{
			if (Enabled && value != Pushed)
			{
				if (value)
				{
					state = InternalButtonState.Pushed | (state & InternalButtonState.Options);
				}
				else
				{
					state &= ~InternalButtonState.Pushed;
				}
				dirty = true;
				OnStateChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Checked
	{
		get
		{
			return (state & InternalButtonState.Checked) != 0;
		}
		set
		{
			if (Enabled && value != Checked)
			{
				if (value)
				{
					state |= InternalButtonState.Checked;
				}
				else
				{
					state &= ~InternalButtonState.Checked;
				}
				dirty = true;
				OnStateChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool DragTarget
	{
		get
		{
			return (state & InternalButtonState.DragTarget) != 0;
		}
		set
		{
			if (Enabled && value != DragTarget)
			{
				if (value)
				{
					state |= InternalButtonState.DragTarget;
				}
				else
				{
					state &= ~InternalButtonState.DragTarget;
				}
				dirty = true;
				OnStateChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal ControlToolTip TooltipProvider
	{
		get
		{
			if (Owner is IControlToolTipProvider controlToolTipProvider)
			{
				return controlToolTipProvider.GetControlToolTip();
			}
			return null;
		}
	}

	public InternalButton()
	{
	}

	public InternalButton(Size size)
	{
		this.size = size;
	}

	public InternalButton(object cookie)
		: this(null, cookie, "", default(Size), drawButton: true)
	{
	}

	public InternalButton(object owner, object cookie)
		: this(owner, cookie, "", default(Size), drawButton: true)
	{
	}

	public InternalButton(object owner, object cookie, string tooltip)
		: this(owner, cookie, tooltip, default(Size), drawButton: true)
	{
	}

	public InternalButton(object owner, object cookie, string tooltip, Size size)
		: this(owner, cookie, tooltip, default(Size), drawButton: true)
	{
	}

	public InternalButton(object owner, object cookie, string tooltip, Size size, bool drawButton)
	{
		dirty = true;
		this.cookie = cookie;
		this.owner = owner;
		this.tooltip = tooltip;
		this.size = size;
		this.drawButton = drawButton;
		state = ((!drawButton) ? InternalButtonState.Disabled : InternalButtonState.Normal);
		if (XPThemes.IsThemedOS && Owner is Control)
		{
			themedDrawing = new ThemedPushButtonDrawing((IComponent)Owner);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			ResetToolTip();
			cookie = null;
			owner = null;
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
			themedDrawing = null;
		}
		base.Dispose(disposing);
	}

	public virtual Size GetPreferredSize(Size maxSize)
	{
		return maxSize;
	}

	public virtual void AdjustSize()
	{
		if (ignorePaint)
		{
			Size = default(Size);
		}
		else if (Owner is Control control && cookie is string)
		{
			string text = (string)cookie + "g";
			if (text.Length > 1)
			{
				Graphics graphics = control.CreateGraphics();
				Font font = control.Font;
				Size size = graphics.MeasureString(text, font).ToSize();
				graphics.Dispose();
				Size = size;
			}
		}
	}

	protected virtual void OnStyleChanged()
	{
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
		if (Owner is Control)
		{
			(Owner as Control).Invalidate();
		}
	}

	public ButtonState GetWinFormButtonState(bool flatLook)
	{
		ButtonState buttonState = ButtonState.Normal;
		if (!Enabled)
		{
			buttonState |= ButtonState.Inactive;
		}
		if (Pushed)
		{
			buttonState |= ButtonState.Pushed;
		}
		if (Checked)
		{
			buttonState |= ButtonState.Checked;
		}
		if (flatLook && !Hovered)
		{
			buttonState |= ButtonState.Flat;
		}
		return buttonState;
	}

	public void ResetToolTip()
	{
		TooltipProvider?.InitToolTip(ref tooltipID, "", Rectangle.Empty);
	}

	public void InitToolTip(Rectangle bounds)
	{
		TooltipProvider?.InitToolTip(ref tooltipID, ToolTip, bounds);
	}

	public static Rectangle CenterInRect(Rectangle rect, Size size)
	{
		int num = 0;
		if (size.Width < rect.Width)
		{
			num = rect.Width - size.Width;
		}
		int num2 = 0;
		if (size.Height < rect.Height)
		{
			num2 = rect.Height - size.Height;
		}
		return new Rectangle(rect.Left + num / 2, rect.Top + num2 / 2, Math.Min(size.Width, rect.Width), Math.Min(size.Height, rect.Height));
	}

	public virtual void Paint(Graphics g, Rectangle bounds, bool flatLook, Rectangle barArea)
	{
		if (ignorePaint)
		{
			return;
		}
		try
		{
			InitToolTip(Rectangle.Intersect(bounds, barArea));
			if (!g.ClipBounds.IntersectsWith(bounds))
			{
				return;
			}
			if (drawButton)
			{
				ButtonState winFormButtonState = GetWinFormButtonState(flatLook);
				if (Owner is IInternalButtonParent internalButtonParent && XPThemes.IsThemedOS && XPThemes.IsThemeActive && internalButtonParent.ThemesEnabled)
				{
					themedDrawing.DrawPushButton(g, bounds, winFormButtonState);
				}
				else
				{
					ControlPaint.DrawButton(g, bounds, winFormButtonState);
				}
				return;
			}
			Rectangle rect = Rectangle.Intersect(bounds, barArea);
			if (Owner is Control control)
			{
				Brush brush = new SolidBrush(control.BackColor);
				g.FillRectangle(brush, rect);
				brush.Dispose();
				if (cookie is string)
				{
					string text = (string)cookie;
					Brush brush2 = new SolidBrush(control.Enabled ? control.ForeColor : SystemColors.GrayText);
					Font font = control.Font;
					Size size = g.MeasureString(text, font).ToSize();
					Rectangle rectangle = CenterInRect(rect, size);
					g.DrawString(text, font, brush2, new Point(rectangle.Left, rectangle.Top));
					brush2.Dispose();
				}
			}
		}
		finally
		{
			dirty = false;
		}
	}

	public virtual void OnOwnerChanged()
	{
	}

	public virtual void OnCookieChanged()
	{
	}

	public virtual void OnStateChanged()
	{
	}

	public virtual void OnToolTipChanged()
	{
	}
}
