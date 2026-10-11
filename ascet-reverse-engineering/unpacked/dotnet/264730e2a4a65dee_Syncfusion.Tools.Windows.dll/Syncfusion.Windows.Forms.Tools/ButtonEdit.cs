using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.IO;
using System.Reflection;
using System.Resources;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[DefaultProperty("Text")]
[Designer(typeof(ButtonEditDesigner), typeof(IDesigner))]
[Description("Provides an easy way to create controls with a textbox and any number of associated buttons.")]
[ToolboxBitmap(typeof(ButtonEdit), "ToolboxIcons.ButtonEdit.bmp")]
public class ButtonEdit : ContainerControl, IEditControlsEmbed, IButtonEditParent, IPopupParent, IPopupItem, IThemedControl, ISupportInitialize, INonClientPaintingSupport
{
	public class ButtonEditChildButtonCollection : CollectionBase
	{
		private ButtonEdit owner;

		[Browsable(true)]
		public ButtonEditChildButton this[int index]
		{
			get
			{
				return (ButtonEditChildButton)base.List[index];
			}
			set
			{
				base.List[index] = value;
			}
		}

		public ButtonEditChildButtonCollection(ButtonEdit owner)
		{
			this.owner = owner;
		}

		public int Add(ButtonEditChildButton button)
		{
			int result = -1;
			if (!base.List.Contains(button))
			{
				result = base.List.Add(button);
			}
			return result;
		}

		protected override void OnInsertComplete(int index, object value)
		{
			base.OnInsertComplete(index, value);
			owner.Insert(index, owner.Buttons[index]);
			if (owner.DesignMode)
			{
				owner.Layout();
			}
		}

		public void Remove(ButtonEditChildButton button)
		{
			if (owner.Controls.Contains(button))
			{
				owner.Remove(base.List.IndexOf(button), button);
			}
			if (base.List.Contains(button))
			{
				base.List.Remove(button);
			}
		}

		public bool Contains(ButtonEditChildButton button)
		{
			return base.List.Contains(button);
		}

		public void CopyTo(ButtonEditChildButton[] array, int index)
		{
			base.List.CopyTo(array, index);
		}

		protected override void OnRemoveComplete(int index, object value)
		{
			base.OnRemoveComplete(index, value);
			owner.Layout();
		}
	}

	private const int c_nDOUBLE_BORDER = 2;

	private const int c_nTEXT_OFFSET = 3;

	private const int c_nADJUST_XPOS = 1;

	private const int c_nADJUST_HEIGHT = 4;

	protected readonly int DropDownButtonWidth = 18;

	private Container components;

	private FlatStyle flatStyleValue = FlatStyle.Standard;

	private ButtonEditChildButtonCollection buttonsCollection;

	protected internal Form hostFormObject;

	private TextBoxExt buttonTextBox;

	internal ResourceManager rm;

	private IEditControlsEmbedListener listener;

	private IContainerControl parentContainer;

	private int dropDownButtonHeight = 17;

	private bool preventHeightChange = true;

	internal int editPortionHeight;

	private static Color DefaultButtonEditBackColor = SystemColors.Window;

	internal bool disposing;

	private Color flatBorderColor = SystemColors.ControlDark;

	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private ControlDrawing cd;

	private ThemedEditDrawing themedDrawing;

	private ButtonAppearance appearance = ButtonAppearance.WindowsXP;

	private int borderFactor;

	private int spacingFactor;

	private bool useVisualStyle;

	private int textBoxWidth;

	private ButtonAdvState state = ButtonAdvState.Default;

	private WindowsXPColorScheme colorScheme = WindowsXPColorScheme.DefaultBlueCombo;

	private ArrayList childControls;

	private bool m_bHandleFocusChanged;

	private EditNativeWindow m_nativeWindow;

	private bool droppedDown;

	private IntPtr cachedRgn = IntPtr.Zero;

	private bool isTextBoxVisible = true;

	private int textBoxHeight;

	private bool m_showTextBox = true;

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (TextBox != null)
			{
				base.BackColor = value;
				buttonTextBox.BackColor = value;
				if (BackColor == DefaultButtonEditBackColor)
				{
					buttonTextBox.ResetBackColor();
				}
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(CharacterCasing.Normal)]
	[Category("Behavior")]
	[Description("Specifies whether the ComboBoxBase control modifies the case of characters as they are typed.")]
	public virtual CharacterCasing CharacterCasing
	{
		get
		{
			CharacterCasing result = CharacterCasing.Normal;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.CharacterCasing;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.CharacterCasing != value)
			{
				buttonTextBox.CharacterCasing = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	[Description("Specifies how the text is aligned in this control.")]
	[DefaultValue(HorizontalAlignment.Left)]
	public virtual HorizontalAlignment TextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Left;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.TextAlign;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.TextAlign != value)
			{
				buttonTextBox.TextAlign = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Color ForeColor
	{
		get
		{
			Color result = Color.Empty;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.ForeColor;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.ForeColor != value)
			{
				buttonTextBox.ForeColor = value;
				base.ForeColor = buttonTextBox.ForeColor;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Use this property to bind the TextBox.")]
	public ControlBindingsCollection TextBoxBindings
	{
		get
		{
			ControlBindingsCollection result = null;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.DataBindings;
			}
			return result;
		}
		set
		{
			if (buttonTextBox == null)
			{
				return;
			}
			buttonTextBox.DataBindings.Clear();
			foreach (Binding item in value)
			{
				buttonTextBox.DataBindings.Add(item);
			}
		}
	}

	[Description("Gets or sets the ParentContainer control that implements IContainerControl.")]
	[DefaultValue(null)]
	public IContainerControl ParentContainer
	{
		get
		{
			return parentContainer;
		}
		set
		{
			parentContainer = value;
		}
	}

	[Localizable(true)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("The collection of Buttons that make up this ButtonEdit control.")]
	[MergableProperty(false)]
	public ButtonEditChildButtonCollection Buttons => buttonsCollection;

	[Description("Gets or sets the background image")]
	[Browsable(false)]
	public override Image BackgroundImage
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	private bool DroppedDown
	{
		get
		{
			return droppedDown;
		}
		set
		{
			droppedDown = value;
		}
	}

	[Browsable(true)]
	[Description("Indicates whether to use visual styles.")]
	[DefaultValue(false)]
	[Category("Appearance - Styles")]
	public bool UseVisualStyle
	{
		get
		{
			return useVisualStyle;
		}
		set
		{
			if (useVisualStyle != value)
			{
				useVisualStyle = value;
				SetBaseStyle();
				ApplyStyle();
			}
		}
	}

	[AmbientValue(ButtonAppearance.None)]
	[Category("Appearance - Styles")]
	[DefaultValue(ButtonAppearance.WindowsXP)]
	[Description("Gets or sets the button style for the control.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public ButtonAppearance ButtonStyle
	{
		get
		{
			return appearance;
		}
		set
		{
			if (appearance != value)
			{
				appearance = value;
				ComputeBorderFactor();
				ApplyStyle();
				InvalidateWindow();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ButtonAdvState State
	{
		get
		{
			return state;
		}
		set
		{
			state = value;
		}
	}

	protected override Size DefaultSize
	{
		get
		{
			if (base.IsHandleCreated)
			{
				Layout();
				return new Size(121, base.Height);
			}
			return new Size(121, 21);
		}
	}

	protected int DropDownButtonHeight
	{
		get
		{
			return dropDownButtonHeight;
		}
		set
		{
			dropDownButtonHeight = value;
		}
	}

	protected int EditPortionHeight
	{
		get
		{
			return editPortionHeight;
		}
		set
		{
			editPortionHeight = value;
		}
	}

	[TypeConverter(typeof(TextBoxExtConverter))]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public TextBoxExt TextBox
	{
		get
		{
			if (buttonTextBox == null)
			{
				buttonTextBox = CreateTextBox();
				AttachTextBox();
				BackColor = DefaultButtonEditBackColor;
			}
			return buttonTextBox;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("value");
			}
			if (value == buttonTextBox)
			{
				return;
			}
			if (value.Parent != null && value.Parent.Controls.Count > 0)
			{
				foreach (Control control in value.Parent.Controls)
				{
					if (control != value && control.GetType() == typeof(TextBoxExt))
					{
						value.Parent.Controls.Remove(control);
						control.Dispose();
					}
				}
			}
			DetachTextBox();
			buttonTextBox = value;
			AttachTextBox();
		}
	}

	[Category("Data")]
	[DefaultValue("")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	[Description("The Text property of the ButtonEdit control is the same as the Text property of the embedded TextBox")]
	public override string Text
	{
		get
		{
			string result = "";
			if (buttonTextBox != null)
			{
				result = buttonTextBox.Text;
			}
			return result;
		}
		set
		{
			if (TextBox != null && TextBox.Text != value)
			{
				TextBox.Text = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether the embedded TextBox is visible in the ButtonEdit.")]
	[DefaultValue(true)]
	public virtual bool ShowTextBox
	{
		get
		{
			bool result = true;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.Visible;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.Visible != value)
			{
				buttonTextBox.Visible = value;
				m_showTextBox = value;
				Layout();
			}
		}
	}

	[Description("The SelectionStart property of the embedded TextBox control.")]
	[Category("Appearance")]
	public int SelectionStart
	{
		get
		{
			int result = 0;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.SelectionStart;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.SelectionStart != value)
			{
				buttonTextBox.SelectionStart = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("The SelectionLength property of the embedded TextBox control.")]
	public int SelectionLength
	{
		get
		{
			int result = 0;
			if (buttonTextBox != null)
			{
				result = buttonTextBox.SelectionLength;
			}
			return result;
		}
		set
		{
			if (buttonTextBox != null && buttonTextBox.SelectionLength != value)
			{
				buttonTextBox.SelectionLength = value;
			}
		}
	}

	[Description("The FlatStyle to be applied to the buttons in the ButtonEdit control.")]
	[Category("Appearance")]
	[DefaultValue(FlatStyle.Standard)]
	public FlatStyle FlatStyle
	{
		get
		{
			return flatStyleValue;
		}
		set
		{
			if (flatStyleValue != value)
			{
				flatStyleValue = value;
				ApplyStyle();
				PerformLayout();
			}
		}
	}

	protected bool PreventHeightChange
	{
		get
		{
			return preventHeightChange;
		}
		set
		{
			preventHeightChange = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Obsolete("Do not use this property. It is obsolete.")]
	public bool NeedLayout => false;

	bool IPopupParent.IsRightToLeft => RightToLeft.Yes == RightToLeft;

	private bool ThemesEnabled => ((IThemedControl)this).ThemesEnabled;

	bool IThemedControl.ThemesEnabled
	{
		get
		{
			return FlatStyle == FlatStyle.System;
		}
		set
		{
			if (ThemesEnabled != value)
			{
				if (value)
				{
					FlatStyle = FlatStyle.System;
				}
				else
				{
					FlatStyle = FlatStyle.Standard;
				}
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(Border3DStyle.Sunken)]
	[Category("Appearance")]
	[Description("Indicates the style of the 3D border.")]
	public Border3DStyle Border3DStyle
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

	[Description("Indicates the border sides for which to use 3D borders in the control.")]
	[Category("Appearance")]
	[DefaultValue(Border3DSide.All)]
	public Border3DSide BorderSides
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

	[Description("Specifies the Color with which the Flat Border should be drawn.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Category("Appearance")]
	public virtual Color FlatBorderColor
	{
		get
		{
			if (flatBorderColor != Color.Empty)
			{
				return flatBorderColor;
			}
			return SystemColors.ControlDark;
		}
		set
		{
			if (flatBorderColor != value)
			{
				flatBorderColor = value;
				InvalidateWindow();
			}
		}
	}

	[Category("Layout")]
	[Description("Gets or sets the maximum size of the control.")]
	public override Size MaximumSize
	{
		get
		{
			return base.MaximumSize;
		}
		set
		{
			if (!(base.MaximumSize != value))
			{
				return;
			}
			if (value.Height != 0 || value.Width != 0)
			{
				if (value.Height == 0)
				{
					value.Height = base.Height;
				}
				if (value.Width == 0)
				{
					value.Width = base.Width;
				}
			}
			base.MaximumSize = value;
			OnMaximumSizeChanged(EventArgs.Empty);
		}
	}

	[Description("Gets or sets the minimum size of the control.")]
	[Category("Layout")]
	public override Size MinimumSize
	{
		get
		{
			return base.MinimumSize;
		}
		set
		{
			if (!(base.MinimumSize != value))
			{
				return;
			}
			if (value.Height != 0 || value.Width != 0)
			{
				if (value.Height == 0)
				{
					value.Height = base.Height;
				}
				if (value.Width == 0)
				{
					value.Width = base.Width;
				}
			}
			base.MinimumSize = value;
			OnMinimumSizeChanged(EventArgs.Empty);
		}
	}

	[Browsable(false)]
	[DefaultValue(typeof(ImageLayout), "None")]
	[Description("Gets or sets the background image layout")]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return ImageLayout.None;
		}
		set
		{
		}
	}

	internal bool IsDesignMode => base.DesignMode;

	[Category("Behavior")]
	[Description("This event is raised when a child button is clicked.")]
	public event ButtonClickedEventHandler ButtonClicked;

	[Category("Appearance")]
	[Description("This event will be fired when the ThemesEnabled property changes.")]
	public event EventHandler ThemeChanged;

	[Description("Fired when BorderSides property changes.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Category("Property Changed")]
	[Description("Fired when Border3DStyle property changes.")]
	public event EventHandler Border3DStyleChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the MaximumSize property is changed.")]
	public event EventHandler MaximumSizeChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the MinimumSize property is changed.")]
	public event EventHandler MinimumSizeChanged;

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

	public ButtonEdit()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ButtonEdit));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		SetColorScheme();
		rm = new ResourceManager("Syncfusion.Windows.Forms.Tools.ButtonEditIcons", Assembly.GetExecutingAssembly());
		SetStyle(ControlStyles.Selectable | ControlStyles.AllPaintingInWmPaint, value: true);
		cd = new ControlDrawing();
		buttonsCollection = new ButtonEditChildButtonCollection(this);
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedEditDrawing(this);
		}
		MaximumSizeChanged += HandleButtonEditMaximumSizeChanged;
		MinimumSizeChanged += HandleButtonEditMinimumSizeChanged;
		base.DockChanged += HandleButtonEditDockChanged;
	}

	public void BeginInit()
	{
		OnBeginInit();
	}

	protected virtual void OnBeginInit()
	{
	}

	public void EndInit()
	{
		OnEndInit();
	}

	protected virtual void OnEndInit()
	{
		SetBaseStyle();
		if (UseVisualStyle)
		{
			ApplyStyle();
		}
		Layout();
	}

	protected virtual TextBoxExt CreateTextBox()
	{
		return new TextBoxExt();
	}

	protected virtual void InitTextBox()
	{
		if (TextBox != null)
		{
			base.Controls.Add(TextBox);
			TextBox.TabIndex = 0;
			base.BackColor = TextBox.BackColor;
			TextBox.Dock = DockStyle.None;
			TextBox.Visible = isTextBoxVisible;
			TextBox.Parent = this;
			TextBox.Click += HandleChildClicked;
			TextBox.MouseEnter += HandleChildMouseEnter;
			TextBox.MouseLeave += HandleChildMouseLeave;
			TextBox.LostFocus += HandleChildLostFocus;
			TextBox.GotFocus += HandleChildGotFocus;
			TextBox.TextChanged += HandleEditTextChanged;
			TextBox.DockChanged += HandleEditDockChanged;
			TextBox.SizeChanged += HandleEditSizeChanged;
			TextBox.MultilineChanged += HandleEditMultilineChanged;
			TextBox.BackColorChanged += HandleEditBackColorChanged;
			TextBox.MaximumSizeChanged += HandleEditMaximumSizeChanged;
			TextBox.MinimumSizeChanged += HandleEditMinimumSizeChanged;
			textBoxHeight = TextBox.Height;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_nativeWindow != null)
			{
				m_nativeWindow.ReleaseHandle();
			}
			if (components != null)
			{
				components.Dispose();
			}
			int count = Buttons.Count;
			for (int i = 0; i < count; i++)
			{
				Buttons[0].Dispose();
			}
			rm.ReleaseAllResources();
			buttonTextBox = null;
			if (themedDrawing != null)
			{
				themedDrawing.Dispose();
				themedDrawing = null;
			}
			Font = null;
		}
		base.Dispose(disposing);
	}

	protected bool ShouldSerializeBackColor()
	{
		if (buttonTextBox != null)
		{
			return !(BackColor == DefaultButtonEditBackColor);
		}
		return false;
	}

	public override void ResetBackColor()
	{
		BackColor = DefaultButtonEditBackColor;
		Invalidate();
	}

	protected bool ShouldSerializeFlatBorderColor()
	{
		return flatBorderColor != SystemColors.ControlDark;
	}

	public void ResetFlatBorderColor()
	{
		flatBorderColor = SystemColors.ControlDark;
		Invalidate();
	}

	protected bool ShouldSerializeSelectionStart()
	{
		if (buttonTextBox != null)
		{
			return buttonTextBox.SelectionStart != 0;
		}
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetSelectionStart()
	{
		if (buttonTextBox != null)
		{
			buttonTextBox.SelectionStart = 0;
		}
	}

	protected bool ShouldSerializeSelectionLength()
	{
		if (buttonTextBox != null)
		{
			return buttonTextBox.SelectionLength != 0;
		}
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetSelectionLength()
	{
		if (buttonTextBox != null)
		{
			buttonTextBox.SelectionLength = 0;
		}
	}

	protected bool ShouldSerializeShowTextBox()
	{
		if (buttonTextBox != null)
		{
			return !buttonTextBox.Visible;
		}
		return false;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetShowTextBox()
	{
		if (buttonTextBox != null)
		{
			buttonTextBox.Visible = true;
		}
	}

	protected virtual void DrawBorderAndBackground(Graphics g, Rectangle rect)
	{
		if (UseVisualStyle)
		{
			DrawBackground(g, rect);
			DrawBorder(g, rect);
		}
		else if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			themedDrawing.DrawEditBoxBackground(g, rect, base.Enabled);
		}
		else
		{
			DrawBackground(g, rect);
			DrawBorder(g, rect);
		}
	}

	protected virtual void DrawBorder(Graphics g, Rectangle rect)
	{
		if (!UseVisualStyle)
		{
			DrawBordersInternal(g, rect);
			return;
		}
		Color black = Color.Black;
		switch (ButtonStyle)
		{
		case ButtonAppearance.Classic:
			DrawBordersInternal(g, rect, BorderStyle.Fixed3D);
			break;
		case ButtonAppearance.Office2000:
			DrawBordersInternal(g, rect, BorderStyle.Fixed3D, Border3DStyle.Flat);
			break;
		case ButtonAppearance.Office2003:
			black = ((State != ButtonAdvState.Default) ? ButtonOffice2003Colors.FocusBorderColor : ButtonOffice2003Colors.BorderColor);
			DrawBordersInternal(g, rect, BorderStyle.FixedSingle, Border3DStyle.Flat, black);
			break;
		case ButtonAppearance.OfficeXP:
			DrawBordersInternal(g, rect, BorderStyle.FixedSingle, Border3DStyle.Flat, ButtonOfficeXPColors.BorderColor);
			break;
		case ButtonAppearance.WindowsXP:
			switch (colorScheme)
			{
			case WindowsXPColorScheme.SilverCombo:
				DrawBordersInternal(g, rect, BorderStyle.FixedSingle, Border3DStyle.Flat, WindowsXPColors.SilverBorderColor);
				break;
			case WindowsXPColorScheme.OliveGreenCombo:
				DrawBordersInternal(g, rect, BorderStyle.FixedSingle, Border3DStyle.Flat, WindowsXPColors.OliveGreenComboBorderColor);
				break;
			default:
				DrawBordersInternal(g, rect, BorderStyle.FixedSingle, Border3DStyle.Flat, WindowsXPColors.DefaultBlueComboBorderColor);
				break;
			}
			break;
		}
	}

	private void DrawBordersInternal(Graphics g, Rectangle rect)
	{
		BorderStyle borderStyle = BorderStyle.Fixed3D;
		if (FlatStyle == FlatStyle.Flat)
		{
			borderStyle = BorderStyle.FixedSingle;
		}
		DrawBordersInternal(g, rect, borderStyle);
	}

	private void DrawBordersInternal(Graphics g, Rectangle rect, BorderStyle borderStyle)
	{
		if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, flatBorderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, flatBorderColor);
		}
	}

	private void DrawBordersInternal(Graphics g, Rectangle rect, BorderStyle borderStyle, Border3DStyle border3DStyle)
	{
		if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, flatBorderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, flatBorderColor);
		}
	}

	private void DrawBordersInternal(Graphics g, Rectangle rect, BorderStyle borderStyle, Border3DStyle border3DStyle, Color borderColor)
	{
		if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(g, rect, borderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor);
		}
	}

	protected virtual void DrawBackground(Graphics g, Rectangle rect)
	{
		if (!base.Enabled && BackColor == DefaultButtonEditBackColor)
		{
			g.FillRectangle(new SolidBrush(SystemColors.Control), rect);
		}
		else
		{
			g.FillRectangle(new SolidBrush(BackColor), rect);
		}
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rect = displayRect;
		int num = 2;
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rect.Location, new Size(num, rect.Height)),
			new Rectangle(rect.Location, new Size(rect.Width, num)),
			new Rectangle(rect.Width - num, rect.Y, num, rect.Height),
			new Rectangle(rect.X, rect.Height - num, rect.Width, num)
		};
		for (int i = 0; i < 4; i++)
		{
			graphics.FillRectangle(new SolidBrush(BackColor), array[i]);
		}
		DrawBordersInternal(graphics, rect);
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + 2, windowRectInScreen.Top + 2, windowRectInScreen.Right - 2, windowRectInScreen.Bottom - 2);
	}

	public static Image GetImage(string resourceName)
	{
		string name = "Syncfusion.Windows.Forms.Tools.Controls.ButtonEdit.resources." + resourceName;
		Type typeFromHandle = typeof(ButtonEditChildButton);
		Assembly assembly = typeFromHandle.Module.Assembly;
		Stream manifestResourceStream = assembly.GetManifestResourceStream(name);
		if (manifestResourceStream != null)
		{
			Bitmap bitmap = new Bitmap(manifestResourceStream);
			bitmap.MakeTransparent(Color.White);
			return bitmap;
		}
		return null;
	}

	public void ChildButtonSizeChanged(ButtonEditChildButton btn, Size newSize)
	{
		btn.Left -= btn.PreferredWidth - btn.Width;
		btn.Width = btn.PreferredWidth;
		Layout();
	}

	public void ChildButtonAlignmentChanged(ButtonEditChildButton btn, ButtonAlignment newAlign)
	{
		Layout();
	}

	public void HandleChildButtonClicked(object sender, EventArgs valArgs)
	{
		if (base.Parent != null && base.Parent is IContainerControl)
		{
			((IContainerControl)base.Parent).ActiveControl = this;
		}
		if (ParentContainer != null)
		{
			ParentContainer.ActiveControl = this;
		}
		RaiseButtonClicked(sender, valArgs);
	}

	public void HandleChildButtonTextChanged(object sender, EventArgs valArgs)
	{
		if ((sender as ButtonEditChildButton).ButtonType != ButtonTypes.Normal)
		{
			(sender as ButtonEditChildButton).Text = "";
		}
		else
		{
			(sender as ButtonEditChildButton).ChildButtonText = (sender as ButtonEditChildButton).Text;
		}
	}

	public Control GetActiveEditControl(IEditControlsEmbedListener listener)
	{
		this.listener = listener;
		return TextBox;
	}

	[DocumentationExclude]
	[Browsable(false)]
	public void ChildControlsRemovedByDesigner(ArrayList childControls)
	{
		this.childControls = childControls;
		Invalidate(invalidateChildren: false);
	}

	public bool HideButton(int btnIndex, bool visible)
	{
		if (btnIndex < Buttons.Count)
		{
			Buttons[btnIndex].Visible = visible;
			Layout();
			return true;
		}
		return false;
	}

	public void HandleChildButtonMouseEnter(object sender, EventArgs e)
	{
		(sender as ButtonEditChildButton).State = ButtonAdvState.MouseOver;
	}

	public void HandleChildButtonMouseLeave(object sender, EventArgs e)
	{
		(sender as ButtonEditChildButton).State = ButtonAdvState.Default;
	}

	public void HandleChildButtonBackColorChanged(object sender, EventArgs e)
	{
		if (!(sender as ButtonEditChildButton).ShouldSerializeBackColor())
		{
			(sender as ButtonEditChildButton).BackColor = SystemColors.ControlLight;
		}
	}

	public void HandleChildButtonMouseDown(object sender, MouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			ButtonEditChildButton buttonEditChildButton = sender as ButtonEditChildButton;
			buttonEditChildButton.State = ButtonAdvState.Pressed;
		}
	}

	protected void HandleChildButtonMouseUp(object sender, MouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			ButtonEditChildButton buttonEditChildButton = sender as ButtonEditChildButton;
			buttonEditChildButton.State = ButtonAdvState.MouseOver;
		}
	}

	public void HandleChildMouseLeave(object sender, EventArgs e)
	{
		UpdateState();
	}

	public void HandleChildMouseEnter(object sender, EventArgs e)
	{
		UpdateState();
	}

	public new bool Contains(Control ctl)
	{
		if (ctl == TextBox)
		{
			return false;
		}
		return base.Contains(ctl);
	}

	public void HandleChildLostFocus(object sender, EventArgs e)
	{
		UpdateState();
	}

	protected virtual void OnButtonClicked(ButtonClickedEventArgs args)
	{
		if (this.ButtonClicked != null)
		{
			this.ButtonClicked(this, args);
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		PerformLayout();
	}

	protected virtual void OnBorderSidesChanged(EventArgs e)
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, e);
		}
	}

	protected virtual void OnBorder3DStyleChanged(EventArgs e)
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, e);
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (!UseVisualStyle)
		{
			if (cachedRgn != IntPtr.Zero)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(cachedRgn);
				cachedRgn = IntPtr.Zero;
			}
			if (m.Msg == 133 && FlatStyle != FlatStyle.System)
			{
				cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
			}
		}
		base.WndProc(ref m);
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			try
			{
				this.ThemeChanged(this, e);
			}
			catch
			{
			}
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (height <= 0)
		{
			height = base.Height;
		}
		if (Dock == DockStyle.Fill || Dock == DockStyle.Left || Dock == DockStyle.Right)
		{
			if (TextBox != null)
			{
				if (!TextBox.Multiline)
				{
					height = TextBox.Height + 8;
				}
				else
				{
					preventHeightChange = false;
				}
			}
			else
			{
				height = 21;
			}
		}
		if (preventHeightChange)
		{
			specified &= ~BoundsSpecified.Height;
			Rectangle bounds = base.Bounds;
			if (bounds.X != x || bounds.Y != y || bounds.Width != width)
			{
				base.SetBoundsCore(x, y, width, height, specified);
			}
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		ComputeBorderFactor();
		Layout();
		base.OnLayout(levent);
	}

	public new virtual void Layout()
	{
		int textAreaHeight = 0;
		DetermineHeightsBasedOnFont(null, ref textAreaHeight);
		UpdateTextBoxAndButtonBounds(textAreaHeight);
	}

	protected virtual void UpdateTextBoxAndButtonBounds(int textAreaHeight)
	{
		SuspendLayout();
		bool isMirrored = GetIsMirrored();
		buttonTextBox.Visible = m_showTextBox;
		if (UseVisualStyle)
		{
			int num = 0;
			int num2 = 0;
			int num3 = 0;
			int num4 = 0;
			ButtonEditChildButton buttonEditChildButton = null;
			bool flag = true;
			int num5 = 0;
			foreach (ButtonEditChildButton button in Buttons)
			{
				if (button.Visible)
				{
					if (button.ButtonAlign == ButtonAlignment.Left != isMirrored)
					{
						button.Bounds = new Rectangle(num + num2 + 2, num4 + 2, button.PreferredWidth, DropDownButtonHeight);
						num2 += button.PreferredWidth;
						buttonEditChildButton = button;
					}
					else
					{
						num3 += button.PreferredWidth;
					}
					button.SetIsLastLeftButton(val: false);
					button.SetIsFirstRightButton(val: false);
					if (TextBox != null)
					{
						button.ComboEditBackColor = TextBox.BackColor;
					}
				}
			}
			if (buttonEditChildButton != null)
			{
				buttonEditChildButton.SetIsLastLeftButton(val: true);
				buttonEditChildButton = null;
			}
			if (TextBox != null && TextBox.Visible)
			{
				textBoxWidth = base.Bounds.Width - 2 * borderFactor - 2 * spacingFactor - num2 - num3;
				if (TextBox.MinimumSize.Width > textBoxWidth && textBoxWidth > 0)
				{
					int num6 = TextBox.MinimumSize.Width - textBoxWidth;
					Size size = (MaximumSize = new Size(base.Width + num6, base.Height));
					base.Size = size;
					if (base.Width > MinimumSize.Width)
					{
						MinimumSize = base.Size;
					}
				}
				num5 = (editPortionHeight - textAreaHeight) / 2;
				int num7 = num2 + borderFactor + spacingFactor;
				if (FlatStyle != FlatStyle.System)
				{
					num7 = num2 + 2;
				}
				TextBox.Bounds = new Rectangle(num7, num5, textBoxWidth, textAreaHeight);
			}
			num3 = 0;
			foreach (ButtonEditChildButton button2 in Buttons)
			{
				if (button2.Visible && button2.ButtonAlign == ButtonAlignment.Right != isMirrored)
				{
					button2.Bounds = new Rectangle(num2 + num3 + textBoxWidth + 2, num4 + 2, button2.PreferredWidth, DropDownButtonHeight);
					num3 += button2.PreferredWidth;
					if (flag)
					{
						button2.SetIsFirstRightButton(val: true);
						flag = false;
					}
				}
			}
		}
		else
		{
			int num8 = 2;
			int num9 = 0;
			int num10 = 4;
			int num11 = 0;
			int num12 = 0;
			num8 = ((FlatStyle == FlatStyle.System) ? (num8 - 1) : (num8 - 2));
			foreach (ButtonEditChildButton button3 in Buttons)
			{
				if (button3.Visible)
				{
					if (button3.ButtonAlign == ButtonAlignment.Left != isMirrored)
					{
						button3.Bounds = new Rectangle(num8 + num9 + 2, 2, button3.PreferredWidth, DropDownButtonHeight);
						num9 += button3.PreferredWidth;
					}
					else
					{
						num11 += button3.PreferredWidth;
					}
				}
			}
			if (TextBox != null && TextBox.Visible)
			{
				textBoxWidth = base.Bounds.Width - 6 - num9 - num11;
				if (TextBox.MinimumSize.Width > textBoxWidth && textBoxWidth > 0)
				{
					int num13 = TextBox.MinimumSize.Width - textBoxWidth;
					Size size3 = (MaximumSize = new Size(base.Width + num13, base.Height));
					base.Size = size3;
					if (base.Width > MinimumSize.Width)
					{
						MinimumSize = base.Size;
					}
				}
				num12 = (editPortionHeight - textAreaHeight) / 2;
				int num14 = num9 + 3;
				if (FlatStyle != FlatStyle.System)
				{
					num14 = num9 + 2 + 1;
				}
				TextBox.Bounds = new Rectangle(num14, num12, textBoxWidth, textAreaHeight);
			}
			num11 = 0;
			num10 = ((FlatStyle == FlatStyle.System) ? (num10 - 1) : (num10 - 2));
			foreach (ButtonEditChildButton button4 in Buttons)
			{
				if (button4.Visible && button4.ButtonAlign == ButtonAlignment.Right != isMirrored)
				{
					button4.Bounds = new Rectangle(num10 + num9 + num11 + textBoxWidth + 2, 2, button4.PreferredWidth, DropDownButtonHeight);
					num11 += button4.PreferredWidth;
				}
			}
		}
		ResumeLayout(performLayout: false);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (childControls != null && childControls.Count > 0)
		{
			ResetChildControls();
		}
		else
		{
			DrawBorderAndBackground(e);
		}
	}

	protected virtual void DrawBorderAndBackground(PaintEventArgs e)
	{
		DrawBorderAndBackground(e.Graphics, new Rectangle(0, 0, base.Width, base.Height));
	}

	[Obsolete("Use Layout method instead.")]
	protected internal virtual void SetNeedLayout(bool needLayout)
	{
	}

	protected virtual void DetermineHeightsBasedOnFont(Graphics g, ref int textAreaHeight)
	{
		SuspendLayout();
		if (TextBox != null)
		{
			bool visible = TextBox.Visible;
			TextBox.Visible = true;
			TextBox.PerformLayout();
			Size size = TextBox.Size;
			DropDownButtonHeight = size.Height + 4;
			textAreaHeight = size.Height;
			if (TextBox.BorderStyle != BorderStyle.None)
			{
				DropDownButtonHeight -= 2;
			}
			editPortionHeight = DropDownButtonHeight + 4;
			preventHeightChange = false;
			base.Height = editPortionHeight;
			preventHeightChange = true;
			TextBox.Visible = visible;
		}
		else
		{
			textAreaHeight = 13;
		}
		ResumeLayout(performLayout: false);
	}

	protected override void OnEnter(EventArgs e)
	{
		base.OnEnter(e);
		Layout();
		base.ActiveControl = TextBox;
		OnEditGotFocus(this, e);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (m_bHandleFocusChanged)
		{
			base.OnGotFocus(e);
			Layout();
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (m_bHandleFocusChanged)
		{
			base.OnLostFocus(e);
			Layout();
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		UpdateState();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		UpdateState();
		base.OnMouseEnter(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		UpdateState();
	}

	public override void Refresh()
	{
		foreach (ButtonEditChildButton button in Buttons)
		{
			button.Refresh();
		}
		base.Refresh();
	}

	protected void HandleChildClicked(object sender, EventArgs e)
	{
		Control control = (Control)sender;
		if (this == control.Parent)
		{
			if (base.Parent != null && base.Parent is IContainerControl)
			{
				((IContainerControl)base.Parent).ActiveControl = this;
			}
			if (ParentContainer != null)
			{
				ParentContainer.ActiveControl = this;
			}
		}
	}

	protected bool GetIsMirrored()
	{
		return RightToLeft.Yes == base.RightToLeft;
	}

	protected internal virtual void AttachTextBox()
	{
		InitTextBox();
		if (TextBox.IsHandleCreated)
		{
			m_nativeWindow = new EditNativeWindow(this);
			m_nativeWindow.LostFocus += OnEditLostFocus;
		}
		else
		{
			TextBox.HandleCreated += TextBox_HandleCreated;
		}
	}

	protected internal virtual void DetachTextBox()
	{
		if (m_nativeWindow != null)
		{
			m_nativeWindow.LostFocus -= OnEditLostFocus;
			m_nativeWindow.StopListening();
		}
		if (buttonTextBox != null)
		{
			base.Controls.Remove(buttonTextBox);
			buttonTextBox.TabIndex = 0;
			isTextBoxVisible = buttonTextBox.Visible;
			buttonTextBox.Click -= HandleChildClicked;
			buttonTextBox.MouseEnter -= HandleChildMouseEnter;
			buttonTextBox.MouseLeave -= HandleChildMouseLeave;
			buttonTextBox.LostFocus -= HandleChildLostFocus;
			buttonTextBox.GotFocus -= HandleChildGotFocus;
			buttonTextBox.TextChanged -= HandleEditTextChanged;
			buttonTextBox.HandleCreated -= TextBox_HandleCreated;
		}
	}

	private void ApplyStyle()
	{
		foreach (ButtonEditChildButton button in Buttons)
		{
			button.FlatStyle = FlatStyle;
			button.SetAppearance(ButtonStyle);
			button.Invalidate();
		}
		Invalidate();
	}

	private void HandleEditDockChanged(object sender, EventArgs e)
	{
		if (TextBox.Dock != DockStyle.None)
		{
			throw new ArgumentException("DockStyle value must be None");
		}
	}

	private void HandleEditMaximumSizeChanged(object sender, EventArgs e)
	{
		if (TextBox.MaximumSize.Width != 0)
		{
			Layout();
			int num = textBoxWidth - TextBox.MaximumSize.Width;
			Size maximumSize = new Size(base.Width - num, MaximumSize.Height);
			MaximumSize = maximumSize;
		}
		if (TextBox.Multiline)
		{
			if (TextBox.MaximumSize.Height != 0)
			{
				Size maximumSize2 = new Size(MaximumSize.Width, TextBox.MaximumSize.Height + 8);
				MaximumSize = maximumSize2;
			}
		}
		else
		{
			Size maximumSize3 = new Size(TextBox.MaximumSize.Width, TextBox.Height);
			TextBox.MaximumSize = maximumSize3;
		}
	}

	private void HandleEditMinimumSizeChanged(object sender, EventArgs e)
	{
		if (TextBox.MinimumSize.Width != 0)
		{
			Layout();
			int num = TextBox.MinimumSize.Width - textBoxWidth;
			Size minimumSize = new Size(base.Width + num, MaximumSize.Height);
			MinimumSize = minimumSize;
		}
		if (TextBox.Multiline)
		{
			if (TextBox.MinimumSize.Height != 0)
			{
				Size minimumSize2 = new Size(MinimumSize.Width, TextBox.MinimumSize.Height + 8);
				MinimumSize = minimumSize2;
			}
		}
		else
		{
			Size minimumSize3 = new Size(TextBox.MinimumSize.Width, TextBox.Height);
			TextBox.MinimumSize = minimumSize3;
		}
	}

	private void HandleButtonEditMaximumSizeChanged(object sender, EventArgs e)
	{
		int num = MaximumSize.Width;
		if (num != 0)
		{
			Layout();
			int num2 = 0;
			foreach (ButtonEditChildButton button in Buttons)
			{
				num2 += button.Width;
			}
			int num3 = TextBox.MaximumSize.Width;
			if (num - num2 - 6 > num3)
			{
				Size maximumSize = new Size(num - num2 - 6, TextBox.MaximumSize.Height);
				TextBox.MaximumSize = maximumSize;
			}
		}
		if (TextBox.Multiline && MaximumSize.Height != 0)
		{
			Size maximumSize2 = new Size(TextBox.MaximumSize.Width, MaximumSize.Height - 8);
			TextBox.MaximumSize = maximumSize2;
		}
	}

	private void HandleButtonEditMinimumSizeChanged(object sender, EventArgs e)
	{
		int num = MinimumSize.Width;
		if (num != 0)
		{
			Layout();
			int num2 = 0;
			foreach (ButtonEditChildButton button in Buttons)
			{
				num2 += button.Width;
			}
			int num3 = TextBox.MinimumSize.Width;
			if (num + num2 - 6 < num3)
			{
				Size minimumSize = new Size(num + num2 - 6, TextBox.MaximumSize.Height);
				TextBox.MinimumSize = minimumSize;
			}
		}
		if (TextBox.Multiline && MinimumSize.Height != 0)
		{
			Size minimumSize2 = new Size(TextBox.MinimumSize.Width, MinimumSize.Height - 8);
			TextBox.MinimumSize = minimumSize2;
		}
	}

	private void HandleEditSizeChanged(object sender, EventArgs e)
	{
		if (TextBox != null)
		{
			if (TextBox.Width != textBoxWidth)
			{
				TextBox.Width = textBoxWidth;
			}
			if (Dock == DockStyle.Fill || Dock == DockStyle.Left || Dock == DockStyle.Right)
			{
				TextBox.Height = base.Height - 8;
			}
			else
			{
				textBoxHeight = TextBox.Height;
			}
		}
	}

	private void HandleEditMultilineChanged(object sender, EventArgs e)
	{
		if (TextBox.Multiline)
		{
			if (base.Parent != null)
			{
				preventHeightChange = false;
				base.Parent.PerformLayout(this, "Bounds");
				preventHeightChange = true;
			}
			TextBox.Height = base.Height - 8;
		}
	}

	private void HandleEditBackColorChanged(object sender, EventArgs e)
	{
		if (TextBox.BackColor == SystemColors.Window)
		{
			TextBox.BackColor = BackColor;
		}
	}

	private void TextBox_HandleCreated(object sender, EventArgs e)
	{
		m_nativeWindow = new EditNativeWindow(this);
		m_nativeWindow.LostFocus += OnEditLostFocus;
	}

	private void HandleButtonEditDockChanged(object sender, EventArgs e)
	{
		if (TextBox.Multiline)
		{
			if (Dock == DockStyle.None)
			{
				TextBox.Height = textBoxHeight;
				base.Height = textBoxHeight + 8;
			}
			else if (Dock == DockStyle.Fill || Dock == DockStyle.Left || Dock == DockStyle.Right)
			{
				TextBox.Height = base.Height - 8;
			}
			else
			{
				TextBox.Height = textBoxHeight;
			}
		}
	}

	private void RaiseButtonClicked(object sender, EventArgs valArgs)
	{
		ButtonClickedEventArgs args = new ButtonClickedEventArgs((ButtonEditChildButton)sender);
		OnButtonClicked(args);
	}

	private void InvalidateWindow()
	{
		int redrawFlags = 1153;
		NativeMethodsHelper.RedrawWindow(base.Handle, redrawFlags);
	}

	[DocumentationExclude]
	Control IPopupItem.GetPopupParentControl()
	{
		return this;
	}

	[DocumentationExclude]
	bool IPopupItem.IsRelatedControl(Control testControl, bool askParent)
	{
		if (testControl == TextBox || testControl.Parent == this)
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	void IPopupParent.ChildClosing(IPopupChild child, PopupCloseType closeType)
	{
	}

	[DocumentationExclude]
	Point[] IPopupParent.GetBorderOverlapCue(PopupRelativeAlignment alignment)
	{
		return null;
	}

	[DocumentationExclude]
	Point IPopupParent.GetLocationForPopupAlignment(PopupRelativeAlignment alignment, out PopupRelativeAlignment newAlignment)
	{
		newAlignment = PopupRelativeAlignment.Default;
		return Point.Empty;
	}

	private void OnEditGotFocus(object sender, EventArgs e)
	{
		m_bHandleFocusChanged = true;
		OnGotFocus(e);
		m_bHandleFocusChanged = false;
	}

	private void OnEditLostFocus(object sender, EventArgs e)
	{
		m_bHandleFocusChanged = true;
		OnLostFocus(e);
		m_bHandleFocusChanged = false;
	}

	private void Insert(int index, ButtonEditChildButton button)
	{
		if (!base.Controls.Contains(button))
		{
			int num = dropDownButtonHeight;
			base.Controls.Add(button);
			button.ButtonEditParent = this;
			button.Parent = this;
			button.Size = new Size(button.Width, num);
			button.FlatStyle = FlatStyle;
			button.BackColor = SystemColors.ControlLight;
			button.SetAppearance(ButtonStyle);
			ButtonEditChildButton buttonEditChildButton = Buttons[index];
			buttonEditChildButton.SuspendMouseState();
			buttonEditChildButton.Click += HandleChildButtonClicked;
			buttonEditChildButton.TextChanged += HandleChildButtonTextChanged;
			buttonEditChildButton.MouseDown += HandleChildButtonMouseDown;
			buttonEditChildButton.MouseUp += HandleChildButtonMouseUp;
			buttonEditChildButton.MouseEnter += HandleChildButtonMouseEnter;
			buttonEditChildButton.MouseLeave += HandleChildButtonMouseLeave;
			buttonEditChildButton.MouseHover += buttonIndx_MouseHover;
			buttonEditChildButton.BackColorChanged += HandleChildButtonBackColorChanged;
			buttonEditChildButton.ChildButtonText = buttonEditChildButton.Name;
			base.ControlRemoved += HandleChildButtonControlRemoved;
			button.BringToFront();
		}
		Layout();
	}

	public void buttonIndx_MouseHover(object sender, EventArgs e)
	{
		_ = (sender as ButtonAdv).State;
	}

	private void Remove(int index, ButtonEditChildButton button)
	{
		if (base.Controls.Contains(button))
		{
			base.Controls.Remove(button);
		}
		if (index >= 0 && index < Buttons.Count)
		{
			Buttons[index].Click -= HandleChildButtonClicked;
		}
		Layout();
		Invalidate();
	}

	private void HandleEditTextChanged(object sender, EventArgs e)
	{
		OnTextChanged(e);
	}

	private void ResetChildControls()
	{
		if (childControls != null)
		{
			if (childControls.Count > 0)
			{
				foreach (Control childControl in childControls)
				{
					base.Controls.Add(childControl);
				}
			}
			childControls.Clear();
		}
		Layout();
	}

	private void SetBaseStyle()
	{
		int windowLong = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -16);
		int windowLong2 = Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowLong(base.Handle, -20);
		windowLong &= -8388609;
		windowLong2 &= -513;
		if (!UseVisualStyle)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowLong(base.Handle, -20, windowLong2);
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, 567);
	}

	private void ComputeBorderFactor()
	{
		if (ButtonStyle == ButtonAppearance.Classic)
		{
			borderFactor = 2;
			spacingFactor = 1;
		}
		else if (ButtonStyle == ButtonAppearance.WindowsXP)
		{
			borderFactor = 1;
			spacingFactor = 1;
		}
		else
		{
			borderFactor = 0;
			spacingFactor = 2;
		}
	}

	private void HandleChildButtonControlRemoved(object sender, ControlEventArgs e)
	{
		if (e.Control is ButtonEditChildButton)
		{
			buttonsCollection.Remove(e.Control as ButtonEditChildButton);
		}
	}

	private void HandleChildGotFocus(object sender, EventArgs e)
	{
		UpdateState();
	}

	private void UpdateState()
	{
		if (base.IsDisposed)
		{
			return;
		}
		State = ButtonAdvState.Default;
		foreach (ButtonEditChildButton button in Buttons)
		{
			button.State = State;
			button.Invalidate();
		}
		Invalidate();
	}

	private void SetColorScheme()
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

	internal void SetTextBoxNull()
	{
		buttonTextBox = null;
	}
}
