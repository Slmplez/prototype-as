using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlBar : CommandBar
{
	protected const int nTBDropDownWidth = 250;

	protected static bool bDockedSizing = false;

	protected static Point ptSizingStart = Point.Empty;

	private ControlBarRenderer m_renderer;

	[DocumentationExclude]
	protected Control cptnControl;

	[DocumentationExclude]
	protected Size minSize = new Size(100, 100);

	[DocumentationExclude]
	protected Size maxSize = new Size(1000, 1000);

	[DocumentationExclude]
	protected int nCtrlBarCaptionHt;

	internal ControlBarWeakContainer controlBarWeakContainer;

	[Description("The height of the ControlBar caption area.")]
	[Localizable(true)]
	[Category("Appearance")]
	public int ControlBarCaptionHeight
	{
		get
		{
			return nCtrlBarCaptionHt;
		}
		set
		{
			if (nCtrlBarCaptionHt == value)
			{
				return;
			}
			nCtrlBarCaptionHt = value;
			if (base.Parent != null)
			{
				if (cbarDockState != CommandBarDockState.Float)
				{
					bRedockNeeded = true;
				}
				else
				{
					bRecalcNeeded = true;
				}
				Invalidate();
			}
		}
	}

	[DocumentationExclude]
	protected internal override Rectangle CaptionRect
	{
		get
		{
			Size size = new Size(base.Width - 4, nCtrlBarCaptionHt);
			Point location = new Point(2, 2);
			if (base.IsRTL)
			{
				location.X = base.ClientRectangle.Right - location.X - size.Width;
			}
			return new Rectangle(location, size);
		}
	}

	[DocumentationExclude]
	protected internal override Rectangle DragStartRect
	{
		get
		{
			Rectangle result = new Rectangle(2, 2, base.Width - 4, nCtrlBarCaptionHt);
			if ((cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right || cbarDockState == CommandBarDockState.Float) && cptnControl != null)
			{
				result.Height += cptnControl.Height;
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected internal override Rectangle GripperRect
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (!bHideGripper)
			{
				Rectangle clientRectangle = base.ClientRectangle;
				result = new Rectangle(base.IsRTL ? (clientRectangle.Right - 2 - nHeaderOff) : (clientRectangle.Left + 2), clientRectangle.Top + 2, nHeaderOff, nCtrlBarCaptionHt);
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected internal override Rectangle DropDownRect
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (cbarDockState != CommandBarDockState.None && !bHideDropDown)
			{
				int num = nHeaderOff + 2;
				int captionHeight = CommandBar.CaptionHeight;
				int num2 = 0;
				num2 = (bHideCloseButton ? 1 : captionHeight);
				Rectangle captionRect = CaptionRect;
				Size size;
				if (cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom)
				{
					if (cptnControl != null)
					{
						num += cptnControl.Width + 2;
					}
					int num3 = captionRect.Width - num - num2;
					if (num3 > 250)
					{
						num3 = 250;
					}
					size = new Size(num3, captionHeight);
				}
				else
				{
					size = new Size(captionRect.Width - num - num2, captionHeight);
				}
				Point location = new Point(base.IsRTL ? (captionRect.Right - num - size.Width) : (captionRect.Left + num), captionRect.Top + (int)Math.Floor((float)(captionRect.Height - captionHeight) / 2f));
				result = new Rectangle(location, size);
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected internal override Rectangle CloseButtonRect
	{
		get
		{
			Rectangle result = Rectangle.Empty;
			if (!bHideCloseButton)
			{
				int captionHeight = CommandBar.CaptionHeight;
				Rectangle captionRect = CaptionRect;
				result = new Rectangle(base.IsRTL ? captionRect.Left : (captionRect.Right - captionHeight), captionRect.Top + (int)Math.Floor((float)(captionRect.Height - captionHeight) / 2f), captionHeight, captionHeight);
			}
			return result;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("The size of the ControlBar in pixels.")]
	[DocumentationExclude]
	[Category("Layout")]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			if (base.Parent == null)
			{
				return;
			}
			if (cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right)
			{
				if (value.Width == nCommandBarHt || value.Width < minSize.Width)
				{
					return;
				}
				int num = value.Width - nCommandBarHt;
				cdbParent.Width += num;
				for (int i = nRCIndex + 1; i < cdbParent.nRCCount; i++)
				{
					CommandBar[] rowArray = cdbParent.GetRowArray(i);
					CommandBar[] array = rowArray;
					foreach (CommandBar commandBar in array)
					{
						commandBar.Location = new Point(commandBar.Location.X + num, commandBar.Location.Y);
					}
				}
				nCommandBarHt = value.Width;
				base.Width = value.Width;
			}
			else if (cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom)
			{
				if (value.Height == nCommandBarHt || value.Height < minSize.Height)
				{
					return;
				}
				int num2 = value.Height - nCommandBarHt;
				cdbParent.Height += num2;
				for (int k = nRCIndex + 1; k < cdbParent.nRCCount; k++)
				{
					CommandBar[] rowArray2 = cdbParent.GetRowArray(k);
					CommandBar[] array2 = rowArray2;
					foreach (CommandBar commandBar2 in array2)
					{
						commandBar2.Location = new Point(commandBar2.Location.X, commandBar2.Location.Y + num2);
					}
				}
				nCommandBarHt = value.Height;
				base.Height = value.Height;
			}
			else if (cbarDockState == CommandBarDockState.Float)
			{
				if (value.Width != base.Width && value.Width >= minSize.Width)
				{
					base.Parent.Width += value.Width - base.Width;
				}
				if (value.Height != base.Height && value.Height >= minSize.Height)
				{
					base.Parent.Height += value.Height - base.Height;
				}
			}
		}
	}

	[Category("Layout")]
	[Description("The minimum size of the ControlBar in pixels.")]
	[Localizable(true)]
	public new Size MinimumSize
	{
		get
		{
			return minSize;
		}
		set
		{
			if (!(minSize != value))
			{
				return;
			}
			minSize = value;
			if (base.Parent == null)
			{
				return;
			}
			if (cbarDockState == CommandBarDockState.Left || cbarDockState == CommandBarDockState.Right)
			{
				if (value.Width <= nCommandBarHt)
				{
					return;
				}
				int num = value.Width - nCommandBarHt;
				cdbParent.Width += num;
				for (int i = nRCIndex + 1; i < cdbParent.nRCCount; i++)
				{
					CommandBar[] rowArray = cdbParent.GetRowArray(i);
					CommandBar[] array = rowArray;
					foreach (CommandBar commandBar in array)
					{
						commandBar.Location = new Point(commandBar.Location.X + num, commandBar.Location.Y);
					}
				}
				nCommandBarHt = value.Width;
				base.Width = value.Width;
			}
			else if (cbarDockState == CommandBarDockState.Top || cbarDockState == CommandBarDockState.Bottom)
			{
				if (value.Height <= nCommandBarHt)
				{
					return;
				}
				int num2 = value.Height - nCommandBarHt;
				cdbParent.Height += num2;
				for (int k = nRCIndex + 1; k < cdbParent.nRCCount; k++)
				{
					CommandBar[] rowArray2 = cdbParent.GetRowArray(k);
					CommandBar[] array2 = rowArray2;
					foreach (CommandBar commandBar2 in array2)
					{
						commandBar2.Location = new Point(commandBar2.Location.X, commandBar2.Location.Y + num2);
					}
				}
				nCommandBarHt = value.Height;
				base.Height = value.Height;
			}
			else if (cbarDockState == CommandBarDockState.Float)
			{
				if (value.Width > base.Width)
				{
					base.Parent.Width += value.Width - base.Width;
				}
				if (value.Height > base.Height)
				{
					base.Parent.Height += value.Height - base.Height;
				}
			}
		}
	}

	[Description("The maximum size of the ControlBar in pixels.")]
	[Localizable(true)]
	[Category("Layout")]
	public new Size MaximumSize
	{
		get
		{
			return maxSize;
		}
		set
		{
			if (maxSize != value)
			{
				maxSize = value;
			}
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override int MinHeight
	{
		get
		{
			return base.MinHeight;
		}
		set
		{
			base.MinHeight = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public override int MinLength
	{
		get
		{
			return base.MinLength;
		}
		set
		{
			base.MinLength = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DocumentationExclude]
	public override int MaxLength
	{
		get
		{
			return base.MaxLength;
		}
		set
		{
			base.MaxLength = value;
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override int IntegralHeight
	{
		get
		{
			return nIntegral;
		}
		set
		{
		}
	}

	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int RowOffset
	{
		get
		{
			return nRowOffsetDir;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool DockModeWrapping
	{
		get
		{
			return bDockModeWrapping;
		}
		set
		{
		}
	}

	[Browsable(false)]
	[DocumentationExclude]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool FloatModeWrapping
	{
		get
		{
			return bFloatModeWrapping;
		}
		set
		{
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool OccupyFullRow
	{
		get
		{
			return bFullRow;
		}
		set
		{
		}
	}

	[DocumentationExclude]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public override bool ShowDockModeText
	{
		get
		{
			return bShowDockModeText;
		}
		set
		{
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	public override bool HideChevron
	{
		get
		{
			return bHideChevron;
		}
		set
		{
		}
	}

	[Category("Behavior")]
	[Description("The Control that is displayed in the CommandBar's caption region.")]
	public Control CaptionControl
	{
		get
		{
			return cptnControl;
		}
		set
		{
			if (cptnControl == value)
			{
				return;
			}
			cptnControl = value;
			if (cptnControl != null)
			{
				cptnControl.Dock = DockStyle.None;
				cptnControl.Anchor = AnchorStyles.Top | AnchorStyles.Left;
				cptnControl.Height = nCtrlBarCaptionHt - 2;
				if (!base.Controls.Contains(cptnControl))
				{
					base.Controls.Add(cptnControl);
				}
				else
				{
					SetChildControlBounds();
				}
				Invalidate();
			}
		}
	}

	protected internal Control ClientControl
	{
		get
		{
			Control result = null;
			foreach (Control control in base.Controls)
			{
				if (control != cptnControl)
				{
					result = control;
					break;
				}
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected override void InitializeCommandBar()
	{
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserPaint | ControlStyles.SupportsTransparentBackColor | ControlStyles.StandardDoubleClick | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		base.TabStop = false;
		bFullRow = true;
		nCommandBarHt = 150;
		bFloatModeWrapping = true;
		bRestrictedSizing = false;
		nCtrlBarCaptionHt = CommandBar.CaptionHeight + 8;
		cbarDockState = CommandBarDockState.Left;
		pupMenu = new PopupMenu();
		pupMenu.ParentBarItem = new ParentBarItem();
		base.Font = SystemInformation.MenuFont;
		if (CommandBar.ftFloatCaption == null)
		{
			CommandBar.InitializeFloatCaptionFont();
		}
		UpdateColorScheme();
		controlBarWeakContainer = new ControlBarWeakContainer(this);
		MenuColors.MenuColorsChanged += controlBarWeakContainer.MenuColorsChangedWeakEventHandler;
		Office2003Colors.MenuColorsChanged += controlBarWeakContainer.Office2003ColorsChangedWeakEventHandler;
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing)
		{
			Office2003Colors.MenuColorsChanged -= Office2003Colors_MenuColorsChanged;
		}
		base.Dispose(bdisposing);
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
		Office2007Theme theme = ((cbController != null) ? cbController.Office2007Theme : Office2007Theme.Blue);
		Office2007OutlookColors.UpdateMenuColors(theme);
	}

	protected override void SetRenderer()
	{
		base.SetRenderer();
		VisualStyle visualStyle = ((cbController != null) ? cbController.Style : VisualStyle.Default);
		if (m_renderer != null)
		{
			m_renderer.Dispose();
		}
		if (ShouldDrawThemed() && visualStyle != VisualStyle.Office2007 && visualStyle != VisualStyle.Office2007Outlook)
		{
			m_renderer = new ControlBarRendererThemed(this);
			return;
		}
		switch (visualStyle)
		{
		case VisualStyle.VS2005:
			m_renderer = new ControlBarRendererVS2005(this);
			break;
		case VisualStyle.Office2003:
			m_renderer = new ControlBarRendererOffice2003(this);
			break;
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			m_renderer = new ControlBarRendererOffice2007(this);
			break;
		default:
			m_renderer = new ControlBarRendererOfficeXP(this);
			break;
		}
	}

	[DocumentationExclude]
	public void Office2003Colors_MenuColorsChanged(object sender, EventArgs e)
	{
		if (!ShouldDrawThemed() && cbController.Style == VisualStyle.Office2003)
		{
			base.BackColor = Office2003Colors.DockBarColorLight;
			bBackColorSet = false;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (cbController.Style != VisualStyle.Default && cbController.Style != VisualStyle.OfficeXP)
		{
			base.OnPaint(e);
		}
		if (m_renderer != null)
		{
			m_renderer.Draw(e.Graphics);
		}
	}

	[DocumentationExclude]
	protected override void SetChildControlBounds()
	{
		CommandBarDockState dockState = base.DockState;
		if (cbController == null || dockState == CommandBarDockState.None || base.Controls.Count <= 0)
		{
			return;
		}
		bool isRTL = base.IsRTL;
		Rectangle clientRectangle = base.ClientRectangle;
		int right = clientRectangle.Right;
		int num = 0;
		if (cptnControl != null)
		{
			num = cptnControl.Width;
			switch (dockState)
			{
			case CommandBarDockState.Left:
			case CommandBarDockState.Right:
				cptnControl.Location = new Point(isRTL ? (right - 2 - num) : 2, nCtrlBarCaptionHt + 2);
				break;
			case CommandBarDockState.Top:
			case CommandBarDockState.Bottom:
			{
				int num2 = nHeaderOff;
				int num3 = (int)Math.Floor((float)(nCtrlBarCaptionHt - cptnControl.Height) / 2f);
				cptnControl.Location = new Point(isRTL ? (right - 2 - num2 - num) : (2 + num2), 2 + num3);
				break;
			}
			default:
				cptnControl.Location = new Point((!isRTL) ? 1 : (right - 1 - num), nCtrlBarCaptionHt + 1);
				break;
			}
			if (cptnControl.Height > nCtrlBarCaptionHt - 2)
			{
				cptnControl.Height = nCtrlBarCaptionHt - 2;
			}
		}
		Control clientControl = ClientControl;
		if (clientControl == null)
		{
			return;
		}
		Size size;
		switch (dockState)
		{
		case CommandBarDockState.Top:
		case CommandBarDockState.Bottom:
			size = new Size(clientRectangle.Width - 4, clientRectangle.Height - 4 - nCtrlBarCaptionHt);
			clientControl.Location = new Point(isRTL ? (right - size.Width - 2) : (clientRectangle.Left + 2), clientRectangle.Top + 2 + nCtrlBarCaptionHt);
			break;
		case CommandBarDockState.Left:
		case CommandBarDockState.Right:
			if (cptnControl != null)
			{
				size = new Size(clientRectangle.Width - 4, clientRectangle.Height - 4 - nCtrlBarCaptionHt - cptnControl.Height);
				clientControl.Location = new Point(isRTL ? (clientRectangle.Right - size.Width - 2) : (clientRectangle.Left + 2), clientRectangle.Top + 2 + nCtrlBarCaptionHt + cptnControl.Height);
			}
			else
			{
				size = new Size(clientRectangle.Width - 4, clientRectangle.Height - 4 - nCtrlBarCaptionHt);
				clientControl.Location = new Point(isRTL ? (clientRectangle.Right - size.Width - 2) : (clientRectangle.Left + 2), clientRectangle.Top + 2 + nCtrlBarCaptionHt);
			}
			break;
		default:
			if (cptnControl != null)
			{
				size = new Size(clientRectangle.Width - 2, clientRectangle.Height - 2 - nCtrlBarCaptionHt - cptnControl.Height);
				clientControl.Location = new Point(isRTL ? (clientRectangle.Right - size.Width - 1) : (clientRectangle.Left + 1), clientRectangle.Top + 1 + nCtrlBarCaptionHt + cptnControl.Height);
			}
			else
			{
				size = new Size(clientRectangle.Width - 2, clientRectangle.Height - 2 - nCtrlBarCaptionHt);
				clientControl.Location = new Point(isRTL ? (clientRectangle.Right - size.Width - 1) : (clientRectangle.Left + 1), clientRectangle.Top + 1 + nCtrlBarCaptionHt);
			}
			break;
		}
		if (size.Width > 0 && size.Height > 0)
		{
			clientControl.Size = size;
		}
	}

	[DocumentationExclude]
	protected override void ChangeCommandBarOrientation()
	{
	}

	[DocumentationExclude]
	protected internal override Size CalculateFloatingSize()
	{
		Size empty = Size.Empty;
		Rectangle rectangle = rcFloat;
		if (rectangle.Width == 0 || rectangle.Height == 0)
		{
			return Size;
		}
		return rectangle.Size;
	}

	[DocumentationExclude]
	protected override PopupRelativeAlignment GetFirstAlignPreference()
	{
		if (!base.IsRTL)
		{
			return PopupRelativeAlignment.BottomRight;
		}
		return PopupRelativeAlignment.BottomLeft;
	}

	[DocumentationExclude]
	public override void HandleMouseMove(MouseButtons button, Point ptscreen)
	{
		if (!CommandBar.bDragging)
		{
			Point pt = PointToClient(ptscreen);
			Rectangle clientRectangle = base.ClientRectangle;
			if (bDockedSizing)
			{
				if (cbarDockState == CommandBarDockState.Top)
				{
					int num = ptscreen.Y - ptSizingStart.Y;
					int num2 = base.Height + num;
					if (num2 <= minSize.Height || num2 >= maxSize.Height)
					{
						return;
					}
					cdbParent.Height += num;
					for (int i = nRCIndex + 1; i < cdbParent.nRCCount; i++)
					{
						CommandBar[] rowArray = cdbParent.GetRowArray(i);
						CommandBar[] array = rowArray;
						foreach (CommandBar commandBar in array)
						{
							commandBar.Location = new Point(commandBar.Location.X, commandBar.Location.Y + num);
						}
					}
					nCommandBarHt = num2;
					base.Height = num2;
					ptSizingStart = ptscreen;
					Refresh();
				}
				else if (cbarDockState == CommandBarDockState.Bottom)
				{
					int num3 = ptSizingStart.Y - ptscreen.Y;
					int num4 = base.Height + num3;
					if (num4 <= minSize.Height || num4 >= maxSize.Height)
					{
						return;
					}
					cdbParent.Height += num3;
					for (int k = nRCIndex + 1; k < cdbParent.nRCCount; k++)
					{
						CommandBar[] rowArray2 = cdbParent.GetRowArray(k);
						CommandBar[] array2 = rowArray2;
						foreach (CommandBar commandBar2 in array2)
						{
							commandBar2.Location = new Point(commandBar2.Location.X, commandBar2.Location.Y + num3);
						}
					}
					nCommandBarHt = num4;
					base.Height = num4;
					ptSizingStart = ptscreen;
					Refresh();
				}
				else if (cbarDockState == CommandBarDockState.Left)
				{
					int num5 = ptscreen.X - ptSizingStart.X;
					int num6 = base.Width + num5;
					if (num6 <= minSize.Width || num6 >= maxSize.Width)
					{
						return;
					}
					cdbParent.Width += num5;
					for (int m = nRCIndex + 1; m < cdbParent.nRCCount; m++)
					{
						CommandBar[] rowArray3 = cdbParent.GetRowArray(m);
						CommandBar[] array3 = rowArray3;
						foreach (CommandBar commandBar3 in array3)
						{
							commandBar3.Location = new Point(commandBar3.Location.X + num5, commandBar3.Location.Y);
						}
					}
					nCommandBarHt = num6;
					base.Width = num6;
					ptSizingStart = ptscreen;
					Refresh();
				}
				else
				{
					if (cbarDockState != CommandBarDockState.Right)
					{
						return;
					}
					int num7 = ptSizingStart.X - ptscreen.X;
					int num8 = base.Width + num7;
					if (num8 <= minSize.Width || num8 >= maxSize.Width)
					{
						return;
					}
					cdbParent.Width += num7;
					for (int num9 = nRCIndex + 1; num9 < cdbParent.nRCCount; num9++)
					{
						CommandBar[] rowArray4 = cdbParent.GetRowArray(num9);
						CommandBar[] array4 = rowArray4;
						foreach (CommandBar commandBar4 in array4)
						{
							commandBar4.Location = new Point(commandBar4.Location.X + num7, commandBar4.Location.Y);
						}
					}
					nCommandBarHt = num8;
					base.Width = num8;
					ptSizingStart = ptscreen;
					Refresh();
				}
				return;
			}
			Rectangle rectangle = Rectangle.Empty;
			Cursor cursor = Cursors.Default;
			if (cbarDockState == CommandBarDockState.Top)
			{
				rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Bottom - 2, clientRectangle.Width, 2);
				cursor = Cursors.SizeNS;
			}
			else if (cbarDockState == CommandBarDockState.Bottom)
			{
				rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, clientRectangle.Width, 2);
				cursor = Cursors.SizeNS;
			}
			else if (cbarDockState == CommandBarDockState.Left)
			{
				rectangle = new Rectangle(clientRectangle.Right - 2, clientRectangle.Top, 2, clientRectangle.Height);
				cursor = Cursors.SizeWE;
			}
			else if (cbarDockState == CommandBarDockState.Right)
			{
				rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, 2, clientRectangle.Height);
				cursor = Cursors.SizeWE;
			}
			if (rectangle.Contains(pt))
			{
				if (CommandBar.crDefault == null)
				{
					if (!base.DesignProcess && Cursor != cursor)
					{
						CommandBar.crDefault = Cursor;
						Cursor = cursor;
					}
					return;
				}
			}
			else if (Cursor == cursor)
			{
				if (CommandBar.crDefault != null)
				{
					Cursor = CommandBar.crDefault;
					CommandBar.crDefault = null;
				}
				else
				{
					Cursor = Cursors.Default;
				}
			}
		}
		base.HandleMouseMove(button, ptscreen);
	}

	[DocumentationExclude]
	public override void HandleMouseDown(MouseButtons button, Point ptscreen)
	{
		Point pt = PointToClient(ptscreen);
		Rectangle clientRectangle = base.ClientRectangle;
		Rectangle rectangle = Rectangle.Empty;
		if (cbarDockState == CommandBarDockState.Top)
		{
			rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Bottom - 2, clientRectangle.Width, 2);
		}
		else if (cbarDockState == CommandBarDockState.Bottom)
		{
			rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, clientRectangle.Width, 2);
		}
		else if (cbarDockState == CommandBarDockState.Left)
		{
			rectangle = new Rectangle(clientRectangle.Right - 2, clientRectangle.Top, 2, clientRectangle.Height);
		}
		else if (cbarDockState == CommandBarDockState.Right)
		{
			rectangle = new Rectangle(clientRectangle.Left, clientRectangle.Top, 2, clientRectangle.Height);
		}
		if (rectangle.Contains(pt))
		{
			bDockedSizing = true;
			ptSizingStart = ptscreen;
		}
		else
		{
			base.HandleMouseDown(button, ptscreen);
		}
	}

	[DocumentationExclude]
	public override void HandleMouseUp(MouseButtons button, Point ptscreen)
	{
		if (bDockedSizing)
		{
			bDockedSizing = false;
			ptSizingStart = Point.Empty;
		}
		base.HandleMouseUp(button, ptscreen);
	}

	protected override void OnControlRemoved(ControlEventArgs arg)
	{
		base.OnControlRemoved(arg);
		if (arg.Control == cptnControl)
		{
			cptnControl = null;
		}
	}

	protected internal override Rectangle GetTextRectangle()
	{
		Rectangle empty = Rectangle.Empty;
		bool isRTL = base.IsRTL;
		int captionHeight = CommandBar.CaptionHeight;
		int num = 0;
		if (!bHideDropDown)
		{
			num += captionHeight;
		}
		if (!bHideCloseButton)
		{
			num += captionHeight;
		}
		Rectangle captionRect = CaptionRect;
		int num2 = nHeaderOff + 2;
		if (!base.Floating && (cdbParent.Dock == DockStyle.Top || cdbParent.Dock == DockStyle.Bottom) && cptnControl != null)
		{
			num2 += cptnControl.Width + 2;
		}
		Size size = new Size(captionRect.Width - 4 - num2 - num, captionRect.Height);
		Point location = new Point(isRTL ? (captionRect.Right - size.Width - num2) : (captionRect.Left + num2), captionRect.Top);
		return new Rectangle(location, size);
	}
}
