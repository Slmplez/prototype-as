using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class CheckRadioBase : ThemedControl, IMessageFilter
{
	private readonly Size cszDefaultCheckboxSize = new Size(13, 13);

	private int cncheckBoxStandOff = 2;

	private bool useMnemonic = true;

	private bool altPressed;

	protected bool mbinitializing;

	protected bool mbtextRender = true;

	protected Rectangle mrectBox = Rectangle.Empty;

	protected Rectangle mrectText = Rectangle.Empty;

	protected Size mszImagedBox = Size.Empty;

	protected ContentAlignment malignCheckBox = ContentAlignment.MiddleLeft;

	protected ContentAlignment mtextAlignment = ContentAlignment.MiddleLeft;

	protected ContentAlignment malignText = ContentAlignment.MiddleLeft;

	protected bool mmouseDown;

	protected bool mmouseOver;

	protected bool mdrawFocusRectangle = true;

	protected bool mautoHeight;

	protected bool mimageCheckBox;

	protected bool mstretchImage = true;

	protected bool mwrapText = true;

	private bool textShadow;

	protected ButtonState buttonState;

	protected Point textOffset = Point.Empty;

	protected Point mshadowOffset = new Point(2, 2);

	protected Rectangle focusRect = Rectangle.Empty;

	protected Image mcheckedImage;

	protected Image muncheckedImage;

	protected Image mdisabledImage;

	protected Image mmouseOverCheckedImage;

	protected Image mmouseOverUncheckedImage;

	protected Image mindeterminateImage;

	protected Image mmouseOverIndetermImage;

	protected Border3DStyle mborder3DStyle = Border3DStyle.Sunken;

	protected BorderStyle mborderStyle;

	protected ButtonBorderStyle mborderSingle = ButtonBorderStyle.Solid;

	protected CheckBoxAdvBackStyle backStyle;

	protected Color mborderColor = SystemColors.WindowFrame;

	protected Color mhotBorderColor = SystemColors.WindowFrame;

	protected Color mshadowColor = Color.Black;

	protected Color mgradientStart = SystemColors.Control;

	protected Color mgradientEnd = SystemColors.ControlDark;

	private string mstrCheckedString = "Checked";

	private string mstrUncheckedString = "Unchecked";

	private int mncheckedInt = 1;

	private int mnuncheckedInt;

	private ControlDrawing cd = new ControlDrawing();

	private Container components;

	protected ThemedControlDrawing tcd;

	[DefaultValue(true)]
	public bool UseMnemonic
	{
		get
		{
			return useMnemonic;
		}
		set
		{
			if (useMnemonic != value)
			{
				useMnemonic = value;
				RecalculatePositions();
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	[DefaultValue(TextAlignment.Left)]
	[Description("Indicates the alignment of the text.WrapText must be set to false.")]
	[Category("Appearance")]
	[Obsolete]
	public TextAlignment TextAlignment
	{
		get
		{
			return ModifyAlign(mtextAlignment);
		}
		set
		{
			TextContentAlignment = ModifyAlign(value);
			RecalculatePositions();
			Invalidate();
		}
	}

	[Description("Indicates the alignment of the text.WrapText must be set to false.")]
	[DefaultValue(ContentAlignment.MiddleLeft)]
	[Category("Appearance")]
	public ContentAlignment TextContentAlignment
	{
		get
		{
			return malignText;
		}
		set
		{
			if (malignText != value)
			{
				malignText = value;
				RecalculatePositions();
				Invalidate();
			}
		}
	}

	[Description("The end color of the gradient of the background of the control.")]
	[Category("Appearance")]
	[DefaultValue(typeof(Color), "ControlDark")]
	public Color GradientEnd
	{
		get
		{
			return mgradientEnd;
		}
		set
		{
			if (mgradientEnd != value)
			{
				mgradientEnd = value;
				Invalidate();
			}
		}
	}

	[Description("The start color of the gradient of the background of the control.")]
	[DefaultValue(typeof(Color), "Control")]
	[Category("Appearance")]
	public Color GradientStart
	{
		get
		{
			return mgradientStart;
		}
		set
		{
			if (mgradientStart != value)
			{
				mgradientStart = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(CheckBoxAdvBackStyle.Default)]
	[Description("The background style of the CheckBox.")]
	[Category("Appearance")]
	public CheckBoxAdvBackStyle BackgroundStyle
	{
		get
		{
			return backStyle;
		}
		set
		{
			if (backStyle != value)
			{
				backStyle = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Point), "2, 2")]
	[Description("The offset of the text shadow.")]
	public Point ShadowOffset
	{
		get
		{
			return mshadowOffset;
		}
		set
		{
			if (mshadowOffset != value)
			{
				mshadowOffset = value;
				if (textShadow)
				{
					Invalidate();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("The color of the text shadow.")]
	[DefaultValue(typeof(Color), "Black")]
	public Color ShadowColor
	{
		get
		{
			return mshadowColor;
		}
		set
		{
			if (mshadowColor != value)
			{
				mshadowColor = value;
				if (textShadow)
				{
					Invalidate();
				}
			}
		}
	}

	[Description("Determines if the text shadow is visible.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool TextShadow
	{
		get
		{
			return textShadow;
		}
		set
		{
			if (textShadow != value)
			{
				textShadow = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines if the text in the CheckBox is wrapped.")]
	[DefaultValue(true)]
	public bool WrapText
	{
		get
		{
			return mwrapText;
		}
		set
		{
			if (mwrapText != value)
			{
				mwrapText = value;
				RecalculatePositions();
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines if the state images of the CheckBox are stretched.")]
	[DefaultValue(true)]
	public bool StretchImage
	{
		get
		{
			return mstretchImage;
		}
		set
		{
			if (mstretchImage != value)
			{
				mstretchImage = value;
				if (mimageCheckBox)
				{
					Invalidate(invalidateChildren: true);
				}
			}
		}
	}

	[Description("Determines if the checkbox will be drawn using the images provided.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ImageCheckBox
	{
		get
		{
			return mimageCheckBox;
		}
		set
		{
			if (mimageCheckBox != value)
			{
				mimageCheckBox = value;
				RecalculatePositions();
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(ContentAlignment.MiddleLeft)]
	[Description("Indicates the alignment of CheckBox.")]
	[Category("Appearance")]
	public ContentAlignment CheckAlign
	{
		get
		{
			return malignCheckBox;
		}
		set
		{
			if (malignCheckBox != value)
			{
				malignCheckBox = value;
				RecalculatePositions();
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Determines if the CheckBox will automatically calculate it`s height.")]
	public bool AutoHeight
	{
		get
		{
			return mautoHeight;
		}
		set
		{
			if (mautoHeight != value)
			{
				mautoHeight = value;
				if (base.Parent != null)
				{
					base.Parent.PerformLayout(this, "Bounds");
				}
				RecalculatePositions();
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Description("Determines if the focus rectangle is visible when it gets the focus.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool DrawFocusRectangle
	{
		get
		{
			return mdrawFocusRectangle;
		}
		set
		{
			if (mdrawFocusRectangle != value)
			{
				mdrawFocusRectangle = value;
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(Border3DStyle.Sunken)]
	[Description("Determines the style of the 3Dborder.")]
	[Category("Appearance")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return mborder3DStyle;
		}
		set
		{
			bool flag = false;
			if (mborder3DStyle != value && mborderStyle == BorderStyle.Fixed3D)
			{
				flag = true;
			}
			mborder3DStyle = value;
			if (flag)
			{
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(BorderStyle.None)]
	[Category("Appearance")]
	[Description("Determines the style of the border.")]
	public BorderStyle BorderStyle
	{
		get
		{
			return mborderStyle;
		}
		set
		{
			if (mborderStyle != value)
			{
				mborderStyle = value;
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(ButtonBorderStyle.Solid)]
	[Category("Appearance")]
	[Description("Determines the style of the thin border.")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return mborderSingle;
		}
		set
		{
			bool flag = false;
			if (mborderSingle != value && mborderStyle == BorderStyle.FixedSingle)
			{
				flag = true;
			}
			mborderSingle = value;
			if (flag)
			{
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines the color of the FixedSingle border when mouse over.")]
	[DefaultValue(typeof(Color), "WindowFrame")]
	public Color HotBorderColor
	{
		get
		{
			return mhotBorderColor;
		}
		set
		{
			if (mhotBorderColor != value)
			{
				mhotBorderColor = value;
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Description("Determines the color of the border.")]
	[DefaultValue(typeof(Color), "WindowFrame")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			return mborderColor;
		}
		set
		{
			if (mborderColor != value)
			{
				mborderColor = value;
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Description("Gets or sets the image used to draw the checkbox when unchecked and mouse over.")]
	[Category("StateImages")]
	[DefaultValue(null)]
	public Image MouseOverUncheckedImage
	{
		get
		{
			return mmouseOverUncheckedImage;
		}
		set
		{
			if (mmouseOverUncheckedImage != value)
			{
				mmouseOverUncheckedImage = value;
			}
		}
	}

	[Category("StateImages")]
	[Description("Gets or sets the image used to draw the checkbox when checked and mouse over.")]
	[DefaultValue(null)]
	public Image MouseOverCheckedImage
	{
		get
		{
			return mmouseOverCheckedImage;
		}
		set
		{
			if (mmouseOverCheckedImage != value)
			{
				mmouseOverCheckedImage = value;
			}
		}
	}

	[DefaultValue(null)]
	[Category("StateImages")]
	[Description("Gets or sets the image used to draw the checkbox when disabled.")]
	public Image DisabledImage
	{
		get
		{
			return mdisabledImage;
		}
		set
		{
			if (mdisabledImage != value)
			{
				mdisabledImage = value;
			}
		}
	}

	[DefaultValue(null)]
	[Category("StateImages")]
	[Description("Gets or sets the image used to draw the checkbox when unchecked and mouse not over.")]
	public Image UncheckedImage
	{
		get
		{
			return muncheckedImage;
		}
		set
		{
			if (muncheckedImage != value)
			{
				muncheckedImage = value;
			}
		}
	}

	[Category("StateImages")]
	[Description("Gets or sets the image used to draw the checkbox when checked and mouse not over.")]
	[DefaultValue(null)]
	public Image CheckedImage
	{
		get
		{
			return mcheckedImage;
		}
		set
		{
			if (mcheckedImage != value)
			{
				mcheckedImage = value;
			}
		}
	}

	[DefaultValue(typeof(Size), "13, 13")]
	[Description("Gets or sets the image checkbox size.")]
	[Category("StateImages")]
	public Size ImageCheckBoxSize
	{
		get
		{
			if (mszImagedBox == Size.Empty)
			{
				mszImagedBox = cszDefaultCheckboxSize;
			}
			return mszImagedBox;
		}
		set
		{
			if (mbinitializing || (mszImagedBox != value && value.Height < base.ClientRectangle.Size.Height && value.Width < base.ClientRectangle.Size.Width))
			{
				mszImagedBox = value;
				if (!mbinitializing && ImageCheckBox)
				{
					RecalculatePositions();
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(1)]
	[Category("DataBinding")]
	[Description("Gets or sets IntValue for the checked state.")]
	public int CheckedInt
	{
		get
		{
			return mncheckedInt;
		}
		set
		{
			mncheckedInt = value;
		}
	}

	[Description("Gets or sets IntValue for the unchecked state.")]
	[DefaultValue(0)]
	[Category("DataBinding")]
	public int UncheckedInt
	{
		get
		{
			return mnuncheckedInt;
		}
		set
		{
			mnuncheckedInt = value;
		}
	}

	[Description("Gets or sets StringValue for the checked state.")]
	[Category("DataBinding")]
	[DefaultValue("Checked")]
	public string CheckedString
	{
		get
		{
			return mstrCheckedString;
		}
		set
		{
			mstrCheckedString = value;
		}
	}

	[Description("Gets or sets StringValue for the unchecked state.")]
	[DefaultValue("Unchecked")]
	[Category("DataBinding")]
	public string UncheckedString
	{
		get
		{
			return mstrUncheckedString;
		}
		set
		{
			mstrUncheckedString = value;
		}
	}

	public CheckRadioBase()
	{
		InitializeComponent();
		SetStyle(ControlStyles.UserPaint | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		tcd = new ThemedControlDrawing("BUTTON", this);
		Application.AddMessageFilter(this);
	}

	internal Rectangle GetSpecificRectangle(Size checkBoxSize)
	{
		return new Rectangle(mrectBox.Location, checkBoxSize);
	}

	internal int GetRectBoxWidth()
	{
		return mrectBox.Width;
	}

	internal int GetRectBoxHeight()
	{
		return mrectBox.Height;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (tcd != null)
			{
				tcd.Dispose();
				tcd = null;
			}
		}
		base.Dispose(disposing);
	}

	protected void RecalculatePositions()
	{
		if (AutoHeight)
		{
			RecalculateHeight();
		}
		Rectangle clientRectangle = base.ClientRectangle;
		Size size = ((!ImageCheckBox) ? cszDefaultCheckboxSize : ImageCheckBoxSize);
		clientRectangle = Rectangle.Inflate(clientRectangle, -2, -2);
		mrectBox.Size = size;
		mrectBox.Location = CalculatePosition(clientRectangle, malignCheckBox, size);
		RecalculateAlignRect(ref clientRectangle, size);
		mrectText.Size = GetTextSize(clientRectangle.Width, clientRectangle.Height);
		mrectText.Location = CalculatePosition(clientRectangle, malignText, mrectText.Size);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		bool isMirrored = GetIsMirrored();
		if (backStyle == CheckBoxAdvBackStyle.HorizontalGradient)
		{
			Color color = (isMirrored ? mgradientEnd : mgradientStart);
			Color color2 = (isMirrored ? mgradientStart : mgradientEnd);
			cd.DrawGradient(e.Graphics, base.ClientRectangle, color, color2);
		}
		if (backStyle == CheckBoxAdvBackStyle.VerticalGradient)
		{
			cd.DrawVerticalGradient(e.Graphics, base.ClientRectangle, mgradientStart, mgradientEnd);
		}
		cd.DrawBorder(e.Graphics, base.ClientRectangle, mborderStyle, mborder3DStyle, mborderSingle, mmouseOver ? mhotBorderColor : mborderColor);
		if (mdrawFocusRectangle && Focused)
		{
			ControlPaint.DrawBorder(e.Graphics, mrectText, SystemColors.WindowFrame, ButtonBorderStyle.Dotted);
		}
		DrawText(e.Graphics);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		RecalculatePositions();
		base.OnRightToLeftChanged(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		if (base.Enabled)
		{
			mmouseOver = true;
			Invalidate(invalidateChildren: true);
			base.OnMouseEnter(e);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		mmouseOver = false;
		Invalidate(invalidateChildren: true);
		base.OnMouseLeave(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (base.Enabled)
		{
			if (e.Button == MouseButtons.Left)
			{
				Focus();
				mmouseDown = true;
			}
			base.OnMouseDown(e);
			Invalidate(invalidateChildren: true);
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (base.Enabled)
		{
			if (e.Button == MouseButtons.Left)
			{
				mmouseDown = false;
			}
			base.OnMouseUp(e);
			Invalidate(invalidateChildren: true);
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (!mbinitializing)
		{
			RecalculatePositions();
			Invalidate(invalidateChildren: true);
			base.OnSizeChanged(e);
		}
	}

	protected override void OnEnter(EventArgs e)
	{
		if (mdrawFocusRectangle)
		{
			Invalidate(invalidateChildren: true);
		}
		base.OnEnter(e);
	}

	protected override void OnLeave(EventArgs e)
	{
		Invalidate(invalidateChildren: true);
		base.OnLeave(e);
	}

	protected override bool IsInputKey(Keys keyData)
	{
		if (keyData == Keys.Space)
		{
			return true;
		}
		return base.IsInputKey(keyData);
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		if (e.KeyData == Keys.Space)
		{
			if (base.Enabled)
			{
				mmouseDown = false;
				Invalidate(invalidateChildren: true);
			}
			e.Handled = true;
		}
		base.OnKeyDown(e);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (!mbinitializing)
		{
			RecalculatePositions();
			Invalidate();
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		if (AutoHeight)
		{
			RecalculateHeight();
		}
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
		Invalidate(invalidateChildren: true);
	}

	protected override void OnThemeChanged(EventArgs e)
	{
		Invalidate(invalidateChildren: true);
		base.OnThemeChanged(e);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		RecalculatePositions();
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.Size = new System.Drawing.Size(150, 21);
		this.mrectBox.Size = this.cszDefaultCheckboxSize;
		base.ResumeLayout(false);
	}

	private bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	private void DrawText(Graphics g)
	{
		bool isMirrored = GetIsMirrored();
		StringFormat stringFormat = new StringFormat();
		stringFormat.HotkeyPrefix = HotkeyPrefix.Show;
		if (!mwrapText)
		{
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		}
		if (isMirrored)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		if (!altPressed && useMnemonic && !base.DesignMode && !SystemInformationExt.KeyboardCuesAlwaysOn)
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.Hide;
		}
		if (!useMnemonic)
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.None;
		}
		int num = (isMirrored ? (-mshadowOffset.X) : mshadowOffset.X);
		if (mwrapText)
		{
			if (textShadow)
			{
				Rectangle rectangle = new Rectangle(mrectText.Location, mrectText.Size);
				rectangle.Offset(num, mshadowOffset.Y);
				g.DrawString(Text, Font, new SolidBrush(mshadowColor), rectangle, stringFormat);
			}
			AppendStateAndThemeLogic(g, stringFormat);
		}
		else
		{
			if (textShadow)
			{
				g.DrawString(Text, Font, new SolidBrush(mshadowColor), new Point(mrectText.X + num, mrectText.Y + mshadowOffset.Y), stringFormat);
			}
			AppendStateAndThemeLogic(g, stringFormat);
		}
	}

	private void AppendStateAndThemeLogic(Graphics e, StringFormat sf)
	{
		if (!mbtextRender)
		{
			return;
		}
		if (base.Enabled)
		{
			e.DrawString(Text, Font, new SolidBrush(ForeColor), mrectText, sf);
			return;
		}
		if (ThemesEnabled)
		{
			if (!base.Enabled)
			{
				Color controlDark = SystemColors.ControlDark;
				Brush brush = SystemBrushes.FromSystemColor(controlDark);
				e.DrawString(Text, Font, brush, mrectText, sf);
			}
			return;
		}
		if (BackColor == SystemColors.Control)
		{
			Color controlLightLight = SystemColors.ControlLightLight;
			Color controlDark2 = SystemColors.ControlDark;
			focusRect.Offset(1, 1);
			using SolidBrush solidBrush = new SolidBrush(controlLightLight);
			e.DrawString(Text, Font, solidBrush, mrectText, sf);
			focusRect.Offset(-1, -1);
			solidBrush.Color = controlDark2;
			e.DrawString(Text, Font, solidBrush, mrectText, sf);
			return;
		}
		ControlPaint.DrawStringDisabled(e, Text, Font, BackColor, mrectText, sf);
	}

	private void RecalculateHeight()
	{
		Size empty = Size.Empty;
		Size empty2 = Size.Empty;
		Size clientSize = base.ClientSize;
		clientSize.Width -= cncheckBoxStandOff * 2;
		empty2 = ((!ImageCheckBox) ? mrectBox.Size : ImageCheckBoxSize);
		if (CheckAlign == ContentAlignment.BottomLeft || CheckAlign == ContentAlignment.MiddleLeft || CheckAlign == ContentAlignment.TopLeft || CheckAlign == ContentAlignment.BottomRight || CheckAlign == ContentAlignment.MiddleRight || CheckAlign == ContentAlignment.TopRight)
		{
			clientSize.Width -= empty2.Width + cncheckBoxStandOff;
		}
		empty = GetTextSize(clientSize.Width, clientSize.Height);
		UpdateControlHeight(empty);
	}

	private void UpdateControlHeight(Size sztext)
	{
		int num = cncheckBoxStandOff + cncheckBoxStandOff;
		Size empty = Size.Empty;
		empty = ((!ImageCheckBox) ? mrectBox.Size : ImageCheckBoxSize);
		ContentAlignment checkAlign = CheckAlign;
		num = ((checkAlign == ContentAlignment.TopCenter || checkAlign == ContentAlignment.BottomCenter) ? (num + (sztext.Height + cncheckBoxStandOff + empty.Height)) : ((sztext.Height <= empty.Height) ? (num + empty.Height) : (num + sztext.Height)));
		base.Height = num;
	}

	private Point CalculatePosition(Rectangle rectOperating, ContentAlignment align, Size szrect)
	{
		Point result = Point.Empty;
		bool isMirrored = GetIsMirrored();
		float fX = rectOperating.X;
		float fX2 = rectOperating.X + (rectOperating.Width - szrect.Width) / 2;
		float fX3 = rectOperating.X + rectOperating.Width - szrect.Width;
		float fY = rectOperating.Y;
		float fY2 = rectOperating.Y + (rectOperating.Height - szrect.Height) / 2;
		float fY3 = rectOperating.Y + (rectOperating.Height - szrect.Height);
		switch (align)
		{
		case ContentAlignment.TopLeft:
			result = ((!isMirrored) ? SetLocation(fX, fY) : SetLocation(fX3, fY));
			break;
		case ContentAlignment.TopCenter:
			result = SetLocation(fX2, fY);
			break;
		case ContentAlignment.TopRight:
			result = ((!isMirrored) ? SetLocation(fX3, fY) : SetLocation(fX, fY));
			break;
		case ContentAlignment.MiddleLeft:
			result = ((!isMirrored) ? SetLocation(fX, fY2) : SetLocation(fX3, fY2));
			break;
		case ContentAlignment.MiddleCenter:
			result = SetLocation(fX2, fY2);
			break;
		case ContentAlignment.MiddleRight:
			result = ((!isMirrored) ? SetLocation(fX3, fY2) : SetLocation(fX, fY2));
			break;
		case ContentAlignment.BottomLeft:
			result = ((!isMirrored) ? SetLocation(fX, fY3) : SetLocation(fX3, fY3));
			break;
		case ContentAlignment.BottomCenter:
			result = SetLocation(fX2, fY3);
			break;
		case ContentAlignment.BottomRight:
			result = ((!isMirrored) ? SetLocation(fX3, fY3) : SetLocation(fX, fY3));
			break;
		}
		return result;
	}

	private Point SetLocation(float fX, float fY)
	{
		return new Point((int)fX, (int)fY);
	}

	private void RecalculateAlignRect(ref Rectangle rectAlign, Size szcheckBox)
	{
		bool isMirrored = GetIsMirrored();
		int num = szcheckBox.Width;
		int num2 = szcheckBox.Height;
		switch (malignCheckBox)
		{
		case ContentAlignment.TopLeft:
		case ContentAlignment.MiddleLeft:
		case ContentAlignment.BottomLeft:
			if (isMirrored)
			{
				rectAlign.Width -= num;
				break;
			}
			rectAlign.Width -= num + cncheckBoxStandOff;
			rectAlign.X += num + cncheckBoxStandOff;
			break;
		case ContentAlignment.TopRight:
		case ContentAlignment.MiddleRight:
		case ContentAlignment.BottomRight:
			if (isMirrored)
			{
				rectAlign.Width -= num + cncheckBoxStandOff;
				rectAlign.X += num + cncheckBoxStandOff;
			}
			else
			{
				rectAlign.Width -= num;
			}
			break;
		case ContentAlignment.TopCenter:
			rectAlign.Height -= num2 + cncheckBoxStandOff;
			rectAlign.Y += num2 + cncheckBoxStandOff;
			break;
		case ContentAlignment.BottomCenter:
			rectAlign.Height -= num2 + cncheckBoxStandOff;
			break;
		}
	}

	private Size GetTextSize(int nwidth, int nheight)
	{
		Size result = new Size(0, 0);
		if (nwidth <= 0)
		{
			result = new Size(0, 0);
			mbtextRender = false;
		}
		else if (base.IsHandleCreated)
		{
			Graphics graphics = CreateGraphics();
			if (graphics != null)
			{
				StringFormat stringFormat = new StringFormat();
				stringFormat.HotkeyPrefix = HotkeyPrefix.Hide;
				if (!useMnemonic)
				{
					stringFormat.HotkeyPrefix = HotkeyPrefix.None;
				}
				SizeF sizeF;
				if (mwrapText)
				{
					sizeF = graphics.MeasureString(Text, Font, new SizeF(nwidth, nheight), stringFormat);
				}
				else
				{
					stringFormat.FormatFlags = StringFormatFlags.NoWrap;
					stringFormat.Trimming = StringTrimming.EllipsisCharacter;
					sizeF = graphics.MeasureString(Text, Font, nwidth, stringFormat);
				}
				if (sizeF.Height > (float)nheight)
				{
					sizeF.Height = nheight;
				}
				if (!mwrapText && sizeF.Width > (float)nwidth)
				{
					sizeF.Width = nwidth;
				}
				result = new Size((int)Math.Floor(sizeF.Width) + 1, (int)sizeF.Height);
				mbtextRender = true;
			}
			graphics.Dispose();
		}
		return result;
	}

	private ContentAlignment ModifyAlign(TextAlignment alignText)
	{
		ContentAlignment result = ContentAlignment.MiddleCenter;
		switch (alignText)
		{
		case TextAlignment.Center:
			result = ContentAlignment.MiddleCenter;
			break;
		case TextAlignment.Right:
			result = ContentAlignment.MiddleRight;
			break;
		case TextAlignment.Left:
			result = ContentAlignment.MiddleLeft;
			break;
		}
		return result;
	}

	private TextAlignment ModifyAlign(ContentAlignment alignText)
	{
		TextAlignment result = TextAlignment.Left;
		switch (alignText)
		{
		case ContentAlignment.TopCenter:
		case ContentAlignment.MiddleCenter:
		case ContentAlignment.BottomCenter:
			result = TextAlignment.Center;
			break;
		case ContentAlignment.TopLeft:
		case ContentAlignment.MiddleLeft:
		case ContentAlignment.BottomLeft:
			result = TextAlignment.Left;
			break;
		case ContentAlignment.TopRight:
		case ContentAlignment.MiddleRight:
		case ContentAlignment.BottomRight:
			result = TextAlignment.Right;
			break;
		}
		return result;
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 260)
		{
			altPressed = true;
		}
		return false;
	}
}
