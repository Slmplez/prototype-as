using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.ComboDropDown.bmp")]
[Description("Represents advanced combobox control with container control support in this dropdown.")]
[Designer(typeof(ComboBoxBaseDesigner), typeof(IDesigner))]
public class ComboDropDown : Control, IThemedControl, ISupportInitialize, INonClientPaintingSupport, ISupportOffice2007Theme
{
	internal class ComboDropDownPopupContainer : PopupControlContainer
	{
		public override bool IsRelatedControl(Control control, bool askPopupParent)
		{
			if (!IsShowing())
			{
				return false;
			}
			if (control == this || Contains(control) || control == base.Parent || ((control is VScrollBarCustomDraw || control is HScrollBarCustomDraw || control is ScrollersFrame.SizeGripperAdv) && base.Bounds.Contains(control.Bounds)))
			{
				return true;
			}
			if (askPopupParent)
			{
				if (base.PopupParent != null)
				{
					return base.PopupParent.IsRelatedControl(control, askPopupParent);
				}
				if (control != null && base.ParentControl != null && (control == base.ParentControl || base.ParentControl.Contains(control)))
				{
					return true;
				}
			}
			return false;
		}

		protected override void OnSizeChanged(EventArgs e)
		{
			base.OnSizeChanged(e);
			Control control = base.Parent;
			if (control != null)
			{
				control.Size = control.GetPreferredSize(Size.Empty);
			}
		}
	}

	[DocumentationExclude]
	[ToolboxItem(false)]
	public class ComboTextBox : TextBox
	{
		private ComboDropDown parent;

		private bool doubleClickFired;

		public ComboTextBox(ComboDropDown parentCombo)
		{
			doubleClickFired = false;
			parent = parentCombo;
			SetStyle(ControlStyles.Selectable, value: false);
		}

		protected override void OnLostFocus(EventArgs e)
		{
			parent.OnLostFocus(e);
		}

		protected override void OnMouseUp(MouseEventArgs e)
		{
			Point p = new Point(e.X, e.Y);
			p = PointToScreen(p);
			if (e.Button == MouseButtons.Left)
			{
				if (Focused && NativeMethods.WindowFromPoint(p.X, p.Y) == base.Handle)
				{
					if (!doubleClickFired)
					{
						parent.OnClick(EventArgs.Empty);
					}
					else
					{
						doubleClickFired = false;
						parent.OnDoubleClick(EventArgs.Empty);
					}
				}
				doubleClickFired = false;
			}
			parent.OnMouseUp(e);
		}

		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.Clicks == 2)
			{
				doubleClickFired = true;
			}
			parent.OnMouseDown(e);
		}

		protected override void OnKeyUp(KeyEventArgs e)
		{
			parent.TextBox_KeyUp(this, e);
		}

		protected override void OnGotFocus(EventArgs e)
		{
			SelectAll();
			parent.OnGotFocus(e);
		}

		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		protected override void WndProc(ref Message m)
		{
			if (m.Msg == 513 || m.Msg == 516 || m.Msg == 519)
			{
				bool focused = Focused;
				if (m.Msg == 513 && focused != Focused)
				{
					return;
				}
			}
			base.WndProc(ref m);
		}
	}

	private const int c_iDefaultBorderWidthVSStyle = 2;

	private const int c_iDefaultBorderWidth = 1;

	private const int c_scrollerWidth = 16;

	private const int c_adjustScrollerPosition = 1;

	private bool m_bCaseSensitive;

	private bool m_bIsInImeMode;

	private DropDownNativeWindow m_nativeWindow;

	protected int m_lastFoundIndex = -1;

	private string m_strTextToSearch = string.Empty;

	protected bool initializing;

	internal static int ComboBoxOfficeStyleDropDownWidth = 12;

	private int dropDownButtonHeight = 17;

	private bool preventHeightChange = true;

	internal int editPortionHeight;

	private int dropDownWidth = -1;

	private bool numberOnly;

	private bool readOnly;

	private ContextMenu cachedContextMenu;

	private bool mouseWasUnderChild;

	private bool quickSelectOn;

	private Timer quickSelectTimer;

	private ComboFlatStyle comboFlatStyle = ComboFlatStyle.Standard;

	private VisualStyle editorStyle;

	private static Color DefaultComboBackColor = SystemColors.Window;

	internal bool disposing;

	private bool comboInFocus;

	private string cachedTextBeforePopup = string.Empty;

	private string latestCommittedString = string.Empty;

	internal bool ignoreNextPopupControlMouseMove;

	internal bool ignorePopupValueChange;

	private Timer selectionTimer;

	private bool selectInAFewMilliSecs;

	private Color flatBorderColor = Color.Empty;

	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private ControlDrawing cd;

	private Control popupControl;

	private TextBox textBox;

	private PopupControlContainer popupContainer;

	private DropDownButton ddButton;

	private bool needLayout;

	private ThemedEditDrawing themedDrawing;

	private ComboBoxStyle comboStyle = ComboBoxStyle.DropDown;

	private bool isActive;

	private int inputTextIndex;

	private bool matchFirstCharacterOnly = true;

	private bool textBoxEventsHooked;

	private bool ignoreThemeBackground = true;

	private Color cachedBackColor = DefaultComboBackColor;

	internal ComboDropDownWeakContainer comboDropDownWeakContainer;

	private bool suppressdropdownevent;

	private bool useMnemonic;

	private bool useOffice2007ColorsInActiveMode;

	private ScrollersFrame m_scrollersFrame;

	private Office2007Theme m_office2007ColorTheme;

	private bool allowMouseWheelSelection = true;

	private Point prevMouseLocation = Point.Empty;

	private bool m_bIsEntering;

	private IntPtr cachedRgn = IntPtr.Zero;

	protected bool autoCompleteSuccess;

	[Browsable(false)]
	[Description("Gets a value indicating whether this instance is initializing.")]
	public bool IsInitializing => initializing;

	[Description("Indicates whether to suppress the DropDown Event")]
	[DefaultValue(false)]
	public bool SuppressDropDownEvent
	{
		get
		{
			return suppressdropdownevent;
		}
		set
		{
			if (value != suppressdropdownevent)
			{
				suppressdropdownevent = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether to enable or disable the Office2007Color BackColor in the TextBox with DropDownList style.")]
	public bool UseOffice2007ColorsInActiveMode
	{
		get
		{
			return useOffice2007ColorsInActiveMode;
		}
		set
		{
			if (useOffice2007ColorsInActiveMode != value)
			{
				useOffice2007ColorsInActiveMode = value;
				Invalidate();
			}
		}
	}

	[Description("Indicates whether to enable or disable the ampersand(&&)in the Text.")]
	[DefaultValue(false)]
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
				Invalidate();
			}
		}
	}

	[Description("Indicates whether the search in autocomplete is case-sensitive.")]
	[DefaultValue(false)]
	public bool CaseSensitiveAutocomplete
	{
		get
		{
			return m_bCaseSensitive;
		}
		set
		{
			if (value != m_bCaseSensitive)
			{
				m_bCaseSensitive = value;
			}
		}
	}

	public override bool Focused
	{
		get
		{
			if (textBox.Visible && textBox.Focused)
			{
				return true;
			}
			return false;
		}
	}

	public override RightToLeft RightToLeft
	{
		get
		{
			return base.RightToLeft;
		}
		set
		{
			base.RightToLeft = value;
			PerformLayout();
		}
	}

	private bool SelectInAFewMilliSecs
	{
		get
		{
			return selectInAFewMilliSecs;
		}
		set
		{
			if (selectInAFewMilliSecs != value)
			{
				selectInAFewMilliSecs = value;
				if (value)
				{
					selectionTimer = new Timer();
					selectionTimer.Interval = 50;
					selectionTimer.Tick += Timer_Tick;
					selectionTimer.Enabled = true;
				}
				else
				{
					selectionTimer.Tick -= Timer_Tick;
					selectionTimer.Enabled = false;
					selectionTimer.Dispose();
					selectionTimer = null;
				}
			}
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	protected bool IgnorePopupValueChange
	{
		get
		{
			return ignorePopupValueChange;
		}
		set
		{
			ignorePopupValueChange = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Defines the autocomplete behavior in DropDownList mode.")]
	public bool MatchFirstCharacterOnly
	{
		get
		{
			return matchFirstCharacterOnly;
		}
		set
		{
			matchFirstCharacterOnly = value;
		}
	}

	[Description("The control that will be used in the drop-down portion.")]
	[Category("Behavior")]
	[DefaultValue(null)]
	public virtual Control PopupControl
	{
		get
		{
			return popupControl;
		}
		set
		{
			if (popupControl != value)
			{
				if (popupControl != null)
				{
					DetachPopupControl(disposing: false);
				}
				popupControl = value;
				if (popupControl != null)
				{
					AttachPopupControl();
				}
				SetNeedLayout(needLayout: true);
			}
		}
	}

	public override Color BackColor
	{
		get
		{
			Color color;
			if (Style == VisualStyle.Office2007)
			{
				color = ((!IsActive) ? Office2007ColorTable.ComboBoxAdvHotBackColor : Office2007ColorTable.ComboBoxAdvNormalBackColor);
				if (TextBox != null && TextBox.BackColor != color)
				{
					TextBox.BackColor = color;
				}
			}
			else
			{
				color = base.BackColor;
			}
			return color;
		}
		set
		{
			base.BackColor = value;
			TextBox.BackColor = value;
			if (popupControl != null)
			{
				popupControl.BackColor = value;
			}
			if (BackColor == DefaultComboBackColor)
			{
				TextBox.ResetBackColor();
				if (popupControl != null)
				{
					popupControl.ResetBackColor();
				}
			}
			SetNeedLayout(needLayout: true);
			if (base.IsHandleCreated)
			{
				InvalidateWindow();
			}
			if (Style != VisualStyle.Office2007 || (base.BackColor != Office2007ColorTable.ComboBoxAdvHotBackColor && base.BackColor != Office2007ColorTable.ComboBoxAdvNormalBackColor))
			{
				cachedBackColor = value;
			}
		}
	}

	[Description("Specifies whether or not users should be forced to enter numbers.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public virtual bool NumberOnly
	{
		get
		{
			return numberOnly;
		}
		set
		{
			numberOnly = value;
		}
	}

	[Description("Specifies whether the text in the edit portion can be changed or not.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public virtual bool ReadOnly
	{
		get
		{
			return readOnly;
		}
		set
		{
			if (readOnly != value)
			{
				readOnly = value;
				OnReadOnlyChanged(EventArgs.Empty);
				if (base.IsHandleCreated)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Specifies whether the ComboBoxBase control modifies the case of characters as they are typed.")]
	[DefaultValue(CharacterCasing.Normal)]
	public virtual CharacterCasing CharacterCasing
	{
		get
		{
			return TextBox.CharacterCasing;
		}
		set
		{
			if (TextBox.CharacterCasing != value)
			{
				TextBox.CharacterCasing = value;
				SetNeedLayout(needLayout: true);
			}
		}
	}

	[Description("Indicates if the control will ignore the theme's background color and draw the BackColor instead.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public virtual bool IgnoreThemeBackground
	{
		get
		{
			return ignoreThemeBackground;
		}
		set
		{
			if (ignoreThemeBackground != value)
			{
				ignoreThemeBackground = value;
				RefreshBackColor(value);
			}
		}
	}

	[Description("Specifies how the text is aligned in this control.")]
	[Category("Appearance")]
	[DefaultValue(HorizontalAlignment.Left)]
	public virtual HorizontalAlignment TextAlign
	{
		get
		{
			return TextBox.TextAlign;
		}
		set
		{
			if (TextBox.TextAlign != value)
			{
				TextBox.TextAlign = value;
				SetNeedLayout(needLayout: true);
			}
		}
	}

	public override ContextMenu ContextMenu
	{
		get
		{
			if (TextBox.ContextMenu != null)
			{
				return TextBox.ContextMenu;
			}
			return cachedContextMenu;
		}
		set
		{
			TextBox.ContextMenu = value;
			base.ContextMenu = TextBox.ContextMenu;
			if (popupControl != null && popupControl.Parent == this)
			{
				popupControl.ContextMenu = TextBox.ContextMenu;
			}
		}
	}

	public override Color ForeColor
	{
		get
		{
			if (TextBox == null)
			{
				return Color.Empty;
			}
			return TextBox.ForeColor;
		}
		set
		{
			TextBox.ForeColor = value;
			base.ForeColor = TextBox.ForeColor;
			if (popupControl != null)
			{
				popupControl.ForeColor = TextBox.ForeColor;
			}
			SetNeedLayout(needLayout: true);
		}
	}

	[Category("Appearance")]
	[DefaultValue(Border3DStyle.Sunken)]
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
				if (base.IsHandleCreated)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[DefaultValue(Border3DSide.All)]
	[Description("Indicates the border sides for which to use 3D borders in the control.")]
	[Category("Appearance")]
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
				if (base.IsHandleCreated)
				{
					InvalidateWindow();
				}
			}
		}
	}

	protected string LastCommittedText
	{
		get
		{
			return latestCommittedString;
		}
		set
		{
			latestCommittedString = value;
		}
	}

	[Description("Specifies the flat style appearance of the combo box control.")]
	[DefaultValue(ComboFlatStyle.Standard)]
	[Category("Appearance")]
	public virtual ComboFlatStyle FlatStyle
	{
		get
		{
			return comboFlatStyle;
		}
		set
		{
			if (comboFlatStyle == value)
			{
				return;
			}
			if (Style != VisualStyle.Default && value == ComboFlatStyle.System)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("Cannot set FlatStyle to System when the Style property is non-default.", "ComboDropDown design-time information:", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
				}
				return;
			}
			comboFlatStyle = value;
			ddButton.FlatStyle = value;
			UpdateStyles();
			if (base.IsHandleCreated)
			{
				InvalidateWindow();
			}
			SetNeedLayout(needLayout: true);
		}
	}

	[DefaultValue(VisualStyle.Default)]
	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	[Category("Appearance")]
	[Description("Specifies an advanced appearance and behavior.")]
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
				if (value != VisualStyle.Default && FlatStyle == ComboFlatStyle.System)
				{
					MessageBox.Show("Changing FlatStyle to Standard", "ComboDropDown design-time information:", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
					FlatStyle = ComboFlatStyle.Standard;
				}
				editorStyle = value;
				ddButton.Style = value;
				UpdateStyles();
				SetNeedLayout(needLayout: true);
				OnStyleChanged();
			}
		}
	}

	[Browsable(false)]
	[Description("Specifies a value indicating whether the combo box is displaying its drop-down portion.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public bool DroppedDown
	{
		get
		{
			if (PopupContainer != null)
			{
				return PopupContainer.IsShowing();
			}
			return false;
		}
		set
		{
			if (value)
			{
				ShowPopup();
			}
			else
			{
				HidePopup();
			}
		}
	}

	[Description("Gets the PopupControlContainer used to host the drop-down list.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public PopupControlContainer PopupContainer
	{
		get
		{
			if (popupContainer == null)
			{
				popupContainer = CreatePopupContainer();
				InitPopupContainer();
			}
			return popupContainer;
		}
	}

	protected override Size DefaultSize
	{
		get
		{
			if (base.IsHandleCreated)
			{
				Graphics graphics = CreateGraphics();
				Layout(graphics);
				graphics.Dispose();
				return new Size(121, base.Height);
			}
			return new Size(121, 21);
		}
	}

	[Description("Gets the text box used to draw the editable text portion of the combo.")]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public TextBox TextBox => textBox;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	[Description("Gets the DropDownButton used to draw the drop-down portion of the combo.")]
	public DropDownButton DropDownButton => ddButton;

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

	public override string Text
	{
		get
		{
			return textBox.Text;
		}
		set
		{
			SetText(value, fireChangeEvent: true);
		}
	}

	[DefaultValue(32767)]
	[Category("Behavior")]
	[Description("Gets or sets the maximum number of characters allowed in the editable portion of a combo box.")]
	public int MaxLength
	{
		get
		{
			return textBox.MaxLength;
		}
		set
		{
			textBox.MaxLength = value;
		}
	}

	[Category("Behavior")]
	[Description("Specifies the drop-down's width.")]
	public int DropDownWidth
	{
		get
		{
			if (dropDownWidth != -1)
			{
				return dropDownWidth;
			}
			return base.Width;
		}
		set
		{
			if (dropDownWidth != value)
			{
				dropDownWidth = value;
				if (popupContainer != null && !popupContainer.IsShowing())
				{
					popupContainer.Width = value;
				}
			}
		}
	}

	[Description("Specifies a value specifying the style of the combo box.")]
	[Category("Appearance")]
	[DefaultValue(typeof(ComboBoxStyle), "DropDown")]
	public ComboBoxStyle DropDownStyle
	{
		get
		{
			return comboStyle;
		}
		set
		{
			if (comboStyle != value)
			{
				comboStyle = value;
				SetNeedLayout(needLayout: true);
				OnDropDownStyleChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Specifies the color with which the flat border should be drawn.")]
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
				if (base.IsHandleCreated)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[DefaultValue(null)]
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

	[Browsable(false)]
	[DefaultValue(ImageLayout.None)]
	public new ImageLayout BackgroundImageLayout
	{
		get
		{
			return ImageLayout.None;
		}
		set
		{
		}
	}

	private bool ComboInFocus
	{
		get
		{
			return comboInFocus;
		}
		set
		{
			if (comboInFocus == value)
			{
				return;
			}
			if (value)
			{
				comboInFocus = value;
				LastCommittedText = Text;
			}
			else
			{
				comboInFocus = value;
				CommitChanges();
				if (!LastCommittedText.Equals(Text))
				{
					LastCommittedText = Text;
				}
			}
			if (value)
			{
				IsActive = true;
			}
			else
			{
				UpdateIsActiveState();
			}
		}
	}

	internal bool QuickSelectOn
	{
		get
		{
			return quickSelectOn;
		}
		set
		{
			if (quickSelectOn != value)
			{
				if (quickSelectOn)
				{
					quickSelectTimer.Stop();
				}
				quickSelectOn = value;
				if (quickSelectOn)
				{
					quickSelectTimer.Start();
					ddButton.CancelMouseTrack();
				}
			}
		}
	}

	[DefaultValue(Office2007Theme.Blue)]
	[Category("Appearance")]
	[Description("Office 2007 color scheme.")]
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
				ddButton.Office2007ColorTheme = value;
				OnStyleChanged();
			}
		}
	}

	internal Office2007Colors Office2007ColorTable => Office2007Colors.GetColorTable(Office2007ColorTheme);

	[DefaultValue(true)]
	[Description("Indicates whether item selection changing can be done using mouse wheel rotation.")]
	public bool AllowMouseWheelSelection
	{
		get
		{
			return allowMouseWheelSelection;
		}
		set
		{
			allowMouseWheelSelection = value;
		}
	}

	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			if (Style != VisualStyle.Default)
			{
				createParams.Style |= 8388608;
			}
			else
			{
				switch (comboFlatStyle)
				{
				case ComboFlatStyle.Flat:
				case ComboFlatStyle.Standard:
					createParams.ExStyle |= 512;
					break;
				}
			}
			return createParams;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool NeedLayout => needLayout;

	private bool IsActive
	{
		get
		{
			return isActive;
		}
		set
		{
			if (isActive == value)
			{
				return;
			}
			ddButton.IsActive = value;
			isActive = value;
			if (Style == VisualStyle.Office2007)
			{
				if (value)
				{
					BackColor = Office2007ColorTable.ComboBoxAdvNormalBackColor;
				}
				else
				{
					BackColor = Office2007ColorTable.ComboBoxAdvHotBackColor;
				}
			}
		}
	}

	private bool ThemesEnabled => ((IThemedControl)this).ThemesEnabled;

	bool IThemedControl.ThemesEnabled
	{
		get
		{
			return FlatStyle == ComboFlatStyle.System;
		}
		set
		{
			if (ThemesEnabled != value)
			{
				if (value)
				{
					FlatStyle = ComboFlatStyle.System;
				}
				else
				{
					FlatStyle = ComboFlatStyle.Standard;
				}
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Fired when BorderSides are changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Category("Property Changed")]
	[Description("Occurs when border's 3D style is changed.")]
	public event EventHandler Border3DStyleChanged;

	[Category("Action")]
	[Description("Occurs before the drop-down portion is shown.")]
	public event EventHandler DropDown;

	[Description("Occurs when the user selects a new text for the combo.")]
	[Category("Behavior")]
	public event EventHandler SelectionChangeCommitted;

	[Description("Occurs when the DropDownStyle of the combo changes.")]
	[Category("Behavior")]
	public event EventHandler DropDownStyleChanged;

	[Category("Behavior")]
	[Description("Occurs when the Read-only property of the combo changes.")]
	public event EventHandler ReadOnlyChanged;

	[Category("Appearance")]
	[Description("This event will be fired when the ThemesEnabled property changes.")]
	public event EventHandler ThemeChanged;

	public ComboDropDown()
	{
		SetStyle(ControlStyles.Selectable | WhidbeyCompatibleControlStyles.DoubleBuffer | ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint, value: true);
		textBox = CreateTextBox();
		ddButton = CreateDropDownButton();
		comboDropDownWeakContainer = new ComboDropDownWeakContainer(this);
		MenuColors.MenuColorsChanged += comboDropDownWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += comboDropDownWeakContainer.Office2003ColorsChangedWeakEventHandler;
	}

	private void Init()
	{
		textBox.BorderStyle = BorderStyle.None;
		textBox.Visible = false;
		textBox.TabIndex = 0;
		base.Controls.Add(textBox);
		RefreshBackColor(ignoreThemeBackground);
		cd = new ControlDrawing();
		InitTextBox();
		InitDropDownButton(ddButton);
		m_nativeWindow = new DropDownNativeWindow(this);
		m_nativeWindow.ImeMessageReceived += m_nativeWindow_ImeMessageReceived;
		if (popupContainer == null)
		{
			popupContainer = CreatePopupContainer();
			InitPopupContainer();
		}
		if (m_scrollersFrame == null)
		{
			m_scrollersFrame = CreateScrollersFrame();
		}
		quickSelectTimer = new Timer();
		quickSelectTimer.Interval = 50;
		quickSelectTimer.Tick += QuickSelectTimer_Tick;
		if (XPThemes.IsThemedOS)
		{
			themedDrawing = new ThemedEditDrawing();
		}
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
	}

	private void Uninit()
	{
		if (ddButton != null)
		{
			ddButton.MouseDown -= DDButtonPressed;
		}
		if (textBoxEventsHooked)
		{
			UnInitTextBox();
		}
		m_nativeWindow.ImeMessageReceived -= m_nativeWindow_ImeMessageReceived;
		m_nativeWindow = null;
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		base.OnSystemColorsChanged(e);
		MenuColors.SysColorsChanged(updateColorsNow: false);
		Office2003Colors.SysColorsChanged(updateColorsNow: false);
		Refresh();
	}

	void ISupportInitialize.BeginInit()
	{
		initializing = true;
		OnBeginInit();
	}

	protected virtual void OnBeginInit()
	{
	}

	void ISupportInitialize.EndInit()
	{
		initializing = false;
		OnEndInit();
	}

	protected virtual void OnEndInit()
	{
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			if (IsTextValid(Text))
			{
				UpdatePopupControl();
			}
			else
			{
				UpdateText(fireEvent: true);
			}
		}
	}

	protected virtual PopupControlContainer CreatePopupContainer()
	{
		return new ComboDropDownPopupContainer();
	}

	protected virtual void InitPopupContainer()
	{
		popupContainer.BorderStyle = BorderStyle.None;
		popupContainer.ParentControl = this;
		popupContainer.CloseUp += Popup_Closed;
		popupContainer.BeforePopup += Popup_BeforePopup;
		popupContainer.BackColor = SystemColors.Window;
		popupContainer.HandleCreated += Popup_HandleCreated;
		popupContainer.EnsurePopupHost();
		WinFormsUtils.ChangeStyle(popupContainer, ControlStyles.Selectable, setOrReset: false);
	}

	protected virtual TextBox CreateTextBox()
	{
		return new TextBox();
	}

	protected virtual DropDownButton CreateDropDownButton()
	{
		return new DropDownButton(this);
	}

	protected virtual void InitDropDownButton(DropDownButton ddButton)
	{
		ddButton.MouseDown += DDButtonPressed;
		ddButton.FlatStyle = FlatStyle;
	}

	protected virtual void InitTextBox()
	{
		textBox.KeyDown += TextBox_KeyDown;
		textBox.KeyPress += TextBox_KeyPress;
		textBox.KeyUp += TextBox_KeyUp;
		textBox.Click += TextBox_Click;
		textBox.DoubleClick += TextBox_DoubleClick;
		textBox.GotFocus += TextBox_GotFocus;
		textBox.LostFocus += TextBox_LostFocus;
		textBox.HelpRequested += TextBox_HelpRequested;
		textBox.ImeModeChanged += TextBox_ImeModeChanged;
		textBox.QueryAccessibilityHelp += TextBox_QueryAccessibilityHelp;
		textBox.MouseHover += TextBox_MouseHover;
		textBox.MouseMove += TextBox_MouseMove;
		textBox.MouseLeave += TextBox_MouseLeave;
		textBox.MouseEnter += TextBox_MouseEnter;
		textBox.TextChanged += TextBox_TextChanged;
		textBoxEventsHooked = true;
	}

	protected virtual void UnInitTextBox()
	{
		textBox.KeyDown -= TextBox_KeyDown;
		textBox.KeyPress -= TextBox_KeyPress;
		textBox.KeyUp -= TextBox_KeyUp;
		textBox.Click -= TextBox_Click;
		textBox.DoubleClick -= TextBox_DoubleClick;
		textBox.GotFocus -= TextBox_GotFocus;
		textBox.LostFocus -= TextBox_LostFocus;
		textBox.HelpRequested -= TextBox_HelpRequested;
		textBox.ImeModeChanged -= TextBox_ImeModeChanged;
		textBox.QueryAccessibilityHelp -= TextBox_QueryAccessibilityHelp;
		textBox.MouseHover -= TextBox_MouseHover;
		textBox.MouseMove -= TextBox_MouseMove;
		textBox.MouseLeave -= TextBox_MouseLeave;
		textBox.MouseEnter -= TextBox_MouseEnter;
		textBox.TextChanged -= TextBox_TextChanged;
		textBoxEventsHooked = false;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			SelectInAFewMilliSecs = false;
			this.disposing = disposing;
			if (popupContainer != null)
			{
				popupContainer.ParentControl = null;
				popupContainer.BeforePopup -= Popup_BeforePopup;
				popupContainer.CloseUp -= Popup_Closed;
				popupContainer.HandleCreated -= Popup_HandleCreated;
				popupContainer.Dispose();
				popupContainer = null;
			}
			UnInitTextBox();
			textBox.Dispose();
			textBox = null;
			if (quickSelectTimer != null)
			{
				quickSelectTimer.Stop();
				quickSelectTimer.Tick -= QuickSelectTimer_Tick;
				quickSelectTimer.Dispose();
				quickSelectTimer = null;
			}
			if (m_scrollersFrame != null)
			{
				DetachScrollersFrame();
				m_scrollersFrame.Dispose();
				m_scrollersFrame = null;
			}
			if (comboDropDownWeakContainer != null)
			{
				MenuColors.MenuColorsChanged -= comboDropDownWeakContainer.MenuColorsChangedWeakEventHandler;
				Office2003Colors.MenuColorsChanged -= comboDropDownWeakContainer.Office2003ColorsChangedWeakEventHandler;
				comboDropDownWeakContainer = null;
			}
			cd = null;
		}
		if (ddButton != null)
		{
			ddButton.MouseDown -= DDButtonPressed;
			((IDisposable)ddButton).Dispose();
			ddButton = null;
		}
		if (themedDrawing != null)
		{
			themedDrawing.Dispose();
			themedDrawing = null;
		}
		base.Dispose(disposing);
	}

	private void Timer_Tick(object sender, EventArgs e)
	{
		TextBox.SelectAll();
		SelectInAFewMilliSecs = false;
	}

	protected virtual void AttachPopupControl()
	{
		if (base.DesignMode)
		{
			return;
		}
		if (DropDownStyle == ComboBoxStyle.DropDownList && !IsTextValid(Text))
		{
			UpdateText(fireEvent: true);
		}
		PopupControl.SizeChanged += PopupControl_SizeChanged;
		UpdatePopupControlRelationship();
		PopupControl.Visible = false;
		PopupControl.BackColor = BackColor;
		if (Style == VisualStyle.Office2007 && popupControl.IsHandleCreated && popupContainer.IsHandleCreated)
		{
			AttachScrollersFrame(popupControl);
			InitScrollersFrame();
		}
		WinFormsUtils.ChangeStyle(PopupControl, ControlStyles.Selectable, setOrReset: false);
		foreach (Control control in PopupControl.Controls)
		{
			WinFormsUtils.ChangeStyle(control, ControlStyles.Selectable, setOrReset: false);
		}
	}

	protected virtual void DetachPopupControl(bool disposing)
	{
		if (!base.DesignMode && PopupControl != null)
		{
			PopupControl.SizeChanged -= PopupControl_SizeChanged;
			if (!disposing && PopupControl.Parent != null)
			{
				PopupControl.Parent.Controls.Remove(PopupControl);
			}
		}
	}

	private void PopupControl_SizeChanged(object sender, EventArgs e)
	{
		if (DroppedDown)
		{
			UpdatePopupBounds();
		}
	}

	protected virtual void UpdatePopupControlRelationship()
	{
		if (PopupControl == null || base.DesignMode)
		{
			return;
		}
		SuspendLayout();
		if (DropDownStyle != ComboBoxStyle.Simple)
		{
			if (PopupContainer != null)
			{
				PopupContainer.Controls.Add(PopupControl);
				UpdatePopupBounds();
			}
		}
		else
		{
			base.Controls.Add(PopupControl);
		}
		ResumeLayout(performLayout: false);
	}

	protected virtual void UpdatePopupBounds()
	{
		PopupContainer.Height = PopupControl.Height;
		PopupControl.Bounds = PopupContainer.ClientRectangle;
	}

	public override void ResetBackColor()
	{
		BackColor = DefaultComboBackColor;
		SetNeedLayout(needLayout: true);
	}

	protected bool ShouldSerializeBackColor()
	{
		if (BackColor == DefaultComboBackColor)
		{
			return false;
		}
		return true;
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
		ddButton.Enabled = base.Enabled && !ReadOnly;
		TextBox.Enabled = base.Enabled;
		if (popupControl != null)
		{
			popupControl.Enabled = base.Enabled && !ReadOnly;
		}
	}

	private void OnStyleChanged()
	{
		if (Style == VisualStyle.Office2007)
		{
			if (popupControl != null && popupControl.IsHandleCreated && popupContainer != null && popupContainer.IsHandleCreated)
			{
				AttachScrollersFrame(popupControl);
				InitScrollersFrame();
			}
		}
		else
		{
			BackColor = cachedBackColor;
			DetachScrollersFrame();
		}
		if (base.IsHandleCreated)
		{
			InvalidateWindow();
		}
	}

	public void ResetDropDownWidth()
	{
		dropDownWidth = -1;
	}

	public bool ShouldSerializeDropDownWidth()
	{
		return dropDownWidth != -1;
	}

	protected void ResetFlatBorderColor()
	{
		flatBorderColor = Color.Empty;
		Invalidate();
	}

	protected bool ShouldSerializeFlatBorderColor()
	{
		if (flatBorderColor != Color.Empty)
		{
			return true;
		}
		return false;
	}

	protected override void OnEnter(EventArgs e)
	{
		if (!m_bIsEntering)
		{
			m_bIsEntering = true;
			ComboInFocus = true;
			base.OnEnter(e);
			if (textBox.Visible)
			{
				textBox.Focus();
			}
			if (NeedLayout)
			{
				Graphics graphics = CreateGraphics();
				Layout(graphics);
				graphics.Dispose();
			}
			if (DropDownStyle == ComboBoxStyle.DropDownList)
			{
				SetNeedLayout(needLayout: true);
			}
			m_bIsEntering = false;
		}
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			SetNeedLayout(needLayout: true);
		}
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		m_strTextToSearch = string.Empty;
		base.OnLostFocus(e);
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			SetNeedLayout(needLayout: true);
		}
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	protected override void OnTabStopChanged(EventArgs e)
	{
		base.OnTabStopChanged(e);
		TextBox.TabStop = base.TabStop;
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		inputTextIndex = 0;
		ComboInFocus = false;
	}

	protected virtual void SetText(string newValue, bool fireChangeEvent)
	{
		if (!(Text != newValue))
		{
			return;
		}
		bool flag = true;
		if (IsTextValid(newValue))
		{
			ignorePopupValueChange = true;
			SetPopupText(newValue);
			ignorePopupValueChange = false;
			UpdateText(fireChangeEvent);
		}
		else if (DropDownStyle != ComboBoxStyle.DropDownList || initializing)
		{
			TextBox.Text = newValue;
			if (!initializing)
			{
				UpdatePopupControl();
			}
		}
		else
		{
			flag = false;
		}
		if (flag)
		{
			SetNeedLayout(needLayout: true);
		}
	}

	protected virtual bool IsTextValid(string text)
	{
		return true;
	}

	protected virtual void SetPopupText(string value)
	{
		if (PopupControl != null)
		{
			PopupControl.Text = value;
		}
	}

	protected virtual string GetPopupText()
	{
		return PopupControl.Text;
	}

	public virtual bool UpdateText(bool fireEvent)
	{
		string text = Text;
		if (PopupControl != null)
		{
			string text2 = GetPopupText();
			if (CharacterCasing == CharacterCasing.Upper)
			{
				text2 = text2.ToUpper();
			}
			else if (CharacterCasing == CharacterCasing.Lower)
			{
				text2 = text2.ToLower();
			}
			if (IsTextValid(text2) || text2 == string.Empty)
			{
				TextBox.Text = text2;
			}
			SetNeedLayout(needLayout: true);
		}
		else if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			TextBox.Text = string.Empty;
		}
		if (fireEvent && text != Text && !disposing)
		{
			OnSelectionChangeCommitted(EventArgs.Empty);
			return true;
		}
		return false;
	}

	protected virtual bool OtherChangesMade()
	{
		return false;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Init();
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
		if (popupControl == null)
		{
			DetachPopupControl(disposing: false);
			if (popupControl != null)
			{
				popupControl.Dispose();
			}
			popupControl = null;
		}
		Uninit();
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

	protected virtual void CommitChanges()
	{
		if (LastCommittedText != Text)
		{
			OnSelectionChangeCommitted(EventArgs.Empty);
		}
		LastCommittedText = Text;
	}

	protected virtual void ResetToLatestCommittedText()
	{
		SetText(LastCommittedText, fireChangeEvent: false);
	}

	protected virtual void OnDropDown(EventArgs e)
	{
		if (!suppressdropdownevent)
		{
			m_strTextToSearch = string.Empty;
			if (this.DropDown != null)
			{
				this.DropDown(this, e);
			}
		}
	}

	protected virtual void OnSelectionChangeCommitted(EventArgs e)
	{
		LastCommittedText = Text;
		if (this.SelectionChangeCommitted != null)
		{
			this.SelectionChangeCommitted(this, e);
		}
	}

	public void RaiseSelectionChangeCommitted()
	{
		OnSelectionChangeCommitted(EventArgs.Empty);
	}

	protected virtual void OnDropDownStyleChanged(EventArgs e)
	{
		if (DropDownStyle == ComboBoxStyle.Simple)
		{
			preventHeightChange = false;
			if (base.Parent != null)
			{
				base.Parent.PerformLayout(this, "Bounds");
			}
		}
		else
		{
			preventHeightChange = true;
		}
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			UpdateText(fireEvent: false);
		}
		if (this.DropDownStyleChanged != null)
		{
			this.DropDownStyleChanged(this, e);
		}
	}

	protected virtual void OnReadOnlyChanged(EventArgs e)
	{
		ddButton.Enabled = base.Enabled && !ReadOnly;
		TextBox.ReadOnly = ReadOnly;
		if (popupControl != null)
		{
			popupControl.Enabled = base.Enabled && !ReadOnly;
		}
		if (this.ReadOnlyChanged != null)
		{
			this.ReadOnlyChanged(this, e);
		}
	}

	private void QuickSelectTimer_Tick(object sender, EventArgs e)
	{
		Point mousePosition = Control.MousePosition;
		mousePosition = PointToClient(mousePosition);
		ProcessPopupControlMouseMove(this, new MouseEventArgs(Control.MouseButtons, 1, mousePosition.X, mousePosition.Y, 0));
	}

	private void InvalidateWindow()
	{
		NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1153u);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rc = displayRect;
		int num = 2;
		BorderStyle borderStyle = BorderStyle.Fixed3D;
		if (Style != VisualStyle.Default)
		{
			borderStyle = BorderStyle.FixedSingle;
			num = 1;
		}
		else
		{
			switch (FlatStyle)
			{
			case ComboFlatStyle.Flat:
				borderStyle = BorderStyle.FixedSingle;
				break;
			case ComboFlatStyle.Standard:
				borderStyle = BorderStyle.Fixed3D;
				break;
			}
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rc.Location, new Size(num, rc.Height)),
			new Rectangle(rc.Location, new Size(rc.Width, num)),
			new Rectangle(rc.Width - num, rc.Y, num, rc.Height),
			new Rectangle(rc.X, rc.Height - num, rc.Width, num)
		};
		using (Brush brush = new SolidBrush(BackColor))
		{
			for (int i = 0; i < 4; i++)
			{
				graphics.FillRectangle(brush, array[i]);
			}
		}
		Color borderColor = flatBorderColor;
		if (Style == VisualStyle.Office2007)
		{
			borderColor = Office2007ColorTable.ComboBoxAdvNormalBorderColor;
		}
		else if (Style == VisualStyle.OfficeXP)
		{
			borderColor = ((!IsActive) ? FlatBorderColor : MenuColors.SelBorderColor);
		}
		else if (Style == VisualStyle.Office2003)
		{
			borderColor = ((!IsActive) ? FlatBorderColor : Office2003Colors.SelBorderColor);
		}
		if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(graphics, rc, borderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(graphics, rc, borderStyle, border3DStyle, ButtonBorderStyle.Solid, borderColor);
		}
		if (Style == VisualStyle.Office2007 && IsActive)
		{
			Rectangle bounds = DropDownButton.Bounds;
			bounds.Inflate(-1, 0);
			Color color = Office2007ColorTable.ComboBoxAdvNormalBorderColor;
			if (DropDownButton.Pushed || DroppedDown)
			{
				color = Office2007ColorTable.ComboBoxAdvPushedBorderColor;
			}
			else if (DropDownButton.Hot || Focused)
			{
				color = Office2007ColorTable.ComboBoxAdvHotBorderColor;
			}
			using Pen pen = new Pen(color);
			graphics.DrawLine(pen, bounds.X, bounds.Y, displayRect.Right, bounds.Y);
			graphics.DrawLine(pen, displayRect.Right - 1, bounds.Y, displayRect.Right - 1, bounds.Bottom);
			graphics.DrawLine(pen, bounds.X, displayRect.Bottom - 1, displayRect.Right - 1, displayRect.Bottom - 1);
		}
		return NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected virtual void PerformTextAutoComplete(KeyPressEventArgs e)
	{
		if (!HasListInterface())
		{
			e.Handled = false;
			return;
		}
		char c = (char)(e.KeyChar & 0xFF);
		int num = -1;
		int num2 = 0;
		int num3 = 0;
		if (Text.Length >= MaxLength && DropDownStyle != ComboBoxStyle.DropDownList)
		{
			return;
		}
		num2 = TextBox.SelectionStart;
		num3 = TextBox.SelectionLength;
		if (DropDownStyle == ComboBoxStyle.DropDownList && !matchFirstCharacterOnly)
		{
			if (inputTextIndex > TextBox.Text.Length)
			{
				inputTextIndex = TextBox.Text.Length;
			}
			num2 = inputTextIndex;
			num3 = 1;
		}
		ignorePopupValueChange = true;
		string text = null;
		if (!char.IsControl(e.KeyChar) || c == '\b')
		{
			if (num2 + num3 == TextBox.Text.Length || DropDownStyle == ComboBoxStyle.DropDownList)
			{
				if (num2 == TextBox.Text.Length)
				{
					m_strTextToSearch = TextBox.Text;
				}
				if (num2 == 0 && num3 == TextBox.Text.Length)
				{
					m_strTextToSearch = string.Empty;
				}
				text = ((matchFirstCharacterOnly && DropDownStyle == ComboBoxStyle.DropDownList) ? TextBox.Text.Substring(0, num2) : m_strTextToSearch);
				if (c != '\b')
				{
					string text2 = Text;
					text += e.KeyChar;
					m_strTextToSearch += e.KeyChar;
					string text3 = "";
					int num4 = -1;
					m_lastFoundIndex = ((m_lastFoundIndex == -1) ? FindItem(TextBox.Text, select: false, -1, ignoreCase: false) : m_lastFoundIndex);
					if (TextBox.Text.Length > 0 && m_lastFoundIndex != -1)
					{
						num4 = m_lastFoundIndex;
					}
					num4 = ((matchFirstCharacterOnly && DropDownStyle == ComboBoxStyle.DropDownList) ? num4 : (-1));
					if (text2.StartsWith(text))
					{
						num = (m_lastFoundIndex = FindItem(text, select: false, num4, ignoreCase: false));
						text3 = ((num < 0) ? text2 : GetPopupControlItemText(num));
						num3 = Math.Max(0, text3.Length - text.Length);
					}
					else
					{
						num4 = ((num4 < -1) ? (-1) : num4);
						num = FindItem(text, select: false, num4, !CaseSensitiveAutocomplete);
						if (num == -1)
						{
							num = FindItem(m_strTextToSearch, select: false, -1, !CaseSensitiveAutocomplete);
						}
						if (num > -1)
						{
							text3 = GetPopupControlItemText(num);
							num3 = Math.Max(0, text3.Length - text.Length);
						}
						string text4 = (CaseSensitiveAutocomplete ? text3 : text3.ToLower());
						string value = (CaseSensitiveAutocomplete ? text : text.ToLower());
						bool flag = text4.StartsWith(value);
						if (DropDownStyle != ComboBoxStyle.DropDownList && !flag)
						{
							text3 = text;
						}
						m_lastFoundIndex = num;
					}
					if (DropDownStyle == ComboBoxStyle.DropDownList)
					{
						if (num > -1)
						{
							bool flag2 = ignorePopupValueChange;
							ignorePopupValueChange = false;
							TextBox.Text = text3;
							if (!OnNewListItemKeyedIn(num))
							{
								ignorePopupValueChange = flag2;
								SetNeedLayout(needLayout: true);
							}
							ignorePopupValueChange = flag2;
						}
					}
					else
					{
						string text5 = text3.Substring(text.Length - 1);
						SetSelectedText(text5, num);
						num2 = text.Length;
					}
					if (DropDownStyle == ComboBoxStyle.DropDownList && num > -1 && text2 != Text && !popupContainer.IsShowing())
					{
						OnSelectionChangeCommitted(EventArgs.Empty);
					}
					e.Handled = true;
				}
				else
				{
					int num5 = textBox.SelectionStart;
					int count = textBox.SelectionLength;
					if (Text.Length > 0 && num5 > 0)
					{
						if (textBox.SelectionLength == 0)
						{
							num5--;
							count = 1;
						}
						m_strTextToSearch = Text.Remove(num5, count);
					}
				}
			}
			if (DropDownStyle != ComboBoxStyle.DropDownList)
			{
				TextBox.SelectionStart = num2;
				TextBox.SelectionLength = num3;
			}
		}
		inputTextIndex++;
		if (c == '\r' && DropDownStyle == ComboBoxStyle.DropDown && !DroppedDown)
		{
			num = m_lastFoundIndex;
		}
		ignorePopupValueChange = false;
		if (num == -1)
		{
			autoCompleteSuccess = false;
		}
		else
		{
			autoCompleteSuccess = true;
		}
	}

	protected virtual bool OnNewListItemKeyedIn(int indexFound)
	{
		return false;
	}

	protected virtual int FindItem(string prefix, bool select, int start, bool ignoreCase)
	{
		return -1;
	}

	protected virtual void SetSelectedText(string text, int foundIndex)
	{
		if (text == null)
		{
			throw new ArgumentNullException("foundIndex");
		}
		if (IsValidIndex(foundIndex))
		{
			TextBox.Text = GetPopupControlItemText(foundIndex);
		}
		else
		{
			TextBox.SelectedText = text;
		}
	}

	protected virtual bool IsValidIndex(int index)
	{
		return true;
	}

	protected virtual bool HasListInterface()
	{
		return false;
	}

	protected virtual string GetPopupControlItemText(int index)
	{
		return Text;
	}

	private void TextBox_Click(object sender, EventArgs e)
	{
		OnClick(e);
	}

	private void TextBox_GotFocus(object sender, EventArgs e)
	{
		if (Control.MouseButtons == MouseButtons.Left)
		{
			SelectInAFewMilliSecs = true;
		}
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	private void TextBox_LostFocus(object sender, EventArgs e)
	{
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	private void TextBox_DoubleClick(object sender, EventArgs e)
	{
		OnDoubleClick(e);
	}

	private void TextBox_HelpRequested(object sender, HelpEventArgs e)
	{
		OnHelpRequested(e);
	}

	private void TextBox_ImeModeChanged(object sender, EventArgs e)
	{
		OnImeModeChanged(e);
	}

	private void TextBox_MouseHover(object sender, EventArgs e)
	{
		OnMouseHover(e);
	}

	private void TextBox_MouseMove(object sender, MouseEventArgs e)
	{
		ProcessMouseMove(e, fromTextBox: true);
	}

	private void TextBox_MouseEnter(object sender, EventArgs e)
	{
		mouseWasUnderChild = true;
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	private void TextBox_MouseLeave(object sender, EventArgs e)
	{
		OnMouseLeave(e);
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	private void TextBox_TextChanged(object sender, EventArgs e)
	{
		if (!disposing)
		{
			Invalidate();
			OnTextChanged(e);
		}
	}

	private void TextBox_QueryAccessibilityHelp(object sender, QueryAccessibilityHelpEventArgs e)
	{
	}

	private void TextBox_KeyUp(object sender, KeyEventArgs e)
	{
		OnTextBoxKeyUp(e);
		OnKeyUp(e);
	}

	protected virtual void OnTextBoxKeyUp(KeyEventArgs e)
	{
		if (DroppedDown || DropDownStyle == ComboBoxStyle.DropDownList || DropDownStyle == ComboBoxStyle.Simple)
		{
			UpdatePopupControl();
		}
	}

	protected override void OnKeyPress(KeyPressEventArgs e)
	{
		base.OnKeyPress(e);
		if (!ReadOnly && !e.Handled)
		{
			if (!char.IsNumber(e.KeyChar) && e.KeyChar != '\b' && NumberOnly)
			{
				e.Handled = true;
			}
			else
			{
				PerformTextAutoComplete(e);
			}
			if (DroppedDown || DropDownStyle == ComboBoxStyle.DropDownList)
			{
				UpdatePopupControl();
			}
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		if (!e.Handled && ((e.Alt && e.KeyCode == Keys.Down) || (e.Alt && e.KeyCode == Keys.Up) || (e.KeyCode == Keys.F4 && !e.Alt)))
		{
			if (popupContainer.IsShowing())
			{
				HidePopup();
			}
			else
			{
				ShowPopup();
			}
			e.Handled = true;
		}
	}

	private void TextBox_KeyPress(object sender, KeyPressEventArgs e)
	{
		if (m_bIsInImeMode)
		{
			m_bIsInImeMode = false;
		}
		else
		{
			OnKeyPress(e);
		}
	}

	public virtual bool PerformAllowNewText(Message m)
	{
		return false;
	}

	private void TextBox_KeyDown(object sender, KeyEventArgs e)
	{
		OnKeyDown(e);
		if (!e.Handled)
		{
			ProcessKey(e.KeyCode);
		}
	}

	private bool ProcessKey(Keys key)
	{
		if (ReadOnly)
		{
			return false;
		}
		bool flag = popupContainer.IsShowing();
		if (flag && (key == Keys.Tab || key == (Keys.Tab | Keys.Shift)))
		{
			HidePopup();
		}
		if (key == (Keys.Down | Keys.Alt) || key == (Keys.Up | Keys.Alt))
		{
			return true;
		}
		switch (key)
		{
		case Keys.Left:
			if (DropDownStyle != ComboBoxStyle.DropDownList)
			{
				break;
			}
			goto case Keys.Up;
		case Keys.Up:
			MoveSelelctionInPopupControl(up: true);
			return true;
		case Keys.Right:
			if (DropDownStyle != ComboBoxStyle.DropDownList)
			{
				break;
			}
			goto case Keys.Down;
		case Keys.Down:
			MoveSelelctionInPopupControl(up: false);
			return true;
		case Keys.Escape:
			m_strTextToSearch = string.Empty;
			if (flag)
			{
				popupContainer.HidePopup(PopupCloseType.Canceled);
				return true;
			}
			break;
		case Keys.Return:
			m_strTextToSearch = string.Empty;
			if (flag)
			{
				popupContainer.HidePopup(PopupCloseType.Done);
				return true;
			}
			break;
		}
		return false;
	}

	protected override bool IsInputKey(Keys keyData)
	{
		Keys keys = keyData & (Keys.KeyCode | Keys.Alt);
		if (PopupContainer.IsShowing() && (keys == Keys.Return || keys == Keys.Escape))
		{
			return true;
		}
		if (keys == Keys.Alt)
		{
			return false;
		}
		return base.IsInputKey(keyData);
	}

	protected override bool IsInputChar(char charCode)
	{
		return true;
	}

	protected override bool ProcessDialogKey(Keys keyData)
	{
		bool flag = false;
		bool tabStop = base.TabStop;
		bool flag2 = false;
		switch (keyData)
		{
		case Keys.Tab | Keys.Shift:
			flag = true;
			tabStop = base.TabStop;
			base.TabStop = false;
			break;
		case Keys.Up:
		case Keys.Down:
			if (!base.ProcessDialogKey(keyData))
			{
				flag2 = ProcessKey(keyData);
			}
			break;
		}
		if (!flag2)
		{
			flag2 = base.ProcessDialogKey(keyData);
		}
		if (flag)
		{
			base.TabStop = tabStop;
		}
		return flag2;
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (!ReadOnly)
		{
			KeyEventArgs e = new KeyEventArgs(keyData);
			OnKeyDown(e);
			if (e.Handled)
			{
				return true;
			}
			if (ProcessKey(keyData))
			{
				if (keyData == Keys.Down || keyData == Keys.Up)
				{
					TextBox.SelectAll();
				}
				return true;
			}
			switch (keyData)
			{
			case Keys.Prior:
			case Keys.Next:
				if (popupContainer.IsShowing())
				{
					ForwardKeyMessageToPopupControl(msg.Msg, msg.WParam, msg.LParam);
					UpdateText(fireEvent: false);
					return true;
				}
				break;
			}
		}
		return base.ProcessCmdKey(ref msg, keyData);
	}

	protected virtual void ForwardKeyMessageToPopupControl(int msg, IntPtr wparam, IntPtr lparam)
	{
		if (PopupControl != null)
		{
			NativeMethods.SendMessage(PopupControl.Handle, msg, wparam, lparam);
		}
	}

	private void Popup_Closed(object sender, PopupClosedEventArgs e)
	{
		ContextMenu = cachedContextMenu;
		cachedContextMenu = null;
		QuickSelectOn = false;
		ddButton.IsDroppedDown = false;
		UpdateIsActiveState();
		if (e.PopupCloseType == PopupCloseType.Done)
		{
			if (!UpdateText(fireEvent: true) && !OtherChangesMade())
			{
				if (cachedTextBeforePopup != Text)
				{
					OnSelectionChangeCommitted(EventArgs.Empty);
				}
				else
				{
					OnNoChangeDetectedOnPopupClosed();
				}
			}
			else
			{
				OnSelectionChangedOnPopupClose();
			}
		}
		else if (cachedTextBeforePopup != Text)
		{
			UpdatePopupControl();
		}
		cachedTextBeforePopup = string.Empty;
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			Invalidate();
		}
		OnPopupClosed(e);
	}

	[Browsable(false)]
	[DocumentationExclude]
	protected virtual void OnSelectionChangedOnPopupClose()
	{
	}

	protected virtual void OnPopupClosed(PopupClosedEventArgs e)
	{
	}

	public virtual void UpdatePopupControl()
	{
		if (PopupControl != null)
		{
			bool flag = ignorePopupValueChange;
			ignorePopupValueChange = true;
			SetPopupText(Text);
			ignorePopupValueChange = flag;
		}
	}

	protected virtual void OnNoChangeDetectedOnPopupClosed()
	{
	}

	private void Popup_BeforePopup(object sender, CancelEventArgs e)
	{
		OnBeforePopup();
		inputTextIndex = 0;
		cachedTextBeforePopup = Text;
		cachedContextMenu = ContextMenu;
		ContextMenu = null;
		ddButton.IsDroppedDown = true;
		OnDropDown(EventArgs.Empty);
	}

	protected virtual void OnBeforePopup()
	{
	}

	private void Popup_HandleCreated(object sender, EventArgs e)
	{
		if (Style == VisualStyle.Office2007)
		{
			AttachScrollersFrame(PopupControl);
			InitScrollersFrame();
		}
	}

	private void DDButtonPressed(object sender, EventArgs e)
	{
		ProcessDDMouseDown();
	}

	protected virtual void ProcessDDMouseDown()
	{
		if (!base.ContainsFocus)
		{
			if (textBox.Visible)
			{
				textBox.Focus();
			}
			else
			{
				Focus();
			}
		}
		if (!ReadOnly)
		{
			if (popupContainer.IsShowing())
			{
				HidePopup();
			}
			else if (base.ContainsFocus)
			{
				ShowPopup();
			}
		}
	}

	protected virtual void ShowPopup()
	{
		if (DropDownStyle != ComboBoxStyle.Simple)
		{
			SetNeedLayout(needLayout: true);
			QuickSelectOn = false;
			ignorePopupValueChange = true;
			ignorePopupValueChange = false;
			popupContainer.Width = DropDownWidth;
			popupContainer.ShowPopup(Point.Empty);
			if (PopupControl != null)
			{
				PopupControl.Visible = true;
			}
		}
	}

	protected virtual void HidePopup()
	{
		popupContainer.HidePopup();
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (height <= 0)
		{
			height = base.Height;
		}
		if (preventHeightChange)
		{
			specified &= ~BoundsSpecified.Height;
			Rectangle bounds = base.Bounds;
			int num = ((Style != VisualStyle.Default) ? 1 : 2);
			editPortionHeight = DropDownButtonHeight + num * 2;
			height = editPortionHeight;
			if (bounds.X != x || bounds.Y != y || bounds.Width != width || bounds.Height != height)
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
		SetNeedLayout(needLayout: true);
		base.OnLayout(levent);
	}

	internal void MenuColorsChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	public new virtual void Layout(Graphics g)
	{
		SetNeedLayout(needLayout: false);
		int textAreaHeight = 0;
		UpdatePopupControlRelationship();
		DetermineHeightsBasedOnFont(g, ref textAreaHeight);
		UpdateEditPortionBounds(textAreaHeight);
		UpdateDropDownButtonBounds();
		UpdatePopupControlBounds();
	}

	protected internal virtual void SetNeedLayout(bool needLayout)
	{
		this.needLayout = needLayout;
		if (this.needLayout)
		{
			Invalidate(invalidateChildren: true);
		}
	}

	protected virtual void DetermineHeightsBasedOnFont(Graphics g, ref int textAreaHeight)
	{
		int num = ((Style != VisualStyle.Default) ? 1 : 2);
		string text = Text;
		if (text == string.Empty)
		{
			text = ToString();
		}
		Size size = ControlDrawing.MeasureDisplayStringSize(g, text, Font, RightToLeft == RightToLeft.Yes);
		DropDownButtonHeight = size.Height + 4;
		if (Style != VisualStyle.Default)
		{
			DropDownButtonHeight += 2;
		}
		textAreaHeight = size.Height;
		editPortionHeight = DropDownButtonHeight + num * 2;
		if (DropDownStyle != ComboBoxStyle.Simple || base.Height < editPortionHeight)
		{
			base.Height = editPortionHeight;
		}
	}

	protected virtual void UpdateEditPortionBounds(int textAreaHeight)
	{
		SuspendLayout();
		int num = GetComboBoxDropDownWidth();
		if (DropDownStyle == ComboBoxStyle.Simple)
		{
			num = 0;
		}
		else if (Style != VisualStyle.Default)
		{
			num = GetOfficeStyleComboBoxDropDownWidth();
		}
		int num2 = ((Style != VisualStyle.Default) ? 1 : 2);
		int num3 = base.Bounds.Width - 2 - num2 * 2 - num;
		int num4 = (editPortionHeight - textAreaHeight) / 2;
		if (FlatStyle != ComboFlatStyle.System)
		{
			num4 -= num2;
		}
		int num5 = num2 + 1;
		if (FlatStyle != ComboFlatStyle.System)
		{
			num5 -= num2;
		}
		num5 = ((RightToLeft == RightToLeft.Yes) ? (num5 + num) : num5);
		Rectangle textBoxBounds = new Rectangle(num5, num4, num3, textAreaHeight);
		SetTextBoxBounds(textBoxBounds);
		if (DropDownStyle != ComboBoxStyle.DropDownList && !base.DesignMode)
		{
			textBox.Visible = true;
		}
		else
		{
			textBox.Visible = false;
		}
		ResumeLayout(performLayout: false);
	}

	protected virtual void SetTextBoxBounds(Rectangle rect)
	{
		textBox.Bounds = rect;
	}

	protected virtual int GetComboBoxDropDownWidth()
	{
		return SystemInformation.HorizontalScrollBarThumbWidth;
	}

	protected virtual int GetOfficeStyleComboBoxDropDownWidth()
	{
		return GetComboBoxDropDownWidth() - 2;
	}

	protected virtual void UpdateDropDownButtonBounds()
	{
		int num = GetComboBoxDropDownWidth();
		if (DropDownStyle == ComboBoxStyle.Simple)
		{
			num = 0;
		}
		else if (Style != VisualStyle.Default)
		{
			num = GetOfficeStyleComboBoxDropDownWidth();
		}
		int num2 = ((Style != VisualStyle.Default) ? 1 : 2);
		int num3 = base.Bounds.Width - num - num2;
		int num4 = num2;
		if (FlatStyle != ComboFlatStyle.System)
		{
			num3 -= num2;
			num4 -= num2;
		}
		num3 = ((RightToLeft != RightToLeft.Yes) ? num3 : 0);
		Rectangle bounds = new Rectangle(num3, num4, num, DropDownButtonHeight);
		ddButton.Bounds = bounds;
	}

	protected virtual void UpdatePopupControlBounds()
	{
		if (PopupControl != null && !base.DesignMode)
		{
			SuspendLayout();
			if (DropDownStyle == ComboBoxStyle.Simple)
			{
				PopupControl.Visible = false;
			}
			else if (!PopupContainer.IsShowing())
			{
				PopupControl.Visible = false;
			}
			ResumeLayout(performLayout: false);
		}
	}

	protected virtual Rectangle GetEmbeddedChildBounds(int comboHeight)
	{
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		if (comboHeight - editPortionHeight <= 3)
		{
			num = 0;
			num2 = editPortionHeight + 1;
			num3 = base.Bounds.Width;
			num4 = comboHeight - editPortionHeight;
		}
		else
		{
			num = 2;
			num2 = editPortionHeight + 2;
			if (FlatStyle != ComboFlatStyle.System)
			{
				num -= 2;
				num2 -= 2;
			}
			num3 = base.Bounds.Width - 4;
			num4 = comboHeight - editPortionHeight - 4;
		}
		return new Rectangle(num, num2, num3, num4);
	}

	protected virtual Rectangle GetEmbeddedChildBounds()
	{
		return GetEmbeddedChildBounds(base.Height);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		if (NeedLayout)
		{
			Layout(e.Graphics);
		}
		DrawEditPortionBorderAndBackground(e);
		DrawEditPortion(e);
		DrawDropDownPortion(e);
		DrawListPortion(e);
		base.OnPaint(e);
	}

	protected virtual void DrawEditPortion(PaintEventArgs e)
	{
		if (DropDownStyle == ComboBoxStyle.DropDownList || base.DesignMode)
		{
			DrawListModeEditPortion(e, SystemColors.Highlight, SystemColors.ActiveCaptionText, drawFocusRect: true);
		}
	}

	protected virtual void DrawListModeEditPortion(PaintEventArgs e, Color highlightBG, Color highlightText, bool drawFocusRect)
	{
		Graphics graphics = e.Graphics;
		Color foreColor = ForeColor;
		if (base.ContainsFocus && !popupContainer.IsShowing() && Style != VisualStyle.Office2007)
		{
			using (Brush brush = new SolidBrush(highlightBG))
			{
				graphics.FillRectangle(brush, textBox.Bounds);
			}
			Rectangle bounds = textBox.Bounds;
			bounds.Inflate(1, 1);
			foreColor = highlightText;
			if (drawFocusRect)
			{
				ControlPaint.DrawFocusRectangle(graphics, bounds, foreColor, BackColor);
			}
		}
		TextFormatFlags textFormatFlags = TextFormatFlags.SingleLine | TextFormatFlags.TextBoxControl;
		if (!useMnemonic)
		{
			textFormatFlags |= TextFormatFlags.NoPrefix;
		}
		HorizontalAlignment textAlign = TextAlign;
		switch (textAlign)
		{
		case HorizontalAlignment.Left:
			textFormatFlags = textFormatFlags;
			break;
		case HorizontalAlignment.Center:
			textFormatFlags |= TextFormatFlags.HorizontalCenter;
			break;
		case HorizontalAlignment.Right:
			textFormatFlags |= TextFormatFlags.Right;
			break;
		}
		if (RightToLeft.Yes == RightToLeft)
		{
			textFormatFlags |= TextFormatFlags.RightToLeft;
			if (textAlign != HorizontalAlignment.Center)
			{
				textFormatFlags ^= TextFormatFlags.Right;
			}
		}
		if (!base.Enabled)
		{
			foreColor = SystemColors.GrayText;
		}
		TextRenderer.DrawText(graphics, textBox.Text, Font, textBox.Bounds, foreColor, textFormatFlags);
	}

	protected virtual void DrawDropDownPortion(PaintEventArgs e)
	{
		ddButton.OnPaint(e.Graphics);
		if (Style != VisualStyle.Default && Style != VisualStyle.Office2007)
		{
			Color empty = Color.Empty;
			empty = ((!IsActive) ? FlatBorderColor : ((Style != VisualStyle.OfficeXP) ? Office2003Colors.SelBorderColor : MenuColors.SelBorderColor));
			using Pen pen = new Pen(empty);
			e.Graphics.DrawLine(pen, new Point(ddButton.Bounds.X - 1, 0), new Point(ddButton.Bounds.X - 1, ddButton.Bounds.Bottom - 1));
		}
	}

	protected virtual void DrawEditPortionBorderAndBackground(PaintEventArgs e)
	{
		int num = 0;
		int num2 = 0;
		if (FlatStyle != ComboFlatStyle.System)
		{
			num -= 2;
			num2 -= 2;
		}
		DrawBorderAndBackground(e.Graphics, new Rectangle(num, num2, base.Width, editPortionHeight));
	}

	protected virtual void DrawBorderAndBackground(Graphics g, Rectangle rect)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			themedDrawing.DrawEditBoxBackground(g, rect, base.Enabled && !ReadOnly);
			Size themeBorderSize = themedDrawing.GetThemeBorderSize();
			Rectangle rect2 = rect;
			rect2.Inflate(-themeBorderSize.Width, -themeBorderSize.Height);
			DrawUnThemedBackground(g, rect2);
		}
		else
		{
			DrawUnThemedBackground(g, rect);
			if (Style == VisualStyle.Default)
			{
				DrawUnThemedBorder(g, rect);
			}
		}
	}

	protected virtual void DrawUnThemedBorder(Graphics g, Rectangle rect)
	{
		if (FlatStyle != ComboFlatStyle.Flat)
		{
			ControlPaint.DrawBorder3D(g, rect, border3DStyle);
		}
		else
		{
			ControlPaint.DrawBorder(g, rect, FlatBorderColor, ButtonBorderStyle.Solid);
		}
	}

	protected virtual void DrawUnThemedBackground(Graphics g, Rectangle rect)
	{
		Color color = BackColor;
		if ((!base.Enabled || ReadOnly) && BackColor == DefaultComboBackColor)
		{
			color = SystemColors.Control;
		}
		using Brush brush = new SolidBrush(color);
		g.FillRectangle(brush, rect);
	}

	protected virtual void DrawListPortion(PaintEventArgs e)
	{
		if (DropDownStyle != ComboBoxStyle.Simple)
		{
			return;
		}
		int num = editPortionHeight + 1;
		if (base.Height - num > 3)
		{
			int num2 = 0;
			int num3 = num - 1;
			if (FlatStyle != ComboFlatStyle.System)
			{
				num2--;
				num3 -= 2;
			}
			DrawBorderAndBackground(e.Graphics, new Rectangle(num2, num3, base.Bounds.Width, base.Height - num + 1));
		}
	}

	private void RefreshBackColor(bool ignoreThemeBackColor)
	{
		if (Style != VisualStyle.Office2007)
		{
			if (ignoreThemeBackColor)
			{
				BackColor = cachedBackColor;
				return;
			}
			Color color = cachedBackColor;
			BackColor = DefaultComboBackColor;
			cachedBackColor = color;
		}
	}

	protected ScrollersFrame CreateScrollersFrame()
	{
		return new ScrollersFrame();
	}

	protected void AttachScrollersFrame(Control control)
	{
		if (m_scrollersFrame == null)
		{
			m_scrollersFrame = CreateScrollersFrame();
		}
		if (m_scrollersFrame.AttachedTo != control)
		{
			m_scrollersFrame.AttachedTo = control;
		}
	}

	protected void DetachScrollersFrame()
	{
		if (m_scrollersFrame != null)
		{
			m_scrollersFrame.DetachFrame();
		}
	}

	protected void InitScrollersFrame()
	{
		if (m_scrollersFrame != null)
		{
			m_scrollersFrame.VerticallSmallChange = 1;
			m_scrollersFrame.VisualStyle = ScrollBarCustomDrawStyles.Office2007Generic;
			m_scrollersFrame.VerticalScroller.Width = 16;
			m_scrollersFrame.VerticalScroller.Left++;
			m_scrollersFrame.OfficeColorScheme = (Office2007ColorScheme)Office2007ColorTheme;
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (prevMouseLocation != Point.Empty && e.Location != prevMouseLocation)
		{
			prevMouseLocation = Point.Empty;
		}
		ignoreNextPopupControlMouseMove = false;
		ProcessMouseMove(e, fromTextBox: false);
		base.OnMouseMove(e);
	}

	protected virtual void ProcessMouseMove(MouseEventArgs e, bool fromTextBox)
	{
		ignoreNextPopupControlMouseMove = false;
		if (!fromTextBox && !popupContainer.IsShowing())
		{
			ddButton.OnMouseMove(e, DropDownStyle == ComboBoxStyle.DropDownList);
		}
		IsActive = true;
		if (popupContainer.IsShowing())
		{
			ProcessPopupControlMouseMove(this, e);
		}
	}

	protected virtual void ProcessPopupControlMouseMove(object sender, MouseEventArgs e)
	{
	}

	private void UpdateIsActiveState()
	{
		if ((ComboInFocus && (!useOffice2007ColorsInActiveMode || DropDownStyle != ComboBoxStyle.DropDownList)) || base.ClientRectangle.Contains(PointToClient(Control.MousePosition)) || DroppedDown)
		{
			IsActive = true;
		}
		else
		{
			IsActive = false;
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		ddButton.OnMouseLeave(e);
		Point mousePosition = Control.MousePosition;
		mousePosition = PointToClient(mousePosition);
		if (!textBox.Visible || !textBox.Bounds.Contains(mousePosition))
		{
			UpdateIsActiveState();
			base.OnMouseLeave(e);
			if (FlatStyle != ComboFlatStyle.System)
			{
				InvalidateWindow();
			}
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		if (mouseWasUnderChild)
		{
			mouseWasUnderChild = false;
		}
		else
		{
			base.OnMouseEnter(e);
		}
		if (FlatStyle != ComboFlatStyle.System)
		{
			InvalidateWindow();
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		bool flag = popupContainer.IsShowing();
		prevMouseLocation = e.Location;
		ddButton.OnMouseDown(e, DropDownStyle == ComboBoxStyle.DropDownList);
		if (DropDownStyle == ComboBoxStyle.DropDownList && base.Enabled && !ReadOnly && flag == popupContainer.IsShowing())
		{
			ProcessDDMouseDown();
		}
		base.OnMouseDown(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (DropDownStyle == ComboBoxStyle.DropDownList)
		{
			ddButton.Pushed = false;
		}
		if (DropDownStyle == ComboBoxStyle.DropDown)
		{
			ddButton.OnMouseUp(e);
		}
		if (popupContainer.IsShowing() || DropDownStyle != ComboBoxStyle.DropDown)
		{
			bool flag = true;
			if (prevMouseLocation != Point.Empty && e.Location == prevMouseLocation)
			{
				flag = false;
			}
			if (QuickSelectOn && flag)
			{
				OnMouseUpOnQuickSelect();
			}
		}
		QuickSelectOn = false;
		base.OnMouseUp(e);
	}

	protected virtual void OnMouseUpOnQuickSelect()
	{
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		if (!ReadOnly && e.Delta != 0)
		{
			if (!PopupContainer.IsShowing())
			{
				if (allowMouseWheelSelection)
				{
					MoveSelelctionInPopupControl(e.Delta > 0);
				}
			}
			else
			{
				int num = 16;
				if ((Control.ModifierKeys & Keys.Shift) > Keys.None)
				{
					num &= 4;
				}
				if ((Control.ModifierKeys & Keys.Control) > Keys.None)
				{
					num &= 8;
				}
				int delta = e.Delta;
				int low = Control.MousePosition.X;
				int high = Control.MousePosition.Y;
				IntPtr wParam = (IntPtr)NativeMethods.MAKELONG(num, delta);
				if (PopupControl != null && PopupControl.IsHandleCreated)
				{
					NativeMethods.SendMessage(PopupControl.Handle, 522, wParam, NativeMethods.MAKELPARAM(low, high));
				}
			}
		}
		if (e is HandledMouseEventArgs)
		{
			((HandledMouseEventArgs)e).Handled = true;
		}
		base.OnMouseWheel(e);
	}

	protected virtual void MoveSelelctionInPopupControl(bool up)
	{
		m_lastFoundIndex = (up ? (--m_lastFoundIndex) : (++m_lastFoundIndex));
		m_strTextToSearch = string.Empty;
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (cachedRgn != IntPtr.Zero)
		{
			NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		if (m.Msg == 133 && FlatStyle != ComboFlatStyle.System)
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		base.WndProc(ref m);
		if (m.Msg == 7 && textBox.Visible && !textBox.Focused)
		{
			textBox.Focus();
		}
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

	private void m_nativeWindow_ImeMessageReceived(object sender, EventArgs e)
	{
		m_bIsInImeMode = true;
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		Style = VisualStyle.Office2007;
	}
}
