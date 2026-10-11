using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Runtime.Serialization;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents a Windows XP like task menu panel.")]
[ToolboxBitmap(typeof(XPTaskBar), "ToolboxIcons.XPTaskBar.bmp")]
[Designer(typeof(XPTaskBarDesigner), typeof(IDesigner))]
[DefaultChildType(typeof(XPTaskBarBox))]
public class XPTaskBar : Panel, ISupportInitialize, INonClientPaintingSupport
{
	public enum ItemsAlignment
	{
		Vertical,
		Horizontal
	}

	private const int DEF_BORDERSTYLE_FIXEDSINGLE_OFFSET = 2;

	private const int DEF_BORDERSTYLE_FIXED3D_OFFSET = 4;

	private FlowLayout flowLayout;

	private bool needLayout;

	private bool themesEnabled;

	private ImageList headerImageList;

	private bool layingOut;

	private bool verticalLayout = true;

	private int colWidthOnHorizontalAlignment = 100;

	private Hashtable htTaskBarStates;

	private bool autoPersistStates = true;

	private static bool s_isDevEnv = Application.ExecutablePath.ToLower().IndexOf("devenv.exe") >= 0;

	private bool m_bInitializing;

	private bool m_bLayoutInProgress;

	private XPTaskBarStyle m_style;

	private Office2007Theme m_colorScheme;

	private Office2007Colors m_office2007ColorTable;

	private ControlDrawing cd = new ControlDrawing();

	private int m_verticalPadding;

	private bool m_bChildSetFocus;

	private Size m_minimumSize = Size.Empty;

	private ItemsAlignment m_itemsAlignment;

	private IntPtr cachedRgn = IntPtr.Zero;

	[DefaultValue(ItemsAlignment.Vertical)]
	[Description("Gets or sets the Taskbar box's items alignment.")]
	[Browsable(true)]
	public ItemsAlignment BoxItemsAlignment
	{
		get
		{
			return m_itemsAlignment;
		}
		set
		{
			if (m_itemsAlignment != value)
			{
				m_itemsAlignment = value;
				Refresh();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(XPTaskBarStyle.Default)]
	[Description("Gets or sets an advanced appearance for the xpTaskBar.")]
	public XPTaskBarStyle Style
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

	[Category("Appearance")]
	[Description("Gets or sets office 2007 color scheme.")]
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

	private BorderStyle VSBorderStyle
	{
		get
		{
			if (Style != XPTaskBarStyle.Office2007 || ThemesEnabled)
			{
				return base.BorderStyle;
			}
			return BorderStyle.FixedSingle;
		}
	}

	[Description("Gets or sets the vertical spacing between the layout task bar.")]
	[Category("Layout")]
	public int VerticalPadding
	{
		get
		{
			return m_verticalPadding;
		}
		set
		{
			if (value >= 0)
			{
				m_verticalPadding = value;
				if (!themesEnabled && Style == XPTaskBarStyle.Office2007)
				{
					flowLayout.VGap = m_verticalPadding + 1;
				}
				else
				{
					flowLayout.VGap = m_verticalPadding;
				}
			}
		}
	}

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Category("Layout")]
	[DefaultValue(0)]
	[Description("Gets or sets the horizontal spacing between the layout task bar.")]
	public int HorizontalPadding
	{
		get
		{
			return flowLayout.HGap;
		}
		set
		{
			if (flowLayout.HGap != value && value >= 0)
			{
				flowLayout.HGap = value;
			}
		}
	}

	[Description("Specifies whether the child boxes should be aligned vertically or horizontally.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool VerticalLayout
	{
		get
		{
			return verticalLayout;
		}
		set
		{
			if (verticalLayout != value)
			{
				verticalLayout = value;
				LayoutInternal();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Automatically persists the collapsed state of the child boxes.")]
	public bool AutoPersistStates
	{
		get
		{
			return autoPersistStates;
		}
		set
		{
			autoPersistStates = value;
		}
	}

	[DefaultValue(100)]
	[Description("Specifies the width for each column when in horizontal alignment mode.")]
	[SRCategory("CategoryAppearance")]
	public int ColWidthOnHorizontalAlignment
	{
		get
		{
			return colWidthOnHorizontalAlignment;
		}
		set
		{
			if (colWidthOnHorizontalAlignment != value)
			{
				colWidthOnHorizontalAlignment = value;
				LayoutInternal();
			}
		}
	}

	[DefaultValue(typeof(Size), "0;0")]
	[Description("The minimum size the XPTaskBar can be resized to.")]
	[Category("Layout")]
	public new Size MinimumSize
	{
		get
		{
			return m_minimumSize;
		}
		set
		{
			if (value != m_minimumSize)
			{
				m_minimumSize.Width = ((value.Width >= 0) ? value.Width : 0);
				m_minimumSize.Height = ((value.Height >= 0) ? value.Height : 0);
				OnMinimumSizeChanged();
			}
		}
	}

	protected override Size DefaultSize => new Size(200, 100);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool NeedLayout
	{
		get
		{
			bool flag = needLayout;
			if (!flag)
			{
				foreach (XPTaskBarBox control in base.Controls)
				{
					flag |= control.NeedLayout;
					if (flag)
					{
						break;
					}
				}
			}
			return flag;
		}
	}

	[SRCategory("CategoryAppearance")]
	[Description("Specifies the ImageList that will be used to draw the header images in the child boxes")]
	[DefaultValue(null)]
	public ImageList HeaderImageList
	{
		get
		{
			return headerImageList;
		}
		set
		{
			if (headerImageList != value)
			{
				if (headerImageList != null)
				{
					headerImageList.RecreateHandle -= ImageList_Recreated;
				}
				headerImageList = value;
				if (headerImageList != null)
				{
					headerImageList.RecreateHandle += ImageList_Recreated;
				}
				LayoutInternal();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled == value)
			{
				return;
			}
			themesEnabled = value;
			if (themesEnabled)
			{
				base.BorderStyle = BorderStyle.None;
				if (m_verticalPadding == 0)
				{
					flowLayout.VGap = 0;
				}
			}
			else if (Style == XPTaskBarStyle.Office2007)
			{
				base.BorderStyle = BorderStyle.FixedSingle;
				if (flowLayout.VGap == 0)
				{
					flowLayout.VGap = 1;
				}
			}
			if (!m_bInitializing)
			{
				ResetBackColor();
				foreach (XPTaskBarBox control in base.Controls)
				{
					control.ResetPADY();
					control.ResetItemBackColor();
					control.ResetHeaderBackColor();
				}
			}
			Invalidate(invalidateChildren: true);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Browsable(false)]
	public FlowLayout FlowLayout => flowLayout;

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled)
			{
				if (VSBorderStyle == BorderStyle.FixedSingle)
				{
					createParams.Style |= 8388608;
				}
				if (VSBorderStyle == BorderStyle.Fixed3D)
				{
					createParams.ExStyle |= 512;
				}
			}
			createParams.Style = createParams.Style | 0x2000 | 2 | (int)WhidbeyCompatibleControlStyles.DoubleBuffer;
			return createParams;
		}
	}

	internal bool IsChildSetFocus
	{
		get
		{
			return m_bChildSetFocus;
		}
		set
		{
			m_bChildSetFocus = value;
		}
	}

	[Description("Occurs when the MinimumSize property changes.")]
	public event EventHandler MinimumSizeChanged;

	private void RaiseMinimumSizeChanged()
	{
		if (this.MinimumSizeChanged != null)
		{
			this.MinimumSizeChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnMinimumSizeChanged()
	{
		if (MinimumSize.Width > base.Size.Width || MinimumSize.Height > base.Size.Height)
		{
			Size empty = Size.Empty;
			empty.Width = ((MinimumSize.Width > base.Size.Width) ? MinimumSize.Width : base.Size.Width);
			empty.Height = ((MinimumSize.Height > base.Size.Height) ? MinimumSize.Height : base.Size.Height);
			base.Size = empty;
		}
		RaiseMinimumSizeChanged();
	}

	public XPTaskBar()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(XPTaskBar));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		AutoSize = false;
		flowLayout = new FlowLayout(this, FlowLayoutMode.Vertical, FlowAlignment.Near, 0, 0);
		flowLayout.AutoLayout = false;
		flowLayout.VGapChanged += FlowLayout_VGapChanged;
		htTaskBarStates = new Hashtable();
		SetStyle(ControlStyles.ResizeRedraw | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
	}

	public void FlowLayout_VGapChanged(object sender, ValueChangedEventArgs e)
	{
		if (!base.DesignMode)
		{
			m_verticalPadding = (int)e.newValue;
		}
	}

	private bool ShouldSerializeVerticalPadding()
	{
		return m_verticalPadding != 0;
	}

	private void ResetVerticalPadding()
	{
		m_verticalPadding = 0;
		if (!themesEnabled && Style == XPTaskBarStyle.Office2007)
		{
			flowLayout.VGap = m_verticalPadding + 1;
		}
		else
		{
			flowLayout.VGap = m_verticalPadding;
		}
	}

	private bool ShouldSerializeBackColor()
	{
		bool result = BackColor != SystemColors.Control;
		if (!ThemesEnabled && Style == XPTaskBarStyle.Office2007)
		{
			result = BackColor != Color.White;
		}
		return result;
	}

	public override void ResetBackColor()
	{
		if (!ThemesEnabled && Style == XPTaskBarStyle.Office2007)
		{
			BackColor = Color.White;
		}
		else
		{
			BackColor = SystemColors.Control;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (AutoPersistStates && !base.DesignMode && !s_isDevEnv)
			{
				SaveBoxExpandedStates();
			}
			foreach (XPTaskBarBox control in base.Controls)
			{
				control.CollapsedStateChanged -= Box_CollapsedChanged;
				control.LayoutNeed -= Box_LayoutNeed;
			}
			htTaskBarStates.Clear();
		}
		if (headerImageList != null)
		{
			headerImageList.RecreateHandle -= ImageList_Recreated;
			headerImageList = null;
		}
		if (flowLayout != null)
		{
			flowLayout.VGapChanged -= FlowLayout_VGapChanged;
			flowLayout.Dispose();
			flowLayout = null;
		}
		base.Dispose(disposing);
	}

	protected new virtual void Layout(Graphics g)
	{
		LayoutInternal();
	}

	private void LayoutInternal()
	{
		if (!m_bInitializing && !layingOut)
		{
			layingOut = true;
			int num = 0;
			Rectangle empty = Rectangle.Empty;
			SuspendLayout();
			num = GetTaskChildrenHeight();
			LayoutTaskBarBoxes(num);
			empty = base.ClientRectangle;
			empty.Y = DisplayRectangle.Y;
			empty.Height = DisplayRectangle.Height;
			if (VerticalLayout)
			{
				empty.Height = int.MaxValue;
			}
			else
			{
				empty.Height = base.Height;
				empty.Width = int.MaxValue;
			}
			FlowLayout.CustomLayoutBounds = empty;
			flowLayout.LayoutContainer();
			ResumeLayout(performLayout: true);
			Invalidate(invalidateChildren: true);
			layingOut = false;
		}
	}

	private int GetTaskChildrenHeight()
	{
		int num = 0;
		foreach (XPTaskBarBox control in base.Controls)
		{
			control.Layout(null);
			num += control.GetPreferredHeight() + VerticalPadding;
		}
		return num + (base.DockPadding.Top + base.DockPadding.Bottom);
	}

	protected virtual void OnUpdateFlowLayoutBeforeLayout()
	{
		HorizontalPadding = base.DockPadding.Left;
		VerticalPadding = base.DockPadding.Top;
		Rectangle bounds = base.Bounds;
		bounds = base.ClientRectangle;
		if (VerticalLayout)
		{
			bounds.Y = DisplayRectangle.Y;
			bounds.Height = int.MaxValue;
		}
		else
		{
			bounds.X = DisplayRectangle.X;
		}
		flowLayout.HorzNearMargin = base.DockPadding.Left;
		flowLayout.HorzFarMargin = base.DockPadding.Right;
		flowLayout.TopMargin = base.DockPadding.Top;
		flowLayout.BottomMargin = base.DockPadding.Bottom;
	}

	protected virtual void LayoutTaskBarBoxes(int nTaskBarBoxesHeght)
	{
		foreach (XPTaskBarBox control in base.Controls)
		{
			int num = base.Width - base.DockPadding.Left - base.DockPadding.Right - GetBorderStyleOffset();
			int num2 = ((nTaskBarBoxesHeght > base.Height && AutoScroll) ? (num - SystemInformation.HorizontalScrollBarHeight) : num);
			if (!VerticalLayout)
			{
				num2 = ColWidthOnHorizontalAlignment;
			}
			Size size = new Size(num2, control.GetPreferredHeight());
			size = OptimizeSize(size);
			if (size != control.Size)
			{
				control.Size = size;
			}
		}
	}

	private int GetBorderStyleOffset()
	{
		int result = 0;
		switch (base.BorderStyle)
		{
		case BorderStyle.Fixed3D:
			result = 4;
			break;
		case BorderStyle.FixedSingle:
			result = 2;
			break;
		}
		return result;
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (!m_bLayoutInProgress)
		{
			SuspendLayout();
			m_bLayoutInProgress = true;
			LayoutInternal();
			m_bLayoutInProgress = false;
			ResumeLayout(performLayout: true);
		}
		base.OnSizeChanged(e);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (MinimumSize.Width > 0 && width < MinimumSize.Width)
		{
			width = MinimumSize.Width;
		}
		if (MinimumSize.Height > 0 && height < MinimumSize.Height)
		{
			height = MinimumSize.Height;
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		if (!m_bLayoutInProgress)
		{
			m_bLayoutInProgress = true;
			flowLayout.HorzNearMargin = base.DockPadding.Left;
			flowLayout.HorzFarMargin = base.DockPadding.Right;
			LayoutInternal();
			base.OnLayout(levent);
			m_bLayoutInProgress = false;
		}
	}

	private void InvalidateWindow()
	{
		int redrawFlags = 1281;
		NativeMethodsHelper.RedrawWindow(base.Handle, redrawFlags);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rc = displayRect;
		int num = 2;
		if (VSBorderStyle == BorderStyle.FixedSingle)
		{
			num = 1;
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rc.Location, new Size(num, rc.Height)),
			new Rectangle(rc.Location, new Size(rc.Width, num)),
			new Rectangle(rc.Width - num, rc.Y, num, rc.Height),
			new Rectangle(rc.X, rc.Height - num, rc.Width, num)
		};
		for (int i = 0; i < 4; i++)
		{
			graphics.FillRectangle(new SolidBrush(BackColor), array[i]);
		}
		Color borderColor = Color.Black;
		if (Style == XPTaskBarStyle.Office2007)
		{
			borderColor = Office2007ColorTable.XPTaskBarBorderColor;
		}
		cd.DrawBorder(graphics, rc, VSBorderStyle, Border3DStyle.Sunken, ButtonBorderStyle.Solid, borderColor);
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (ThemesEnabled || Style != XPTaskBarStyle.Office2007)
		{
			return;
		}
		using (SolidBrush brush = new SolidBrush(Color.White))
		{
			e.Graphics.FillRectangle(brush, base.ClientRectangle);
		}
		for (int i = 0; i < base.Controls.Count; i++)
		{
			if (base.Controls[i] is XPTaskBarBox { Bounds: var bounds })
			{
				using Pen pen = new Pen(Office2007ColorTable.XPTaskBarBoxHeaderUpperLineColor);
				e.Graphics.DrawLine(pen, bounds.Left, bounds.Top - 1, bounds.Right, bounds.Top - 1);
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 133 && VSBorderStyle != BorderStyle.None && (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled))
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		base.WndProc(ref m);
	}

	private void OnStyleChanged()
	{
		if (!ThemesEnabled && Style == XPTaskBarStyle.Office2007)
		{
			base.BorderStyle = BorderStyle.FixedSingle;
			if (flowLayout.VGap == 0)
			{
				flowLayout.VGap = 1;
			}
		}
		else
		{
			base.BorderStyle = BorderStyle.None;
			if (m_verticalPadding == 0)
			{
				flowLayout.VGap = 0;
			}
		}
		m_office2007ColorTable = Office2007Colors.GetColorTable(m_colorScheme);
		if (!m_bInitializing && !ThemesEnabled)
		{
			ResetBackColor();
			foreach (XPTaskBarBox control in base.Controls)
			{
				control.ResetPADY();
				control.ResetItemBackColor();
				control.ResetHeaderBackColor();
			}
		}
		InvalidateWindow();
		Invalidate(invalidateChildren: true);
	}

	private Size OptimizeSize(Size size)
	{
		if (size.Width < 0)
		{
			size.Width = 0;
		}
		if (size.Height < 0)
		{
			size.Height = 0;
		}
		return size;
	}

	private void ImageList_Recreated(object sender, EventArgs e)
	{
		LayoutInternal();
	}

	internal bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		if (AutoPersistStates && htTaskBarStates != null && e.Control is XPTaskBarBox)
		{
			XPTaskBarBox xPTaskBarBox = e.Control as XPTaskBarBox;
			if (htTaskBarStates.Contains(xPTaskBarBox))
			{
				xPTaskBarBox.Collapsed = (bool)htTaskBarStates[xPTaskBarBox];
			}
			else
			{
				htTaskBarStates[xPTaskBarBox.Text] = xPTaskBarBox.Collapsed;
			}
			xPTaskBarBox.CollapsedStateChanged += Box_CollapsedChanged;
		}
		if (e.Control is XPTaskBarBox)
		{
			XPTaskBarBox xPTaskBarBox2 = e.Control as XPTaskBarBox;
			xPTaskBarBox2.LayoutNeed += Box_LayoutNeed;
		}
		base.OnControlAdded(e);
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (e.Control is XPTaskBarBox)
		{
			XPTaskBarBox xPTaskBarBox = e.Control as XPTaskBarBox;
			xPTaskBarBox.CollapsedStateChanged -= Box_CollapsedChanged;
			xPTaskBarBox.LayoutNeed -= Box_LayoutNeed;
		}
		base.OnControlRemoved(e);
	}

	private void Box_CollapsedChanged(object sender, EventArgs e)
	{
		XPTaskBarBox xPTaskBarBox = sender as XPTaskBarBox;
		htTaskBarStates[xPTaskBarBox.Text] = xPTaskBarBox.Collapsed;
	}

	public void SaveBoxExpandedStates()
	{
		SaveBoxExpandedStates(AppStateSerializer.GetSingleton());
	}

	public virtual void SaveBoxExpandedStates(AppStateSerializer serializer)
	{
		if (serializer != null)
		{
			try
			{
				serializer.SerializeObject(GetPersistenceKey(), htTaskBarStates);
			}
			catch (Exception)
			{
			}
		}
	}

	private string GetPersistenceKey()
	{
		return "XPTaskBarBox Collapsed States: (" + base.Name + " )";
	}

	public bool LoadBoxExpandedStates()
	{
		return LoadBoxExpandedStates(AppStateSerializer.GetSingleton());
	}

	public virtual bool LoadBoxExpandedStates(AppStateSerializer serializer)
	{
		if (serializer != null)
		{
			try
			{
				htTaskBarStates = serializer.DeserializeObject(GetPersistenceKey()) as Hashtable;
				ApplyDeserializedStates(htTaskBarStates);
				if (htTaskBarStates == null)
				{
					htTaskBarStates = new Hashtable();
				}
			}
			catch (Exception)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	protected virtual void ApplyDeserializedStates(Hashtable htStates)
	{
		if (htStates == null)
		{
			return;
		}
		foreach (XPTaskBarBox control in base.Controls)
		{
			if (control != null && htStates.Contains(control.Text))
			{
				control.Collapsed = (bool)htStates[control.Text];
			}
		}
	}

	void ISupportInitialize.BeginInit()
	{
		m_bInitializing = true;
	}

	void ISupportInitialize.EndInit()
	{
		m_bInitializing = false;
		if (!base.DesignMode && !s_isDevEnv)
		{
			LoadBoxExpandedStates();
		}
		if (!themesEnabled && Style == XPTaskBarStyle.Office2007 && flowLayout != null && flowLayout.VGap == 0)
		{
			flowLayout.VGap = 1;
		}
		if (ThemesEnabled || Style != XPTaskBarStyle.Office2007)
		{
			return;
		}
		ResetBackColor();
		foreach (XPTaskBarBox control in base.Controls)
		{
			control.ResetPADY();
			control.ResetItemBackColor();
			control.ResetHeaderBackColor();
		}
	}

	private void Box_LayoutNeed(object sender, EventArgs e)
	{
		if (!m_bLayoutInProgress)
		{
			m_bLayoutInProgress = true;
			SuspendLayout();
			LayoutInternal();
			m_bLayoutInProgress = false;
			ResumeLayout(performLayout: true);
		}
	}

	protected override Point ScrollToControl(Control activeControl)
	{
		if (AutoScroll)
		{
			if (!IsChildSetFocus)
			{
				return base.ScrollToControl(activeControl);
			}
			IsChildSetFocus = false;
			return base.AutoScrollPosition;
		}
		return base.ScrollToControl(activeControl);
	}
}
