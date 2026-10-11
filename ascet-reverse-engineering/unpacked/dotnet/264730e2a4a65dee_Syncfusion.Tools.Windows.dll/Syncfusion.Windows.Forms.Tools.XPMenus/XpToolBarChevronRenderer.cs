using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class XpToolBarChevronRenderer : SingleLineBarRenderer, IPopupParent, IPopupItem
{
	private const int DEF_CHEVRON_RIGHT_BORDER_OFFSET = 2;

	private const int DEF_CHEVRON_BORDERS_OFFSET = 1;

	private const int DEF_BORDER_WIDTH = 1;

	private const int DEF_ROTETE_ANGLE = 90;

	private bool m_bNeedRecalculateVisibleItems;

	private XPToolBar m_toolBar;

	private ButtonsState m_buttonState;

	private bool m_bIsChevronButtonPushed;

	private PopupMenu m_hiddenItemsMenu;

	private int DEF_CHEVRON_WIDTH => ShouldDrawThemed ? 13 : 10;

	private int DEF_MENU_OFFSET
	{
		get
		{
			int result = 0;
			if (base.Style == VisualStyle.Office2003 || base.Style == VisualStyle.VS2005 || base.Style == VisualStyle.Office2007)
			{
				result = (ShouldDrawThemed ? 1 : 2);
			}
			return result;
		}
	}

	protected Rectangle ChevronButtonBounds
	{
		get
		{
			Rectangle empty = Rectangle.Empty;
			int x = (IsRightToLeft ? (m_toolBar.Left + 2) : (m_toolBar.Width - DEF_CHEVRON_WIDTH - 2));
			if (base.IsVerticallyAligned)
			{
				x = (IsRightToLeft ? (m_toolBar.Top + 2) : (m_toolBar.Height - DEF_CHEVRON_WIDTH - 2));
				empty = new Rectangle(0, x, m_toolBar.Width, DEF_CHEVRON_WIDTH);
				empty.Inflate(-2, 0);
			}
			else
			{
				empty = new Rectangle(x, 0, DEF_CHEVRON_WIDTH, m_toolBar.Height);
				empty.Inflate(0, -2);
			}
			return empty;
		}
	}

	protected virtual bool ShouldDrawThemed => XPThemes.IsThemedOS && XPThemes.IsThemeActive && m_toolBar != null && m_toolBar.ThemesEnabled;

	protected bool ShouldShowChevron
	{
		get
		{
			if (base.InvisibleBarItems != null)
			{
				return base.InvisibleBarItems.Count > 0;
			}
			return false;
		}
	}

	protected PopupMenu HiddenItemsMenu
	{
		get
		{
			if (m_hiddenItemsMenu == null)
			{
				InitializeMenu();
			}
			return m_hiddenItemsMenu;
		}
	}

	protected bool IsRightToLeft => m_toolBar != null && m_toolBar.RightToLeft == RightToLeft.Yes;

	public event MouseEventHandler ChevronMouseDown;

	public XpToolBarChevronRenderer(XPToolBar toolBar)
		: base(toolBar)
	{
		if (toolBar == null)
		{
			throw new ArgumentNullException("toolBar");
		}
		m_toolBar = toolBar;
	}

	public override void GetPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		base.GetPreferredSize(gp, ref preferredSize);
		if (base.IsVerticallyAligned)
		{
			preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
		}
	}

	public override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (!HiddenItemsMenu.IsShowing())
		{
			Point pt = new Point(e.X, e.Y);
			m_buttonState = GetButtonState(pt, m_bIsChevronButtonPushed);
		}
		InvalidateChevron();
	}

	public override bool OnMouseDown(MouseEventArgs e)
	{
		Point pt = new Point(e.X, e.Y);
		m_buttonState = GetButtonState(pt, pressed: true);
		bool flag = false;
		if (ShouldShowChevron && m_buttonState == ButtonsState.DropDownButtonPushed)
		{
			m_bIsChevronButtonPushed = true;
			OnChevronMouseDown(e);
			flag = true;
		}
		else
		{
			if (HiddenItemsMenu.IsShowing())
			{
				HiddenItemsMenu.Hide();
			}
			flag = base.OnMouseDown(e);
		}
		InvalidateChevron();
		return flag;
	}

	public override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		InvalidateChevron();
	}

	public override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		if (!HiddenItemsMenu.IsShowing())
		{
			m_buttonState = ButtonsState.None;
		}
		InvalidateChevron();
	}

	public override void OnPaint(Graphics g, Rectangle clipRect)
	{
		base.OnPaint(g, clipRect);
		if (ShouldShowChevron)
		{
			DrawChevronButton(g);
		}
	}

	public override void AfterComputeBarItemPositions(IGraphicsProvider gp)
	{
		if (!m_bNeedRecalculateVisibleItems && base.InvisibleBarItems.Count > 0)
		{
			m_bNeedRecalculateVisibleItems = true;
			ComputeBarItemPositions(gp);
		}
		m_bNeedRecalculateVisibleItems = false;
	}

	protected override RectangleF CorrectDisplayBounds(RectangleF bounds)
	{
		if (m_bNeedRecalculateVisibleItems)
		{
			int num = DEF_CHEVRON_WIDTH + 2;
			if (IsRightToLeft)
			{
				bounds.Offset(num, 0f);
			}
			else
			{
				num++;
			}
			bounds.Width -= num;
		}
		return bounds;
	}

	protected virtual void OnChevronMouseDown(MouseEventArgs e)
	{
		ShowDropDown();
		RaiseChevronMouseDown(e);
	}

	protected virtual PopupRelativeAlignment GetFirstAlignPreference()
	{
		bool isRightToLeft = IsRightToLeft;
		PopupRelativeAlignment result = (isRightToLeft ? PopupRelativeAlignment.BottomRight : PopupRelativeAlignment.BottomLeft);
		if (base.IsVerticallyAligned)
		{
			result = ((!isRightToLeft) ? ((base.Alignment == CommandBarDockState.Right) ? PopupRelativeAlignment.BottomLeft : PopupRelativeAlignment.BottomRight) : ((base.Alignment != CommandBarDockState.Right) ? PopupRelativeAlignment.TopRight : PopupRelativeAlignment.TopLeft));
		}
		return result;
	}

	protected override CustomizingPopupMenu CreateCustomizationPopup()
	{
		if (base.Bar.Manager == null)
		{
			return null;
		}
		return new BarControlCustomizingMenu();
	}

	protected override bool ProcessKeyDown(Keys key)
	{
		bool result = base.ProcessKeyDown(key);
		if (key == Keys.Tab)
		{
			result = false;
		}
		return result;
	}

	public Point PointToClient(Point pt)
	{
		Point result = new Point(int.MinValue, int.MinValue);
		if (m_toolBar != null)
		{
			return m_toolBar.PointToClient(pt);
		}
		return result;
	}

	private void InitializeMenu()
	{
		m_hiddenItemsMenu = new PopupMenu();
		m_hiddenItemsMenu.ParentBarItem = new ParentBarItem();
	}

	protected void ShowDropDown()
	{
		if (HiddenItemsMenu.IsShowing())
		{
			return;
		}
		ParentBarItem parentBarItem = HiddenItemsMenu.ParentBarItem;
		parentBarItem.Style = base.Style;
		parentBarItem.Items.Clear();
		if (base.InvisibleBarItems != null && base.InvisibleBarItems.Count > 0)
		{
			int i = 0;
			for (int count = base.InvisibleBarItems.Count; i < count; i++)
			{
				parentBarItem.Items.Add(base.InvisibleBarItems[i]);
			}
		}
		HiddenItemsMenu.ShowChildrenUI(Point.Empty, this);
	}

	protected void InvalidateChevron()
	{
		Rectangle chevronButtonBounds = ChevronButtonBounds;
		chevronButtonBounds.Inflate(1, 1);
		m_toolBar.Invalidate(chevronButtonBounds);
	}

	private ButtonsState GetButtonState(Point pt, bool pressed)
	{
		ButtonsState buttonsState = ButtonsState.None;
		if (ChevronButtonBounds.Contains(pt))
		{
			return pressed ? ButtonsState.DropDownButtonPushed : ButtonsState.DropDownButtonHot;
		}
		return ButtonsState.None;
	}

	private void DrawChevronButton(Graphics g)
	{
		GraphicsState gstate = g.Save();
		Rectangle rectangle = ChevronButtonBounds;
		if (base.IsVerticallyAligned)
		{
			rectangle = GetRotatedRect(rectangle);
			g.TranslateTransform(base.Bounds.Width, 0f);
			g.RotateTransform(90f);
		}
		VisualStyle visualStyle = base.Style;
		if (!ShouldDrawThemed && visualStyle != VisualStyle.Office2003 && visualStyle != VisualStyle.VS2005 && visualStyle != VisualStyle.Office2007)
		{
			visualStyle = VisualStyle.Default;
		}
		else if (ShouldDrawThemed && (visualStyle == VisualStyle.Office2003 || visualStyle == VisualStyle.VS2005 || visualStyle == VisualStyle.Office2007))
		{
			visualStyle = VisualStyle.OfficeXP;
		}
		ChevronPainter.DrawChevronButton(g, rectangle, visualStyle, m_buttonState, IsRightToLeft);
		g.Restore(gstate);
	}

	private Rectangle GetRotatedRect(Rectangle rect)
	{
		Rectangle result = Rectangle.Empty;
		if (rect != Rectangle.Empty)
		{
			result = new Rectangle(rect.Y, rect.X, rect.Height, rect.Width);
		}
		return result;
	}

	protected void RaiseChevronMouseDown(MouseEventArgs e)
	{
		if (this.ChevronMouseDown != null)
		{
			this.ChevronMouseDown(this, e);
		}
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		base.ChildClosing(childUI, popupCloseType);
		if (m_bIsChevronButtonPushed)
		{
			ParentBarItem parentBarItem = HiddenItemsMenu.ParentBarItem;
			BarItems items = parentBarItem.Items;
			if (items != null && items.Count > 0)
			{
				items.Clear();
			}
			m_bIsChevronButtonPushed = false;
			Point pt = m_toolBar.PointToClient(Control.MousePosition);
			m_buttonState = GetButtonState(pt, m_bIsChevronButtonPushed);
			InvalidateChevron();
		}
	}

	public override Point[] GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		Point[] array = null;
		if (m_buttonState == ButtonsState.DropDownButtonPushed)
		{
			Rectangle chevronButtonBounds = ChevronButtonBounds;
			chevronButtonBounds.Width += DEF_MENU_OFFSET;
			chevronButtonBounds.Height += DEF_MENU_OFFSET;
			chevronButtonBounds = m_toolBar.RectangleToScreen(chevronButtonBounds);
			return PopupUtils.ComputeDefaultBorderOverlapCue(relativeAlignment, chevronButtonBounds);
		}
		return base.GetBorderOverlapCue(relativeAlignment);
	}

	public override Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment)
	{
		Point empty = Point.Empty;
		if (m_buttonState == ButtonsState.DropDownButtonPushed)
		{
			Rectangle chevronButtonBounds = ChevronButtonBounds;
			chevronButtonBounds.Width += DEF_MENU_OFFSET;
			chevronButtonBounds.Height += DEF_MENU_OFFSET;
			empty = PopupUtils.ComputeDefaultPopupAlignment(prevAlignment, out newAlignment, GetFirstAlignPreference(), PopupRelativeAlignment.RightTop, chevronButtonBounds);
			return m_toolBar.PointToScreen(empty);
		}
		return base.GetLocationForPopupAlignment(prevAlignment, out newAlignment);
	}

	public override Control GetPopupParentControl()
	{
		return (m_buttonState == ButtonsState.DropDownButtonPushed) ? m_toolBar : base.GetPopupParentControl();
	}

	public override bool IsRelatedControl(Control control, bool askPopupParent)
	{
		return (m_buttonState == ButtonsState.DropDownButtonPushed) ? (control == m_toolBar) : base.IsRelatedControl(control, askPopupParent);
	}
}
