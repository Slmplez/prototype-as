using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DefaultEvent("Click")]
[Designer(typeof(ControlDesigner))]
[ToolboxItemFilter("System.Windows.Forms")]
[DefaultProperty("UserName")]
public class XpUserEntry : ContainerControl, ISupportInitialize
{
	public const string ImageIndexEditor = "System.Windows.Forms.Design.ImageIndexEditor, System.Design, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a";

	private const int DEF_CORNER_RADIUS = 3;

	private const int DEF_BUTTON_SPACE = 5;

	private const int DEF_MIN_PASSWORDBOX_WIDTH = 50;

	private const int DEF_RECT_INFLATE = 4;

	private const int INDENT_LEFT_FORM = 5;

	private const int INDENT_TOP_FORM = 5;

	private const int INDENT_RIGHT_FORM = 5;

	private const int INDENT_LEFT_PIC = 4;

	private const int INDENT_TOP_PIC = 4;

	private const int INDENT_BOTTOM_PIC = 3;

	private const int INDENT_RIGHT_PIC = 3;

	private const int INDENT_LEFT_RECT = 10;

	private const int INDENT_BOTTOM_USER_NAME = 5;

	private const int INDENT_LEFT_PASSWORDBOX = 5;

	private const int INDENT_LEFT_TEXT = 22;

	private static Color m_colorShadowDark = Color.FromArgb(255, 0, 0, 0);

	private static Color m_colorShadowLight = Color.FromArgb(0, 0, 0, 0);

	protected StringFormat m_textStringFormat;

	private XpUserStyle m_style;

	private bool m_bSkipEvents;

	private Size m_ThumbnailSize = new Size(48, 48);

	private Image m_DefaultIcon;

	private Image m_SelectIcon;

	private int m_indexButtonDrawing;

	private string m_strUserName = string.Empty;

	private string m_strHelpString = string.Empty;

	private bool m_bActive;

	private bool m_bSelect;

	private GraphicsPath m_rectIcon;

	private GraphicsPath m_rectTextBox;

	private ImageList m_imgList;

	private int m_iImageIndex = -1;

	private int m_iSelectedImageIndex = -1;

	private Region m_rgIconRect;

	private bool m_bNeedRelayout = true;

	private RectangleF m_rectUserName;

	private RectangleF m_rectUserHelp;

	private XPUserEntryButtonsCollection m_buttons;

	private XPUserEntryButton m_ButtonEnter;

	protected TextBox m_textBox;

	private Rectangle m_rectPasswordBox = default(Rectangle);

	private Image m_ButtonEnterIcon;

	private TextRenderingHint m_textRenderingHint;

	private bool m_autoHideTextBox = true;

	private bool m_autoResetPassword = true;

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Get or set component style.")]
	public XpUserStyle Style
	{
		get
		{
			return m_style;
		}
		set
		{
			if (value != m_style)
			{
				if (m_style != null)
				{
					m_style.OnChanged -= style_OnChanged;
				}
				m_style = ((value == null) ? new XpUserStyle() : value);
				m_style.OnChanged += style_OnChanged;
			}
		}
	}

	[Category("Layout")]
	[Description("Get or set user icon size.")]
	public Size ThumbnailSize
	{
		get
		{
			return m_ThumbnailSize;
		}
		set
		{
			if (value != m_ThumbnailSize)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_ThumbnailSize, value);
				m_ThumbnailSize = value;
				OnThumbnailSizeChanged(args);
			}
		}
	}

	[DefaultValue(null)]
	[Description(" Get or set image list user icons.")]
	[Category("Appearance")]
	public ImageList ImageList
	{
		get
		{
			return m_imgList;
		}
		set
		{
			if (value != m_imgList)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_imgList, value);
				m_imgList = value;
				OnImageListChanged(args);
			}
		}
	}

	[Description("Get or set user icon index from image list.")]
	[DefaultValue(-1)]
	[Category("Appearance")]
	[Editor("System.Windows.Forms.Design.ImageIndexEditor, System.Design, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[TypeConverter("System.Windows.Forms.ImageIndexConverter")]
	public int DefaultImageIndex
	{
		get
		{
			return m_iImageIndex;
		}
		set
		{
			ValueChangedEventArgs args = new ValueChangedEventArgs(m_iImageIndex, value);
			m_iImageIndex = value;
			OnDefaultImageIndexChanged(args);
		}
	}

	[DefaultValue(-1)]
	[Description("Get or set user icon index from image list.")]
	[Category("Appearance")]
	[Editor("System.Windows.Forms.Design.ImageIndexEditor, System.Design, Version=1.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a", typeof(UITypeEditor))]
	[TypeConverter("System.Windows.Forms.ImageIndexConverter")]
	public int SelectedImageIndex
	{
		get
		{
			return m_iSelectedImageIndex;
		}
		set
		{
			m_iSelectedImageIndex = value;
		}
	}

	[DefaultValue(null)]
	[Description("Get or set default user icon.")]
	[Category("Appearance")]
	public Image DefaultIcon
	{
		get
		{
			return m_DefaultIcon;
		}
		set
		{
			if (value != m_DefaultIcon)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_DefaultIcon, value);
				m_bNeedRelayout = true;
				m_DefaultIcon = value;
				OnDefaultIconChanged(args);
			}
		}
	}

	[Description("Get or set select user icon.")]
	[DefaultValue(null)]
	[Category("Appearance")]
	public Image SelectIcon
	{
		get
		{
			return m_SelectIcon;
		}
		set
		{
			if (value != m_SelectIcon)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_SelectIcon, value);
				m_SelectIcon = value;
				OnSelectIconChanged(args);
			}
		}
	}

	[DefaultValue(null)]
	[Description("Get or set user icon as select mode.")]
	[Category("Appearance")]
	public Image ButtonEnterIcon
	{
		get
		{
			return m_ButtonEnterIcon;
		}
		set
		{
			if (value != m_ButtonEnterIcon)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_ButtonEnterIcon, value);
				m_ButtonEnterIcon = value;
				OnButtonEnterIconChanged(args);
			}
		}
	}

	[Description("Get or set user name.")]
	[Category("Appearance")]
	[DefaultValue("")]
	public string UserName
	{
		get
		{
			return m_strUserName;
		}
		set
		{
			if (value != m_strUserName)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_strUserName, value);
				m_strUserName = value;
				OnUserNameChanged(args);
			}
		}
	}

	[Category("Appearance")]
	[Description("Get or set user help.")]
	[DefaultValue("")]
	public string HelpString
	{
		get
		{
			return m_strHelpString;
		}
		set
		{
			if (value != m_strHelpString)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_strHelpString, value);
				m_strHelpString = value;
				OnHelpStringChanged(args);
			}
		}
	}

	[Description("True - do not raise\tany\tevents,\totherwise False.")]
	protected internal bool QuietMode
	{
		get
		{
			return m_bSkipEvents;
		}
		set
		{
			if (value != m_bSkipEvents)
			{
				m_bSkipEvents = value;
				OnQuietModeChanged();
			}
		}
	}

	[Description("Get active mode as mouse overhead component.")]
	protected bool IsActive => m_bActive;

	[Description("Get select mode.")]
	protected bool IsSelected => m_bSelect;

	[Description("Get password box.")]
	[Browsable(false)]
	public TextBox TextBox
	{
		get
		{
			if (m_textBox == null)
			{
				ConstructTextBox();
			}
			return m_textBox;
		}
	}

	[Browsable(true)]
	[Description("Get or set Text Rendering Hint.")]
	[DefaultValue(TextRenderingHint.SystemDefault)]
	[Category("Appearance")]
	public TextRenderingHint TextRenderingHint
	{
		get
		{
			return m_textRenderingHint;
		}
		set
		{
			if (value != m_textRenderingHint)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_textRenderingHint, value);
				m_textRenderingHint = value;
				OnTextRenderingHintChanged(args);
			}
		}
	}

	[Browsable(true)]
	[Description("Get or set auto hide text box as control lost focus.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool AutoHideTextBox
	{
		get
		{
			return m_autoHideTextBox;
		}
		set
		{
			if (value != m_autoHideTextBox)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_autoHideTextBox, value);
				m_autoHideTextBox = value;
				OnAutoHideTextBoxChanged(args);
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Get or set auto reset password as text box show.")]
	public bool AutoResetPassword
	{
		get
		{
			return m_autoResetPassword;
		}
		set
		{
			if (value != m_autoResetPassword)
			{
				ValueChangedEventArgs args = new ValueChangedEventArgs(m_autoResetPassword, value);
				m_autoResetPassword = value;
				OnAutoResetPasswordChanged(args);
			}
		}
	}

	[Category("XPUserEntryButtons")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The XPUserEntryButtons present in the control.")]
	public XPUserEntryButtonsCollection Buttons
	{
		get
		{
			return m_buttons;
		}
		set
		{
			if (m_buttons != value)
			{
				m_buttons = value;
			}
		}
	}

	[Browsable(false)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	private Image IconForDrawing
	{
		get
		{
			Image image = (IsSelected ? SelectIcon : DefaultIcon);
			if (image == null)
			{
				int num = (m_bSelect ? SelectedImageIndex : DefaultImageIndex);
				if (num >= 0 && num < ImageList.Images.Count)
				{
					image = ImageList.Images[num];
				}
			}
			return image;
		}
	}

	public event EventHandler QuietModeChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ThumbnailSizeChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler DefaultIconChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler SelectIconChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler UserNameChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler HelpStringChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ImageListChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler DefaultImageIndexChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler PasswordBoxChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler ButtonEnterIconChanged;

	public event PasswordEnterEventHandler PasswordEnter;

	[Category("Property Changed")]
	public event ValueChangedEventHandler TextRenderingHintChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler AutoHideTextBoxChanged;

	[Category("Property Changed")]
	public event ValueChangedEventHandler AutoResetPasswordChanged;

	public XpUserEntry()
	{
		ControlStyles flag = ControlStyles.UserPaint | ControlStyles.ResizeRedraw | ControlStyles.Selectable | ControlStyles.UserMouse | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer;
		SetStyle(flag, value: true);
		m_textStringFormat = new StringFormat(StringFormatFlags.MeasureTrailingSpaces | StringFormatFlags.NoWrap);
		m_textStringFormat.Trimming = StringTrimming.EllipsisCharacter;
		m_buttons = new XPUserEntryButtonsCollection(this);
		m_style = new XpUserStyle();
		m_style.OnChanged += style_OnChanged;
		base.Size = base.Size;
	}

	~XpUserEntry()
	{
		Dispose(!base.IsDisposed);
	}

	public virtual void BeginInit()
	{
		QuietMode = true;
	}

	public virtual void EndInit()
	{
		QuietMode = false;
		if (ThumbnailSize == Size.Empty)
		{
			OnThumbnailSizeChanged(null);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && TextBox != null)
		{
			m_style.OnChanged -= style_OnChanged;
			m_textBox.KeyPress -= OnPasswordKeyPress;
			m_textBox.Leave -= OnPaswordBoxLeave;
		}
		base.Dispose(disposing);
	}

	protected void RaiseQuietModeChangedEvent()
	{
		if (this.QuietModeChanged != null)
		{
			this.QuietModeChanged(this, EventArgs.Empty);
		}
	}

	protected void RaiseThumbnailSizeChanged(ValueChangedEventArgs args)
	{
		if (this.ThumbnailSizeChanged != null && !QuietMode)
		{
			this.ThumbnailSizeChanged(this, args);
		}
	}

	protected void RaiseDefaultIconChanged(ValueChangedEventArgs args)
	{
		if (this.DefaultIconChanged != null && !QuietMode)
		{
			this.DefaultIconChanged(this, args);
		}
	}

	protected void RaiseSelectIconChanged(ValueChangedEventArgs args)
	{
		if (this.SelectIconChanged != null && !QuietMode)
		{
			this.SelectIconChanged(this, args);
		}
	}

	protected void RaiseUserNameChanged(ValueChangedEventArgs args)
	{
		if (this.UserNameChanged != null && !QuietMode)
		{
			this.UserNameChanged(this, args);
		}
	}

	protected void RaiseHelpStringChanged(ValueChangedEventArgs args)
	{
		if (this.HelpStringChanged != null && !QuietMode)
		{
			this.HelpStringChanged(this, args);
		}
	}

	protected void RaiseImageListChanged(ValueChangedEventArgs args)
	{
		if (this.ImageListChanged != null && !QuietMode)
		{
			this.ImageListChanged(this, args);
		}
	}

	protected void RaiseDefaultImageIndex(ValueChangedEventArgs args)
	{
		if (this.DefaultImageIndexChanged != null && !QuietMode)
		{
			this.DefaultImageIndexChanged(this, args);
		}
	}

	protected void RaisePasswordBoxChanged(ValueChangedEventArgs args)
	{
		if (this.PasswordBoxChanged != null && !QuietMode)
		{
			this.PasswordBoxChanged(this, args);
		}
	}

	protected void RaiseButtonEnterIconChanged(ValueChangedEventArgs args)
	{
		if (this.ButtonEnterIconChanged != null && !QuietMode)
		{
			this.ButtonEnterIconChanged(this, args);
		}
	}

	protected void RaiseTextRenderingHintChanged(ValueChangedEventArgs args)
	{
		if (this.TextRenderingHintChanged != null && !QuietMode)
		{
			this.TextRenderingHintChanged(this, args);
		}
	}

	protected void RaiseAutoHideTextBoxChanged(ValueChangedEventArgs args)
	{
		if (this.AutoHideTextBoxChanged != null && !QuietMode)
		{
			this.AutoHideTextBoxChanged(this, args);
		}
	}

	protected void RaiseAutoResetPasswordChanged(ValueChangedEventArgs args)
	{
		if (this.AutoResetPasswordChanged != null && !QuietMode)
		{
			this.AutoResetPasswordChanged(this, args);
		}
	}

	protected bool ShouldSerializeThumbnailSize()
	{
		return ThumbnailSize != new Size(48, 48);
	}

	protected override void OnResize(EventArgs e)
	{
		m_bNeedRelayout = true;
		base.OnResize(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		graphics.SmoothingMode = SmoothingMode.AntiAlias;
		graphics.TextRenderingHint = TextRenderingHint;
		if (m_bNeedRelayout)
		{
			CalculateLayout(graphics);
			m_bNeedRelayout = false;
		}
		Style.DrawControlBackground(graphics, base.ClientRectangle);
		if (Style.DrawShadow && Style.ShadowSize != 0)
		{
			DrawShadow(graphics);
		}
		Style.DrawImageRect(graphics, m_rectIcon, IsActive || IsSelected);
		if (IconForDrawing != null)
		{
			Region clip = graphics.Clip;
			graphics.Clip = m_rgIconRect;
			graphics.DrawImage(IconForDrawing, m_rgIconRect.GetBounds(graphics));
			graphics.Clip = clip;
		}
		Color color = (IsActive ? Style.UserNameColorActive : Style.UserNameColorDefault);
		using SolidBrush solidBrush = new SolidBrush(color);
		graphics.DrawString(UserName, IsActive ? Style.ActiveFont : Style.Font, solidBrush, m_rectUserName, m_textStringFormat);
		solidBrush.Color = (IsActive ? Style.UserHelpColorActive : Style.UserHelpColorDefault);
		if (!IsSelected)
		{
			graphics.DrawString(HelpString, IsActive ? Style.ActiveUserHelpFont : Style.DefaultUserHelpFont, solidBrush, m_rectUserHelp, m_textStringFormat);
		}
		if (!IsSelected)
		{
			return;
		}
		Rectangle rectPasswordBox = m_rectPasswordBox;
		rectPasswordBox.Inflate(4, 4);
		CalculateButtonsLayout(ThumbnailSize.Width, rectPasswordBox);
		m_ButtonEnter.Draw(graphics);
		m_rectTextBox = GetRoundRect(rectPasswordBox.X, rectPasswordBox.Y, rectPasswordBox.Width, rectPasswordBox.Height, 3);
		graphics.FillPath(new SolidBrush(TextBox.BackColor), m_rectTextBox);
		TextBox.Bounds = m_rectPasswordBox;
		if (m_buttons == null || m_buttons.Count <= 0)
		{
			return;
		}
		int i = 0;
		for (int count = m_buttons.Count; i < count; i++)
		{
			if (RightToLeft == RightToLeft.Yes)
			{
				m_buttons[i].Bounds = MirrorRectangle(m_buttons[i].Bounds);
			}
			if (m_buttons[i].Visible)
			{
				m_buttons[i].Draw(graphics);
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_bActive = false;
		m_bNeedRelayout = true;
		Invalidate();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (IsSelected)
		{
			if (HitTest(e.X, e.Y) != HitAreas.ButtonEnter)
			{
				if (m_ButtonEnter != null && (m_ButtonEnter.State == XPUserEntryButtonState.Highlighted || m_ButtonEnter.State == XPUserEntryButtonState.Pushed))
				{
					m_ButtonEnter.State = XPUserEntryButtonState.Normal;
					Invalidate(m_ButtonEnter.Bounds);
				}
				int i = 0;
				for (int count = m_buttons.Count; i < count; i++)
				{
					if (m_buttons[i].State == XPUserEntryButtonState.Highlighted || m_buttons[i].State == XPUserEntryButtonState.Pushed)
					{
						m_buttons[i].State = XPUserEntryButtonState.Normal;
						Invalidate(m_buttons[i].Bounds);
					}
				}
			}
			else
			{
				if (m_ButtonEnter.Bounds.Contains(e.X, e.Y) && m_ButtonEnter.State != XPUserEntryButtonState.Pushed)
				{
					m_ButtonEnter.State = XPUserEntryButtonState.Highlighted;
					Invalidate(m_ButtonEnter.Bounds);
				}
				int j = 0;
				for (int count2 = m_buttons.Count; j < count2; j++)
				{
					if (m_buttons[j].Enable && m_buttons[j].Bounds.Contains(e.X, e.Y) && m_buttons[j].State != XPUserEntryButtonState.Pushed)
					{
						m_buttons[j].State = XPUserEntryButtonState.Highlighted;
						Invalidate(m_buttons[j].Bounds);
					}
				}
			}
		}
		base.OnMouseMove(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (m_ButtonEnter != null && m_ButtonEnter.Bounds.Contains(e.X, e.Y))
		{
			m_ButtonEnter.State = XPUserEntryButtonState.Pushed;
			Invalidate(m_ButtonEnter.Bounds);
		}
		else if (HitAddedButtons(e.X, e.Y))
		{
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				if (m_buttons[i].Enable && m_buttons[i].Bounds.Contains(e.X, e.Y))
				{
					m_buttons[i].State = XPUserEntryButtonState.Pushed;
					Invalidate(m_buttons[i].Bounds);
				}
			}
		}
		base.OnMouseDown(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (m_ButtonEnter != null && m_ButtonEnter.Bounds.Contains(e.X, e.Y) && m_ButtonEnter.State == XPUserEntryButtonState.Pushed)
		{
			m_ButtonEnter.State = XPUserEntryButtonState.Normal;
			Invalidate(m_ButtonEnter.Bounds);
		}
		else if (HitAddedButtons(e.X, e.Y))
		{
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				if (m_buttons[i].Bounds.Contains(e.X, e.Y) && m_buttons[i].State == XPUserEntryButtonState.Pushed)
				{
					m_buttons[i].State = XPUserEntryButtonState.Normal;
					Invalidate(m_buttons[i].Bounds);
				}
			}
		}
		base.OnMouseUp(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		m_bActive = true;
		m_bNeedRelayout = true;
		Invalidate();
		base.OnMouseEnter(e);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		TextBox textBox = TextBox;
		if (!textBox.Visible)
		{
			if (AutoResetPassword)
			{
				textBox.Text = "";
			}
			textBox.Show();
		}
		textBox.Focus();
		m_bSelect = true;
		m_bNeedRelayout = true;
		Invalidate();
		base.OnGotFocus(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		m_bNeedRelayout = true;
		Invalidate();
		base.OnLostFocus(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		m_bNeedRelayout = true;
		if (RightToLeft.Yes == RightToLeft)
		{
			m_textStringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		else
		{
			m_textStringFormat.FormatFlags &= ~StringFormatFlags.DirectionRightToLeft;
		}
		base.OnRightToLeftChanged(e);
	}

	protected void OnPaswordBoxLeave(object sender, EventArgs e)
	{
		if (base.ActiveControl != this && AutoHideTextBox)
		{
			TextBox.Hide();
			m_bSelect = false;
		}
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnQuietModeChanged()
	{
		RaiseQuietModeChangedEvent();
	}

	protected virtual void OnThumbnailSizeChanged(ValueChangedEventArgs args)
	{
		RaiseThumbnailSizeChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnDefaultIconChanged(ValueChangedEventArgs args)
	{
		RaiseDefaultIconChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnSelectIconChanged(ValueChangedEventArgs args)
	{
		RaiseSelectIconChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnUserNameChanged(ValueChangedEventArgs args)
	{
		RaiseUserNameChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnHelpStringChanged(ValueChangedEventArgs args)
	{
		RaiseHelpStringChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnImageListChanged(ValueChangedEventArgs args)
	{
		RaiseImageListChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnDefaultImageIndexChanged(ValueChangedEventArgs args)
	{
		RaiseDefaultImageIndex(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnPasswordBoxChanged(ValueChangedEventArgs args)
	{
		RaisePasswordBoxChanged(args);
	}

	protected virtual void OnButtonEnterIconChanged(ValueChangedEventArgs args)
	{
		RaiseButtonEnterIconChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected override void OnClick(EventArgs e)
	{
		Point pt = PointToClient(Control.MousePosition);
		if (m_ButtonEnter != null && m_ButtonEnter.Bounds.Contains(pt) && IsSelected)
		{
			PasswordEnterEventArgs e2 = new PasswordEnterEventArgs(UserName, m_textBox.Text);
			OnPasswordEnter(e2);
		}
		base.OnClick(e);
	}

	protected void OnPasswordKeyPress(object sender, KeyPressEventArgs e)
	{
		Keys keys = (Keys)Convert.ToByte(e.KeyChar);
		if (Keys.Return == keys)
		{
			OnPasswordEnter(new PasswordEnterEventArgs(UserName, m_textBox.Text));
		}
		else if (Keys.Escape == keys)
		{
			CloseInputArea();
		}
	}

	protected virtual void OnPasswordEnter(PasswordEnterEventArgs e)
	{
		if (this.PasswordEnter != null)
		{
			this.PasswordEnter(this, e);
			if (!e.Cancel)
			{
				CloseInputArea();
			}
		}
	}

	public void CloseInputArea()
	{
		TextBox.Hide();
		m_bSelect = false;
		m_bNeedRelayout = true;
		Invalidate();
	}

	private void style_OnChanged(object sender, EventArgs e)
	{
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnTextRenderingHintChanged(ValueChangedEventArgs args)
	{
		m_bNeedRelayout = true;
		Invalidate();
		RaiseTextRenderingHintChanged(args);
	}

	protected virtual void OnTextBoxCreate()
	{
		m_textBox = new TextBox();
		m_textBox.Name = "PasswordBox";
		m_textBox.PasswordChar = '•';
		m_textBox.BorderStyle = BorderStyle.None;
	}

	protected virtual void OnTextBoxInitialize()
	{
		m_textBox.Leave += OnPaswordBoxLeave;
		m_textBox.KeyPress += OnPasswordKeyPress;
	}

	private void ConstructTextBox()
	{
		OnTextBoxCreate();
		base.Controls.Add(TextBox);
		OnTextBoxInitialize();
	}

	protected virtual void OnAutoHideTextBoxChanged(ValueChangedEventArgs args)
	{
		RaiseAutoHideTextBoxChanged(args);
		m_bNeedRelayout = true;
		Invalidate();
	}

	protected virtual void OnAutoResetPasswordChanged(ValueChangedEventArgs args)
	{
		RaiseAutoResetPasswordChanged(args);
	}

	private GraphicsPath GetRoundRect(int x, int y, int w, int h, int r)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		if (r > 0)
		{
			graphicsPath.AddArc(x, y, r * 2, r * 2, 180f, 90f);
			graphicsPath.AddLine(x + r, y, x + w - r, y);
			graphicsPath.AddArc(x + w - r * 2, y, r * 2, r * 2, 270f, 90f);
			graphicsPath.AddLine(x + w, y + r, x + w, y + h - r);
			graphicsPath.AddArc(x + w - r * 2, y + h - r * 2, r * 2, r * 2, 0f, 90f);
			graphicsPath.AddLine(x + w - r, y + h, x + r, y + h);
			graphicsPath.AddArc(x, y + h - r * 2, r * 2, r * 2, 90f, 90f);
			graphicsPath.AddLine(x, y + h - r, x, y + r);
			graphicsPath.CloseFigure();
		}
		else
		{
			graphicsPath.AddRectangle(new Rectangle(x, y, w, h));
		}
		return graphicsPath;
	}

	private void CalculateLayout(Graphics gph)
	{
		int num = ThumbnailSize.Width;
		int num2 = ThumbnailSize.Height;
		m_rectIcon = GetRoundRect(5, 5, num + 4 + 3, num2 + 4 + 3, Style.RectRadius);
		GraphicsPath roundRect = GetRoundRect(9, 9, num, num2, Style.IconRadius);
		if (m_rgIconRect != null)
		{
			m_rgIconRect.Dispose();
		}
		m_rgIconRect = new Region(roundRect);
		roundRect.Dispose();
		int textAreaWidth = base.Width - (5 + num + 5 + 3);
		SizeF sizeUserName = CalculateUserNameLayout(gph, textAreaWidth, num);
		CalculateTextBoxLayout(num, sizeUserName, gph);
		CalculateUserHelpLayout(gph, textAreaWidth, num, sizeUserName);
		if (RightToLeft == RightToLeft.Yes)
		{
			MirrorAll(gph);
		}
	}

	private SizeF CalculateUserNameLayout(Graphics gph, int textAreaWidth, int thumbWidth)
	{
		SizeF result = gph.MeasureString(UserName, IsActive ? Style.ActiveFont : Style.Font, textAreaWidth, m_textStringFormat);
		m_rectUserName = new RectangleF(thumbWidth + 22, 5f, Math.Min(result.Width, base.Width - (thumbWidth + 22 + 5)), result.Height);
		return result;
	}

	private void CalculateUserHelpLayout(Graphics gph, int textAreaWidth, int thumbWidth, SizeF m_sizeUserName)
	{
		SizeF sizeF = gph.MeasureString(HelpString, IsActive ? Style.ActiveUserHelpFont : Style.DefaultUserHelpFont, textAreaWidth, m_textStringFormat);
		m_rectUserHelp = new RectangleF(thumbWidth + 22, m_sizeUserName.Height + 5f, Math.Min(sizeF.Width, base.Width - (thumbWidth + 22 + 5)), sizeF.Height);
	}

	private void CalculateTextBoxLayout(int thumbWidth, SizeF m_sizeUserName, Graphics g)
	{
		if (IsSelected)
		{
			m_rectPasswordBox.Location = new Point(thumbWidth + 22, (int)m_sizeUserName.Height + 5 + 2);
			int num = TextBox.Height;
			m_rectPasswordBox.Height = num;
			if (m_ButtonEnter == null)
			{
				m_ButtonEnter = new XPUserEntryButton("ButtonEnter", ButtonEnterIcon, XPUserEntryButtonType.PasswordEnter, m_buttons.Count, enabled: true, visible: true);
				m_ButtonEnter.Bounds = new Rectangle(Point.Empty, new Size(num + 8, num + 8));
			}
			if (m_buttons.Count == 0)
			{
				m_rectPasswordBox.Width = base.Width - (thumbWidth + 22 + 5 + 5 + m_ButtonEnter.Bounds.Width + 4);
			}
			else
			{
				m_rectPasswordBox.Width = base.Width - (thumbWidth + 22 + 5 + 5 + 4 + (m_buttons.Count + 1) * (num + 8) + m_buttons.Count * 5);
			}
			if (m_rectPasswordBox.Width < 50)
			{
				m_rectPasswordBox.Width = 50;
			}
			CalculateButtonsLayout(thumbWidth, m_rectPasswordBox);
		}
	}

	private void CalculateButtonsLayout(int thumbWidth, Rectangle rectPasswordBox)
	{
		if (m_ButtonEnter == null)
		{
			m_ButtonEnter = new XPUserEntryButton("EnterButton", ButtonEnterIcon, XPUserEntryButtonType.PasswordEnter, m_buttons.Count, enabled: true, visible: true);
		}
		Rectangle empty = Rectangle.Empty;
		empty = ((RightToLeft != RightToLeft.Yes) ? new Rectangle(rectPasswordBox.Right + 5, rectPasswordBox.Top, rectPasswordBox.Height, rectPasswordBox.Height) : new Rectangle(rectPasswordBox.Left - rectPasswordBox.Height - 5, rectPasswordBox.Top, rectPasswordBox.Height, rectPasswordBox.Height));
		m_ButtonEnter.Bounds = empty;
		if (m_buttons != null && m_buttons.Count > 0)
		{
			int num = thumbWidth + 22 + m_rectPasswordBox.Width + 4 + 5 + m_ButtonEnter.Bounds.Width;
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				Rectangle bounds = new Rectangle(num + 5 + (5 + rectPasswordBox.Height) * i, rectPasswordBox.Top, rectPasswordBox.Height, rectPasswordBox.Height);
				m_buttons[FindNextButton(m_indexButtonDrawing)].Bounds = bounds;
			}
			m_indexButtonDrawing = 0;
		}
	}

	private int FindNextButton(int index)
	{
		while (true)
		{
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				if (m_buttons[i].Index == index)
				{
					m_indexButtonDrawing = index + 1;
					return i;
				}
			}
			index++;
		}
	}

	private void DrawShadow(Graphics g)
	{
		int shadowSize = Style.ShadowSize;
		int num = 1;
		if (RightToLeft == RightToLeft.Yes)
		{
			num = -1;
		}
		g.TranslateTransform(shadowSize * num, shadowSize);
		using (PathGradientBrush pathGradientBrush = new PathGradientBrush(m_rectIcon))
		{
			RectangleF bounds = m_rectIcon.GetBounds();
			pathGradientBrush.CenterPoint = new PointF(bounds.Left + bounds.Width / 2f, bounds.Top + bounds.Height / 2f);
			pathGradientBrush.CenterColor = m_colorShadowDark;
			Blend blend = new Blend(1);
			blend.Factors = new float[1] { 10f };
			pathGradientBrush.Blend = blend;
			pathGradientBrush.SurroundColors = new Color[1] { m_colorShadowLight };
			g.FillPath(pathGradientBrush, m_rectIcon);
		}
		g.TranslateTransform(-shadowSize * num, -shadowSize);
	}

	public HitAreas HitTest(int x, int y)
	{
		HitAreas result = HitAreas.None;
		if (m_rectIcon != null)
		{
			if (m_rectIcon.IsVisible(x, y))
			{
				result = HitAreas.Icon;
			}
			else if (m_rectUserName.Contains(x, y))
			{
				result = HitAreas.UserName;
			}
			else if (!IsSelected && m_rectUserHelp.Contains(x, y))
			{
				result = HitAreas.HelpString;
			}
			else if (IsSelected && m_rectPasswordBox.Contains(x, y))
			{
				result = HitAreas.TextBox;
			}
			else if (IsSelected && m_ButtonEnter != null && m_ButtonEnter.Bounds.Contains(x, y))
			{
				result = HitAreas.ButtonEnter;
			}
			else if (IsSelected && m_buttons.Count != 0 && HitAddedButtons(x, y))
			{
				result = HitAreas.ButtonEnter;
			}
		}
		return result;
	}

	private bool HitAddedButtons(int x, int y)
	{
		if (m_buttons != null && m_buttons.Count > 0)
		{
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				if (m_buttons[i].Bounds.Contains(x, y))
				{
					return true;
				}
			}
		}
		return false;
	}

	public HitAreas HitTest(Point pt)
	{
		return HitTest(pt.X, pt.Y);
	}

	private RectangleF MirrorRectangleF(RectangleF rect)
	{
		PointF location = new PointF((float)base.Width - (rect.Width + rect.Left), rect.Top);
		return new RectangleF(location, rect.Size);
	}

	private Rectangle MirrorRectangle(Rectangle rect)
	{
		Point location = new Point(base.Width - (rect.Width + rect.Left), rect.Top);
		return new Rectangle(location, rect.Size);
	}

	private void MirrorRegion(Region rg, Graphics g)
	{
		Matrix matrix = new Matrix();
		matrix.Translate((float)base.Width - (rg.GetBounds(g).Left * 2f + rg.GetBounds(g).Width), 0f);
		rg.Transform(matrix);
	}

	private void MirrorGraphicsPath(ref GraphicsPath gp)
	{
		Matrix matrix = new Matrix();
		matrix.Translate((float)base.Width - (gp.GetBounds().Left * 2f + gp.GetBounds().Width), 0f);
		gp.Transform(matrix);
	}

	private void MirrorAll(Graphics g)
	{
		m_rectUserHelp = MirrorRectangleF(m_rectUserHelp);
		m_rectUserName = MirrorRectangleF(m_rectUserName);
		if (m_ButtonEnter != null)
		{
			m_ButtonEnter.Bounds = MirrorRectangle(m_ButtonEnter.Bounds);
		}
		if (m_buttons != null && m_buttons.Count > 0)
		{
			int i = 0;
			for (int count = m_buttons.Count; i < count; i++)
			{
				m_buttons[i].Bounds = MirrorRectangle(m_buttons[i].Bounds);
			}
		}
		MirrorRegion(m_rgIconRect, g);
		MirrorGraphicsPath(ref m_rectIcon);
		m_rectPasswordBox.X = base.Width - (m_rectPasswordBox.Width + m_rectPasswordBox.Left);
	}
}
