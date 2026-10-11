using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Utils;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(TextBoxExtDesigner), typeof(IDesigner))]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.TextBoxExt.bmp")]
[Description("An extended textbox that provides advanced border styles.")]
public class TextBoxExt : TextBox, ISupportInitialize
{
	private const int c_ioverflowIndicatorBorderIndent = 2;

	private static readonly Size c_sOverflowIndicator = new Size(13, 13);

	private static readonly Size c_overflowIndicatorElementSize = new Size(4, 8);

	private static readonly Color c_overflowIndicatorBorderColor = Color.Gray;

	private static readonly Color c_overflowIndicatorForegroundElementColor = Color.DarkCyan;

	private static readonly Point c_overflowIndicatorToolTipOffset = new Point(13, 15);

	private string m_strOVerflowToolTipText = string.Empty;

	private ThemedEditDrawing themedEditDrawing;

	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private Color borderColor = Color.Black;

	private ControlDrawing cd;

	private bool themesEnabled = true;

	private bool drawActiveWhenDisabled;

	private TextBoxExtSubClass m_subClass;

	private bool m_bShowOverflowIndicator;

	private OverflowIndicatorState m_bOverflowIndicatorLastState;

	private ToolTipAdv m_overflowIndicatorToolTip;

	private Rectangle m_leftIndicatorLastPaintedRect = Rectangle.Empty;

	private Rectangle m_rightIndicatorLastPaintedRect = Rectangle.Empty;

	private Rectangle m_rcClient = Rectangle.Empty;

	private bool m_bShowOverflowIndicatorToolTip;

	private CornerRadiusHelper m_cornerRadiusHelper;

	private Image m_imgNear;

	private Image m_imgFar;

	private int m_nCornerRadius = -1;

	private int m_nInitializing;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			BorderStyle borderStyle = base.BorderStyle;
			if (borderStyle != BorderStyle.Fixed3D || !ThemesEnabled)
			{
				createParams.ExStyle &= -513;
				createParams.Style &= -8388609;
				switch (borderStyle)
				{
				case BorderStyle.FixedSingle:
				case BorderStyle.Fixed3D:
					createParams.ExStyle |= 512;
					break;
				}
			}
			return createParams;
		}
	}

	[Description("Gets or sets can show overflow indicator ToolTip.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ShowOverflowIndicatorToolTip
	{
		get
		{
			return m_bShowOverflowIndicatorToolTip;
		}
		set
		{
			m_bShowOverflowIndicatorToolTip = value;
		}
	}

	[DefaultValue("")]
	[Description("Gets or sets overflow indicator ToolTip text.")]
	[Category("Appearance")]
	public string OverflowIndicatorToolTipText
	{
		get
		{
			return m_strOVerflowToolTipText;
		}
		set
		{
			if (value != m_strOVerflowToolTipText)
			{
				m_strOVerflowToolTipText = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Gets or sets overflow indicator visibility.")]
	public bool ShowOverflowIndicator
	{
		get
		{
			return m_bShowOverflowIndicator;
		}
		set
		{
			if (m_bShowOverflowIndicator != value)
			{
				m_bShowOverflowIndicator = value;
				UpdateOverflowIndicator();
			}
		}
	}

	[Description("Specifies if the text should be drawn active even when disabled.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool DrawActiveWhenDisabled
	{
		get
		{
			return drawActiveWhenDisabled;
		}
		set
		{
			if (drawActiveWhenDisabled != value)
			{
				drawActiveWhenDisabled = value;
				UpdatePaintingStyle();
			}
		}
	}

	[DefaultValue(Border3DSide.All)]
	[Category("Appearance")]
	[Description("Indicates the border sides of the panel.")]
	public virtual Border3DSide BorderSides
	{
		get
		{
			return borderSides;
		}
		set
		{
			if (borderSides != value)
			{
				borderSides = value;
				OnBorderSidesChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[DefaultValue(Border3DStyle.Sunken)]
	[Description("Indicates the style of the 3D border.")]
	[Category("Appearance")]
	public virtual Border3DStyle Border3DStyle
	{
		get
		{
			return border3DStyle;
		}
		set
		{
			if (border3DStyle != value)
			{
				border3DStyle = value;
				OnBorder3DStyleChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the color of the 2D border.")]
	public virtual Color BorderColor
	{
		get
		{
			return borderColor;
		}
		set
		{
			if (borderColor != value)
			{
				borderColor = value;
				OnBorderColorChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	internal OverflowIndicatorState OverFlowIndicatorLastState
	{
		get
		{
			return m_bOverflowIndicatorLastState;
		}
		set
		{
			if (m_bOverflowIndicatorLastState != value)
			{
				m_bOverflowIndicatorLastState = value;
			}
		}
	}

	protected internal ToolTipAdv OverflowIndicatorToolTip
	{
		get
		{
			if (m_overflowIndicatorToolTip == null)
			{
				m_overflowIndicatorToolTip = new ToolTipAdv(this);
				m_overflowIndicatorToolTip.BackColor = SystemColors.Info;
				m_overflowIndicatorToolTip.BorderStyle = BorderStyle.FixedSingle;
			}
			return m_overflowIndicatorToolTip;
		}
		set
		{
			m_overflowIndicatorToolTip = value;
		}
	}

	[Description("Specifies whether or not use XP Themes when BorderStyle = Fixed3D.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public virtual bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				UpdateStyles();
				InvalidateWindow();
			}
		}
	}

	[Category("Layout")]
	[Description("Gets or sets the maximum size for the control.")]
	public override Size MaximumSize
	{
		get
		{
			return base.MaximumSize;
		}
		set
		{
			if (base.MaximumSize != value)
			{
				if (value.Height == 0)
				{
					value.Height = base.Height;
				}
				else if (value.Width == 0)
				{
					value.Width = base.Width;
				}
				base.MaximumSize = value;
				OnMaximumSizeChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Gets or sets the minimum size for the control.")]
	[Category("Layout")]
	public override Size MinimumSize
	{
		get
		{
			return base.MinimumSize;
		}
		set
		{
			if (!Initializing)
			{
				if (base.MinimumSize != value)
				{
					if (value.Height <= 0)
					{
						value.Height = base.MinimumSize.Height;
					}
					if (value.Width <= 0)
					{
						value.Width = base.MinimumSize.Width;
					}
					base.MinimumSize = GetMinSize(value);
					OnMinimumSizeChanged(EventArgs.Empty);
				}
			}
			else
			{
				Size minimumSize = base.MinimumSize;
				minimumSize.Height = Math.Max(minimumSize.Height, value.Height);
				minimumSize.Width = Math.Max(minimumSize.Width, value.Width);
				base.MinimumSize = minimumSize;
			}
		}
	}

	[Description("Gets or sets the case of characters as they are typed.")]
	[Browsable(true)]
	[DefaultValue(CharacterCasing.Normal)]
	[Category("Behavior")]
	public new CharacterCasing CharacterCasing
	{
		get
		{
			return base.CharacterCasing;
		}
		set
		{
			if (value != base.CharacterCasing)
			{
				base.CharacterCasing = value;
				OnCharacterCasingChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(0)]
	[Category("Appearance")]
	[Description("Corner radius of control")]
	public int CornerRadius
	{
		get
		{
			return m_cornerRadiusHelper.CornerRadius;
		}
		set
		{
			if (Initializing)
			{
				m_nCornerRadius = value;
				return;
			}
			if (base.BorderStyle != BorderStyle.Fixed3D)
			{
				m_cornerRadiusHelper.CornerRadius = value;
				UpdateNCArea();
				return;
			}
			throw new ArgumentException("Curved corners are not supported for fixed 3D border style.");
		}
	}

	[Description("Near image")]
	[DefaultValue(null)]
	[Category("Appearance")]
	public Image NearImage
	{
		get
		{
			return m_imgNear;
		}
		set
		{
			if (m_imgNear != value)
			{
				m_imgNear = value;
				MinimumSize = Size.Empty;
				UpdateNCArea();
			}
		}
	}

	[Category("Appearance")]
	[Description("Far image")]
	[DefaultValue(null)]
	public Image FarImage
	{
		get
		{
			return m_imgFar;
		}
		set
		{
			if (m_imgFar != value)
			{
				m_imgFar = value;
				MinimumSize = Size.Empty;
				UpdateNCArea();
			}
		}
	}

	private int BorderWidth
	{
		get
		{
			int result = 0;
			switch (base.BorderStyle)
			{
			case BorderStyle.Fixed3D:
				result = 2;
				break;
			case BorderStyle.FixedSingle:
				result = 1;
				break;
			}
			return result;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Initializing => m_nInitializing > 0;

	[Description("This event is raised if the BorderSides property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Description("This event is raised if the Border3DStyle property is changed.")]
	[Category("Property Changed")]
	public event EventHandler Border3DStyleChanged;

	[Description("This event is raised when the value of the BorderColor property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderColorChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the ThemesEnabled property is changed.")]
	public event EventHandler ThemesEnabledChanged;

	[Description("This event is raised if the MaximumSize property is changed.")]
	[Category("Property Changed")]
	public event EventHandler MaximumSizeChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the MinimumSize property is changed.")]
	public event EventHandler MinimumSizeChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the CharacterCasing property is changed.")]
	public event EventHandler CharacterCasingChanged;

	private Size GetMinSize(Size szCurrentMin)
	{
		Size minimalSize = m_cornerRadiusHelper.GetMinimalSize(szCurrentMin);
		if (NearImage != null)
		{
			minimalSize.Width += NearImage.Width + 1;
		}
		if (FarImage != null)
		{
			minimalSize.Width += FarImage.Width + 1;
		}
		return m_cornerRadiusHelper.GetMinimalSize(szCurrentMin);
	}

	public TextBoxExt()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(TextBoxExt));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		m_cornerRadiusHelper = new CornerRadiusHelper(this);
	}

	private void Init()
	{
		if (cd == null)
		{
			cd = new ControlDrawing();
		}
		if (themedEditDrawing == null)
		{
			themedEditDrawing = new ThemedEditDrawing(this);
		}
		base.BorderStyle = base.BorderStyle;
		if (ShowOverflowIndicator)
		{
			UpdateOverflowIndicator();
		}
		base.BackColorChanged += My_BackColorChanged;
	}

	private void Uninit()
	{
		base.BackColorChanged -= My_BackColorChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_subClass != null)
			{
				m_subClass.StopListening();
				m_subClass = null;
			}
			cd = null;
			if (themedEditDrawing != null)
			{
				themedEditDrawing.Dispose();
				themedEditDrawing = null;
			}
			if (m_overflowIndicatorToolTip != null)
			{
				m_overflowIndicatorToolTip.Dispose();
				m_overflowIndicatorToolTip = null;
			}
			if (m_cornerRadiusHelper != null)
			{
				m_cornerRadiusHelper.Dispose();
				m_cornerRadiusHelper = null;
			}
		}
		base.Dispose(disposing);
	}

	private bool ShouldSerializeBorderColor()
	{
		return !(BorderColor == Color.Black);
	}

	private void ResetBorderColor()
	{
		BorderColor = Color.Black;
	}

	protected virtual void OnMaximumSizeChanged(EventArgs e)
	{
		if (this.MaximumSizeChanged != null)
		{
			this.MaximumSizeChanged(this, e);
		}
	}

	protected virtual void OnMinimumSizeChanged(EventArgs e)
	{
		if (this.MinimumSizeChanged != null)
		{
			this.MinimumSizeChanged(this, e);
		}
	}

	public virtual void OnCharacterCasingChanged(EventArgs e)
	{
		if (this.CharacterCasingChanged != null)
		{
			this.CharacterCasingChanged(this, e);
		}
	}

	protected virtual void OnBorderSidesChanged(EventArgs e)
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, e);
		}
	}

	protected virtual void OnBorderColorChanged(EventArgs e)
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, e);
		}
	}

	protected virtual void OnBorder3DStyleChanged(EventArgs e)
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, e);
		}
	}

	protected virtual void OnThemesEnabledChanged(EventArgs e)
	{
		if (this.ThemesEnabledChanged != null)
		{
			this.ThemesEnabledChanged(this, e);
		}
	}

	protected override void OnParentChanged(EventArgs e)
	{
		if (base.Parent != null)
		{
			TextBoxExtSubClass textBoxExtSubClass = new TextBoxExtSubClass(this);
			if (m_subClass != null)
			{
				m_subClass.StopListening();
			}
			textBoxExtSubClass = new TextBoxExtSubClass(this);
			textBoxExtSubClass.AssignHandleCustom(base.Parent);
			m_subClass = textBoxExtSubClass;
		}
		base.OnParentChanged(e);
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		UpdatePaintingStyle();
		base.OnEnabledChanged(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (DrawActiveWhenDisabled && !base.Enabled)
		{
			Brush brush = new SolidBrush(ForeColor);
			SizeF sizeF = e.Graphics.MeasureString(Text, Font);
			if (base.TextAlign == HorizontalAlignment.Left)
			{
				e.Graphics.DrawString(Text, Font, brush, base.ClientRectangle);
			}
			else if (base.TextAlign == HorizontalAlignment.Right)
			{
				e.Graphics.DrawString(Text, Font, brush, (float)base.ClientRectangle.Width - sizeF.Width, 0f);
			}
			else if (base.TextAlign == HorizontalAlignment.Center)
			{
				e.Graphics.DrawString(Text, Font, brush, (int)(((float)e.ClipRectangle.Width - sizeF.Width) / 2f), (int)((float)e.ClipRectangle.Height - sizeF.Height) / 2);
			}
			brush.Dispose();
		}
		base.OnPaint(e);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		if (!base.Disposing)
		{
			base.OnHandleCreated(e);
			Init();
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
		Uninit();
	}

	protected override void OnMultilineChanged(EventArgs e)
	{
		base.OnMultilineChanged(e);
		UpdateOverflowIndicator();
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		UpdateOverflowIndicator();
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 133:
			OnWmNcPaint(ref m);
			return;
		case 131:
			OnWmNcCalcSize(ref m);
			return;
		case 132:
			TrackMouseEvent(useLeaveFlags: false);
			UpdateOverflowIndicatorToolTipVisible(new Point((int)m.LParam & 0xFFFF, (int)m.LParam >> 16), hitTest: true);
			base.WndProc(ref m);
			if (m.Result == (IntPtr)0)
			{
				m.Result = (IntPtr)1;
			}
			return;
		case 672:
			TrackMouseEvent(useLeaveFlags: true);
			UpdateOverflowIndicatorToolTipVisible(new Point((int)m.LParam & 0xFFFF, (int)m.LParam >> 16), hitTest: false);
			break;
		case 674:
			if (OverflowIndicatorToolTip != null)
			{
				OverflowIndicatorToolTip.HidePopup();
			}
			break;
		case 123:
			if (!ShortcutsEnabled)
			{
				return;
			}
			break;
		case 791:
			OnWmPrint(ref m);
			return;
		}
		base.WndProc(ref m);
	}

	private void OnWmPrint(ref Message m)
	{
		IntPtr wParam = m.WParam;
		if (!(wParam != IntPtr.Zero))
		{
			return;
		}
		IntPtr intPtr = NativeMethods.CreateRectRgn(0, 0, 0, 0);
		using (Graphics graphics = Graphics.FromHdc(wParam))
		{
			graphics.FillRectangle(SystemBrushes.Control, new Rectangle(0, 0, base.Width, base.Height));
			if (base.Region != null)
			{
				graphics.Clip = base.Region;
			}
			RenderNCArea(graphics, base.Width, base.Height, bDrawBorder: true);
		}
		NativeMethods.GetClipRgn(wParam, intPtr);
		NativeMethods.IntersectClipRect(wParam, m_rcClient.Left, m_rcClient.Top, m_rcClient.Right, m_rcClient.Bottom);
		base.WndProc(ref m);
		NativeMethods.SelectClipRgn(wParam, intPtr);
		NativeMethods.DeleteObject(intPtr);
	}

	protected virtual void NCOverflowIndicatorPaint(Graphics g, Rectangle left, Rectangle right)
	{
		OverflowIndicatorState overFlowIndicatorLastState = OverFlowIndicatorLastState;
		if (overFlowIndicatorLastState == OverflowIndicatorState.Left || overFlowIndicatorLastState == OverflowIndicatorState.LeftAndRight)
		{
			DrawOverflowIndicator(g, left, mirrored: true);
		}
		if (overFlowIndicatorLastState == OverflowIndicatorState.Right || overFlowIndicatorLastState == OverflowIndicatorState.LeftAndRight)
		{
			DrawOverflowIndicator(g, right, mirrored: false);
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		m_cornerRadiusHelper.UpdateRegion();
		base.OnSizeChanged(e);
	}

	protected override void OnBorderStyleChanged(EventArgs e)
	{
		if (CornerRadius > 0 && base.BorderStyle == BorderStyle.Fixed3D)
		{
			base.BorderStyle = BorderStyle.FixedSingle;
			throw new ArgumentException("Fixed 3D border style is not supported with curved corners.");
		}
		base.OnBorderStyleChanged(e);
	}

	private void UpdatePaintingStyle()
	{
		if (DrawActiveWhenDisabled && !base.Enabled)
		{
			SetStyle(ControlStyles.UserPaint, value: true);
		}
		else
		{
			SetStyle(ControlStyles.UserPaint, value: false);
		}
		Invalidate();
	}

	private void My_BackColorChanged(object sender, EventArgs e)
	{
		InvalidateWindow();
	}

	private void InvalidateWindow()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
		}
	}

	private void UpdateOverflowIndicatorToolTipVisible(Point pt, bool hitTest)
	{
		if (!ShowOverflowIndicatorToolTip)
		{
			return;
		}
		Point pt2 = pt;
		pt2.X -= base.Parent.PointToScreen(base.Location).X;
		pt2.Y -= base.Parent.PointToScreen(base.Location).Y;
		if (((OverFlowIndicatorLastState == OverflowIndicatorState.Left || OverFlowIndicatorLastState == OverflowIndicatorState.LeftAndRight) && m_leftIndicatorLastPaintedRect.Contains(pt2)) || ((OverFlowIndicatorLastState == OverflowIndicatorState.Right || OverFlowIndicatorLastState == OverflowIndicatorState.LeftAndRight) && m_rightIndicatorLastPaintedRect.Contains(pt2)))
		{
			if (!OverflowIndicatorToolTip.IsShowing() && hitTest)
			{
				string text = ((OverflowIndicatorToolTipText == null) ? Text : OverflowIndicatorToolTipText);
				OverflowIndicatorToolTip.Text = text;
				if (text != null && text.Length > 0)
				{
					OverflowIndicatorToolTip.ShowPopup(new Point(pt.X + c_overflowIndicatorToolTipOffset.X, pt.Y + c_overflowIndicatorToolTipOffset.Y));
				}
			}
		}
		else if (OverflowIndicatorToolTip.IsShowing())
		{
			OverflowIndicatorToolTip.HidePopup();
		}
	}

	private void TrackMouseEvent(bool useLeaveFlags)
	{
		NativeMethods.TRACKMOUSEEVENT lpEventTrack = default(NativeMethods.TRACKMOUSEEVENT);
		lpEventTrack.cbSize = Marshal.SizeOf((object)lpEventTrack);
		lpEventTrack.hwndTrack = base.Handle;
		lpEventTrack.dwFlags = 16;
		if (useLeaveFlags)
		{
			lpEventTrack.dwFlags |= 2;
		}
		else
		{
			lpEventTrack.dwFlags |= 1;
		}
		lpEventTrack.dwHoverTime = 0;
		NativeMethods.TrackMouseEvent(ref lpEventTrack);
	}

	private Size GetTextSize(string text)
	{
		Graphics graphics = CreateGraphics();
		IntPtr hdc = graphics.GetHdc();
		IntPtr hObject = Font.ToHfont();
		IntPtr hObject2 = NativeMethods.SelectObject(hdc, hObject);
		NativeMethods.SIZE lpSize = new NativeMethods.SIZE(0, 0);
		NativeMethods.GetTextExtentPoint32(hdc, text, text.Length, ref lpSize);
		hObject2 = NativeMethods.SelectObject(hdc, hObject2);
		NativeMethods.DeleteObject(hObject);
		graphics.ReleaseHdc(hdc);
		graphics.Dispose();
		return new Size(lpSize.CX, lpSize.CY);
	}

	internal void UpdateNCArea()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, 39);
		}
	}

	private void UpdateOverflowIndicator()
	{
		if (base.IsHandleCreated)
		{
			UpdateNCArea();
			NativeMethodsHelper.RedrawWindow(base.Handle, 1025);
		}
	}

	internal OverflowIndicatorState GetOverflowIndicatorState()
	{
		OverflowIndicatorState overflowIndicatorState = OverflowIndicatorState.None;
		if (!Multiline && ShowOverflowIndicator && Text != string.Empty && base.IsHandleCreated)
		{
			NativeMethods.RECT lpRect = new NativeMethods.RECT(0, 0, 0, 0);
			NativeMethods.SendMessage(base.Handle, 178, IntPtr.Zero, ref lpRect);
			int num = (int)NativeMethods.SendMessage(base.Handle, 215, 0, NativeMethods.MAKELPARAM(lpRect.left, lpRect.top));
			string text = Text;
			lpRect.left = (lpRect.top = 2);
			int num2 = lpRect.Width;
			if ((num > 0 || num == -1) && GetTextSize(text).Width > num2)
			{
				if (num == text.Length)
				{
					overflowIndicatorState = OverflowIndicatorState.None;
				}
				else if (num != -1)
				{
					overflowIndicatorState = OverflowIndicatorState.Left;
					text = text.Remove(0, num + 1);
				}
			}
			if (OverFlowIndicatorLastState == OverflowIndicatorState.Right || OverFlowIndicatorLastState == OverflowIndicatorState.Left)
			{
				num2 += c_sOverflowIndicator.Width;
			}
			else if (OverFlowIndicatorLastState == OverflowIndicatorState.LeftAndRight)
			{
				num2 += 2 * c_sOverflowIndicator.Width;
			}
			if (GetTextSize(text).Width > num2)
			{
				overflowIndicatorState = ((overflowIndicatorState == OverflowIndicatorState.Left) ? OverflowIndicatorState.LeftAndRight : ((Text.Length == base.SelectionStart && SelectionLength == 0) ? OverflowIndicatorState.Left : OverflowIndicatorState.Right));
			}
		}
		return overflowIndicatorState;
	}

	private void OnWmNcCalcSize(ref Message m)
	{
		NativeMethods.RECT rcWindow = (NativeMethods.RECT)Marshal.PtrToStructure(m.LParam, typeof(NativeMethods.RECT));
		NativeMethods.RECT rcClient = new NativeMethods.RECT(0, 0, rcWindow.Width, rcWindow.Height);
		if (m_cornerRadiusHelper != null)
		{
			int cornerRadius = CornerRadius;
			if (cornerRadius > 0)
			{
				rcClient.left += cornerRadius;
				rcClient.right -= cornerRadius;
				rcWindow.left += cornerRadius;
				rcWindow.right -= cornerRadius;
			}
		}
		bool flag = RightToLeft != RightToLeft.Yes;
		if (NearImage != null)
		{
			ModifyRect(flag, GetImageBounds(NearImage, rcClient, nearImage: true).Width, ref rcClient, ref rcWindow);
		}
		if (FarImage != null)
		{
			ModifyRect(!flag, GetImageBounds(FarImage, rcClient, nearImage: false).Width, ref rcClient, ref rcWindow);
		}
		OverflowIndicatorState overflowIndicatorState = GetOverflowIndicatorState();
		if (overflowIndicatorState != OverflowIndicatorState.None)
		{
			int num = c_sOverflowIndicator.Width;
			if (overflowIndicatorState == OverflowIndicatorState.Left || overflowIndicatorState == OverflowIndicatorState.LeftAndRight)
			{
				rcClient.left += num;
				rcWindow.left += num;
			}
			if (overflowIndicatorState == OverflowIndicatorState.Right || overflowIndicatorState == OverflowIndicatorState.LeftAndRight)
			{
				rcClient.right -= num;
				rcWindow.right -= num;
			}
		}
		Marshal.StructureToPtr((object)rcWindow, m.LParam, fDeleteOld: false);
		OverFlowIndicatorLastState = overflowIndicatorState;
		int windowLong = NativeMethods.GetWindowLong(m.HWnd, -16);
		int windowLong2 = NativeMethods.GetWindowLong(m.HWnd, -20);
		NativeMethods.RECT lpRect = new NativeMethods.RECT(0, 0, 0, 0);
		AdjustWindowRectEx(ref lpRect, windowLong, bMenu: false, windowLong2);
		m_rcClient = new Rectangle(rcClient.left - lpRect.left, rcClient.top - lpRect.top, rcClient.Width - lpRect.Width, rcClient.Height - lpRect.Height);
		base.WndProc(ref m);
	}

	private Rectangle GetImageBounds(Image image, NativeMethods.RECT rcClient, bool nearImage)
	{
		Size size = image.Size;
		int borderWidth = BorderWidth;
		int num = rcClient.Height;
		int num2 = num - 2 * borderWidth + num % 2;
		if (size.Height > size.Width)
		{
			if (size.Height > num2)
			{
				size.Width = size.Width * num2 / size.Height;
				size.Height = num2;
			}
		}
		else if (size.Width > num2)
		{
			size.Height = size.Height * num2 / size.Width;
			size.Width = num2;
		}
		Point location = new Point(0, rcClient.top + borderWidth + (num2 - size.Height) / 2);
		borderWidth += CornerRadius;
		if (nearImage == (RightToLeft != RightToLeft.Yes))
		{
			location.X = rcClient.left + borderWidth;
		}
		else
		{
			location.X = rcClient.right - size.Width - borderWidth;
		}
		return new Rectangle(location, size);
	}

	private void ModifyRect(bool bLTR, int width, ref NativeMethods.RECT rcClient, ref NativeMethods.RECT rcWindow)
	{
		width += BorderWidth;
		if (bLTR)
		{
			rcClient.left += width;
			rcWindow.left += width;
		}
		else
		{
			rcClient.right -= width;
			rcWindow.right -= width;
		}
	}

	private void OnWmNcPaint(ref Message m)
	{
		NativeMethods.RECT lpRect = default(NativeMethods.RECT);
		NativeMethods.GetWindowRect(m.HWnd, ref lpRect);
		int x = lpRect.Width;
		int y = lpRect.Height;
		IntPtr intPtr = NativeMethods.CreateRectRgn(0, 0, x, y);
		if (intPtr != IntPtr.Zero)
		{
			IntPtr windowDC = NativeMethods.GetWindowDC(m.HWnd);
			if (windowDC != IntPtr.Zero)
			{
				IntPtr intPtr2 = NativeMethods.CreateCompatibleDC(windowDC);
				if (intPtr2 != IntPtr.Zero)
				{
					IntPtr intPtr3 = NativeMethods.CreateCompatibleBitmap(windowDC, x, y);
					if (intPtr3 != IntPtr.Zero)
					{
						IntPtr hObject = NativeMethods.SelectObject(intPtr2, intPtr3);
						if (m.WParam.ToInt32() != 1)
						{
							IntPtr intPtr4 = NativeMethods.CreateRectRgn(0, 0, 0, 0);
							NativeMethods.CombineRgn(intPtr4, m.WParam, IntPtr.Zero, 5);
							NativeMethods.OffsetRgn(intPtr4, -lpRect.left, -lpRect.top);
							NativeMethods.CombineRgn(intPtr, intPtr, intPtr4, 1);
							NativeMethods.DeleteObject(intPtr4);
						}
						using (Graphics g = Graphics.FromHdc(intPtr2))
						{
							RenderNCArea(g, x, y, bDrawBorder: true);
						}
						NativeMethods.SelectClipRgn(windowDC, intPtr);
						NativeMethods.ExcludeClipRect(windowDC, m_rcClient.X, m_rcClient.Y, m_rcClient.Right, m_rcClient.Bottom);
						NativeMethods.BitBlt(windowDC, 0, 0, lpRect.Width, lpRect.Height, intPtr2, 0, 0, 13369376);
						NativeMethods.SelectObject(intPtr2, hObject);
						NativeMethods.DeleteObject(intPtr3);
					}
					NativeMethods.DeleteDC(intPtr2);
				}
				NativeMethods.DeleteDC(windowDC);
			}
			IntPtr intPtr5 = NativeMethods.CreateRectRgn(m_rcClient.Left, m_rcClient.Top, m_rcClient.Right, m_rcClient.Bottom);
			if (intPtr5 != IntPtr.Zero)
			{
				NativeMethods.CombineRgn(intPtr, intPtr, intPtr5, 1);
				NativeMethods.OffsetRgn(intPtr, lpRect.left, lpRect.top);
				NativeMethods.DeleteObject(intPtr5);
				Message m2 = new Message
				{
					Msg = m.Msg,
					HWnd = m.HWnd,
					WParam = intPtr
				};
				base.WndProc(ref m2);
			}
			NativeMethods.DeleteObject(intPtr);
		}
		m.Result = IntPtr.Zero;
	}

	private void RenderNCArea(Graphics g, int width, int height, bool bDrawBorder)
	{
		Rectangle rc = new Rectangle(0, 0, width, height);
		int cornerRadius = CornerRadius;
		using (Brush brush = new SolidBrush(BackColor))
		{
			g.FillRectangle(brush, 0, 0, width, height);
		}
		DrawImages(g, rc);
		if (bDrawBorder)
		{
			DrawBorders(rc, g, cornerRadius);
		}
		DrawOverflowIndicators(g);
	}

	private void DrawImages(Graphics g, Rectangle rc)
	{
		DrawImage(g, NearImage, rc, nearImage: true);
		DrawImage(g, FarImage, rc, nearImage: false);
	}

	private void DrawImage(Graphics g, Image image, Rectangle rc, bool nearImage)
	{
		if (image != null)
		{
			Rectangle imageBounds = GetImageBounds(image, new NativeMethods.RECT(rc), nearImage);
			g.DrawImage(image, imageBounds);
		}
	}

	private void DrawBorders(Rectangle rc, Graphics g, int radius)
	{
		if (base.BorderStyle == BorderStyle.None)
		{
			return;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && base.BorderStyle == BorderStyle.Fixed3D)
		{
			themedEditDrawing.DrawEditBoxBackground(g, rc, base.Enabled);
		}
		else if (radius > 0 && base.BorderStyle == BorderStyle.FixedSingle && BorderSides == Border3DSide.All)
		{
			GraphicsState gstate = g.Save();
			g.SmoothingMode = SmoothingMode.AntiAlias;
			using (Pen pen = new Pen(Color.FromArgb(128, BorderColor), BorderWidth))
			{
				RectangleF bounds = new RectangleF(1f, 1f, rc.Width - 2, rc.Height - 2);
				using GraphicsPath graphicsPath = m_cornerRadiusHelper.GetPath(bounds);
				g.DrawPath(pen, graphicsPath);
				graphicsPath.Reverse();
				g.DrawPath(pen, graphicsPath);
			}
			g.Restore(gstate);
		}
		else if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(g, rc, base.BorderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(g, rc, base.BorderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor);
		}
	}

	private void DrawOverflowIndicators(Graphics g)
	{
		int num = c_sOverflowIndicator.Width;
		Rectangle left = new Rectangle(m_rcClient.Left - num, m_rcClient.Top, num, m_rcClient.Height);
		Rectangle right = new Rectangle(m_rcClient.Right, m_rcClient.Top, num, m_rcClient.Height);
		NCOverflowIndicatorPaint(g, left, right);
	}

	private void DrawOverflowIndicator(Graphics g, Rectangle rect, bool mirrored)
	{
		using (Brush brush = new SolidBrush(BackColor))
		{
			g.FillRectangle(brush, rect);
		}
		Rectangle rectangle = new Rectangle(rect.X + (rect.Width - c_sOverflowIndicator.Width) / 2, rect.Y + (rect.Height - c_sOverflowIndicator.Height) / 2, c_sOverflowIndicator.Width, c_sOverflowIndicator.Height);
		if (mirrored)
		{
			m_leftIndicatorLastPaintedRect = rectangle;
		}
		else
		{
			m_rightIndicatorLastPaintedRect = rectangle;
		}
		using (Pen pen = new Pen(c_overflowIndicatorBorderColor))
		{
			g.DrawRectangle(pen, rectangle.X, rectangle.Y, rectangle.Width - 1, rectangle.Height - 1);
		}
		rectangle.Inflate(-2, -2);
		DrawOverflowIndicatorForegroundElement(g, rectangle, mirrored);
		rectangle.X += c_overflowIndicatorElementSize.Width + 1;
		DrawOverflowIndicatorForegroundElement(g, rectangle, mirrored);
	}

	private void DrawOverflowIndicatorForegroundElement(Graphics g, Rectangle rect, bool mirrored)
	{
		using GraphicsPath graphicsPath = new GraphicsPath();
		if (mirrored)
		{
			graphicsPath.AddLine(rect.X + c_overflowIndicatorElementSize.Width, rect.Y, rect.X + c_overflowIndicatorElementSize.Width, rect.Y + c_overflowIndicatorElementSize.Height);
			graphicsPath.AddLine(rect.X + c_overflowIndicatorElementSize.Width, rect.Y + c_overflowIndicatorElementSize.Height, rect.X, rect.Y + c_overflowIndicatorElementSize.Height / 2);
			graphicsPath.AddLine(rect.X, rect.Y + c_overflowIndicatorElementSize.Height / 2, rect.X + c_overflowIndicatorElementSize.Width, rect.Y);
		}
		else
		{
			graphicsPath.AddLine(rect.X, rect.Y, rect.X, rect.Y + c_overflowIndicatorElementSize.Height);
			graphicsPath.AddLine(rect.X, rect.Y + c_overflowIndicatorElementSize.Height, rect.X + c_overflowIndicatorElementSize.Width, rect.Y + c_overflowIndicatorElementSize.Height / 2);
			graphicsPath.AddLine(rect.X + c_overflowIndicatorElementSize.Width, rect.Y + c_overflowIndicatorElementSize.Height / 2, rect.X, rect.Y);
		}
		graphicsPath.CloseFigure();
		using Brush brush = new SolidBrush(c_overflowIndicatorForegroundElementColor);
		g.FillPath(brush, graphicsPath);
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern int AdjustWindowRectEx([In][Out] ref NativeMethods.RECT lpRect, int dwStyle, bool bMenu, int dwExStyle);

	public virtual void BeginInit()
	{
		m_nInitializing++;
	}

	public virtual void EndInit()
	{
		if (m_nInitializing > 0)
		{
			m_nInitializing--;
			if (!Initializing)
			{
				if (m_nCornerRadius > 0)
				{
					CornerRadius = m_nCornerRadius;
				}
				MinimumSize = base.MinimumSize;
			}
			return;
		}
		throw new InvalidOperationException("EndInit() called without appropriate BeginInit() method call.");
	}
}
