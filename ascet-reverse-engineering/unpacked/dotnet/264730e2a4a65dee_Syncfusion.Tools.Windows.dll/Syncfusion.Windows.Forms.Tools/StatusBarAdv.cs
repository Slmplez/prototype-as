using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents advanced StatusBar with different border and background styles.")]
[Designer(typeof(StatusBarAdvDesigner))]
[ToolboxBitmap(typeof(StatusBarAdv), "ToolboxIcons.StatusBarAdv.bmp")]
public class StatusBarAdv : GradientPanel, ICanCancel, IStatusBarAdv
{
	private IContainer components;

	private bool size;

	private FlowLayout flowLayout;

	private bool autoHeightControls = true;

	private bool sizingGrip = true;

	private int sizingWidth = 14;

	private Size parentSize = Size.Empty;

	private Size originalSize = Size.Empty;

	private ThemedControlDrawing tcd;

	private bool m_bIsRedrawLocked;

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the Statusbar will draw a themed background. Indicated settings: BorderStyle = None")]
	public new bool ThemesEnabled
	{
		get
		{
			return base.ThemesEnabled;
		}
		set
		{
			base.ThemesEnabled = value;
			StatusBarAdvPanel[] panels = Panels;
			foreach (StatusBarAdvPanel statusBarAdvPanel in panels)
			{
				statusBarAdvPanel.ThemesEnabled = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates if the Sizing grip is visible.")]
	[DefaultValue(true)]
	public bool SizingGrip
	{
		get
		{
			return sizingGrip;
		}
		set
		{
			if (sizingGrip != value)
			{
				sizingGrip = value;
				flowLayout.HorzFarMargin = (value ? (sizingWidth + 3) : 7);
				Invalidate();
			}
		}
	}

	[Description("Indicates a custom rectangle that the layout will use to display the panels.")]
	[Category("Appearance")]
	public Rectangle CustomLayoutBounds
	{
		get
		{
			return flowLayout.CustomLayoutBounds;
		}
		set
		{
			flowLayout.CustomLayoutBounds = value;
		}
	}

	[Description("Determines the alignment of the panels.")]
	[Category("Appearance")]
	[DefaultValue(FlowAlignment.ChildConstraints)]
	public FlowAlignment Alignment
	{
		get
		{
			return flowLayout.Alignment;
		}
		set
		{
			flowLayout.Alignment = value;
			RecalculateConstraints();
		}
	}

	[Description("Determines the spacing between the panels.")]
	[Category("Appearance")]
	public Size Spacing
	{
		get
		{
			return new Size(flowLayout.HGap, flowLayout.VGap);
		}
		set
		{
			flowLayout.HGap = value.Width;
			flowLayout.VGap = value.Height;
			flowLayout.TopMargin = value.Height;
			OnSizeChanged(EventArgs.Empty);
		}
	}

	[Description("Determines if the StatusBar will resize the Height of the panels according to it`s Height.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool AutoHeightControls
	{
		get
		{
			return autoHeightControls;
		}
		set
		{
			if (autoHeightControls != value)
			{
				autoHeightControls = value;
				OnSizeChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the StatusBarAdvPanel controls contained in the StatusBarAdv.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public StatusBarAdvPanel[] Panels
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			for (int i = 0; i < base.Controls.Count; i++)
			{
				if (base.Controls[i] is StatusBarAdvPanel)
				{
					arrayList.Add(base.Controls[i]);
				}
			}
			return (StatusBarAdvPanel[])arrayList.ToArray(typeof(StatusBarAdvPanel));
		}
		set
		{
			ArrayList arrayList = new ArrayList();
			foreach (Control control in base.Controls)
			{
				if (control is StatusBarAdvPanel)
				{
					arrayList.Add(control);
				}
			}
			foreach (Control item in arrayList)
			{
				base.Controls.Remove(item);
			}
			for (int i = 0; i < value.Length; i++)
			{
				if (!base.Controls.Contains(value[i]))
				{
					base.Controls.Add(value[i]);
				}
			}
		}
	}

	protected bool ParentMaximized
	{
		get
		{
			if (base.Parent is Form && ((Form)base.Parent).WindowState == FormWindowState.Maximized)
			{
				return true;
			}
			return false;
		}
	}

	public override void BeginInit()
	{
		base.BeginInit();
	}

	public override void EndInit()
	{
		RecalculateConstraints();
		base.EndInit();
	}

	public StatusBarAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(StatusBarAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		base.ThemedBorder = false;
		if (base.DesignMode)
		{
			AllowDrop = true;
		}
		base.ControlAdded += Control_Added;
		base.ControlRemoved += Control_Removed;
		XPThemes.ThemeChanged += XPThemes_ThemeChanged;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("STATUS", this);
		}
	}

	private void Control_Added(object sender, ControlEventArgs e)
	{
		if (autoHeightControls)
		{
			e.Control.Height = base.ClientRectangle.Height - flowLayout.VGap * 2;
		}
		e.Control.SizeChanged += ControlSizeChanged;
		flowLayout.SetConstraints(e.Control, new FlowLayoutConstraints(active: true, HorzFlowAlign.Left, VertFlowAlign.Top, newline: false, proportionalColWidth: false, proportionalRowHeight: false));
		flowLayout.SetPreferredSize(e.Control, e.Control.Size);
		if (e.Control is StatusBarAdvPanel)
		{
			flowLayout.SetConstraints(e.Control, ((StatusBarAdvPanel)e.Control).Constraints);
			flowLayout.SetPreferredSize(e.Control, ((StatusBarAdvPanel)e.Control).PreferredSize);
			((StatusBarAdvPanel)e.Control).ConstraintsChanged += Panel_ConstraintsChanged;
			((StatusBarAdvPanel)e.Control).MinimumSizeChanged += Panel_MinimumSizeChanged;
			((StatusBarAdvPanel)e.Control).PreferredSizeChanged += Panel_PreferredSizeChanged;
		}
		RecalculateConstraints();
		e.Control.SendToBack();
	}

	[DocumentationExclude]
	protected internal void LockRedraw()
	{
		if (!m_bIsRedrawLocked)
		{
			NativeMethodsHelper.SetRedrawWindow(base.Handle, bRedraw: false, bForceRedraw: false);
		}
		m_bIsRedrawLocked = true;
	}

	[DocumentationExclude]
	protected internal void UnlockRedraw()
	{
		if (m_bIsRedrawLocked)
		{
			NativeMethodsHelper.SetRedrawWindow(base.Handle, bRedraw: true, bForceRedraw: true);
		}
		m_bIsRedrawLocked = false;
	}

	private void Control_Removed(object sender, ControlEventArgs e)
	{
		e.Control.SizeChanged -= ControlSizeChanged;
	}

	private void Panel_MinimumSizeChanged(object sender, EventArgs e)
	{
		flowLayout.SetMinimumSize((Control)sender, ((StatusBarAdvPanel)sender).MinimumSize);
	}

	private void Panel_PreferredSizeChanged(object sender, EventArgs e)
	{
		flowLayout.SetPreferredSize((Control)sender, ((StatusBarAdvPanel)sender).PreferredSize);
	}

	private void Panel_ConstraintsChanged(object sender, EventArgs e)
	{
		flowLayout.SetConstraints((Control)sender, ((StatusBarAdvPanel)sender).Constraints);
		RecalculateConstraints();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.DragDrop -= StatusBarAdv_DragDrop;
			base.ThemeChanged -= StatusBarAdv_ThemeChanged;
			base.ControlAdded -= Control_Added;
			base.ControlRemoved -= Control_Removed;
			XPThemes.ThemeChanged -= XPThemes_ThemeChanged;
			if (components != null)
			{
				components.Dispose();
				components = null;
			}
			if (tcd != null)
			{
				tcd.Dispose();
				tcd = null;
			}
			if (flowLayout != null)
			{
				flowLayout.Dispose();
				flowLayout = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this.flowLayout = new Syncfusion.Windows.Forms.Tools.FlowLayout(this.components);
		this.flowLayout.Alignment = Syncfusion.Windows.Forms.Tools.FlowAlignment.ChildConstraints;
		this.flowLayout.ContainerControl = this;
		this.flowLayout.HGap = 2;
		this.flowLayout.HorzFarMargin = 14;
		this.flowLayout.TopMargin = 2;
		this.flowLayout.VGap = 2;
		this.Dock = System.Windows.Forms.DockStyle.Bottom;
		base.DockPadding.All = 3;
		base.Size = new System.Drawing.Size(500, 22);
		base.DragDrop += new System.Windows.Forms.DragEventHandler(StatusBarAdv_DragDrop);
		base.ThemeChanged += new System.EventHandler(StatusBarAdv_ThemeChanged);
	}

	private void ControlSizeChanged(object sender, EventArgs e)
	{
		if (autoHeightControls)
		{
			UpdateChildHeight((Control)sender);
		}
		RecalculateConstraints();
	}

	private void UpdateChildHeight(Control c)
	{
		if (!AutoSize)
		{
			c.Height = base.ClientRectangle.Height - flowLayout.VGap * 2;
		}
	}

	protected override void ThemedPaintBackground(Graphics graphics, Rectangle rect, Rectangle clip)
	{
		tcd.DrawMirrored = GetIsMirrored();
		tcd.DrawThemeBackground(graphics, 4, 1, rect, clip);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		int num = base.ClientRectangle.Width;
		int num2 = base.ClientRectangle.Height;
		base.OnPaint(e);
		if (tcd != null)
		{
			tcd.DrawMirrored = GetIsMirrored();
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && ThemesEnabled && !base.IgnoreThemeBackground)
		{
			tcd.DrawThemeBackground(e.Graphics, 4, 1, base.ClientRectangle);
		}
		if (!sizingGrip)
		{
			return;
		}
		int num3 = num - sizingWidth;
		bool isMirrored = GetIsMirrored();
		if (!(base.Parent is Form) || ((Form)base.Parent).WindowState != FormWindowState.Maximized)
		{
			int num4 = sizingWidth + 3;
			if (isMirrored)
			{
				flowLayout.HorzNearMargin = num4;
			}
			else
			{
				flowLayout.HorzFarMargin = num4;
			}
			Rectangle rectangle = new Rectangle((!isMirrored) ? num3 : 0, 0, sizingWidth, num2);
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || !ThemesEnabled)
			{
				Graphics graphics = e.Graphics;
				using CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(graphics, rectangle, isMirrored);
				Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
				Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
				ControlPaint.DrawSizeGrip(virtualGfx, Color.Transparent, virtualBounds);
				return;
			}
			tcd.DrawThemeBackground(e.Graphics, 3, 1, rectangle);
		}
		else if (isMirrored)
		{
			flowLayout.HorzNearMargin = 3;
		}
		else
		{
			flowLayout.HorzFarMargin = 3;
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		if (autoHeightControls)
		{
			for (int i = 0; i < base.Controls.Count; i++)
			{
				UpdateChildHeight(base.Controls[i]);
			}
		}
		RecalculateConstraints();
		Invalidate(invalidateChildren: true);
	}

	protected override void WndProc(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 132 && ShouldEnableSizing())
		{
			Rectangle clientRectangle = base.ClientRectangle;
			clientRectangle.X = clientRectangle.Right - sizingWidth;
			clientRectangle.Width = sizingWidth;
			int num = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam);
			int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam);
			if (clientRectangle.Contains(PointToClient(new Point(num, num2))))
			{
				m.Result = (IntPtr)17;
				return;
			}
		}
		base.WndProc(ref m);
	}

	void ICanCancel.CancelOperation()
	{
		if (size)
		{
			size = false;
			base.Parent.Size = originalSize;
		}
	}

	protected virtual bool ShouldEnableSizing()
	{
		if (sizingGrip && Dock == DockStyle.Bottom && base.Bottom == base.Parent.DisplayRectangle.Bottom && base.Right == base.Parent.DisplayRectangle.Right && !ParentMaximized)
		{
			return true;
		}
		return false;
	}

	private void StatusBarAdv_DragDrop(object sender, DragEventArgs e)
	{
		ISelectionService selectionService = GetService(typeof(ISelectionService)) as ISelectionService;
		if (!(selectionService.PrimarySelection is Control))
		{
			return;
		}
		int num = base.Controls.IndexOf((Control)selectionService.PrimarySelection);
		if (num > 0)
		{
			Point point = PointToClient(new Point(e.X, e.Y));
			int num2 = -1;
			for (int i = 0; i < base.Controls.Count; i++)
			{
				if (i != num && base.Controls[i].Location.X > point.X)
				{
					num2 = i;
					break;
				}
			}
			if (num2 < num)
			{
				base.Controls.SetChildIndex(base.Controls[num], num2);
			}
			else
			{
				base.Controls.SetChildIndex(base.Controls[num], num2 - 1);
			}
		}
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(this, null);
			componentChangeService.OnComponentChanged(this, null, null, null);
		}
		base.Parent.Update();
		Invalidate(invalidateChildren: true);
	}

	private void RecalculateConstraints()
	{
		for (int i = 0; i < base.Controls.Count; i++)
		{
			if (!(base.Controls[i] is StatusBarAdvPanel))
			{
				flowLayout.SetPreferredSize(base.Controls[i], base.Controls[i].Size);
				flowLayout.SetMinimumSize(base.Controls[i], base.Controls[i].Size);
			}
			if (base.Controls[i] is StatusBarAdvPanel)
			{
				flowLayout.SetPreferredSize(base.Controls[i], ((StatusBarAdvPanel)base.Controls[i]).PreferredSize);
				flowLayout.SetMinimumSize(base.Controls[i], new Size(0, ((StatusBarAdvPanel)base.Controls[i]).Height));
			}
		}
	}

	public void SetPreferredSize(Control control, Size size)
	{
		flowLayout.SetMinimumSize(control, size);
	}

	public void SetHAlign(Control control, HorzFlowAlign align)
	{
		flowLayout.GetConstraintsRef(control).HAlign = align;
	}

	public Size GetPreferredSize(Control control)
	{
		return flowLayout.GetPreferredSize(control);
	}

	private void StatusBarAdv_ThemeChanged(object sender, EventArgs e)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("STATUS");
		}
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		if (sizingGrip)
		{
			int horzNearMargin = flowLayout.HorzNearMargin;
			flowLayout.HorzNearMargin = flowLayout.HorzFarMargin;
			flowLayout.HorzFarMargin = horzNearMargin;
		}
		PerformLayout();
	}

	protected bool GetIsMirrored()
	{
		return RightToLeft == RightToLeft.Yes;
	}

	private void XPThemes_ThemeChanged(object sender, EventArgs e)
	{
		if (tcd == null && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("STATUS");
		}
	}
}
