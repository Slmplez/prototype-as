using System;
using System.Drawing;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class MenuGridHost : PopupHost
{
	protected internal const int ScrollHeight = 19;

	private const int WS_EX_LAYOUTRTL = 4194304;

	internal MenuGrid currentMenuGrid;

	private MenuScrollControl scrollUp;

	private MenuScrollControl scrollDown;

	private MenuExpandButton menuExpandButton;

	private bool showScrollBars;

	private bool partialMenusOn;

	internal bool preventAdjustLocation;

	private Timer m_scrollTimer;

	private bool m_bScrollingDown;

	public override bool NeedShadow
	{
		get
		{
			if (currentMenuGrid != null && currentMenuGrid.Customizing)
			{
				return false;
			}
			return base.NeedShadow;
		}
		set
		{
			base.NeedShadow = value;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (NeedShadow)
			{
				bool lpvParam = false;
				Syncfusion.Runtime.InteropServices.NativeMethods.SystemParametersInfo(4132, 0, ref lpvParam, 0);
				if (lpvParam)
				{
					createParams.ClassStyle |= 131072;
				}
				if (currentMenuGrid != null && currentMenuGrid.IsRightToLeft())
				{
					createParams.ExStyle |= 4194304;
				}
			}
			return createParams;
		}
	}

	private bool ShowScrollBars
	{
		get
		{
			return showScrollBars;
		}
		set
		{
			if (showScrollBars != value)
			{
				showScrollBars = value;
				if (value)
				{
					base.Controls.Add(scrollDown);
					base.Controls.Add(scrollUp);
				}
				UtilFuncs.SetVisibleNoActivate(scrollDown, value);
				UtilFuncs.SetVisibleNoActivate(scrollUp, value);
				if (showScrollBars)
				{
					scrollDown.MenuGrid = currentMenuGrid;
					scrollUp.MenuGrid = currentMenuGrid;
					scrollDown.UpdateScrollState();
					scrollUp.UpdateScrollState();
				}
				else
				{
					scrollDown.MenuGrid = null;
					scrollUp.MenuGrid = null;
				}
			}
		}
	}

	protected bool PartialMenusOn
	{
		get
		{
			return partialMenusOn;
		}
		set
		{
			if (partialMenusOn != value)
			{
				partialMenusOn = value;
				if (value)
				{
					base.Controls.Add(menuExpandButton);
				}
			}
		}
	}

	public MenuGridHost()
	{
		SuspendLayout();
		base.BorderGap = 4;
		menuExpandButton = new MenuExpandButton(ScrollArrowState.Down, this);
		menuExpandButton.Height = 19;
		menuExpandButton.Width = 0;
		UtilFuncs.SetVisibleNoActivate(menuExpandButton, visible: false);
		menuExpandButton.Dock = DockStyle.Bottom;
		scrollUp = new MenuScrollControl(ScrollArrowState.Up);
		scrollDown = new MenuScrollControl(ScrollArrowState.Down);
		scrollUp.Height = 19;
		scrollDown.Height = 19;
		scrollUp.Width = 0;
		scrollDown.Width = 0;
		scrollDown.MouseEnter += scrollDown_MouseEnter;
		scrollDown.MouseLeave += ScrollButtonMouseLeave;
		scrollUp.MouseEnter += scrollUp_MouseEnter;
		scrollUp.MouseLeave += ScrollButtonMouseLeave;
		m_scrollTimer = new Timer();
		m_scrollTimer.Tick += ScrollTimerTick;
		m_scrollTimer.Interval = 100;
		UtilFuncs.SetVisibleNoActivate(scrollUp, visible: false);
		UtilFuncs.SetVisibleNoActivate(scrollDown, visible: false);
		scrollUp.Dock = DockStyle.Top;
		scrollDown.Dock = DockStyle.Bottom;
		base.DockPadding.All = base.BorderGap / 2;
		NeedShadow = true;
		ResumeLayout(preformLayout: false);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33)
		{
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (IsShowing() && (specified == BoundsSpecified.Location || specified == BoundsSpecified.Size))
		{
			Rectangle clientRectangle = base.ClientRectangle;
			VisualStyle style = VisualStyle.OfficeXP;
			bool bRTL = false;
			bool bParent = false;
			if (currentMenuGrid != null)
			{
				style = currentMenuGrid.Style;
				bRTL = currentMenuGrid.IsRightToLeft();
				bParent = !(currentMenuGrid.PopupParent is PopupMenu);
			}
			SetRegion(style, clientRectangle, bParent, bRTL);
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	public override void ShowPopup()
	{
		base.ShowPopup();
		if (NeedShadow && base.Shadow != null)
		{
			base.Shadow.BorderOverlapLine = currentMenuGrid.OverlapBorderCue;
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		base.OnVisibleChanged(e);
		if (!base.Visible)
		{
			ShowScrollBars = false;
			UtilFuncs.SetVisibleNoActivate(menuExpandButton, visible: false);
			currentMenuGrid = null;
		}
	}

	public bool IsRelatedControl(Control control, bool askParent)
	{
		if (currentMenuGrid == null)
		{
			return control == this;
		}
		return currentMenuGrid.IsRelatedControl(control, askParent);
	}

	protected override void OnDeactivate(EventArgs e)
	{
		base.OnDeactivate(e);
		if (currentMenuGrid != null && (Form.ActiveForm == null || !currentMenuGrid.IsRelatedControl(Form.ActiveForm, askParent: true)))
		{
			bool flag = true;
			if (Form.ActiveForm != null && Form.ActiveForm is MenuGridHost)
			{
				MenuGridHost menuGridHost = Form.ActiveForm as MenuGridHost;
				flag = !menuGridHost.IsRelatedControl(currentMenuGrid, askParent: true);
			}
			if (flag)
			{
				currentMenuGrid.HidePopup(PopupCloseType.Deactivated);
			}
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		VisualStyle visualStyle = VisualStyle.OfficeXP;
		bool flag = false;
		bool bParent = false;
		if (currentMenuGrid != null)
		{
			visualStyle = currentMenuGrid.Style;
			flag = currentMenuGrid.IsRightToLeft();
			bParent = !(currentMenuGrid.PopupParent is PopupMenu);
		}
		SetRegion(visualStyle, clientRectangle, bParent, flag);
		bool flag2 = currentMenuGrid != null && currentMenuGrid.IsRTL && NeedShadow;
		if (visualStyle == VisualStyle.Office2007)
		{
			clientRectangle.Width--;
			clientRectangle.Height--;
			flag = (flag ? (!NeedShadow) : flag);
			Office2007MenuPainter.DrawMenuBorder(e.Graphics, clientRectangle, bParent, flag);
			if (base.Shadow != null)
			{
				base.Shadow.Visible = false;
			}
		}
		else
		{
			if (flag2)
			{
				clientRectangle.X--;
			}
			GridBorder gridBorder = GetGridBorder(visualStyle);
			GridBorderPaint.DrawRectangle(e.Graphics, gridBorder, clientRectangle, Color.Transparent, GridBorderSide.All);
			clientRectangle.Inflate(-1, -1);
			GridBorder border = new GridBorder(GridBorderStyle.Solid, MenuColors.MenuBGColor);
			GridBorderPaint.DrawRectangle(e.Graphics, border, clientRectangle, Color.Transparent, GridBorderSide.All);
			border = null;
		}
		if (currentMenuGrid != null && currentMenuGrid.OverlapBorderCue != null)
		{
			Point pt = PointToClient(currentMenuGrid.OverlapBorderCue[0]);
			Point pt2 = PointToClient(currentMenuGrid.OverlapBorderCue[1]);
			if (flag2)
			{
				pt.X--;
				pt2.X--;
			}
			if (currentMenuGrid.RightToLeft == RightToLeft.Yes && Environment.OSVersion.Version.Major > 6)
			{
				pt2.X = clientRectangle.Width - pt2.X;
				pt.X = clientRectangle.Width - pt.X;
			}
			e.Graphics.DrawLine(SystemPens.Control, pt, pt2);
		}
	}

	private void UpdateColorScheme()
	{
		MenuColors.UpdateMenuColors();
		Office2003Colors.UpdateMenuColors();
		VS2005Colors.UpdateMenuColors();
	}

	private void SetRegion(VisualStyle style, Rectangle rect, bool bParent, bool bRTL)
	{
		if (style == VisualStyle.Office2007)
		{
			base.Region = Office2007MenuPainter.GetMenuRegion(rect, bParent, bRTL);
		}
		else
		{
			base.Region = null;
		}
	}

	public void UpdateScrollStates(bool heightChanged)
	{
		if (!heightChanged)
		{
			scrollDown.UpdateScrollState();
			scrollUp.UpdateScrollState();
		}
	}

	protected override void ComputeMySize()
	{
		Size size = base.PopupControl.Size;
		size += new Size(base.BorderGap, base.BorderGap);
		if (ShowScrollBars)
		{
			size.Height += 38;
		}
		if (PartialMenusOn)
		{
			size.Height += menuExpandButton.Height;
		}
		if (base.Size != size)
		{
			base.Size = size;
		}
	}

	protected override void ComputeControlLocation()
	{
		Point location = new Point(base.BorderGap / 2, base.BorderGap / 2);
		if (ShowScrollBars)
		{
			location.Y += 19;
		}
		base.PopupControl.Location = location;
	}

	public void ShowMenu(MenuGrid menuGrid, Size prefSize, bool partialMenusOn)
	{
		prefSize = PrepareLayout(menuGrid, prefSize, partialMenusOn);
		ShowPopup();
	}

	private Size PrepareLayout(MenuGrid menuGrid, Size prefSize, bool partialMenusOn)
	{
		if (currentMenuGrid != menuGrid)
		{
			UtilFuncs.SetVisibleNoActivate(this, visible: false);
		}
		currentMenuGrid = menuGrid;
		NeedShadow = menuGrid.ShowShadow;
		if (currentMenuGrid != null)
		{
			MenuExpandButton obj = menuExpandButton;
			MenuScrollControl menuScrollControl = scrollDown;
			VisualStyle visualStyle = (scrollUp.Style = currentMenuGrid.Style);
			VisualStyle style2 = (menuScrollControl.Style = visualStyle);
			obj.Style = style2;
		}
		SuspendLayout();
		scrollDown.Width = prefSize.Width;
		scrollUp.Width = prefSize.Width;
		menuExpandButton.Width = prefSize.Width;
		PartialMenusOn = partialMenusOn;
		if (!PartialMenusOn && prefSize.Height > SystemInformation.WorkingArea.Height - base.BorderGap)
		{
			ShowScrollBars = true;
			prefSize.Height = SystemInformation.WorkingArea.Height - base.BorderGap - 38;
		}
		else
		{
			ShowScrollBars = menuGrid.ShowScrollBars;
		}
		if (PartialMenusOn && prefSize.Height > SystemInformation.WorkingArea.Height - base.BorderGap)
		{
			prefSize.Height = SystemInformation.WorkingArea.Height - base.BorderGap - menuExpandButton.Height;
		}
		UtilFuncs.SetVisibleNoActivate(menuExpandButton, PartialMenusOn);
		menuGrid.Size = prefSize;
		if (menuGrid.ParentItem.Manager == null)
		{
			Control popupParentControl = menuGrid.PopupParent.GetPopupParentControl();
			PropertyInfo[] properties = popupParentControl.GetType().GetProperties();
			for (int i = 0; i < properties.Length; i++)
			{
				if (properties[i].Name == "ThemesEnabled")
				{
					if (properties[i].CanRead)
					{
						menuGrid.ThemesEnabled = (bool)properties[i].GetValue(popupParentControl, null);
					}
					break;
				}
			}
		}
		base.PopupControlContainer = menuGrid;
		ResumeLayout(preformLayout: false);
		return prefSize;
	}

	internal void RefreshLayout(MenuGrid menuGrid, Size prefSize, bool partialMenusOn)
	{
		prefSize = PrepareLayout(menuGrid, prefSize, partialMenusOn);
		ComputeLayout();
		UpdateVisibility();
	}

	protected override Point GetAdjustedLocation(Point loc)
	{
		if (preventAdjustLocation)
		{
			return loc;
		}
		int num = ((currentMenuGrid != null) ? currentMenuGrid.PreferredHeight : 0);
		bool flag = num > SystemInformation.WorkingArea.Height - base.BorderGap;
		if (ShowScrollBars && flag)
		{
			Point adjustedLocation = base.GetAdjustedLocation(loc);
			adjustedLocation.Y = 0;
			return adjustedLocation;
		}
		return base.GetAdjustedLocation(loc);
	}

	private void StopScrollCurrentGrid()
	{
		m_scrollTimer.Stop();
	}

	private void StartScrollCurrentGrid(bool down)
	{
		if (currentMenuGrid != null && currentMenuGrid.ScrollOnMouseMove)
		{
			if (currentMenuGrid.ParentItem != null)
			{
				m_scrollTimer.Interval = currentMenuGrid.ParentItem.ScrollingSpeed;
			}
			m_bScrollingDown = down;
			m_scrollTimer.Start();
		}
	}

	private void scrollDown_MouseEnter(object sender, EventArgs e)
	{
		StartScrollCurrentGrid(down: true);
	}

	private void scrollUp_MouseEnter(object sender, EventArgs e)
	{
		StartScrollCurrentGrid(down: false);
	}

	private void ScrollButtonMouseLeave(object sender, EventArgs e)
	{
		StopScrollCurrentGrid();
	}

	private void ScrollTimerTick(object sender, EventArgs e)
	{
		if (currentMenuGrid != null && currentMenuGrid.ScrollOnMouseMove)
		{
			currentMenuGrid.Scroll(m_bScrollingDown);
		}
	}

	private GridBorder GetGridBorder(VisualStyle style)
	{
		GridBorder gridBorder = null;
		return style switch
		{
			VisualStyle.Office2003 => new GridBorder(GridBorderStyle.Solid, Office2003Colors.DropdownBorderColor), 
			VisualStyle.VS2005 => new GridBorder(GridBorderStyle.Solid, VS2005Colors.MenuBorderColor), 
			VisualStyle.Office2007Outlook => new GridBorder(GridBorderStyle.Solid, Office2007OutlookColors.MenuBorderColor), 
			_ => new GridBorder(GridBorderStyle.Solid, MenuColors.DropDownBorderColor), 
		};
	}
}
