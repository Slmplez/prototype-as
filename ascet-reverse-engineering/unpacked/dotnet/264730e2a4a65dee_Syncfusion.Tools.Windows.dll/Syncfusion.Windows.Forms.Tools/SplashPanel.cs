using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Timers;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(SplashPanel), "ToolboxIcons.SplashPanel.bmp")]
[ToolboxItem(true)]
[Description("Panel derived class which let you design custom splash screens")]
[Designer(typeof(SplashPanelDesigner), typeof(IDesigner))]
public class SplashPanel : Panel, ISplashWrapperFormListener
{
	private delegate void ShowSplashDelegate(Point location, Form ownerForm, bool disableOwner);

	private delegate bool PrepareSplashDelegate(Point location, Form ownerForm);

	private delegate void HideSplashDelegate(SplashCloseType splashCloseType, int delayInMilliseconds);

	internal delegate void SplashClosedNotifyHandler(SplashPanel splashPanelObject, SplashCloseType splashCloseType);

	private ISplashParent splashParentObject;

	private WrapperForm splashWrapperFormObject;

	private Point discreetLocationValue;

	private bool showAnimationValue;

	private SplashAlignment desktopAlignmentValue;

	private System.Timers.Timer timerObject;

	private Border3DStyle border3dStyleValue;

	private int timerIntervalValue;

	private BrushInfo backgroundColorValue;

	private int animationSpeed;

	private SplashCloseType splashCloseType;

	private SlideStyle slideStyle = SlideStyle.Default;

	private bool suspendAutoCloseWhenMouseOver;

	private bool mouseOver;

	public static int AnimationInterval = 50;

	private System.Timers.Timer delayTimer;

	private bool showAsTopMost = true;

	private bool showInTaskbar;

	private Icon icon;

	private string titleText = string.Empty;

	private Color transparentColor = Color.Empty;

	private Region formRegion;

	private SplashBorderType borderType;

	private bool closeOnClick;

	private bool allowMove;

	private bool allowResize;

	private int borderTestWith = 3;

	private int borderTestHeight = 3;

	private bool wasMoved;

	internal bool mouseEnter;

	private bool closeOnLostFocus;

	private Point mouseDown;

	private bool bMoveDragging;

	[DefaultValue(null)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ISplashParent SplashParent
	{
		get
		{
			return splashParentObject;
		}
		set
		{
			splashParentObject = value;
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Specifies if the SplashPanel should not be closed when the mouse is over it.")]
	public bool SuspendAutoCloseWhenMouseOver
	{
		get
		{
			return suspendAutoCloseWhenMouseOver;
		}
		set
		{
			suspendAutoCloseWhenMouseOver = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies if the SplashPanel is to be shown in the Taskbar")]
	public bool ShowInTaskbar
	{
		get
		{
			return showInTaskbar;
		}
		set
		{
			showInTaskbar = value;
		}
	}

	[Description("Specifies the icon for the SplashPanel when displayed in the Taskbar")]
	[DefaultValue(null)]
	public Icon FormIcon
	{
		get
		{
			return icon;
		}
		set
		{
			icon = value;
		}
	}

	[Browsable(true)]
	[Description("Specifies the text when displayed in the Taskbar")]
	public new string Text
	{
		get
		{
			return titleText;
		}
		set
		{
			titleText = value;
		}
	}

	[Description("The background gradient and other styles can be set.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return backgroundColorValue;
		}
		set
		{
			backgroundColorValue = value;
			Invalidate();
		}
	}

	[Description("The sliding style for the SplashPanel.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[DefaultValue(SlideStyle.Default)]
	public SlideStyle SlideStyle
	{
		get
		{
			return slideStyle;
		}
		set
		{
			slideStyle = value;
		}
	}

	[Category("Appearance")]
	[Description("Specifies if the SplashPanel is to be displayed as a TopMost window.")]
	[DefaultValue(true)]
	public bool ShowAsTopMost
	{
		get
		{
			return showAsTopMost;
		}
		set
		{
			showAsTopMost = value;
		}
	}

	[DefaultValue(Border3DStyle.Bump)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("The 3D border for the splash panel.")]
	public new Border3DStyle BorderStyle
	{
		get
		{
			return border3dStyleValue;
		}
		set
		{
			border3dStyleValue = value;
			Invalidate();
		}
	}

	[Description("Specifies the type of border.")]
	[DefaultValue(SplashBorderType.Border3D)]
	public SplashBorderType BorderType
	{
		get
		{
			return borderType;
		}
		set
		{
			borderType = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(10)]
	[Category("Appearance")]
	[Description("The speed at which the animation unfolds on the screen and the SplashPanel becomes visible.")]
	public int AnimationSpeed
	{
		get
		{
			return animationSpeed;
		}
		set
		{
			if (value >= 2 && value <= 50)
			{
				animationSpeed = value;
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Specifies if the window display should be animated.")]
	public bool ShowAnimation
	{
		get
		{
			return showAnimationValue;
		}
		set
		{
			showAnimationValue = value;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(SplashAlignment.Center)]
	[Description("Specifies how the splash screen has to be aligned when it appears initially with respect to the desktop.")]
	public SplashAlignment DesktopAlignment
	{
		get
		{
			return desktopAlignmentValue;
		}
		set
		{
			desktopAlignmentValue = value;
		}
	}

	[Description("Gets or sets the period of time the splash window should be visible for.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Behavior")]
	[DefaultValue(5000)]
	[Browsable(true)]
	public int TimerInterval
	{
		get
		{
			return timerIntervalValue;
		}
		set
		{
			timerIntervalValue = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(null)]
	[Browsable(false)]
	private WrapperForm SplashWrapperForm
	{
		get
		{
			return splashWrapperFormObject;
		}
		set
		{
			splashWrapperFormObject = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(null)]
	[Browsable(false)]
	public Form SplashForm
	{
		get
		{
			if (splashWrapperFormObject == null)
			{
				return null;
			}
			return splashWrapperFormObject;
		}
	}

	[Description("Specifies the transparent color for the background.")]
	public Color TransparentColor
	{
		get
		{
			return transparentColor;
		}
		set
		{
			if (value == Color.Empty)
			{
				transparentColor = Color.Empty;
				formRegion = null;
			}
			else if (transparentColor != value)
			{
				transparentColor = value;
				RefreshRegionFromImage();
			}
		}
	}

	[Browsable(false)]
	public new Color BackColor
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

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Category("Appearance")]
	[Description("Gets or sets the location to display the splash window. This is a Point value that is in screen coordinates.")]
	public Point DiscreetLocation
	{
		get
		{
			return discreetLocationValue;
		}
		set
		{
			discreetLocationValue = value;
		}
	}

	[Description("The SplashPanel will be closed if this set to true and the user clicks the SplashPanel.")]
	[DefaultValue(false)]
	public bool CloseOnClick
	{
		get
		{
			return closeOnClick;
		}
		set
		{
			closeOnClick = value;
		}
	}

	[Description("The SplashPanel will be closed if this set to true and the user change the focus from the splash.")]
	[DefaultValue(false)]
	public bool CloseOnLostFocus
	{
		get
		{
			return closeOnLostFocus;
		}
		set
		{
			closeOnLostFocus = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether the AllowMove property allows the user to click within the SplashPanel and move the SplashPanel on the screen.")]
	public bool AllowMove
	{
		get
		{
			return allowMove;
		}
		set
		{
			allowMove = value;
		}
	}

	[DefaultValue(false)]
	[Description("The SplashPanel can be resized by the user if this is set to true.")]
	public bool AllowResize
	{
		get
		{
			return allowResize;
		}
		set
		{
			allowResize = value;
		}
	}

	[Description("Occurs when the splash is about to be shown.")]
	[Category("SplashBehavior")]
	public event CancelEventHandler BeforeSplash;

	[Description("Occurs after the SplashPanel has been displayed.")]
	[Category("SplashBehavior")]
	public event EventHandler SplashDisplayed;

	[Description("Occurs when a SplashPanel is being closed.")]
	[Category("SplashBehavior")]
	public event CancelEventHandler SplashClosing;

	[Category("SplashBehavior")]
	[Description("Occurs when a SplashPanel is closed.")]
	public event SplashClosedEventHandler SplashClosed;

	[Description("Occurs when the mouse enters the visible part of the SplashPanel or any of its child controls.")]
	[Category("Mouse")]
	public event EventHandler SplashMouseEnter;

	[Description("Occurs when the mouse leaves the visible part of the SplashPanel or any of its child controls.")]
	[Category("Mouse")]
	public event EventHandler SplashMouseLeave;

	public SplashPanel()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(SplashPanel));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		timerIntervalValue = 5000;
		animationSpeed = 10;
		showAnimationValue = true;
		desktopAlignmentValue = SplashAlignment.Center;
		timerObject = new System.Timers.Timer();
		delayTimer = new System.Timers.Timer();
		border3dStyleValue = Border3DStyle.Bump;
		base.BorderStyle = System.Windows.Forms.BorderStyle.None;
		backgroundColorValue = new BrushInfo(GradientStyle.Vertical, SystemColors.Highlight, SystemColors.HighlightText);
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 131:
			m.Result = ((m.WParam == IntPtr.Zero) ? IntPtr.Zero : ((IntPtr)768));
			return;
		case 132:
			if (AllowResize)
			{
				int num = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam);
				int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam);
				Point pt = PointToClient(new Point(num, num2));
				if (GetCurrentBorderArea(pt) != 0)
				{
					m.Result = (IntPtr)(-1);
					return;
				}
			}
			break;
		}
		base.WndProc(ref m);
	}

	protected override void Dispose(bool disposing)
	{
		backgroundColorValue = null;
		if (splashWrapperFormObject != null)
		{
			splashWrapperFormObject.Dispose();
		}
		base.Dispose(disposing);
	}

	protected virtual void OnBeforeSplash(CancelEventArgs args)
	{
		if (this.BeforeSplash != null)
		{
			this.BeforeSplash(this, args);
		}
	}

	[DocumentationExclude]
	protected bool RaiseBeforeSplashEvent()
	{
		bool flag = false;
		CancelEventArgs e = new CancelEventArgs(cancel: false);
		if (SplashParent != null)
		{
			flag = SplashParent.BeforeSplashNotify(this);
		}
		if (!flag)
		{
			OnBeforeSplash(e);
			flag = e.Cancel;
			if (!flag)
			{
				WireChildEvents();
			}
		}
		return flag;
	}

	protected virtual void OnSplashDisplayed(EventArgs args)
	{
		if (this.SplashDisplayed != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(this.SplashDisplayed, this, args);
			}
			else
			{
				this.SplashDisplayed(this, args);
			}
		}
	}

	protected void RaiseSplashDisplayedEvent()
	{
		if (SplashParent != null)
		{
			SplashParent.SplashDisplayedNotify(this);
		}
		OnSplashDisplayed(EventArgs.Empty);
	}

	protected virtual void OnSplashClosing(CancelEventArgs args)
	{
		if (this.SplashClosing != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(this.SplashClosing, this, args);
			}
			else
			{
				this.SplashClosing(this, args);
			}
		}
	}

	[DocumentationExclude]
	protected bool RaiseSplashClosingEvent()
	{
		bool flag = false;
		CancelEventArgs e = new CancelEventArgs(cancel: false);
		if (SplashParent != null)
		{
			flag = SplashParent.SplashClosingNotify(this);
		}
		if (!flag)
		{
			OnSplashClosing(e);
			flag = e.Cancel;
		}
		return flag;
	}

	protected virtual void OnSplashClosed(SplashClosedEventArgs args)
	{
		if (this.SplashClosed != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(this.SplashClosed, this, args);
			}
			else
			{
				this.SplashClosed(this, args);
			}
		}
	}

	protected void RaiseSplashClosedEvent(SplashClosedEventArgs args)
	{
		if (SplashParent != null)
		{
			if (base.InvokeRequired)
			{
				SplashClosedNotifyHandler method = SplashParent.SplashClosedNotify;
				BeginInvoke(method, this, args.SplashCloseType);
			}
			else
			{
				SplashParent.SplashClosedNotify(this, args.SplashCloseType);
			}
		}
		OnSplashClosed(args);
	}

	protected void OnSplashMouseEnter(EventArgs args)
	{
		mouseEnter = true;
		if (this.SplashMouseEnter != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(this.SplashMouseEnter, this, args);
			}
			else
			{
				this.SplashMouseEnter(this, args);
			}
		}
	}

	protected void OnSplashMouseLeave(EventArgs args)
	{
		mouseEnter = false;
		if (this.SplashMouseLeave != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(this.SplashMouseLeave, this, args);
			}
			else
			{
				this.SplashMouseLeave(this, args);
			}
		}
	}

	[DocumentationExclude]
	protected override void OnMouseEnter(EventArgs e)
	{
		HandleMouseEnter();
		base.OnMouseEnter(e);
	}

	public void SuspendAutoCloseMode()
	{
		if (timerObject.Enabled)
		{
			StopTimer();
		}
	}

	public void RestoreAutoCloseMode()
	{
		if (!timerObject.Enabled)
		{
			StartTimer();
		}
	}

	[DocumentationExclude]
	protected override void OnMouseLeave(EventArgs e)
	{
		HandleMouseLeave();
		base.OnMouseLeave(e);
	}

	private void HandleMouseLeave()
	{
		mouseEnter = false;
		if (MouseInWindow() || !IsShowing())
		{
			return;
		}
		if (mouseOver)
		{
			if (suspendAutoCloseWhenMouseOver)
			{
				RestoreAutoCloseMode();
			}
			OnSplashMouseLeave(EventArgs.Empty);
		}
		mouseOver = false;
	}

	private void HandleMouseEnter()
	{
		mouseEnter = true;
		if (!MouseInWindow() || !IsShowing())
		{
			return;
		}
		if (!mouseOver)
		{
			if (suspendAutoCloseWhenMouseOver)
			{
				SuspendAutoCloseMode();
			}
			OnSplashMouseEnter(EventArgs.Empty);
		}
		mouseOver = true;
	}

	private void HandleChildMouseEnter(object sender, EventArgs e)
	{
		HandleMouseEnter();
	}

	private void HandleChildMouseLeave(object sender, EventArgs e)
	{
		HandleMouseLeave();
	}

	private void HandleChildMouseDown(object sender, MouseEventArgs e)
	{
		HandleMouseDown(e, child: true);
	}

	private void HandleChildMouseUp(object sender, MouseEventArgs e)
	{
		HandleMouseUp(e);
	}

	private void HandleChildMouseMove(object sender, MouseEventArgs e)
	{
		Point p = new Point(e.X, e.Y);
		Control control = sender as Control;
		Point p2 = control.PointToScreen(p);
		p = PointToClient(p2);
		MouseEventArgs mea = new MouseEventArgs(e.Button, e.Clicks, p.X, p.Y, e.Delta);
		HandleMouseMove(mea);
	}

	private bool MouseInWindow()
	{
		Point pt = PointToClient(Control.MousePosition);
		return base.ClientRectangle.Contains(pt);
	}

	[DocumentationExclude]
	protected void WireChildEvents()
	{
		foreach (Control control in base.Controls)
		{
			control.MouseEnter += HandleChildMouseEnter;
			control.MouseLeave += HandleChildMouseLeave;
			control.MouseDown += HandleChildMouseDown;
			control.MouseUp += HandleChildMouseUp;
			control.MouseMove += HandleChildMouseMove;
		}
	}

	[DocumentationExclude]
	protected void UnWireChildEvents()
	{
		foreach (Control control in base.Controls)
		{
			control.MouseLeave -= HandleChildMouseLeave;
			control.MouseEnter -= HandleChildMouseEnter;
			control.MouseDown -= HandleChildMouseDown;
			control.MouseUp -= HandleChildMouseUp;
			control.MouseMove -= HandleChildMouseMove;
		}
		StopTimer();
	}

	protected override void OnMouseDown(MouseEventArgs mea)
	{
		HandleMouseDown(mea, child: false);
		base.OnMouseDown(mea);
	}

	private void HandleMouseDown(MouseEventArgs mea, bool child)
	{
		if (AllowMove && !child)
		{
			base.Capture = true;
			bMoveDragging = true;
			mouseDown = new Point(mea.X, mea.Y);
		}
	}

	protected override void OnMouseUp(MouseEventArgs mea)
	{
		HandleMouseUp(mea);
		base.OnMouseUp(mea);
	}

	private void HandleMouseUp(MouseEventArgs mea)
	{
		base.Capture = false;
		bMoveDragging = false;
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		HandleMouseMove(mea);
		base.OnMouseMove(mea);
	}

	private void HandleMouseMove(MouseEventArgs mea)
	{
		if (bMoveDragging && SplashForm != null)
		{
			Point location = SplashForm.Location;
			location.X += mea.X - mouseDown.X;
			location.Y += mea.Y - mouseDown.Y;
			SplashForm.Location = location;
			wasMoved = true;
		}
	}

	internal int GetCurrentBorderArea(Point pt)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		Rectangle clientRectangle2 = base.ClientRectangle;
		clientRectangle2.Inflate(-1 * borderTestWith, -1 * borderTestHeight);
		if (clientRectangle.Contains(pt) && !clientRectangle2.Contains(pt))
		{
			if (new Rectangle(clientRectangle.X + clientRectangle.Width - borderTestWith, clientRectangle.Y, borderTestWith, borderTestHeight).Contains(pt))
			{
				return 14;
			}
			if (new Rectangle(clientRectangle.X + clientRectangle.Width - borderTestWith, clientRectangle.Y + borderTestHeight, borderTestWith, clientRectangle.Height - 2 * borderTestHeight).Contains(pt))
			{
				return 11;
			}
			if (new Rectangle(clientRectangle.X + clientRectangle.Width - borderTestWith, clientRectangle.Y + clientRectangle.Height - borderTestHeight, borderTestWith, borderTestHeight).Contains(pt))
			{
				return 17;
			}
			if (new Rectangle(clientRectangle.X + borderTestWith, clientRectangle.Y + clientRectangle.Height - borderTestHeight, clientRectangle.Width - 2 * borderTestWith, borderTestHeight).Contains(pt))
			{
				return 15;
			}
			if (new Rectangle(clientRectangle.X, clientRectangle.Y + clientRectangle.Height - borderTestHeight, borderTestWith, borderTestHeight).Contains(pt))
			{
				return 16;
			}
			if (new Rectangle(clientRectangle.X, clientRectangle.Y + borderTestHeight, borderTestWith, clientRectangle.Height - 2 * borderTestHeight).Contains(pt))
			{
				return 10;
			}
			if (new Rectangle(clientRectangle.X, clientRectangle.Y, borderTestWith, borderTestHeight).Contains(pt))
			{
				return 13;
			}
			if (new Rectangle(clientRectangle.X + borderTestWith, clientRectangle.Y, clientRectangle.Width - 2 * borderTestWith, borderTestHeight).Contains(pt))
			{
				return 12;
			}
		}
		return 0;
	}

	private Region GetRegionFromImage(Image backgroundImage, Color transparentColor)
	{
		Bitmap bitmap = new Bitmap(backgroundImage);
		Color color = Color.FromArgb(transparentColor.R, transparentColor.G, transparentColor.B);
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = bitmap.Height;
		int num2 = bitmap.Width;
		int num3 = 0;
		Rectangle rectangle = new Rectangle(0, 0, 0, 0);
		for (int i = 0; i < num; i++)
		{
			for (int j = 0; j < num2; j++)
			{
				if (bitmap.GetPixel(j, i) != color)
				{
					num3 = j;
					for (; j < num2 && bitmap.GetPixel(j, i) != color; j++)
					{
					}
					rectangle = new Rectangle(num3, i, j - num3, 1);
					graphicsPath.AddRectangle(rectangle);
				}
			}
		}
		Region result = new Region(graphicsPath);
		graphicsPath.Dispose();
		return result;
	}

	private bool ShouldSerializeText()
	{
		if (Text == string.Empty)
		{
			return false;
		}
		return true;
	}

	[DocumentationExclude]
	protected virtual void DrawBackground(Graphics g)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT rc = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
		if (Syncfusion.Runtime.InteropServices.NativeMethods.GetClientRect(base.Handle, ref rc))
		{
			Rectangle r = new Rectangle(rc.left, rc.top, rc.Width, rc.Height);
			BrushPaint.FillRectangle(g, r, BackgroundColor);
		}
	}

	private bool ShouldSerializeTransparentColor()
	{
		if (TransparentColor == Color.Empty)
		{
			return false;
		}
		return true;
	}

	private void ResetTransparentColor()
	{
		TransparentColor = Color.Empty;
	}

	public void RefreshRegionFromImage()
	{
		if (BackgroundImage != null)
		{
			formRegion = GetRegionFromImage(BackgroundImage, TransparentColor);
		}
	}

	[DocumentationExclude]
	protected override void OnPaintBackground(PaintEventArgs pe)
	{
		if (BackgroundImage == null)
		{
			if (BackgroundColor != null)
			{
				DrawBackground(pe.Graphics);
			}
			else
			{
				base.OnPaintBackground(pe);
			}
		}
		else
		{
			base.OnPaintBackground(pe);
		}
	}

	[DocumentationExclude]
	public void SplashFormDisplayedNotify()
	{
		StartTimer();
		RaiseSplashDisplayedEvent();
	}

	[DocumentationExclude]
	public void SplashFormClosedNotify()
	{
		UnWireChildEvents();
		RaiseSplashClosedEvent(new SplashClosedEventArgs(splashCloseType));
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public new void Show()
	{
		base.Show();
	}

	public bool IsShowing()
	{
		if (SplashWrapperForm != null)
		{
			return SplashWrapperForm.Visible;
		}
		return false;
	}

	public virtual void ShowSplash(Point location, Form ownerForm, bool disableOwner)
	{
		if (base.InvokeRequired)
		{
			Invoke(new ShowSplashDelegate(ShowSplash), location, ownerForm, disableOwner);
		}
		else
		{
			PrepareSplash(location, ownerForm);
			SplashWrapperForm.ShowSplash(disableOwner);
		}
	}

	public void ShowSplash()
	{
		ShowSplash(Point.Empty, null, disableOwner: false);
	}

	public DialogResult ShowDialogSplash(Point location, Form ownerForm)
	{
		if (!PrepareSplash(location, ownerForm))
		{
			return DialogResult.None;
		}
		return SplashWrapperForm.ShowDialogSplash();
	}

	public DialogResult ShowDialogSplash(Form ownerForm)
	{
		return ShowDialogSplash(Point.Empty, ownerForm);
	}

	private bool PrepareSplash(Point location, Form ownerForm)
	{
		if (base.InvokeRequired)
		{
			return (bool)Invoke(new PrepareSplashDelegate(PrepareSplash), location, ownerForm);
		}
		if (IsShowing())
		{
			return false;
		}
		if (SplashWrapperForm == null)
		{
			SplashWrapperForm = new WrapperForm(this);
		}
		else if (!SplashWrapperForm.Controls.Contains(this))
		{
			SplashWrapperForm.AttachSplash();
		}
		SplashWrapperForm.SplashWrapperFormOwner = ownerForm;
		if (RaiseBeforeSplashEvent())
		{
			return false;
		}
		discreetLocationValue = location;
		if (formRegion == null && BackgroundImage != null && TransparentColor != Color.Empty)
		{
			RefreshRegionFromImage();
		}
		if (formRegion != null)
		{
			SplashWrapperForm.Region = formRegion;
			SplashWrapperForm.CustomRegion = true;
			SplashWrapperForm.ComputeControlLocation();
		}
		return true;
	}

	public virtual void HideSplash(SplashCloseType splashCloseType, int delayInMilliseconds)
	{
		if (base.InvokeRequired)
		{
			Invoke(new HideSplashDelegate(HideSplash), splashCloseType, delayInMilliseconds);
		}
		else if (IsShowing())
		{
			timerObject.Stop();
			this.splashCloseType = splashCloseType;
			if (delayInMilliseconds > 0)
			{
				delayTimer.Interval = delayInMilliseconds;
				delayTimer.Elapsed += HandleDelayTimerElapsedEvent;
				delayTimer.Enabled = true;
				delayTimer.Start();
			}
			else
			{
				SplashWrapperForm.HideSplash();
			}
		}
	}

	public virtual void HideSplash(SplashCloseType splashCloseType)
	{
		HideSplash(splashCloseType, 0);
	}

	public virtual void HideSplash()
	{
		HideSplash(SplashCloseType.Canceled);
	}

	[DocumentationExclude]
	protected void StopTimer()
	{
		if (timerObject != null && IsShowing())
		{
			timerObject.Elapsed -= HandleTimerEvent;
			timerObject.Stop();
			timerObject.Close();
		}
	}

	[DocumentationExclude]
	protected void StartTimer()
	{
		if (TimerInterval != -1 && timerObject != null && !timerObject.Enabled)
		{
			timerObject.Elapsed += HandleTimerEvent;
			timerObject.Interval = timerIntervalValue;
			timerObject.Start();
		}
	}

	[DocumentationExclude]
	private void HandleTimerEvent(object sender, ElapsedEventArgs e)
	{
		bool flag = false;
		if (!RaiseSplashClosingEvent())
		{
			StopTimer();
			HideSplash(SplashCloseType.TimedOut);
		}
	}

	private void HandleDelayTimerElapsedEvent(object sender, ElapsedEventArgs e)
	{
		delayTimer.Stop();
		delayTimer.Enabled = false;
		SplashWrapperForm.HideSplash();
	}

	protected override void OnClick(EventArgs e)
	{
		HandleClick();
		base.OnClick(e);
	}

	private void HandleClick()
	{
		if (CloseOnClick && IsShowing())
		{
			if (wasMoved)
			{
				wasMoved = false;
			}
			else
			{
				HideSplash();
			}
		}
	}
}
