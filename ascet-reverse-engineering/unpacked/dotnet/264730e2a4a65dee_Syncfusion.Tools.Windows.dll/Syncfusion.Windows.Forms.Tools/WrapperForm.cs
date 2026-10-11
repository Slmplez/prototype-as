using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

internal class WrapperForm : Form
{
	private delegate void SetBoundsDelegate(int x, int y, int width, int height);

	private delegate void SetDimensionDelegate(int dimension);

	private delegate void SetDoubleDelegate(double dblVal);

	private delegate void SetBoolDelegate(bool val);

	private const int c_iBordersIndent = 4;

	private const int c_iMinAnimationSize = 1;

	private const double c_dFadeAnimationDelay = 200.0;

	private int borderGap;

	private ISplashWrapperFormListener splashFormListener;

	private int preferredWidth;

	private int preferredHeight;

	private Timer animationTimer;

	private Timer hideAnimationTimer;

	private SplashPanel splashPanel;

	private SlideStyle slideStyle = SlideStyle.Default;

	private Form splashWrapperFormOwner;

	private DialogResult dialogResult;

	private bool customRegion;

	private bool m_bInitializing;

	private Rectangle m_rcRegion;

	private int increment;

	private bool incre = true;

	private int inc;

	public ISplashWrapperFormListener SplashWrapperFormListener => splashFormListener;

	public bool CustomRegion
	{
		set
		{
			customRegion = value;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 128;
			return createParams;
		}
	}

	public override Size MinimumSize
	{
		get
		{
			if (hideAnimationTimer != null && hideAnimationTimer.Enabled)
			{
				return Size.Empty;
			}
			return base.MinimumSize;
		}
		set
		{
			base.MinimumSize = value;
		}
	}

	private SplashPanel SplashPanel
	{
		get
		{
			return splashPanel;
		}
		set
		{
			splashPanel = value;
			splashFormListener = value;
		}
	}

	[Browsable(false)]
	public Form SplashWrapperFormOwner
	{
		get
		{
			return splashWrapperFormOwner;
		}
		set
		{
			splashWrapperFormOwner = value;
		}
	}

	private Rectangle RegionBounds
	{
		get
		{
			if (m_rcRegion.IsEmpty)
			{
				return new Rectangle(Point.Empty, base.Size);
			}
			return m_rcRegion;
		}
		set
		{
			if (m_rcRegion != value)
			{
				m_rcRegion = value;
				base.Region = (m_rcRegion.IsEmpty ? null : new Region(m_rcRegion));
			}
		}
	}

	public WrapperForm(SplashPanel splashPanel)
	{
		m_bInitializing = true;
		Control control = splashPanel.Parent;
		borderGap = 4;
		SplashPanel = splashPanel;
		splashFormListener = splashPanel;
		preferredWidth = splashPanel.Width;
		preferredHeight = splashPanel.Height;
		AttachSplash();
		SetStyle(ControlStyles.StandardClick | ControlStyles.StandardDoubleClick, value: false);
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.ContainerControl, value: true);
		SetBorderStyle();
		BackColor = splashPanel.BackColor;
		base.ShowInTaskbar = splashPanel.ShowInTaskbar;
		base.Icon = splashPanel.FormIcon;
		Text = splashPanel.Text;
		if (control != null)
		{
			Font = control.Font;
			ForeColor = control.ForeColor;
			BackColor = control.BackColor;
			RightToLeft = control.RightToLeft;
			BindingContext = control.BindingContext;
			if (control is Form form)
			{
				RightToLeftLayout = form.RightToLeftLayout;
			}
		}
		base.TabStop = false;
		base.HScroll = false;
		base.VScroll = false;
		base.ControlBox = false;
		base.Location = new Point(-1000, -1000);
		base.StartPosition = FormStartPosition.Manual;
		animationTimer = new Timer();
		animationTimer.Interval = SplashPanel.AnimationInterval;
		animationTimer.Tick += HandleAnimationTimer;
		hideAnimationTimer = new Timer();
		hideAnimationTimer.Interval = 50;
		hideAnimationTimer.Tick += HandleHideAnimationTimer;
		animationTimer.Enabled = false;
		hideAnimationTimer.Enabled = false;
		base.TopLevel = true;
		base.Visible = false;
		MinimumSize = new Size(20, 20);
		m_bInitializing = false;
	}

	protected virtual void SetBorderStyle()
	{
		base.FormBorderStyle = FormBorderStyle.None;
	}

	protected override void OnDeactivate(EventArgs e)
	{
		if (SplashPanel.CloseOnLostFocus && SplashPanel.IsShowing())
		{
			splashPanel.HideSplash();
		}
		base.OnDeactivate(e);
	}

	[DocumentationExclude]
	protected override void OnPaint(PaintEventArgs pe)
	{
		base.OnPaint(pe);
		if (!customRegion && SplashPanel.BorderType == SplashBorderType.Border3D)
		{
			Draw3DBorder(pe.Graphics, SplashPanel.BorderStyle);
		}
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		if (!m_bInitializing)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			if (!customRegion && SplashPanel.BorderType == SplashBorderType.Border3D)
			{
				int num = borderGap / 2;
				clientRectangle.Inflate(-num, -num);
			}
			SplashPanel.Bounds = clientRectangle;
		}
		base.OnSizeChanged(e);
	}

	[DocumentationExclude]
	protected virtual void Draw3DBorder(Graphics g, Border3DStyle border3DStyleValue)
	{
		ControlPaint.DrawBorder3D(g, base.ClientRectangle, border3DStyleValue, Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom);
	}

	public virtual void ShowSplash(bool disableOwner)
	{
		PrepareSplash();
		SplashWindowShowMode mode = SplashWindowShowMode.Modeless;
		if (disableOwner && SplashWrapperFormOwner != null)
		{
			mode = SplashWindowShowMode.DisableOwner;
		}
		if (SplashPanel.ShowAnimation)
		{
			ShowWindowAnimated(mode);
		}
		else
		{
			ShowWindow(mode);
		}
	}

	public DialogResult ShowDialogSplash()
	{
		PrepareSplash();
		if (SplashPanel.ShowAnimation)
		{
			ShowWindowAnimated(SplashWindowShowMode.Modal);
		}
		else
		{
			ShowWindow(SplashWindowShowMode.Modal);
		}
		return dialogResult;
	}

	private void PrepareSplash()
	{
		ComputeMySize();
		if (SplashPanel.SlideStyle == SlideStyle.Slide && (SplashPanel.DesktopAlignment == SplashAlignment.RightBottom || SplashPanel.DesktopAlignment == SplashAlignment.SystemTray || SplashPanel.DesktopAlignment == SplashAlignment.LeftBottom || (SplashPanel.DesktopAlignment == SplashAlignment.RightTop && GetAppbarPosition() == 1) || (SplashPanel.DesktopAlignment == SplashAlignment.LeftTop && GetAppbarPosition() == 1)))
		{
			base.Region = new Region(new Rectangle(0, 0, 0, 0));
			increment = 0;
		}
		base.Location = GetDisplayLocation(SplashPanel.DesktopAlignment);
		SplashPanel.BringToFront();
		SplashPanel.Show();
	}

	public void AdjustSize()
	{
		if (base.InvokeRequired)
		{
			Invoke(new MethodInvoker(AdjustSizeInternal));
		}
		else
		{
			AdjustSizeInternal();
		}
	}

	protected void AdjustSizeInternal()
	{
		ComputeControlLocation();
		ComputeMySize();
	}

	[DocumentationExclude]
	internal virtual void ComputeControlLocation()
	{
		if (!customRegion && SplashPanel.BorderType == SplashBorderType.Border3D)
		{
			SplashPanel.Location = new Point(borderGap / 2, borderGap / 2);
		}
		else
		{
			SplashPanel.Location = new Point(0, 0);
		}
	}

	[DocumentationExclude]
	protected void ShowWindow(SplashWindowShowMode mode)
	{
		SplashPanel.BringToFront();
		SplashPanel.Visible = true;
		switch (mode)
		{
		case SplashWindowShowMode.Modeless:
			ShowOptimized();
			if (!SplashPanel.ShowAsTopMost)
			{
				Activate();
			}
			SplashWrapperFormListener.SplashFormDisplayedNotify();
			break;
		case SplashWindowShowMode.DisableOwner:
			SplashWrapperFormOwner.Visible = true;
			SplashWrapperFormOwner.Enabled = false;
			ShowOptimized();
			if (!SplashPanel.ShowAsTopMost)
			{
				Activate();
			}
			SplashWrapperFormListener.SplashFormDisplayedNotify();
			break;
		case SplashWindowShowMode.Modal:
			SplashWrapperFormListener.SplashFormDisplayedNotify();
			ShowDialogOptimized(SplashWrapperFormOwner);
			break;
		}
	}

	private void ShowOptimized()
	{
		Point location = base.Location;
		Point location2 = new Point(-1000, -1000);
		base.Location = location2;
		Show();
		base.Location = location;
	}

	private void ShowDialogOptimized(IWin32Window owner)
	{
		dialogResult = ShowDialog(owner);
	}

	[DocumentationExclude]
	protected void ShowWindowAnimated(SplashWindowShowMode mode)
	{
		hideAnimationTimer.Enabled = false;
		slideStyle = GetSlideStyle(SplashPanel.DesktopAlignment);
		if (SplashPanel.SlideStyle != SlideStyle.Slide)
		{
			switch (slideStyle)
			{
			case SlideStyle.Horizontal:
			case SlideStyle.LeftToRight:
				RegionBounds = new Rectangle(0, 0, 0, base.Height);
				break;
			default:
				RegionBounds = new Rectangle(0, base.Height - 4, base.Width, 4);
				break;
			case SlideStyle.TopToBottom:
				RegionBounds = new Rectangle(0, 0, base.Width, 0);
				break;
			case SlideStyle.RightToLeft:
				RegionBounds = new Rectangle(base.Width - 4, 0, 4, base.Height);
				break;
			case SlideStyle.FadeIn:
				base.Opacity = 0.0;
				break;
			}
		}
		else if (SplashPanel.SlideStyle == SlideStyle.Slide)
		{
			switch (SplashPanel.DesktopAlignment)
			{
			case SplashAlignment.LeftBottom:
				base.Region = new Region(new Rectangle(0, 0, 0, 0));
				break;
			case SplashAlignment.RightBottom:
				base.Region = new Region(new Rectangle(0, 0, 0, 0));
				break;
			case SplashAlignment.SystemTray:
				base.Region = new Region(new Rectangle(0, 0, 0, 0));
				break;
			}
		}
		animationTimer.Enabled = true;
		animationTimer.Start();
		switch (mode)
		{
		case SplashWindowShowMode.Modeless:
			Show();
			break;
		case SplashWindowShowMode.DisableOwner:
			SplashWrapperFormOwner.Visible = true;
			SplashWrapperFormOwner.Enabled = false;
			Show();
			break;
		case SplashWindowShowMode.Modal:
			ShowDialogOptimized(SplashWrapperFormOwner);
			break;
		}
	}

	protected new void Show()
	{
		SetVisibleNoActivate(visible: true);
	}

	internal void ShowForm(IntPtr handle, Point location, Size size)
	{
		IntPtr hWndInsertAfter = (IntPtr)(-2);
		int num = 64;
		if (SplashPanel.ShowAsTopMost)
		{
			hWndInsertAfter = (IntPtr)(-1);
			num |= 0x10;
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SetWindowPos(handle, hWndInsertAfter, location.X, location.Y, size.Width, size.Height, num);
	}

	protected void SetVisibleNoActivate(bool visible)
	{
		if (visible)
		{
			ShowForm(base.Handle, base.Location, base.Size);
			base.Visible = true;
		}
		else
		{
			base.Visible = false;
		}
	}

	private void HandleAnimationTimer(object sender, EventArgs e)
	{
		try
		{
			if (!animationTimer.Enabled)
			{
				return;
			}
			int animationSpeed = SplashPanel.AnimationSpeed;
			if (SplashPanel.SlideStyle != SlideStyle.Slide)
			{
				switch (slideStyle)
				{
				case SlideStyle.Horizontal:
				case SlideStyle.LeftToRight:
				{
					int num = RegionBounds.Width + animationSpeed;
					if (num < preferredWidth)
					{
						RegionBounds = new Rectangle(0, 0, num, base.Height);
						break;
					}
					RegionBounds = Rectangle.Empty;
					animationTimer.Stop();
					break;
				}
				default:
				{
					int num4 = RegionBounds.Height + animationSpeed;
					if (num4 < preferredHeight)
					{
						RegionBounds = new Rectangle(0, base.Height - num4, base.Width, num4);
						break;
					}
					RegionBounds = Rectangle.Empty;
					animationTimer.Stop();
					break;
				}
				case SlideStyle.TopToBottom:
				{
					int num2 = RegionBounds.Height + animationSpeed;
					if (num2 < preferredHeight)
					{
						RegionBounds = new Rectangle(0, 0, base.Width, num2);
						break;
					}
					RegionBounds = Rectangle.Empty;
					animationTimer.Stop();
					break;
				}
				case SlideStyle.RightToLeft:
				{
					int num3 = RegionBounds.Width + animationSpeed;
					if (num3 < preferredWidth)
					{
						RegionBounds = new Rectangle(base.Width - num3, 0, num3, base.Height);
						break;
					}
					RegionBounds = Rectangle.Empty;
					animationTimer.Stop();
					break;
				}
				case SlideStyle.FadeIn:
					if (base.Opacity < 1.0)
					{
						base.Opacity += (double)animationSpeed / 200.0;
						break;
					}
					base.Opacity = 1.0;
					animationTimer.Stop();
					break;
				}
			}
			else if (SplashPanel.SlideStyle == SlideStyle.Slide)
			{
				animationSpeed = 1;
				Rectangle workingArea = Screen.GetWorkingArea(this);
				switch (SplashPanel.DesktopAlignment)
				{
				case SplashAlignment.RightBottom:
					if (base.Bottom > workingArea.Bottom + animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - (base.Bottom - workingArea.Bottom), base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				case SplashAlignment.SystemTray:
					if (GetAppbarPosition() != 1)
					{
						if (base.Bottom > workingArea.Bottom + animationSpeed)
						{
							increment += animationSpeed;
							base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
							base.Region = new Region(new Rectangle(0, 0, base.Width, increment));
						}
						else
						{
							increment += animationSpeed;
							base.Bounds = new Rectangle(base.Left, base.Top - (base.Bottom - workingArea.Bottom), base.Width, base.Height);
							base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
							animationTimer.Stop();
						}
					}
					else if (base.Top < workingArea.Top - animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, base.Height - increment, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						if (base.Top != workingArea.Top)
						{
							base.Bounds = new Rectangle(base.Left, workingArea.Top, base.Width, base.Height);
						}
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				case SplashAlignment.RightTop:
					if (GetAppbarPosition() != 1)
					{
						if (base.Top < workingArea.Y - animationSpeed)
						{
							base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
							break;
						}
						if (base.Top != workingArea.Top)
						{
							base.Bounds = new Rectangle(base.Left, workingArea.Top, base.Width, base.Height);
						}
						animationTimer.Stop();
					}
					else if (base.Top < workingArea.Top - animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, base.Height - increment, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						if (base.Top != workingArea.Top)
						{
							base.Bounds = new Rectangle(base.Left, workingArea.Top, base.Width, base.Height);
						}
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				case SplashAlignment.LeftBottom:
					if (base.Bottom > workingArea.Bottom + animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - (base.Bottom - workingArea.Bottom), base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				case SplashAlignment.LeftTop:
					if (GetAppbarPosition() != 1)
					{
						if (base.Top < workingArea.Y - animationSpeed)
						{
							base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
							break;
						}
						if (base.Top != workingArea.Top)
						{
							base.Bounds = new Rectangle(base.Left, workingArea.Top, base.Width, base.Height);
						}
						animationTimer.Stop();
					}
					else if (base.Top < workingArea.Top - animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, base.Height - increment, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						if (base.Top != workingArea.Top)
						{
							base.Bounds = new Rectangle(base.Left, workingArea.Top, base.Width, base.Height);
						}
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				case SplashAlignment.Center:
					animationTimer.Stop();
					break;
				case SplashAlignment.Custom:
					animationTimer.Stop();
					break;
				default:
					if (base.Bottom > workingArea.Bottom + animationSpeed)
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, increment));
					}
					else
					{
						increment += animationSpeed;
						base.Bounds = new Rectangle(base.Left, base.Top - (base.Bottom - workingArea.Bottom), base.Width, base.Height);
						base.Region = new Region(new Rectangle(0, 0, base.Width, base.Height));
						animationTimer.Stop();
					}
					break;
				}
			}
			Invalidate(base.ClientRectangle, invalidateChildren: false);
			if (!animationTimer.Enabled)
			{
				SplashWrapperFormListener.SplashFormDisplayedNotify();
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine(ex.ToString());
		}
	}

	private void SetWidth(int width)
	{
		base.Width = width;
	}

	private void SetTop(int top)
	{
		base.Top = top;
	}

	private void SetHeight(int height)
	{
		base.Height = height;
	}

	private void SetLeft(int left)
	{
		base.Left = left;
	}

	private void SetVisible(bool visible)
	{
		base.Visible = visible;
	}

	private void SetOpacity(double opacity)
	{
		base.Opacity = opacity;
	}

	private void HandleHideAnimationTimer(object sender, EventArgs e)
	{
		bool flag = splashPanel.mouseEnter && splashPanel.SuspendAutoCloseWhenMouseOver;
		if (!hideAnimationTimer.Enabled || flag)
		{
			return;
		}
		int animationSpeed = SplashPanel.AnimationSpeed;
		if (SplashPanel.SlideStyle != SlideStyle.Slide)
		{
			switch (slideStyle)
			{
			case SlideStyle.Horizontal:
			case SlideStyle.LeftToRight:
			{
				int num = RegionBounds.Width - animationSpeed;
				if (num > 1)
				{
					RegionBounds = new Rectangle(0, 0, num, base.Height);
					break;
				}
				base.Visible = false;
				RegionBounds = Rectangle.Empty;
				hideAnimationTimer.Stop();
				break;
			}
			default:
			{
				int num4 = RegionBounds.Height - animationSpeed;
				if (num4 > 1)
				{
					RegionBounds = new Rectangle(0, base.Height - num4, base.Width, num4);
					break;
				}
				base.Visible = false;
				RegionBounds = Rectangle.Empty;
				hideAnimationTimer.Stop();
				break;
			}
			case SlideStyle.TopToBottom:
			{
				int num2 = RegionBounds.Height - animationSpeed;
				if (num2 > 1)
				{
					RegionBounds = new Rectangle(0, 0, base.Width, num2);
					break;
				}
				base.Visible = false;
				RegionBounds = Rectangle.Empty;
				hideAnimationTimer.Stop();
				break;
			}
			case SlideStyle.RightToLeft:
			{
				int num3 = RegionBounds.Width - animationSpeed;
				if (num3 > 1)
				{
					RegionBounds = new Rectangle(base.Width - num3, 0, num3, base.Height);
					break;
				}
				base.Visible = false;
				RegionBounds = Rectangle.Empty;
				hideAnimationTimer.Stop();
				break;
			}
			case SlideStyle.FadeIn:
				if (base.Opacity > 0.0)
				{
					base.Opacity -= (double)animationSpeed / 200.0;
					break;
				}
				base.Visible = false;
				base.Opacity = 1.0;
				hideAnimationTimer.Stop();
				break;
			}
		}
		else if (SplashPanel.SlideStyle == SlideStyle.Slide)
		{
			animationSpeed = 1;
			Rectangle workingArea = Screen.GetWorkingArea(this);
			switch (SplashPanel.DesktopAlignment)
			{
			case SplashAlignment.RightBottom:
				if (base.Top <= workingArea.Bottom)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					base.Region = new Region(new Rectangle(0, 0, base.Width, inc));
					base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			case SplashAlignment.SystemTray:
				if (GetAppbarPosition() != 1)
				{
					if (base.Top <= workingArea.Bottom)
					{
						if (incre)
						{
							increment -= animationSpeed;
							inc = increment;
						}
						else
						{
							increment -= animationSpeed;
							inc -= animationSpeed;
						}
						if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
						{
							inc = increment + base.Height % animationSpeed - animationSpeed;
							incre = false;
						}
						base.Region = new Region(new Rectangle(0, 0, base.Width, inc));
						base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
					}
					else
					{
						base.Region = new Region(new Rectangle(0, 0, 0, 0));
						base.Visible = false;
						hideAnimationTimer.Stop();
						increment = 0;
						incre = true;
						inc = 0;
					}
				}
				else if (base.Bottom > workingArea.Top)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					if (inc < base.Height)
					{
						base.Region = new Region(new Rectangle(0, base.Height - inc, base.Width, inc));
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
					}
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			case SplashAlignment.RightTop:
				if (GetAppbarPosition() != 1)
				{
					if (base.Bottom >= workingArea.Y)
					{
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
						break;
					}
					base.Visible = false;
					hideAnimationTimer.Stop();
				}
				else if (base.Bottom > workingArea.Top)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					if (inc < base.Height)
					{
						base.Region = new Region(new Rectangle(0, base.Height - inc, base.Width, inc));
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
					}
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			case SplashAlignment.LeftBottom:
				if (base.Top <= workingArea.Bottom)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					base.Region = new Region(new Rectangle(0, 0, base.Width, inc));
					base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			case SplashAlignment.LeftTop:
				if (GetAppbarPosition() != 1)
				{
					if (base.Bottom >= workingArea.Y)
					{
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
						break;
					}
					base.Visible = false;
					hideAnimationTimer.Stop();
				}
				else if (base.Bottom > workingArea.Top)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					if (inc < base.Height)
					{
						base.Region = new Region(new Rectangle(0, base.Height - inc, base.Width, inc));
						base.Bounds = new Rectangle(base.Left, base.Top - animationSpeed, base.Width, base.Height);
					}
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			case SplashAlignment.Center:
				base.Visible = false;
				hideAnimationTimer.Stop();
				break;
			case SplashAlignment.Custom:
				base.Visible = false;
				hideAnimationTimer.Stop();
				break;
			default:
				if (base.Top <= workingArea.Bottom)
				{
					if (incre)
					{
						increment -= animationSpeed;
						inc = increment;
					}
					else
					{
						increment -= animationSpeed;
						inc -= animationSpeed;
					}
					if (base.Height - increment != animationSpeed && increment >= base.Height - animationSpeed)
					{
						inc = increment + base.Height % animationSpeed - animationSpeed;
						incre = false;
					}
					base.Region = new Region(new Rectangle(0, 0, base.Width, inc));
					base.Bounds = new Rectangle(base.Left, base.Top + animationSpeed, base.Width, base.Height);
				}
				else
				{
					base.Region = new Region(new Rectangle(0, 0, 0, 0));
					base.Visible = false;
					hideAnimationTimer.Stop();
					increment = 0;
					incre = true;
					inc = 0;
				}
				break;
			}
		}
		Invalidate(base.ClientRectangle, invalidateChildren: false);
		if (!hideAnimationTimer.Enabled)
		{
			SplashWrapperFormListener.SplashFormClosedNotify();
		}
	}

	[DocumentationExclude]
	protected void HideWindow()
	{
		Hide();
		if (SplashWrapperFormOwner != null && !SplashWrapperFormOwner.Enabled)
		{
			SplashWrapperFormOwner.Enabled = true;
		}
		SplashWrapperFormListener.SplashFormClosedNotify();
	}

	private SlideStyle GetSlideStyle(SplashAlignment desktopAlignment)
	{
		SlideStyle slideStyle = SplashPanel.SlideStyle;
		if (slideStyle == SlideStyle.Default)
		{
			slideStyle = desktopAlignment switch
			{
				SplashAlignment.LeftBottom => SlideStyle.Horizontal, 
				SplashAlignment.LeftTop => SlideStyle.Horizontal, 
				SplashAlignment.RightBottom => SlideStyle.Vertical, 
				SplashAlignment.RightTop => SlideStyle.Vertical, 
				SplashAlignment.SystemTray => GetAppbarPosition() switch
				{
					0 => SlideStyle.Horizontal, 
					2 => SlideStyle.Horizontal, 
					1 => SlideStyle.Vertical, 
					3 => SlideStyle.Vertical, 
					_ => SlideStyle.Vertical, 
				}, 
				_ => SlideStyle.Horizontal, 
			};
		}
		return slideStyle;
	}

	private int GetAppbarPosition()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.APPBARDATA pData = default(Syncfusion.Runtime.InteropServices.NativeMethods.APPBARDATA);
		pData.cbSize = Marshal.SizeOf((object)pData);
		if (Syncfusion.Runtime.InteropServices.NativeMethods.SHAppBarMessage(5, ref pData) > 0)
		{
			return pData.uEdge;
		}
		return 3;
	}

	private Point GetDisplayLocation(SplashAlignment desktopAlignment)
	{
		Point result = new Point(10, 10);
		Control ctl = ((SplashWrapperFormOwner != null) ? SplashWrapperFormOwner : this);
		Rectangle workingArea = Screen.GetWorkingArea(ctl);
		if (SplashPanel.SlideStyle != SlideStyle.Slide)
		{
			switch (desktopAlignment)
			{
			case SplashAlignment.Center:
				result = new Point(workingArea.X + (workingArea.Width - base.Width) / 2, workingArea.Y + (workingArea.Height - base.Height) / 2);
				break;
			case SplashAlignment.SystemTray:
				result = GetAppbarPosition() switch
				{
					0 => new Point(workingArea.X + 10, workingArea.Y + workingArea.Height - base.Height), 
					2 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + workingArea.Height - base.Height), 
					1 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + 10), 
					3 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + workingArea.Height - base.Height), 
					_ => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + workingArea.Height - base.Height), 
				};
				break;
			case SplashAlignment.LeftBottom:
				result = new Point(workingArea.X + 10, workingArea.Y + workingArea.Height - base.Height);
				break;
			case SplashAlignment.LeftTop:
				result = new Point(workingArea.X + 10, workingArea.Y + 10);
				break;
			case SplashAlignment.RightBottom:
				result = new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + workingArea.Height - base.Height);
				break;
			case SplashAlignment.RightTop:
				result = new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y + 10);
				break;
			case SplashAlignment.Custom:
				return SplashPanel.DiscreetLocation;
			default:
				result = new Point(workingArea.X + (workingArea.Width - base.Width) / 2, workingArea.Y + (workingArea.Height - base.Height) / 2);
				break;
			}
		}
		else if (SplashPanel.SlideStyle == SlideStyle.Slide)
		{
			switch (desktopAlignment)
			{
			case SplashAlignment.Center:
				result = new Point(workingArea.X + (workingArea.Width - base.Width) / 2, workingArea.Y + (workingArea.Height - base.Height) / 2);
				break;
			case SplashAlignment.SystemTray:
				result = GetAppbarPosition() switch
				{
					0 => new Point(workingArea.X + 10, workingArea.Height), 
					2 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Height), 
					1 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y - base.Height), 
					3 => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Height), 
					_ => new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Height), 
				};
				break;
			case SplashAlignment.RightBottom:
				result = new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Bottom);
				break;
			case SplashAlignment.RightTop:
				result = new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Y - base.Height);
				break;
			case SplashAlignment.LeftBottom:
				result = new Point(workingArea.X + 10, workingArea.Bottom);
				break;
			case SplashAlignment.LeftTop:
				result = new Point(workingArea.X + 10, workingArea.Y - base.Height);
				break;
			case SplashAlignment.Custom:
				return SplashPanel.DiscreetLocation;
			default:
				result = new Point(workingArea.X + workingArea.Width - base.Width - 10, workingArea.Height);
				break;
			}
		}
		return result;
	}

	[DocumentationExclude]
	internal virtual void AttachSplash()
	{
		try
		{
			if (SplashPanel != null)
			{
				base.Controls.Add(SplashPanel);
				ComputeControlLocation();
			}
		}
		catch
		{
		}
	}

	protected virtual void ComputeMySize()
	{
		Size computedSize = GetComputedSize(SplashPanel.Size);
		if (base.Size != computedSize)
		{
			base.Size = computedSize;
		}
	}

	protected Size GetComputedSizeInternal(Size controlSize)
	{
		Size result = controlSize;
		if (!customRegion && SplashPanel.BorderType == SplashBorderType.Border3D)
		{
			result += new Size(borderGap, borderGap);
		}
		return result;
	}

	internal Size GetComputedSize(Size controlSize)
	{
		if (base.InvokeRequired)
		{
			return (Size)Invoke(new GetComputedSizeEventHandler(GetComputedSizeInternal), controlSize);
		}
		return GetComputedSizeInternal(controlSize);
	}

	public void HideSplash()
	{
		if (base.InvokeRequired)
		{
			Invoke(new MethodInvoker(HideSplashInternal));
		}
		else
		{
			HideSplashInternal();
		}
	}

	protected virtual void HideSplashInternal()
	{
		if (SplashPanel.ShowAnimation)
		{
			HideWindowAnimated();
		}
		else
		{
			HideWindow();
		}
	}

	private void HideWindowAnimated()
	{
		animationTimer.Stop();
		hideAnimationTimer.Start();
		if (SplashWrapperFormOwner != null && !SplashWrapperFormOwner.Enabled)
		{
			SplashWrapperFormOwner.Enabled = true;
		}
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 10:
			Syncfusion.Runtime.InteropServices.NativeMethods.EnableWindow(base.Handle, enable: true);
			break;
		case 131:
			m.Result = ((m.WParam == IntPtr.Zero) ? IntPtr.Zero : ((IntPtr)768));
			return;
		case 20:
			m.Result = (IntPtr)1;
			return;
		case 132:
		{
			SplashPanel splashPanel = SplashPanel;
			if (splashPanel != null && splashPanel.AllowResize)
			{
				int num = Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam);
				int num2 = Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(m.LParam);
				Point pt = splashPanel.PointToClient(new Point(num, num2));
				int currentBorderArea = splashPanel.GetCurrentBorderArea(pt);
				if (currentBorderArea != 0)
				{
					m.Result = (IntPtr)currentBorderArea;
					return;
				}
			}
			break;
		}
		}
		base.WndProc(ref m);
	}
}
