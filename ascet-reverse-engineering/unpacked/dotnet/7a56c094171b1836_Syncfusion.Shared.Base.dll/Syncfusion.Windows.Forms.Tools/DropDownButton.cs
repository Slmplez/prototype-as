#define TRACE
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownButton : IDisposable
{
	private readonly float[] c_backgroundColorsPositionsOffice2007 = new float[4] { 0f, 0.49f, 0.51f, 1f };

	private ThemedDropDownButtonDrawing themedDrawing;

	protected Control control;

	private Rectangle bounds;

	private bool hot;

	private bool enabled = true;

	private bool pushed;

	private ComboFlatStyle flatStyle = ComboFlatStyle.Standard;

	private Office2007Theme m_office2007ColorTheme;

	private VisualStyle editorStyle;

	private IThemedControl themedControl;

	private bool isActive;

	private bool isDroppedDown;

	private int _suspendInvalidates;

	[Category("Appearance")]
	[Description("Office 2007 color scheme.")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007ColorTheme
	{
		get
		{
			return m_office2007ColorTheme;
		}
		set
		{
			if (m_office2007ColorTheme != value)
			{
				m_office2007ColorTheme = value;
				OnStyleChanged();
			}
		}
	}

	protected bool ThemesEnabled
	{
		get
		{
			if (themedControl == null)
			{
				return false;
			}
			if (themedControl.ThemesEnabled)
			{
				return FlatStyle == ComboFlatStyle.System;
			}
			return false;
		}
	}

	protected virtual bool IsControlActive
	{
		get
		{
			if (!control.Focused)
			{
				if (IsActive && control is ComboDropDown)
				{
					return ((ComboDropDown)control).DropDownStyle == ComboBoxStyle.DropDownList;
				}
				return false;
			}
			return true;
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			if (bounds != value)
			{
				Rectangle a = bounds;
				bounds = value;
				InvalidateBounds(Rectangle.Union(a, bounds));
			}
		}
	}

	public bool IsActive
	{
		get
		{
			return isActive;
		}
		set
		{
			if (isActive != value)
			{
				isActive = value;
				InvalidateBounds(Bounds);
			}
		}
	}

	public bool IsDroppedDown
	{
		get
		{
			return isDroppedDown;
		}
		set
		{
			if (isDroppedDown != value)
			{
				isDroppedDown = value;
				if (Style == VisualStyle.Office2007)
				{
					InvalidateParentNCArea();
				}
				InvalidateBounds(Bounds);
			}
		}
	}

	public bool Hot
	{
		get
		{
			return hot;
		}
		set
		{
			if (hot != value)
			{
				hot = value;
				if (Style == VisualStyle.Office2007)
				{
					InvalidateParentNCArea();
				}
				if (Environment.OSVersion.Platform == PlatformID.Win32NT && (FlatStyle == ComboFlatStyle.Flat || (FlatStyle == ComboFlatStyle.System && XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)))
				{
					InvalidateBounds(Bounds);
				}
			}
		}
	}

	public ComboFlatStyle FlatStyle
	{
		get
		{
			return flatStyle;
		}
		set
		{
			if (flatStyle != value)
			{
				flatStyle = value;
				InvalidateBounds(Bounds);
			}
		}
	}

	public VisualStyle Style
	{
		get
		{
			return editorStyle;
		}
		set
		{
			if (editorStyle != value)
			{
				editorStyle = value;
				OnStyleChanged();
			}
		}
	}

	private Office2007Colors Office2007ColorTable => Office2007Colors.GetColorTable(Office2007ColorTheme);

	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			if (enabled != value)
			{
				enabled = value;
				InvalidateBounds(Bounds);
			}
		}
	}

	public bool Pushed
	{
		get
		{
			return pushed;
		}
		set
		{
			if (pushed != value)
			{
				pushed = value;
				if (Style == VisualStyle.Office2007)
				{
					InvalidateParentNCArea();
				}
				if (Environment.OSVersion.Platform == PlatformID.Win32NT || !IsDroppedDown)
				{
					InvalidateBounds(Bounds);
				}
				if (pushed)
				{
					OnMouseDown(EventArgs.Empty);
				}
			}
		}
	}

	public bool SuspendInvalidates
	{
		get
		{
			return _suspendInvalidates > 0;
		}
		set
		{
			if (value)
			{
				_suspendInvalidates++;
			}
			else if (SuspendInvalidates)
			{
				_suspendInvalidates--;
			}
		}
	}

	public event EventHandler MouseDown;

	public DropDownButton(Control control)
	{
		Trace.Assert(control != null, "DropDownButton constructor cannot take a NULL parameter.");
		this.control = control;
		if (this.control is IThemedControl)
		{
			themedControl = this.control as IThemedControl;
		}
		control.HandleCreated += control_HandleCreated;
		control.HandleDestroyed += control_HandleDestroyed;
		if (control.IsHandleCreated)
		{
			CreateThemedDrawing();
		}
	}

	protected virtual void OnMouseDown(EventArgs e)
	{
		if (this.MouseDown != null)
		{
			try
			{
				this.MouseDown(this, e);
			}
			catch
			{
			}
		}
	}

	protected void InvalidateBounds(Rectangle bounds)
	{
		if (!SuspendInvalidates && control.IsHandleCreated && (Environment.OSVersion.Platform == PlatformID.Win32NT || control.ContainsFocus))
		{
			control.Invalidate(bounds);
		}
	}

	private void DrawHotBackgroundOffice2007Style(Graphics g, Rectangle bounds)
	{
		using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(bounds, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
		ColorBlend colorBlend = new ColorBlend();
		colorBlend.Colors = new Color[4] { Office2007ColorTable.ComboBoxAdvHotBackgroundButtonColor1, Office2007ColorTable.ComboBoxAdvHotBackgroundButtonColor2, Office2007ColorTable.ComboBoxAdvHotBackgroundButtonColor3, Office2007ColorTable.ComboBoxAdvHotBackgroundButtonColor4 };
		colorBlend.Positions = c_backgroundColorsPositionsOffice2007;
		linearGradientBrush.InterpolationColors = colorBlend;
		g.FillRectangle(linearGradientBrush, bounds);
	}

	private void DrawOffice2007Style(Graphics g, ButtonState btState)
	{
		if (IsDroppedDown)
		{
			btState = ButtonState.Pushed;
		}
		else if (IsControlActive)
		{
			btState = ButtonState.Checked;
		}
		bool flag = control.RightToLeft == RightToLeft.Yes;
		Rectangle rect = Bounds;
		int num = rect.Left;
		if (flag)
		{
			num = rect.Right - 1;
		}
		else
		{
			rect.X++;
		}
		if (btState == ButtonState.Normal && IsActive)
		{
			using (Pen pen = new Pen(Office2007ColorTable.ComboBoxAdvNormalBorderColor))
			{
				g.DrawLine(pen, num, rect.Y, num, rect.Bottom - 1);
			}
			rect.Width--;
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, Color.Empty, Color.Empty, LinearGradientMode.Vertical);
			ColorBlend colorBlend = new ColorBlend();
			colorBlend.Colors = new Color[4] { Office2007ColorTable.ComboBoxAdvNormalBackgroundButtonColor1, Office2007ColorTable.ComboBoxAdvNormalBackgroundButtonColor2, Office2007ColorTable.ComboBoxAdvNormalBackgroundButtonColor3, Office2007ColorTable.ComboBoxAdvNormalBackgroundButtonColor4 };
			colorBlend.Positions = c_backgroundColorsPositionsOffice2007;
			linearGradientBrush.InterpolationColors = colorBlend;
			g.FillRectangle(linearGradientBrush, rect);
		}
		else
		{
			switch (btState)
			{
			case ButtonState.Checked:
			{
				g.FillRectangle(Brushes.White, rect);
				using (Pen pen4 = new Pen(Office2007ColorTable.ComboBoxAdvHotBorderColor))
				{
					g.DrawLine(pen4, num, rect.Y, num, rect.Bottom);
				}
				rect.Width--;
				rect.Inflate(-1, -1);
				DrawHotBackgroundOffice2007Style(g, rect);
				break;
			}
			case ButtonState.Pushed:
			{
				using (Pen pen2 = new Pen(Office2007ColorTable.ComboBoxAdvPushedBorderColor))
				{
					g.DrawLine(pen2, num, rect.Y, num, rect.Bottom - 1);
				}
				rect.Width--;
				DrawHotBackgroundOffice2007Style(g, rect);
				using (Pen pen3 = new Pen(Office2007ColorTable.ComboBoxAdvButtonUpperLineColor))
				{
					g.DrawLine(pen3, rect.Left, rect.Y, rect.Right - 1, rect.Y);
				}
				rect.Inflate(-1, -1);
				using (LinearGradientBrush linearGradientBrush2 = new LinearGradientBrush(rect, Color.Empty, Color.Empty, LinearGradientMode.Vertical))
				{
					ColorBlend colorBlend2 = new ColorBlend();
					colorBlend2.Colors = new Color[4] { Office2007ColorTable.ComboBoxAdvPushedBackgroundButtonColor1, Office2007ColorTable.ComboBoxAdvPushedBackgroundButtonColor2, Office2007ColorTable.ComboBoxAdvPushedBackgroundButtonColor3, Office2007ColorTable.ComboBoxAdvPushedBackgroundButtonColor4 };
					colorBlend2.Positions = c_backgroundColorsPositionsOffice2007;
					linearGradientBrush2.InterpolationColors = colorBlend2;
					g.FillRectangle(linearGradientBrush2, rect);
				}
				break;
			}
			}
		}
		Point[] comboDropDownBorderBounds = GetComboDropDownBorderBounds(Bounds);
		using GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(comboDropDownBorderBounds);
		if (IsActive)
		{
			GraphicsState gstate = g.Save();
			g.TranslateTransform(0f, 1f);
			using (Brush brush = new SolidBrush(Office2007ColorTable.ComboBoxAdvLowerArrowLineColor))
			{
				g.FillPath(brush, graphicsPath);
			}
			g.Restore(gstate);
		}
		using Brush brush2 = new SolidBrush(Office2007ColorTable.ComboBoxAdvArrowColor);
		g.FillPath(brush2, graphicsPath);
	}

	public virtual void OnPaint(Graphics g)
	{
		ButtonState buttonState = ButtonState.Normal;
		if (Bounds.Width <= 0 || Bounds.Height <= 0)
		{
			return;
		}
		buttonState = ((!Enabled) ? ButtonState.Inactive : (Pushed ? ButtonState.Pushed : (Hot ? ButtonState.Checked : ButtonState.Normal)));
		if (Style == VisualStyle.Office2007)
		{
			DrawOffice2007Style(g, buttonState);
			return;
		}
		if (Style != VisualStyle.Default)
		{
			Color empty = Color.Empty;
			empty = (IsDroppedDown ? ((Style != VisualStyle.OfficeXP) ? Office2003Colors.PressedSelColor : MenuColors.PressedSelColor) : ((!IsActive) ? control.Parent.BackColor : ((Style != VisualStyle.OfficeXP) ? Office2003Colors.SelColor : MenuColors.SelColor)));
			using (Brush brush = new SolidBrush(empty))
			{
				g.FillRectangle(brush, Bounds);
			}
			Point[] comboDropDownBorderBounds = GetComboDropDownBorderBounds(Bounds);
			Color color = SystemColors.ControlText;
			if (IsDroppedDown)
			{
				color = SystemColors.Window;
			}
			if (!Enabled)
			{
				color = SystemColors.GrayText;
			}
			using GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(comboDropDownBorderBounds);
			using Brush brush2 = new SolidBrush(color);
			g.FillRegion(brush2, new Region(graphicsPath));
			return;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			Rectangle rect = Bounds;
			rect.Inflate(0, 1);
			rect.X++;
			themedDrawing.DrawDropDownButton(g, rect, buttonState);
			return;
		}
		if (buttonState == ButtonState.Pushed)
		{
			buttonState = ButtonState.Flat | ButtonState.Pushed;
		}
		if (FlatStyle == ComboFlatStyle.Flat)
		{
			switch (buttonState)
			{
			case ButtonState.Normal:
				buttonState = ButtonState.Flat;
				break;
			case ButtonState.Checked:
				buttonState = ButtonState.Normal;
				break;
			case ButtonState.Inactive:
				buttonState |= ButtonState.Flat;
				break;
			}
		}
		else if (buttonState == ButtonState.Checked)
		{
			buttonState = ButtonState.Normal;
		}
		if (!isDroppedDown)
		{
			buttonState = ButtonState.Normal;
		}
		ControlPaint.DrawComboButton(g, Bounds, buttonState);
	}

	public static float GetComboDropDownArrowWidth()
	{
		float num = 7f;
		int num2 = (int)num;
		if (num2 % 2 == 0)
		{
			num += 1f;
		}
		return num;
	}

	public static float GetComboDropDownArrowHeight()
	{
		return (int)GetComboDropDownArrowWidth() / 2 + 1;
	}

	public static Point[] GetComboDropDownBorderBounds(Rectangle btnBounds)
	{
		int arWidth = (int)GetComboDropDownArrowWidth();
		int arHeight = (int)GetComboDropDownArrowHeight();
		return GetComboDropDownBorderBounds(btnBounds, arWidth, arHeight);
	}

	public static Point[] GetComboDropDownBorderBounds(Rectangle btnBounds, int arWidth, int arHeight)
	{
		int num = btnBounds.Left + (btnBounds.Width - arWidth) / 2;
		int y = btnBounds.Top + (btnBounds.Height - arHeight) / 2;
		Rectangle rectangle = new Rectangle(num, y, arWidth, arHeight);
		return new Point[4]
		{
			new Point(rectangle.Left, rectangle.Top),
			new Point(rectangle.Right, rectangle.Top),
			new Point(num + arWidth / 2, rectangle.Bottom),
			new Point(rectangle.Left, rectangle.Top)
		};
	}

	public void CancelMouseTrack()
	{
		Pushed = false;
	}

	public void OnMouseMove(MouseEventArgs e, bool useFullControlBounds)
	{
		if (Bounds.Contains(e.X, e.Y) || useFullControlBounds)
		{
			Hot = true;
			if (Control.MouseButtons == MouseButtons.Left)
			{
				Pushed = true;
			}
		}
		else
		{
			Hot = false;
			Pushed = false;
		}
	}

	public void OnMouseLeave(EventArgs e)
	{
		Hot = false;
		Pushed = false;
	}

	public void OnMouseDown(MouseEventArgs e, bool useFullControlBounds)
	{
		if (Enabled && e.Button == MouseButtons.Left)
		{
			if (Bounds.Contains(e.X, e.Y) || useFullControlBounds)
			{
				Pushed = true;
			}
			else
			{
				Pushed = false;
			}
		}
	}

	public void OnMouseUp(MouseEventArgs e)
	{
		if (Enabled)
		{
			Pushed = false;
		}
	}

	private void OnStyleChanged()
	{
		InvalidateBounds(Bounds);
	}

	private void InvalidateParentNCArea()
	{
		if (!SuspendInvalidates)
		{
			NativeMethodsHelper.RedrawWindow(control.Handle, 1025);
		}
	}

	private void CreateThemedDrawing()
	{
		if (XPThemes.IsThemedOS && themedDrawing == null)
		{
			themedDrawing = new ThemedDropDownButtonDrawing();
		}
	}

	private void control_HandleCreated(object sender, EventArgs e)
	{
		CreateThemedDrawing();
	}

	private void control_HandleDestroyed(object sender, EventArgs e)
	{
		if (themedDrawing != null)
		{
			themedDrawing.Dispose();
			themedDrawing = null;
		}
	}

	void IDisposable.Dispose()
	{
		if (control != null)
		{
			control.HandleCreated -= control_HandleCreated;
			control.HandleDestroyed -= control_HandleDestroyed;
			control = null;
		}
		if (themedDrawing != null)
		{
			themedDrawing.Dispose();
			themedDrawing = null;
		}
	}
}
