#define TRACE
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms;

namespace Etas.Base.UI.Framework;

public class SuggestionControl : UserControl
{
	private enum ViewMode
	{
		Normal,
		Highlighted,
		ContextOpen
	}

	private const double NORMAL_HEIGHT_WIDTH_MULTIPLIER = 1.4375;

	private const double HIGHLIGHT_HEIGHT_MULTIPLIER = 1.5625;

	private const double HIGHLIGHT_WIDTH_MULTIPLIER = 2.0625;

	private IContainer components;

	private ToolTip _toolTip;

	private ImageSizeMode _sizeMode;

	private SolidBrush _backBrush;

	private SolidBrush _contextBrush;

	private SolidBrush _highlightBrush;

	private Image _image;

	private Image _highlightImage;

	private string _toolTipMessage;

	private ViewMode _viewMode;

	private Size SIZE_16 = new Size(16, 16);

	private Size SIZE_24 = new Size(24, 24);

	private Size SIZE_32 = new Size(32, 32);

	private Size SIZE_48 = new Size(48, 48);

	private Size _size16;

	private Size _size24;

	private Size _size32;

	private Size _size48;

	private Size _sizeHighlight16;

	private Size _sizeHighlight24;

	private Size _sizeHighlight32;

	private Size _sizeHighlight48;

	public Image Image
	{
		get
		{
			return _image;
		}
		set
		{
			_image = value;
			Invalidate();
		}
	}

	public Image HighlightImage
	{
		get
		{
			return _highlightImage;
		}
		set
		{
			_highlightImage = value;
			Invalidate();
		}
	}

	public ImageSizeMode SizeMode
	{
		get
		{
			return _sizeMode;
		}
		set
		{
			_sizeMode = value;
			SetSize();
		}
	}

	public string ToolTipMessage
	{
		get
		{
			return _toolTipMessage;
		}
		set
		{
			_toolTipMessage = value;
			SetToolTip();
		}
	}

	private ViewMode ViewState
	{
		get
		{
			return _viewMode;
		}
		set
		{
			_viewMode = value;
			Trace.TraceInformation("******** ViewState set to {0} ********", _viewMode.ToString());
			SetSize();
		}
	}

	public event EventHandler SuggestionClicked;

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this._toolTip = new System.Windows.Forms.ToolTip(this.components);
		base.SuspendLayout();
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
		base.Name = "SuggestionControl";
		base.Size = new System.Drawing.Size(14, 14);
		this._toolTip.SetToolTip(this, "Formatting");
		base.Load += new System.EventHandler(OnControlLoad);
		base.MouseDown += new System.Windows.Forms.MouseEventHandler(OnMouseDown);
		base.Resize += new System.EventHandler(OnControlResize);
		base.MouseEnter += new System.EventHandler(OnMouseEnter);
		base.MouseLeave += new System.EventHandler(OnMouseLeave);
		base.KeyDown += new System.Windows.Forms.KeyEventHandler(OnKeyDown);
		base.ResumeLayout(false);
	}

	private void SetToolTip()
	{
		_toolTip.SetToolTip(this, _toolTipMessage + " " + UIFramework.RES_SuggestionMenuShortcut);
	}

	public SuggestionControl()
	{
		InitializeComponent();
		_size16 = GetImageHostSize(SIZE_16);
		_size24 = GetImageHostSize(SIZE_24);
		_size32 = GetImageHostSize(SIZE_32);
		_size48 = GetImageHostSize(SIZE_48);
		_sizeHighlight16 = GetImageHighlightSize(SIZE_16);
		_sizeHighlight24 = GetImageHighlightSize(SIZE_24);
		_sizeHighlight32 = GetImageHighlightSize(SIZE_32);
		_sizeHighlight48 = GetImageHighlightSize(SIZE_48);
		if (_toolTipMessage != "")
		{
			_toolTip.SetToolTip(this, _toolTipMessage);
		}
		SizeMode = ImageSizeMode.Sixteen;
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
	}

	public void ShowSuggestion(Point pt)
	{
		if (pt == Point.Empty)
		{
			throw new ArgumentException("Point.Empty value was provided", "startingPt");
		}
		base.Location = pt;
		base.Enabled = true;
		base.Visible = true;
	}

	public void HideSuggestion()
	{
		base.Enabled = false;
		base.Visible = false;
	}

	public Point FindBestPlacement(Point startingPt, Rectangle bounds)
	{
		if (bounds == Rectangle.Empty)
		{
			throw new ArgumentException("Rectangle.Empty value was provided", "bounds");
		}
		if (startingPt == Point.Empty)
		{
			throw new ArgumentException("Point.Empty value was provided", "startingPt");
		}
		Rectangle rect = new Rectangle(startingPt.X, startingPt.Y, GetMaximumSize().Width, GetMaximumSize().Height);
		if (bounds.Contains(rect))
		{
			return startingPt;
		}
		if (GetMaximumSize().Width > bounds.Width || GetMaximumSize().Height > bounds.Height)
		{
			return startingPt;
		}
		int num = 4;
		int num2 = bounds.Width - num;
		int num3 = bounds.Height - num;
		int num4 = startingPt.X;
		int num5 = num4 + GetMaximumSize().Width;
		int num6 = startingPt.Y;
		int num7 = num6 + GetMaximumSize().Height;
		if (num4 < bounds.Left)
		{
			num4 = bounds.Left + num;
		}
		if (num6 < bounds.Top)
		{
			num6 = bounds.Top + num;
		}
		if (num5 > num2)
		{
			num4 -= num5 - num2;
		}
		if (num7 > num3)
		{
			num6 -= num7 - num3;
		}
		return new Point(num4, num6);
	}

	private void OnControlLoad(object sender, EventArgs e)
	{
		if (ContextMenuStrip != null)
		{
			ContextMenuStrip.Opened += OnContextMenuStripOpened;
			ContextMenuStrip.Closed += OnContextMenuStripClosed;
		}
		SetSize();
		SetToolTip();
		RefreshColors();
		Office2003Colors.MenuColorsChanged += OnMenuColorsChanged;
		if (base.Parent != null)
		{
			base.Parent.KeyDown += OnKeyDown;
		}
	}

	private void OnControlResize(object sender, EventArgs e)
	{
		SetSize();
	}

	private void FireSuggestionClickedEvent()
	{
		if (this.SuggestionClicked != null)
		{
			this.SuggestionClicked(this, EventArgs.Empty);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		PaintBackground(e);
		PaintImage(e);
		PaintDropDownSymbol(e);
	}

	private void PaintDropDownSymbol(PaintEventArgs e)
	{
		if (ViewState != ViewMode.Normal)
		{
			int num = 0;
			switch (SizeMode)
			{
			case ImageSizeMode.Sixteen:
				num = 3;
				break;
			case ImageSizeMode.TwentyFour:
				num = 4;
				break;
			case ImageSizeMode.ThirtyTwo:
				num = 5;
				break;
			case ImageSizeMode.FortyEight:
				num = 6;
				break;
			}
			int num2 = e.ClipRectangle.Width - num * 2;
			int num3 = base.Size.Height / 2 - num / 2;
			GraphicsPath graphicsPath = new GraphicsPath();
			Point point = new Point(num2, num3 + num);
			Point point2 = new Point(num2 - num, num3);
			Point point3 = new Point(num2 + num, num3);
			graphicsPath.AddPolygon(new Point[3] { point, point2, point3 });
			e.Graphics.FillPath(Brushes.Black, graphicsPath);
		}
	}

	private void PaintImage(PaintEventArgs e)
	{
		bool flag = false;
		Point point = new Point(0, 0);
		if (Image != null)
		{
			flag = CheckIfSelectedImageMatchesSizeMode();
		}
		if (flag)
		{
			if ((ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen) && HighlightImage != null)
			{
				e.Graphics.DrawImage(HighlightImage, point);
			}
			else
			{
				e.Graphics.DrawImage(Image, point);
			}
			return;
		}
		Bitmap image = null;
		switch (SizeMode)
		{
		case ImageSizeMode.Sixteen:
			image = ((ViewState != ViewMode.Highlighted && ViewState != ViewMode.ContextOpen) ? SuggestionResources.IMG_lightbulb_off16 : SuggestionResources.IMG_lightbulb16);
			break;
		case ImageSizeMode.TwentyFour:
			image = ((ViewState != ViewMode.Highlighted && ViewState != ViewMode.ContextOpen) ? SuggestionResources.IMG_lightbulb_off24 : SuggestionResources.IMG_lightbulb24);
			break;
		case ImageSizeMode.ThirtyTwo:
			image = ((ViewState != ViewMode.Highlighted && ViewState != ViewMode.ContextOpen) ? SuggestionResources.IMG_lightbulb_off32 : SuggestionResources.IMG_lightbulb32);
			break;
		case ImageSizeMode.FortyEight:
			image = ((ViewState != ViewMode.Highlighted && ViewState != ViewMode.ContextOpen) ? SuggestionResources.IMG_lightbulb_off48 : SuggestionResources.IMG_lightbulb48);
			break;
		}
		e.Graphics.DrawImage(image, point);
	}

	private void PaintBackground(PaintEventArgs e)
	{
		switch (ViewState)
		{
		case ViewMode.Normal:
			e.Graphics.FillRectangle(_backBrush, DisplayRectangle);
			break;
		case ViewMode.Highlighted:
			e.Graphics.FillRectangle(_highlightBrush, DisplayRectangle);
			break;
		case ViewMode.ContextOpen:
			e.Graphics.FillRectangle(_contextBrush, DisplayRectangle);
			break;
		}
	}

	private void RefreshColors()
	{
		Office2003Colors.UpdateMenuColors();
		_backBrush = new SolidBrush(BackColor);
		_highlightBrush = new SolidBrush(Office2003Colors.SelColor);
		_contextBrush = new SolidBrush(Office2003Colors.DockBarColorLight);
	}

	private void OnMenuColorsChanged(object sender, EventArgs e)
	{
		RefreshColors();
	}

	private void SetSize()
	{
		switch (SizeMode)
		{
		case ImageSizeMode.Sixteen:
			if (ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen)
			{
				base.Size = _sizeHighlight16;
			}
			else
			{
				base.Size = _size16;
			}
			break;
		case ImageSizeMode.TwentyFour:
			if (ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen)
			{
				base.Size = _sizeHighlight24;
			}
			else
			{
				base.Size = _size24;
			}
			break;
		case ImageSizeMode.ThirtyTwo:
			if (ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen)
			{
				base.Size = _sizeHighlight32;
			}
			else
			{
				base.Size = _size32;
			}
			break;
		case ImageSizeMode.FortyEight:
			if (ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen)
			{
				base.Size = _sizeHighlight48;
			}
			else
			{
				base.Size = _size48;
			}
			break;
		default:
			if (ViewState == ViewMode.Highlighted || ViewState == ViewMode.ContextOpen)
			{
				base.Size = _sizeHighlight16;
			}
			else
			{
				base.Size = _size16;
			}
			break;
		}
		Invalidate();
	}

	private Size GetImageHostSize(Size imageSz)
	{
		Size result = default(Size);
		double num = imageSz.Height;
		double num2 = imageSz.Width;
		double num3 = (double)(int)num * 1.4375;
		double num4 = (double)(int)num2 * 1.4375;
		result.Height = (int)num3;
		result.Width = (int)num4;
		return result;
	}

	private Size GetImageHighlightSize(Size imageSz)
	{
		Size result = default(Size);
		double num = imageSz.Height;
		double num2 = imageSz.Width;
		double num3 = (double)(int)num * 1.5625;
		double num4 = (double)(int)num2 * 2.0625;
		result.Height = (int)num3;
		result.Width = (int)num4;
		return result;
	}

	private Size GetMinimumSize()
	{
		return SizeMode switch
		{
			ImageSizeMode.Sixteen => _size16, 
			ImageSizeMode.TwentyFour => _size24, 
			ImageSizeMode.ThirtyTwo => _size32, 
			ImageSizeMode.FortyEight => _size48, 
			_ => Size.Empty, 
		};
	}

	private Size GetMaximumSize()
	{
		return SizeMode switch
		{
			ImageSizeMode.Sixteen => _sizeHighlight16, 
			ImageSizeMode.TwentyFour => _sizeHighlight24, 
			ImageSizeMode.ThirtyTwo => _sizeHighlight32, 
			ImageSizeMode.FortyEight => _sizeHighlight48, 
			_ => Size.Empty, 
		};
	}

	private bool CheckIfSelectedImageMatchesSizeMode()
	{
		switch (SizeMode)
		{
		case ImageSizeMode.Sixteen:
			if (_image.Size.Height == 16 && _image.Size.Width == 16)
			{
				return true;
			}
			break;
		case ImageSizeMode.TwentyFour:
			if (_image.Size.Height == 24 && _image.Size.Width == 24)
			{
				return true;
			}
			break;
		case ImageSizeMode.ThirtyTwo:
			if (_image.Size.Height == 32 && _image.Size.Width == 32)
			{
				return true;
			}
			break;
		case ImageSizeMode.FortyEight:
			if (_image.Size.Height == 48 && _image.Size.Width == 48)
			{
				return true;
			}
			break;
		}
		return false;
	}

	private void OnMouseEnter(object sender, EventArgs e)
	{
		if (ViewState != ViewMode.ContextOpen)
		{
			ViewState = ViewMode.Highlighted;
		}
	}

	private void OnMouseLeave(object sender, EventArgs e)
	{
		if (ViewState != ViewMode.ContextOpen)
		{
			ViewState = ViewMode.Normal;
		}
	}

	private void OnMouseDown(object sender, MouseEventArgs e)
	{
		FireSuggestionClickedEvent();
		if (ViewState == ViewMode.ContextOpen)
		{
			if (!ContextMenuStrip.Visible)
			{
				ViewState = ViewMode.Highlighted;
			}
		}
		else
		{
			ShowContextMenu();
		}
	}

	private bool MouseIsOverControl()
	{
		Point pt = PointToClient(Control.MousePosition);
		Rectangle rectangle = new Rectangle(0, 0, base.Width, base.Bounds.Height);
		return rectangle.Contains(pt);
	}

	private void ShowContextMenu()
	{
		if (ContextMenuStrip != null)
		{
			Point position = new Point(-1, base.Height - 1);
			ContextMenuStrip.Show(this, position);
		}
	}

	private void HideContextMenu()
	{
		if (ContextMenuStrip != null)
		{
			ContextMenuStrip.Hide();
		}
	}

	private void OnContextMenuStripOpened(object sender, EventArgs e)
	{
		ViewState = ViewMode.ContextOpen;
	}

	private void OnContextMenuStripClosed(object sender, ToolStripDropDownClosedEventArgs e)
	{
		switch (e.CloseReason)
		{
		case ToolStripDropDownCloseReason.AppClicked:
			if (!MouseIsOverControl())
			{
				ViewState = ViewMode.Normal;
			}
			break;
		case ToolStripDropDownCloseReason.AppFocusChange:
			ViewState = ViewMode.Normal;
			break;
		case ToolStripDropDownCloseReason.CloseCalled:
			ViewState = ViewMode.Normal;
			break;
		case ToolStripDropDownCloseReason.ItemClicked:
			ViewState = ViewMode.Normal;
			break;
		case ToolStripDropDownCloseReason.Keyboard:
			ViewState = ViewMode.Normal;
			break;
		}
	}

	private void OnKeyDown(object sender, KeyEventArgs e)
	{
		Keys keyCode = e.KeyCode;
		if (keyCode == Keys.F10 && e.Alt && e.Shift && ViewState != ViewMode.ContextOpen)
		{
			ShowContextMenu();
		}
	}
}
