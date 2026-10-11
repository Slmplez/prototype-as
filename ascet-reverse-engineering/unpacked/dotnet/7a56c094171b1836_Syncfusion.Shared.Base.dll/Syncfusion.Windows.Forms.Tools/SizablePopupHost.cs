using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class SizablePopupHost : PopupHost
{
	private const int c_nMinBoundsWidth = 100;

	private const int c_nMinBoundsHeight = 100;

	private const int c_nOffsetY = 34;

	private Label gripperLabel;

	private CloseButton closeBtn;

	private Control childControl;

	private Size currentSize;

	private bool isResizing;

	private Rectangle hostRect;

	private bool isInitialized;

	private Size lastSize;

	private bool m_bShowGripper = true;

	private bool m_bShowCloseButton = true;

	public Size LastSize
	{
		get
		{
			return lastSize;
		}
		set
		{
			if (lastSize != value)
			{
				lastSize = value;
			}
		}
	}

	public bool ShowCloseButton
	{
		get
		{
			return m_bShowCloseButton;
		}
		set
		{
			if (value != m_bShowCloseButton)
			{
				m_bShowCloseButton = value;
				closeBtn.Visible = m_bShowCloseButton;
			}
		}
	}

	public bool ShowGripper
	{
		get
		{
			return m_bShowGripper;
		}
		set
		{
			if (value != m_bShowGripper)
			{
				m_bShowGripper = value;
				gripperLabel.Visible = m_bShowGripper;
			}
		}
	}

	public SizablePopupHost(Control childControl)
	{
		isInitialized = false;
		this.childControl = childControl;
		gripperLabel = new Label();
		closeBtn = new CloseButton();
		hostRect = Rectangle.Empty;
		currentSize = Size.Empty;
		isResizing = false;
		lastSize = Size.Empty;
		BackColor = this.childControl.BackColor;
		InitializeComponent();
	}

	~SizablePopupHost()
	{
		Dispose(disposing: false);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (childControl != null)
			{
				childControl.Dispose();
				childControl = null;
			}
			if (gripperLabel != null)
			{
				gripperLabel.Dispose();
				gripperLabel = null;
			}
			if (closeBtn != null)
			{
				closeBtn.Dispose();
				closeBtn = null;
			}
		}
		base.Dispose(disposing);
	}

	public override void HidePopup()
	{
		if (isResizing)
		{
			ProcessGripperDragRelease(bCanceled: true);
		}
		lastSize = base.Size;
		base.HidePopup();
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.ResumeLayout(false);
	}

	protected override void ComputeMySize()
	{
		base.FormBorderStyle = FormBorderStyle.None;
		SizablePopupControlContainer sizablePopupControlContainer = (SizablePopupControlContainer)base.PopupControlContainer;
		bool flag = !isInitialized;
		if (flag || sizablePopupControlContainer.FitToChildControlSize)
		{
			childControl.Location = Point.Empty;
			int num = ((ShowGripper || ShowCloseButton) ? 34 : 0);
			sizablePopupControlContainer.Dock = DockStyle.None;
			childControl.Dock = DockStyle.None;
			sizablePopupControlContainer.Height = childControl.Height + num;
			if (!sizablePopupControlContainer.Visible)
			{
				childControl.Height = sizablePopupControlContainer.Height - num;
			}
			sizablePopupControlContainer.Width = sizablePopupControlContainer.GetPreferredSize(Size.Empty).Width;
		}
		if (flag)
		{
			NativeMethods.GetSystemMetrics(2);
			sizablePopupControlContainer.BorderStyle = BorderStyle.FixedSingle;
			gripperLabel.Location = new Point(sizablePopupControlContainer.Width - 24, sizablePopupControlContainer.Height - 24);
			sizablePopupControlContainer.Controls.Add(gripperLabel);
			gripperLabel.Font = FontUtil.CreateFont("Marlett", 15.75f, FontStyle.Regular);
			gripperLabel.Text = "p";
			gripperLabel.Height = 24;
			gripperLabel.Width = 32;
			gripperLabel.Cursor = Cursors.SizeNWSE;
			childControl.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
			closeBtn.Location = new Point(2, sizablePopupControlContainer.Height - 20);
			closeBtn.Width = 16;
			closeBtn.Height = 16;
			closeBtn.FlatStyle = FlatStyle.Flat;
			closeBtn.TextAlign = ContentAlignment.MiddleCenter;
			sizablePopupControlContainer.Controls.Add(closeBtn);
			closeBtn.Text = "x";
			closeBtn.MouseEnter += HandleCloseBtnMouseEnter;
			closeBtn.MouseLeave += HandleCloseBtnMouseLeave;
			closeBtn.Click += HandleCloseBtnClick;
			gripperLabel.MouseMove += HandleGripperMouseMove;
			gripperLabel.MouseDown += HandleGripperMouseDown;
			gripperLabel.MouseUp += HandleGripperMouseUp;
			currentSize = base.ClientRectangle.Size;
			isInitialized = true;
		}
		base.ComputeMySize();
		int num2 = 3;
		Size size = new Size(base.Size.Width, base.Size.Height + num2);
		if (sizablePopupControlContainer.FitToChildControlSize)
		{
			base.Size = size;
		}
		if (lastSize != Size.Empty && !sizablePopupControlContainer.FitToChildControlSize)
		{
			base.Size = lastSize;
		}
		UpdateControlLayout(sizablePopupControlContainer, flag);
		childControl.Dock = DockStyle.Top;
		sizablePopupControlContainer.Dock = DockStyle.Fill;
	}

	private void UpdateControlLayout(SizablePopupControlContainer childContainer, bool bFirstTime)
	{
		bool isMirrored = GetIsMirrored();
		Size size = childContainer.Size;
		int num = 0;
		int num2 = 0;
		if (isMirrored)
		{
			num = -6;
			gripperLabel.Text = "y";
			gripperLabel.Cursor = Cursors.SizeNESW;
			num2 = size.Width - closeBtn.Width - 4;
			gripperLabel.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
			closeBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
		}
		else
		{
			num = size.Width - 28;
			gripperLabel.Text = "p";
			gripperLabel.Cursor = Cursors.SizeNWSE;
			num2 = 2;
			gripperLabel.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
			closeBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
		}
		Point location = new Point(num, size.Height - 24);
		Point location2 = new Point(num2, size.Height - 20);
		if (bFirstTime)
		{
			location.Offset((!isMirrored) ? 2 : 0, 2);
			location2.Offset(isMirrored ? 2 : 0, 2);
		}
		gripperLabel.Location = location;
		closeBtn.Location = location2;
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		SizablePopupControlContainer sizablePopupControlContainer = (SizablePopupControlContainer)base.PopupControlContainer;
		bool flag = false;
		if (sizablePopupControlContainer != null)
		{
			flag = sizablePopupControlContainer.FitToChildControlSize;
		}
		if (width < 100 && !flag)
		{
			if (GetIsMirrored())
			{
				int num = 100 - width;
				x -= num;
			}
			width = 100;
		}
		if (height < 100 && !flag)
		{
			height = 100;
		}
		base.SetBoundsCore(x, y, width, height, BoundsSpecified.All);
	}

	private void HandleGripperMouseDown(object sender, MouseEventArgs e)
	{
		isResizing = true;
		hostRect.Location = new Point(base.Left, base.Top);
		hostRect.Size = base.Size;
		ControlPaint.DrawReversibleFrame(hostRect, Color.Empty, FrameStyle.Dashed);
	}

	private void HandleGripperMouseUp(object sender, MouseEventArgs e)
	{
		ProcessGripperDragRelease(bCanceled: false);
	}

	private void ProcessGripperDragRelease(bool bCanceled)
	{
		if (isResizing)
		{
			ControlPaint.DrawReversibleFrame(hostRect, Color.Empty, FrameStyle.Dashed);
			if (!bCanceled)
			{
				base.Location = hostRect.Location;
				base.Size = currentSize;
				lastSize = currentSize;
				childControl.Height = base.Height - 34;
				childControl.Invalidate();
			}
			isResizing = false;
		}
	}

	private void HandleGripperMouseMove(object sender, MouseEventArgs e)
	{
		try
		{
			if (isResizing && e.Button == MouseButtons.Left)
			{
				ControlPaint.DrawReversibleFrame(hostRect, Color.Empty, FrameStyle.Dashed);
				bool isMirrored = GetIsMirrored();
				int num = Control.MousePosition.X;
				int num2 = (isMirrored ? (base.Location.X - num + base.Width) : (Control.MousePosition.X - base.Location.X));
				currentSize = new Size(num2, Control.MousePosition.Y - base.Location.Y);
				_ = hostRect.Width;
				int num3 = (isMirrored ? num : base.Left);
				hostRect.Location = new Point(num3, base.Top);
				hostRect.Size = currentSize;
				ControlPaint.DrawReversibleFrame(hostRect, Color.Empty, FrameStyle.Dashed);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	private void HandleCloseBtnMouseEnter(object sender, EventArgs e)
	{
		closeBtn.BackColor = SystemColors.InactiveCaptionText;
	}

	private void HandleCloseBtnMouseLeave(object sender, EventArgs e)
	{
		closeBtn.BackColor = SystemColors.Control;
	}

	private void HandleCloseBtnClick(object sender, EventArgs e)
	{
		SizablePopupControlContainer sizablePopupControlContainer = (SizablePopupControlContainer)base.PopupControlContainer;
		sizablePopupControlContainer.HidePopup(PopupCloseType.Canceled);
	}
}
