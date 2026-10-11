using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents Office 2007 Style ToolStripEx")]
[Designer(typeof(ToolStripExDesigner))]
[ToolboxBitmap(typeof(ToolStripEx), "ToolboxIcons.ToolStripEx.bmp")]
public class ToolStripEx : ToolStrip, IToolStripExSupport2, IToolStripExSupport, INativeMessageFilter
{
	public enum ColorScheme
	{
		[Browsable(false)]
		Default,
		Managed,
		Silver,
		Blue,
		Black
	}

	public enum ToolStripExState
	{
		Expanded,
		Collapsed
	}

	internal class LayoutEngineCollapsed : LayoutEngine
	{
		public override void InitLayout(object child, BoundsSpecified specified)
		{
		}

		public override bool Layout(object container, LayoutEventArgs layoutEventArgs)
		{
			if (container is ToolStripEx { DisplayRectangle: { Location: var location } } toolStripEx)
			{
				ToolStripItem dropDownButton = toolStripEx.DropDownButton;
				location.X += dropDownButton.Margin.Left;
				location.Y += dropDownButton.Margin.Top;
				toolStripEx.SetItemLocation(toolStripEx.DropDownButton, location);
			}
			return false;
		}
	}

	protected internal const int DEF_PIXELS_BETWEEN_ELEMENTS_COLLAPSED = 2;

	protected internal const int DEF_IMAGE_BORDER_OFFSET = 5;

	private const int DEF_MINIMAL_COLLAPSED_WIDTH = 15;

	private const string TOOLTIP_CLASSNAME = "tooltips_class32";

	private const int CLASSNAME_BUFLEN = 256;

	private int m_nCaptionHeight = -1;

	private bool m_bLauncherSelected;

	private BoolEx m_bShowCaption;

	private BoolEx m_bShowLauncher;

	private bool m_bGroupedButtons;

	private bool m_bSetOverflowBounds;

	private ToolStripExState m_state;

	private Image m_image;

	private Font m_CaptionFont;

	private int m_nCaptionMinHeight = -1;

	private ColorScheme m_ColorScheme;

	private ToolStripBorderStyle m_BorderStyle;

	private CaptionStyle m_CaptionStyle;

	private CaptionTextStyle m_CaptionTextStyle;

	private CaptionAlignment m_CaptionAlignment;

	private LauncherStyle m_LauncherStyle;

	private Color m_foreColor = Color.Empty;

	private Hashtable m_toolTips;

	private CollapsedDropDownButton m_collapsedDropDown;

	private Size m_expandedSize = Size.Empty;

	private static Color m_DefaultForeColor;

	private static Hashtable m_OfficeRenderers;

	private static LayoutEngineStub m_LayoutEngineStub;

	private static LayoutEngineCollapsed m_LayoutEngineCollapsed;

	internal static SetWindowPosFlags SWP_ON_FRAMECHANGED;

	[Description("Gets or Sets whether the caption should be shown or not.")]
	[Category("Office mode")]
	public virtual bool ShowCaption
	{
		get
		{
			if (State == ToolStripExState.Collapsed)
			{
				return false;
			}
			return ShowCaptionInternal;
		}
		set
		{
			ShowCaptionInternal = value;
		}
	}

	[Category("Office mode")]
	[Description("Gets or Sets whether the Launcher should be shown or not.")]
	public virtual bool ShowLauncher
	{
		get
		{
			if (m_bShowLauncher == BoolEx.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return true;
				}
				return office12Settings.ShowLauncher;
			}
			return BoolExToBool(m_bShowLauncher);
		}
		set
		{
			BoolEx boolEx = BoolToBoolEx(value);
			if (m_bShowLauncher != boolEx)
			{
				m_bShowLauncher = boolEx;
				UpdateCaption();
			}
		}
	}

	[Description("Gets or sets whether the caption should be aligned to top or bottom..")]
	[Category("Office mode")]
	public virtual CaptionStyle CaptionStyle
	{
		get
		{
			if (m_CaptionStyle == CaptionStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return CaptionStyle.Top;
				}
				return office12Settings.CaptionStyle;
			}
			return m_CaptionStyle;
		}
		set
		{
			if (m_CaptionStyle != value)
			{
				m_CaptionStyle = value;
				UpdateCaption();
			}
		}
	}

	[Category("Office mode")]
	[Description("Gets or sets whether the caption text should be drawn etched, plain or with shadow.")]
	public virtual CaptionTextStyle CaptionTextStyle
	{
		get
		{
			if (m_CaptionTextStyle == CaptionTextStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return CaptionTextStyle.Shadow;
				}
				return office12Settings.CaptionTextStyle;
			}
			return m_CaptionTextStyle;
		}
		set
		{
			if (m_CaptionTextStyle != value)
			{
				m_CaptionTextStyle = value;
				RefreshCaption();
			}
		}
	}

	[Category("Office mode")]
	[Description("Gets or sets the alignment of caption.")]
	public virtual CaptionAlignment CaptionAlignment
	{
		get
		{
			if (m_CaptionAlignment == CaptionAlignment.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return CaptionAlignment.Near;
				}
				return office12Settings.CaptionAlignment;
			}
			return m_CaptionAlignment;
		}
		set
		{
			if (m_CaptionAlignment != value)
			{
				m_CaptionAlignment = value;
				RefreshCaption();
			}
		}
	}

	[Description("Gets or sets the caption font.")]
	[Category("Office mode")]
	public virtual Font CaptionFont
	{
		get
		{
			if (m_CaptionFont == null)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return Font;
				}
				return office12Settings.CaptionFont;
			}
			return m_CaptionFont;
		}
		set
		{
			if (m_CaptionFont != value)
			{
				m_CaptionFont = value;
				m_nCaptionHeight = -1;
				UpdateCaption();
			}
		}
	}

	[Category("Office mode")]
	[Description("Gets or sets the minimum height of caption.")]
	public virtual int CaptionMinHeight
	{
		get
		{
			if (m_nCaptionMinHeight == -1)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return 0;
				}
				return office12Settings.CaptionMinHeight;
			}
			return m_nCaptionMinHeight;
		}
		set
		{
			if (m_nCaptionMinHeight != value)
			{
				m_nCaptionMinHeight = value;
				m_nCaptionHeight = -1;
				UpdateCaption();
			}
		}
	}

	[Category("Office mode")]
	[Description("Gets or sets the border style for the control.")]
	public virtual ToolStripBorderStyle BorderStyle
	{
		get
		{
			if (m_BorderStyle == ToolStripBorderStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return ToolStripBorderStyle.Default;
				}
				return office12Settings.BorderStyle;
			}
			return m_BorderStyle;
		}
		set
		{
			if (m_BorderStyle != value)
			{
				m_BorderStyle = value;
				UpdateCaption();
			}
		}
	}

	[Description("Gets or sets whether the launcher style should be Office12 or Office2007.")]
	[Category("Office mode")]
	public virtual LauncherStyle LauncherStyle
	{
		get
		{
			if (m_LauncherStyle == LauncherStyle.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return LauncherStyle.Office12;
				}
				return office12Settings.LauncherStyle;
			}
			return m_LauncherStyle;
		}
		set
		{
			if (m_LauncherStyle != value)
			{
				m_LauncherStyle = value;
				if (ShowLauncher)
				{
					RefreshCaption();
				}
			}
		}
	}

	[Description("Gets or Sets whether the buttons should be grouped.")]
	[Category("Office mode")]
	[DefaultValue(false)]
	public virtual bool GroupedButtons
	{
		get
		{
			return m_bGroupedButtons;
		}
		set
		{
			if (m_bGroupedButtons != value)
			{
				m_bGroupedButtons = value;
				Invalidate();
			}
		}
	}

	[Browsable(false)]
	public virtual bool LauncherSelected => m_bLauncherSelected;

	[Browsable(false)]
	public virtual int CaptionHeight
	{
		get
		{
			if (ShowCaption)
			{
				return CaptionHeightInternal;
			}
			return 0;
		}
	}

	protected int BorderWidth
	{
		get
		{
			if (base.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
			{
				return office12ToolStripRenderer.GetBorderWidth(this);
			}
			return 0;
		}
	}

	internal bool ShowCaptionInternal
	{
		get
		{
			if (m_bShowCaption == BoolEx.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return true;
				}
				return office12Settings.ShowCaption;
			}
			return BoolExToBool(m_bShowCaption);
		}
		set
		{
			BoolEx boolEx = BoolToBoolEx(value);
			if (m_bShowCaption != boolEx)
			{
				m_bShowCaption = boolEx;
				UpdateCaption();
			}
		}
	}

	internal int CaptionHeightInternal
	{
		get
		{
			if (ShowCaptionInternal)
			{
				if (m_nCaptionHeight < 0)
				{
					m_nCaptionHeight = (base.Renderer as Office12ToolStripRenderer)?.GetCaptionHeight(this) ?? 0;
				}
				return m_nCaptionHeight;
			}
			return 0;
		}
	}

	[DefaultValue(false)]
	public new bool ShowItemToolTips
	{
		get
		{
			return base.ShowItemToolTips;
		}
		set
		{
			base.ShowItemToolTips = value;
		}
	}

	[Description("Gets or sets a value indicating whether Office12 or Office2007 mode should be turned on.")]
	[DefaultValue(true)]
	[Category("Office mode")]
	public virtual bool Office12Mode
	{
		get
		{
			return base.Renderer is Office12ToolStripRenderer;
		}
		set
		{
			if (value != Office12Mode)
			{
				if (value)
				{
					base.Renderer = null;
					base.Renderer = GetRenderer(OfficeColorScheme);
				}
				else
				{
					base.RenderMode = ToolStripRenderMode.ManagerRenderMode;
				}
			}
		}
	}

	[Description("Gets or sets whether the Office color scheme should be Silver or Blue.")]
	[Category("Office mode")]
	public virtual ColorScheme OfficeColorScheme
	{
		get
		{
			if (m_ColorScheme == ColorScheme.Default)
			{
				if (!(base.Parent is IOffice12Settings office12Settings))
				{
					return ColorScheme.Managed;
				}
				return office12Settings.OfficeColorScheme;
			}
			return m_ColorScheme;
		}
		set
		{
			m_ColorScheme = value;
			if (Office12Mode)
			{
				base.Renderer = GetRenderer(OfficeColorScheme);
			}
		}
	}

	public override LayoutEngine LayoutEngine
	{
		get
		{
			if (m_bSetOverflowBounds)
			{
				return m_LayoutEngineStub;
			}
			if (State == ToolStripExState.Collapsed)
			{
				return m_LayoutEngineCollapsed;
			}
			return base.LayoutEngine;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripExState State
	{
		get
		{
			return m_state;
		}
		set
		{
			if (m_state != value && OnStateChanging())
			{
				m_state = value;
				UpdateState();
			}
		}
	}

	[Obsolete("Use Image instead.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Image CollapsedDropDownButtonImage
	{
		get
		{
			return Image;
		}
		set
		{
			Image = value;
		}
	}

	[Localizable(true)]
	[Category("Office mode")]
	[Description("Gets or sets the text of collapsed state dropdown button.")]
	public string CollapsedDropDownButtonText
	{
		get
		{
			return DropDownButton.Text;
		}
		set
		{
			DropDownButton.Text = value;
		}
	}

	[Browsable(false)]
	public int CollapsedWidth => DropDownButton.Width + DropDownButton.Margin.Horizontal + base.Padding.Horizontal + (base.Width - base.ClientSize.Width);

	[Browsable(false)]
	public Size ExpandedSize
	{
		get
		{
			if (State == ToolStripExState.Collapsed)
			{
				return m_expandedSize;
			}
			return base.Size;
		}
	}

	[Description("Gets or sets the image of ToolStripEx (shown in collapsed state and quick items panel ).")]
	[Category("Office mode")]
	public Image Image
	{
		get
		{
			return DropDownButton.Image;
		}
		set
		{
			DropDownButton.Image = value;
			OnImageChanged();
		}
	}

	[Browsable(true)]
	[Description("Gets or sets control fore color.")]
	[Category("Appearance")]
	public new virtual Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			if (m_foreColor != value)
			{
				m_foreColor = value;
				base.ForeColor = (m_foreColor.IsEmpty ? DefForeColor : m_foreColor);
			}
		}
	}

	private Color DefForeColor
	{
		get
		{
			if (base.Renderer is ToolStripProfessionalRenderer { ColorTable: Office12ColorTable colorTable })
			{
				return colorTable.RibbonText;
			}
			return Color.Empty;
		}
	}

	protected override Padding DefaultMargin => new Padding(1, 0, 1, 0);

	internal bool IsVisible
	{
		get
		{
			if (base.IsHandleCreated)
			{
				int windowLong = WindowsAPI.GetWindowLong(base.Handle, -16);
				return (windowLong & 0x10000000) != 0;
			}
			return base.Visible;
		}
	}

	internal CollapsedDropDownButton DropDownButton
	{
		get
		{
			if (m_collapsedDropDown == null)
			{
				m_collapsedDropDown = new CollapsedDropDownButton(this);
				m_collapsedDropDown.DropDown.Closing += OnCollapsedDropDownClosing;
			}
			return m_collapsedDropDown;
		}
	}

	[Category("Action")]
	[Description("Occurs when the launcher button is clicked")]
	public event EventHandler LauncherClick;

	[Browsable(false)]
	public event CancelEventHandler StateChanging;

	[Description("Occurs when the image is changed")]
	[Category("Action")]
	public event EventHandler ImageChanged;

	[Description("Occurs in collapsed state when the DropDown control is about to close.")]
	[Category("Action")]
	public event ToolStripDropDownClosingEventHandler CollapsedDropdownClosing;

	static ToolStripEx()
	{
		SWP_ON_FRAMECHANGED = SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOZORDER | SetWindowPosFlags.SWP_NOACTIVATE | SetWindowPosFlags.SWP_FRAMECHANGED;
		m_DefaultForeColor = Color.MidnightBlue;
		m_OfficeRenderers = new Hashtable();
		m_LayoutEngineStub = new LayoutEngineStub();
		m_LayoutEngineCollapsed = new LayoutEngineCollapsed();
	}

	public ToolStripEx()
		: this(GetRenderer(ColorScheme.Managed))
	{
	}

	public ToolStripEx(ToolStripRenderer renderer)
	{
		base.ShowItemToolTips = false;
		base.Renderer = renderer;
		ForeColor = m_DefaultForeColor;
		m_toolTips = new Hashtable();
		m_image = new Bitmap(typeof(ToolStripButton), "blank.bmp");
	}

	public ToolStripItemCollection GetItems()
	{
		if (State != ToolStripExState.Expanded)
		{
			return m_collapsedDropDown.Panel.ToolStrip.Items;
		}
		return Items;
	}

	internal Size GetPreferredSizeCore(Size szProposed)
	{
		if (State == ToolStripExState.Collapsed)
		{
			return DropDownButton.Panel.ToolStrip.GetPreferredSizeCore(szProposed);
		}
		return base.GetPreferredSize(szProposed);
	}

	public override Size GetPreferredSize(Size szProposed)
	{
		Size preferredSizeCore = GetPreferredSizeCore(szProposed);
		if (Dock == DockStyle.Left || Dock == DockStyle.Right)
		{
			preferredSizeCore.Width += CaptionHeightInternal;
		}
		else
		{
			preferredSizeCore.Height += CaptionHeightInternal;
		}
		int borderWidth = BorderWidth;
		preferredSizeCore.Width += 2 * borderWidth;
		preferredSizeCore.Height += 2 * borderWidth;
		return preferredSizeCore;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_collapsedDropDown != null)
			{
				m_collapsedDropDown.DropDown.Closing -= OnCollapsedDropDownClosing;
				m_collapsedDropDown.Dispose();
				m_collapsedDropDown = null;
			}
			if (m_CaptionFont != null)
			{
				m_CaptionFont.Dispose();
				m_CaptionFont = null;
			}
		}
		base.Dispose(disposing);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (ShowCaption)
		{
			RefreshCaption();
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		m_nCaptionHeight = -1;
		base.OnFontChanged(e);
	}

	protected override void OnRendererChanged(EventArgs e)
	{
		m_nCaptionHeight = -1;
		base.OnRendererChanged(e);
		if (m_foreColor.IsEmpty)
		{
			base.ForeColor = DefForeColor;
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		RefreshCaption();
		SetCollapsedSize(base.Height);
	}

	protected override void OnPaddingChanged(EventArgs e)
	{
		base.OnPaddingChanged(e);
		if (State == ToolStripExState.Collapsed)
		{
			DropDownButton.Panel.Padding = base.Padding;
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (base.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
		{
			bool flag = office12ToolStripRenderer.GetLauncherBounds(this).Contains(PointToScreen(e.Location));
			if (flag != m_bLauncherSelected)
			{
				m_bLauncherSelected = flag;
				RefreshCaption();
			}
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (m_bLauncherSelected)
		{
			m_bLauncherSelected = false;
			RefreshCaption();
		}
	}

	protected override void OnMouseClick(MouseEventArgs e)
	{
		bool flag = false;
		if (base.Renderer is Office12ToolStripRenderer office12ToolStripRenderer && office12ToolStripRenderer.GetLauncherBounds(this).Contains(PointToScreen(e.Location)))
		{
			OnLauncherClick();
			flag = true;
		}
		if (!flag)
		{
			base.OnMouseClick(e);
		}
	}

	protected virtual void OnLauncherClick()
	{
		if (this.LauncherClick != null)
		{
			this.LauncherClick(this, EventArgs.Empty);
		}
	}

	protected override void OnLayoutCompleted(EventArgs e)
	{
		base.OnLayoutCompleted(e);
		if (ShowCaption)
		{
			m_bSetOverflowBounds = true;
			try
			{
				base.OverflowButton.Size = Rectangle.Intersect(base.OverflowButton.Bounds, base.ClientRectangle).Size;
			}
			finally
			{
				m_bSetOverflowBounds = false;
			}
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		foreach (DictionaryEntry toolTip in m_toolTips)
		{
			if (toolTip.Value is NativeMessageHandler nativeMessageHandler)
			{
				nativeMessageHandler.MessageFilter = null;
			}
		}
		m_toolTips.Clear();
		base.OnHandleDestroyed(e);
	}

	protected virtual bool OnStateChanging()
	{
		bool result = true;
		if (this.StateChanging != null)
		{
			CancelEventArgs e = new CancelEventArgs(cancel: false);
			this.StateChanging(this, e);
			result = !e.Cancel;
		}
		return result;
	}

	protected override void OnItemAdded(ToolStripItemEventArgs e)
	{
		base.OnItemAdded(e);
		if (e.Item is ToolStripControlHost { Control: { } control } && control.Parent != this)
		{
			control.Parent = null;
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_NOTIFY:
		{
			NMHDR nMHDR = (NMHDR)Marshal.PtrToStructure(m.LParam, typeof(NMHDR));
			if (nMHDR.code == -521)
			{
				IntPtr hwndFrom = nMHDR.hwndFrom;
				if (!m_toolTips.ContainsKey(hwndFrom))
				{
					NativeMessageHandler nativeMessageHandler = new NativeMessageHandler();
					nativeMessageHandler.Assign(hwndFrom);
					nativeMessageHandler.MessageFilter = this;
					m_toolTips[hwndFrom] = nativeMessageHandler;
				}
			}
			break;
		}
		case Msg.WM_MOUSEACTIVATE:
		{
			for (Control control = base.Parent; control != null; control = control.Parent)
			{
				if (control is RibbonControlAdv.RibbonControlPopup)
				{
					m.Result = (IntPtr)3L;
					return;
				}
			}
			break;
		}
		}
		base.WndProc(ref m);
	}

	private void OnDropDownLauncherClick(object sender, EventArgs e)
	{
		OnLauncherClick();
	}

	private void OnCollapsedDropDownClosing(object sender, ToolStripDropDownClosingEventArgs e)
	{
		if (State == ToolStripExState.Collapsed && this.CollapsedDropdownClosing != null)
		{
			this.CollapsedDropdownClosing(this, e);
		}
	}

	bool INativeMessageFilter.ProcessMessage(ref Message m)
	{
		bool result = false;
		Msg msg = (Msg)m.Msg;
		if (msg == Msg.WM_WINDOWPOSCHANGING)
		{
			result = OnWindowPosChanging(ref m);
		}
		return result;
	}

	internal void RefreshCaption()
	{
		if (ShowCaption && base.IsHandleCreated)
		{
			RedrawWindowFlags flags = (RedrawWindowFlags)1025;
			WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, flags);
		}
	}

	internal void UpdateCaption()
	{
		if (base.Renderer is Office12ToolStripRenderer && base.IsHandleCreated)
		{
			WindowsAPI.SetWindowPos(base.Handle, IntPtr.Zero, 0, 0, 0, 0, SWP_ON_FRAMECHANGED);
			WindowsAPI.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, RedrawWindowFlags.RDW_INVALIDATE);
		}
	}

	internal void UpdateRenderer()
	{
		if (Office12Mode)
		{
			base.Renderer = GetRenderer(OfficeColorScheme);
		}
	}

	private bool OnWindowPosChanging(ref Message m)
	{
		WINDOWPOS wINDOWPOS = (WINDOWPOS)Marshal.PtrToStructure(m.LParam, typeof(WINDOWPOS));
		IntPtr cursor = WindowsAPI.GetCursor();
		if (cursor != IntPtr.Zero)
		{
			Cursor cursor2 = new Cursor(cursor);
			Point position = Cursor.Position;
			wINDOWPOS.x = position.X;
			wINDOWPOS.y = position.Y + cursor2.Size.Height - cursor2.HotSpot.Y;
		}
		Marshal.StructureToPtr((object)wINDOWPOS, m.LParam, fDeleteOld: false);
		return true;
	}

	private static ToolStripRenderer GetRenderer(ColorScheme colorScheme)
	{
		ToolStripRenderer toolStripRenderer = null;
		toolStripRenderer = m_OfficeRenderers[colorScheme] as ToolStripRenderer;
		if (toolStripRenderer == null)
		{
			toolStripRenderer = colorScheme switch
			{
				ColorScheme.Silver => new Office12ToolStripRenderer(new Office12ColorTable()), 
				ColorScheme.Blue => new Office12ToolStripRenderer(new OfficeBlue()), 
				ColorScheme.Black => new Office12ToolStripRenderer(new OfficeBlack()), 
				_ => new Office12ToolStripRenderer(Office12ColorTable.ManagedColors), 
			};
			m_OfficeRenderers[colorScheme] = toolStripRenderer;
		}
		return toolStripRenderer;
	}

	private void UpdateState()
	{
		SuspendLayout();
		DropDownButton.Panel.Control.SuspendLayout();
		switch (State)
		{
		case ToolStripExState.Collapsed:
		{
			ToolStripPanelItem panel = DropDownButton.Panel;
			m_expandedSize = base.Size;
			ToolStripItem[] array2 = new ToolStripItem[Items.Count];
			Items.CopyTo(array2, 0);
			panel.Items.AddRange(array2);
			panel.Padding = base.Padding;
			panel.ToolStrip.LauncherClick += OnDropDownLauncherClick;
			Items.Add(DropDownButton);
			base.Width = CollapsedWidth;
			break;
		}
		case ToolStripExState.Expanded:
		{
			if (m_collapsedDropDown != null)
			{
				m_collapsedDropDown.DropDown.Close();
			}
			ToolStripItem[] array = new ToolStripItem[DropDownButton.Panel.Items.Count];
			DropDownButton.Panel.Items.CopyTo(array, 0);
			Items.Remove(DropDownButton);
			DropDownButton.Panel.ToolStrip.LauncherClick -= OnDropDownLauncherClick;
			Items.AddRange(array);
			base.Size = m_expandedSize;
			break;
		}
		}
		DropDownButton.Panel.Control.ResumeLayout(performLayout: false);
		ResumeLayout();
		UpdateCaption();
	}

	private void SetCollapsedSize(int toolStripHeight)
	{
		if (m_collapsedDropDown == null)
		{
			return;
		}
		ToolStripDropDownButton dropDownButton = DropDownButton;
		int num = toolStripHeight - (base.Padding.Vertical + dropDownButton.Margin.Vertical + dropDownButton.Padding.Vertical);
		int num2 = 15;
		if (base.Renderer is Office12ToolStripRenderer office12ToolStripRenderer)
		{
			Size size = TextRenderer.MeasureText(dropDownButton.Text, dropDownButton.Font);
			int num3 = office12ToolStripRenderer.GetDownArrowSize().Height + size.Height + 2;
			if (num3 < num)
			{
				if (size.Width > 0)
				{
					num2 = size.Width;
				}
				Size size2 = base.ImageScalingSize;
				size2.Height += 10;
				size2.Width += 10;
				num3 += size2.Height;
				if (num3 < num)
				{
					if (num2 < size2.Width)
					{
						num2 = size2.Width;
					}
					dropDownButton.DisplayStyle = ToolStripItemDisplayStyle.ImageAndText;
				}
				else
				{
					dropDownButton.DisplayStyle = ToolStripItemDisplayStyle.Text;
				}
			}
			else
			{
				dropDownButton.DisplayStyle = ToolStripItemDisplayStyle.None;
			}
		}
		dropDownButton.Size = new Size(num2 + dropDownButton.Padding.Horizontal, num + dropDownButton.Padding.Vertical);
	}

	private void OnImageChanged()
	{
		if (this.ImageChanged != null)
		{
			this.ImageChanged(this, EventArgs.Empty);
		}
	}

	public static bool BoolExToBool(BoolEx boolEx)
	{
		return boolEx switch
		{
			BoolEx.True => true, 
			BoolEx.False => false, 
			_ => throw new Exception(), 
		};
	}

	public static BoolEx BoolToBoolEx(bool bBool)
	{
		if (!bBool)
		{
			return BoolEx.False;
		}
		return BoolEx.True;
	}

	private static bool GetIsToolTip(IntPtr hWnd)
	{
		bool result = false;
		if (hWnd != IntPtr.Zero)
		{
			StringBuilder stringBuilder = new StringBuilder(256);
			if (GetClassName(hWnd, stringBuilder, 256) > 0)
			{
				result = stringBuilder.ToString().IndexOf("tooltips_class32") >= 0;
			}
		}
		return result;
	}

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern int GetClassName(IntPtr hWnd, StringBuilder sName, int nMaxCount);

	[DllImport("User32.dll", CharSet = CharSet.Auto)]
	private static extern bool IsChild(IntPtr hWndParent, IntPtr hWnd);

	public void PerformLauncherClick()
	{
		OnLauncherClick();
	}

	private bool ShouldSerializeFont()
	{
		return base.Font == Control.DefaultFont;
	}

	public override void ResetFont()
	{
		base.Font = Control.DefaultFont;
	}

	private bool ShouldSerializeLauncherStyle()
	{
		return m_LauncherStyle != LauncherStyle.Default;
	}

	private void ResetLauncherStyle()
	{
		LauncherStyle = LauncherStyle.Default;
	}

	private bool ShouldSerializeShowCaption()
	{
		return m_bShowCaption != BoolEx.Default;
	}

	private void ResetShowCaption()
	{
		m_bShowCaption = BoolEx.Default;
		UpdateCaption();
	}

	private bool ShouldSerializeShowLauncher()
	{
		return m_bShowLauncher != BoolEx.Default;
	}

	private void ResetShowLauncher()
	{
		m_bShowLauncher = BoolEx.Default;
		UpdateCaption();
	}

	private bool ShouldSerializeCaptionStyle()
	{
		return m_CaptionStyle != CaptionStyle.Default;
	}

	private void ResetCaptionStyle()
	{
		CaptionStyle = CaptionStyle.Default;
	}

	private bool ShouldSerializeCaptionTextStyle()
	{
		return m_CaptionTextStyle != CaptionTextStyle.Default;
	}

	private void ResetCaptionTextStyle()
	{
		CaptionTextStyle = CaptionTextStyle.Default;
	}

	private bool ShouldSerializeCaptionAlignment()
	{
		return m_CaptionAlignment != CaptionAlignment.Default;
	}

	private void ResetCaptionAlignment()
	{
		CaptionAlignment = CaptionAlignment.Default;
	}

	private bool ShouldSerializeCaptionFont()
	{
		return m_CaptionFont != null;
	}

	private void ResetCaptionFont()
	{
		CaptionFont = null;
	}

	private bool ShouldSerializeCaptionMinHeight()
	{
		return m_nCaptionMinHeight != -1;
	}

	private void ResetCaptionMinHeight()
	{
		CaptionMinHeight = -1;
	}

	private bool ShouldSerializeBorderStyle()
	{
		return m_BorderStyle != ToolStripBorderStyle.Default;
	}

	private void ResetBorderStyle()
	{
		BorderStyle = ToolStripBorderStyle.Default;
	}

	private bool ShouldSerializeOfficeColorScheme()
	{
		return m_ColorScheme != ColorScheme.Default;
	}

	private void ResetOfficeColorScheme()
	{
		OfficeColorScheme = ColorScheme.Default;
	}

	private bool ShouldSerializeImage()
	{
		return m_image != null;
	}

	private void ResetImage()
	{
		Image = null;
	}

	private bool ShouldSerializeForeColor()
	{
		return !m_foreColor.IsEmpty;
	}

	private new void ResetForeColor()
	{
		ForeColor = Color.Empty;
	}

	private bool ShouldSerializeCollapsedDropDownButtonText()
	{
		return CollapsedDropDownButtonText != string.Empty;
	}

	private void ResetCollapsedDropDownButtonText()
	{
		CollapsedDropDownButtonText = string.Empty;
	}
}
