using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class DropDownBarItemRenderer : BarItemRenderer, IDropDownItem
{
	protected IPopupChild popupChild;

	protected IPopupParent popupParent;

	public override bool ShowingDropDown
	{
		get
		{
			return base.ShowingDropDown;
		}
		set
		{
			base.ShowingDropDown = value;
			if (!base.IsDisposed)
			{
				MainFrameBarManager mainManager = GetMainManager();
				if (mainManager != null)
				{
					mainManager.ShouldHidePopup = value;
				}
			}
		}
	}

	public override bool Active
	{
		get
		{
			return base.Active;
		}
		set
		{
			if (_active != value)
			{
				base.Active = value;
				if (!_active)
				{
					ShowingDropDown = false;
				}
			}
		}
	}

	public DropDownBarItemRenderer(IBarRenderer parent)
		: base(parent)
	{
		popupParent = parent;
	}

	protected bool ShouldDrawDropDown()
	{
		bool flag = IsItemDropDownStyle(BarItem);
		if (BarItem is ParentBarItem && !flag && base.IsParentMainMenu)
		{
			return false;
		}
		return true;
	}

	public override bool ShouldDrawText()
	{
		bool flag = IsItemDropDownStyle(BarItem);
		if (BarItem is ParentBarItem && !flag && base.IsParentMainMenu)
		{
			return true;
		}
		return base.ShouldDrawText();
	}

	protected internal override bool ShouldDrawImage()
	{
		bool flag = IsItemDropDownStyle(BarItem);
		if (BarItem is ParentBarItem && !flag && base.IsParentMainMenu && BarItem.Text.Length != 0)
		{
			return false;
		}
		return base.ShouldDrawImage();
	}

	public override SizeF GetPreferredSize(IGraphicsProvider gp)
	{
		SizeF preferredSize = base.GetPreferredSize(gp);
		if (ShouldDrawDropDown())
		{
			if (parent.Alignment != CommandBarDockState.Left && parent.Alignment != CommandBarDockState.Right)
			{
				preferredSize.Width += GetDropDownAreaWidth();
			}
			else
			{
				preferredSize.Height += GetDropDownAreaWidth();
			}
		}
		return preferredSize;
	}

	private Point OffsetPointByDropDownArea(Point point)
	{
		if (ShouldDrawDropDown())
		{
			bool isRTL = base.IsRTL;
			if (parent.Alignment != CommandBarDockState.Left && parent.Alignment != CommandBarDockState.Right)
			{
				int num = GetDropDownAreaWidth() + BarItemRenderer.PadX;
				point.X += (isRTL ? (-num) : num);
			}
			else
			{
				int num2 = GetDropDownAreaWidth() + BarItemRenderer.PadY;
				point.Y += (isRTL ? num2 : (-num2));
			}
		}
		return point;
	}

	internal static bool IsItemDropDownStyle(BarItem barItem)
	{
		if (barItem is IParentBarItem && ((IParentBarItem)barItem).ParentStyle == ParentBarItemStyle.DropDown)
		{
			return true;
		}
		return false;
	}

	public override void OnMouseDown(Point pointMouseDown)
	{
		if (!BarItem.Enabled && !parent.Customizing)
		{
			return;
		}
		if (!ShowingDropDown)
		{
			Active = true;
			if (!parent.Customizing && IsItemDropDownStyle(BarItem))
			{
				pointMouseDown = OffsetPointByDropDownArea(pointMouseDown);
				if (!Bounds.Contains(pointMouseDown))
				{
					ShowingDropDown = true;
				}
			}
			else
			{
				ShowingDropDown = true;
				if (popupChild is MenuGrid menuGrid)
				{
					menuGrid.IsClicking = true;
				}
			}
		}
		else if (parent.Customizing)
		{
			ShowingDropDown = false;
			Active = false;
		}
	}

	public override void OnMouseUp(Point pointMouseUp)
	{
		if (!BarItem.Enabled && !parent.Customizing)
		{
			return;
		}
		if (ShowingDropDown)
		{
			ShowingDropDown = false;
			return;
		}
		bool flag = false;
		if (IsItemDropDownStyle(BarItem))
		{
			pointMouseUp = OffsetPointByDropDownArea(pointMouseUp);
			if (Bounds.Contains(pointMouseUp))
			{
				flag = true;
			}
		}
		if (!ShowingDropDown)
		{
			Active = false;
		}
		if (flag)
		{
			parent.DelayedPerformClickOnBarItem = BarItem;
		}
	}

	public override void OnMouseMove(Point pointMouseMove)
	{
		if (BarItem.Enabled && !ShowingDropDown)
		{
			if (IsItemDropDownStyle(BarItem))
			{
				pointMouseMove = OffsetPointByDropDownArea(pointMouseMove);
			}
			HotTrack = Bounds.Contains(pointMouseMove);
		}
	}

	protected override void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, Font textFont, Color textColor, Color bgColor, DrawItemState state)
	{
		if (ShouldDrawDropDown() && !(rectTextAndImage.Width <= 0f) && !(rectTextAndImage.Height <= 0f))
		{
			bool isRTL = base.IsRTL;
			CommandBarDockState alignment = parent.Alignment;
			if (isRTL)
			{
				if (CommandBarDockState.Left != alignment && CommandBarDockState.Right != alignment)
				{
					rectTextAndImage.X += GetDropDownAreaWidth() + 2;
				}
				else
				{
					rectTextAndImage.Y -= GetDropDownAreaWidth() + 2;
				}
			}
			base.DrawTextAndImage(g, rectTextAndImage, textFont, textColor, bgColor, state);
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && !base.IsParentMainMenu && IsItemDropDownStyle(BarItem) && base.Style != VisualStyle.Office2007 && base.Style != VisualStyle.Office2007Outlook)
			{
				return;
			}
			GraphicsState gstate = g.Save();
			g.ResetTransform();
			g.SmoothingMode = SmoothingMode.HighQuality;
			RectangleF rectangleF = ApplyTransform(g, parent.Alignment, Bounds, apply: false);
			float num = rectangleF.Top + rectangleF.Height / 2f + (float)(int)(ComboBoxItemRenderer.GetDropDownArrowHeight() / 2f) + 1f;
			num = (float)Math.Ceiling(num);
			RectangleF value = rectangleF;
			value.X = (isRTL ? rectangleF.Left : (rectangleF.Right - (float)GetDropDownAreaWidth() - 2f));
			value.Width = GetDropDownAreaWidth();
			Point[] dropDownBorderBounds = ComboBoxItemRenderer.GetDropDownBorderBounds(Rectangle.Ceiling(value));
			GraphicsPath graphicsPath = new GraphicsPath();
			graphicsPath.AddLines(dropDownBorderBounds);
			using (Brush brush = new SolidBrush(textColor))
			{
				using Region region = new Region(graphicsPath);
				g.FillRegion(brush, region);
			}
			g.Restore(gstate);
		}
		else
		{
			base.DrawTextAndImage(g, rectTextAndImage, textFont, textColor, bgColor, state);
		}
	}

	protected override RectangleF GetDrawingBounds()
	{
		RectangleF result = Bounds;
		if ((HotTrack || Active) && IsTextOnly())
		{
			result.Y += 1f;
			result.Height -= 3f;
		}
		return result;
	}

	protected override RectangleF GetTextAndImageRect(Graphics g, Rectangle clippingRect)
	{
		RectangleF textAndImageRect = base.GetTextAndImageRect(g, clippingRect);
		if (ShouldDrawDropDown())
		{
			textAndImageRect.Width -= GetDropDownAreaWidth();
		}
		return textAndImageRect;
	}

	protected override Color GetHighlightItemLightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.MenuItemHotColorLight, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.BarItemHighlightLightColor, 
			VisualStyle.VS2005 => VS2005Colors.BarItemHighlightLightColor, 
			_ => MenuColors.SelColor, 
		};
	}

	protected override Color GetPressedItemLightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.MenuMarginColorLight, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.DDBarItemLightColor, 
			VisualStyle.VS2005 => VS2005Colors.DDBarItemLightColor, 
			_ => empty = parent.GetBarControl().GetControl().BackColor, 
		};
	}

	protected override Color GetPressedItemDarktColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.MenuMarginColorDark, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.DDBarItemDarkColor, 
			VisualStyle.VS2005 => VS2005Colors.DDBarItemDarkColor, 
			_ => parent.GetBarControl().GetControl().BackColor, 
		};
	}

	protected override Color GetBGColor()
	{
		Color color = parent.GetBarControl().GetControl().BackColor;
		if (base.ShowHighlightRectangle)
		{
			if (HotTrack && Active)
			{
				color = ((!IsItemDropDownStyle(BarItem) || ShowingDropDown) ? GetPressedItemLightColor(base.Style) : GetHighlightItemLightColor(base.Style));
			}
			else if ((HotTrack || Active) && !ShowingDropDown)
			{
				color = (BarItem.Checked ? GetCheckedItemLightColor(base.Style) : GetHighlightItemLightColor(base.Style));
			}
			else if (base.Style != VisualStyle.Office2003 && base.Style != VisualStyle.VS2005 && base.Style != VisualStyle.Office2007 && base.Style != VisualStyle.Office2007Outlook)
			{
				if (BarItem.Checked)
				{
					color = Color.FromArgb(80, color);
				}
			}
			else if (BarItem.Checked)
			{
				color = GetCheckedItemLightColor(base.Style);
			}
		}
		return color;
	}

	protected override Color GetBGColor2()
	{
		Color result = base.GetBGColor2();
		if (base.ShowHighlightRectangle && HotTrack && Active && IsItemDropDownStyle(BarItem) && !ShowingDropDown)
		{
			result = GetHighlightItemDarkColor(base.Style);
		}
		return result;
	}

	protected override Color GetForeColor(DrawItemState state)
	{
		return base.GetForeColor(state);
	}

	protected override Color GetForeColorDefault(DrawItemState state)
	{
		Color result = ((BarItem == null || !(BarItem.CustomNormalTextColor != Color.Empty)) ? (parent.GetBarControl().UseControlForeColor ? parent.GetBarControl().GetControl().ForeColor : MenuColors.MenuTextColor) : BarItem.CustomNormalTextColor);
		if ((state & DrawItemState.Disabled) > DrawItemState.None)
		{
			result = ((BarItem == null || !(BarItem.CustomDisabledTextColor != Color.Empty)) ? MenuColors.DisabledToolbarItemTextColorBase : BarItem.CustomDisabledTextColor);
		}
		else if ((HotTrack || Active) && !ShowingDropDown)
		{
			if (Active)
			{
				result = ((BarItem == null || !(BarItem.CustomActiveTextColor != Color.Empty)) ? MenuColors.MenuActiveTextColor : BarItem.CustomActiveTextColor);
			}
			else if (BarItem.Enabled)
			{
				result = MenuColors.SelTextColor;
			}
		}
		return result;
	}

	protected override bool IsMouseDown()
	{
		if (HotTrack && Active && !ShowingDropDown)
		{
			return true;
		}
		return false;
	}

	private Brush GetsPressedDropDownBrush(VisualStyle style, Rectangle bounds)
	{
		Brush brush = null;
		return style switch
		{
			VisualStyle.Office2003 => new LinearGradientBrush(bounds, Office2003Colors.PressedSelColor, Office2003Colors.MenuItemHotColorDark, LinearGradientMode.Vertical), 
			VisualStyle.Office2007Outlook => new LinearGradientBrush(bounds, Office2007OutlookColors.BarItemPressLightColor, Office2007OutlookColors.BarItemPressDarkColor, LinearGradientMode.Vertical), 
			VisualStyle.VS2005 => new LinearGradientBrush(bounds, VS2005Colors.BarItemPressLightColor, VS2005Colors.BarItemPressDarkColor, LinearGradientMode.Vertical), 
			_ => new SolidBrush(MenuColors.PressedSelColor), 
		};
	}

	protected override ItemState GetDrawState()
	{
		ItemState result = base.GetDrawState();
		if (Active)
		{
			result = ItemState.Collapsed;
		}
		return result;
	}

	protected override void DrawBackground(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		if (base.Style == VisualStyle.Office2007)
		{
			if (base.ShowHighlightRectangle)
			{
				ItemState drawState = GetDrawState();
				bool bHorizontal = base.IsHorizontalAligned;
				if (!base.IsHorizontalAligned && (parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
				{
					bHorizontal = true;
				}
				Office2007BarItemPainter.DrawDropDownBarItem(drawItemInfo.Graphics, drawItemInfo.Bounds, drawState, bHorizontal);
			}
			return;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && !base.IsParentMainMenu && base.Style != VisualStyle.Office2007Outlook)
		{
			if (!IsItemDropDownStyle(BarItem))
			{
				base.DrawBackground(drawItemInfo, useThemes);
				return;
			}
			bool isRTL = base.IsRTL;
			ThemedToolBarDrawing themedDrawing = parent.GetBarControl().ThemedDrawing;
			themedDrawing.DrawMirrored = isRTL;
			Rectangle rectangle = drawItemInfo.Bounds;
			int num = GetDropDownAreaWidth() + BarItemRenderer.PadX;
			Rectangle rect = rectangle;
			rect.Width = rectangle.Width - num;
			if (isRTL)
			{
				rect.X += num;
			}
			int state = GetCurrentThemeState(drawItemInfo);
			if (ShowingDropDown)
			{
				state = 2;
			}
			Graphics graphics = drawItemInfo.Graphics;
			themedDrawing.DrawButton(graphics, 3, state, rect);
			Rectangle rect2 = new Rectangle(isRTL ? rectangle.Left : rect.Right, rectangle.Y, num, rectangle.Height);
			if (ShowingDropDown)
			{
				state = 3;
			}
			themedDrawing.DrawButton(graphics, 4, state, rect2);
			return;
		}
		base.DrawBackground(drawItemInfo, useThemes);
		if (!HotTrack || !Active || ShowingDropDown)
		{
			return;
		}
		Rectangle rect3 = drawItemInfo.Bounds;
		Brush brush = GetsPressedDropDownBrush(base.Style, rect3);
		if (IsItemDropDownStyle(BarItem))
		{
			int num2 = GetDropDownAreaWidth() + BarItemRenderer.PadX + 1;
			if (base.IsRTL)
			{
				rect3.X += num2;
			}
			rect3.Width -= num2;
		}
		drawItemInfo.Graphics.FillRectangle(brush, rect3);
	}

	protected override void DrawBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && !base.IsParentMainMenu && base.Style != VisualStyle.Office2007Outlook)
		{
			return;
		}
		Graphics graphics = drawItemInfo.Graphics;
		if (((HotTrack || Active) && !ShowingDropDown) || BarItem.Checked)
		{
			base.DrawBorders(drawItemInfo, useThemes);
			if (IsItemDropDownStyle(BarItem) && base.ShowHighlightRectangle)
			{
				Rectangle rectangle = drawItemInfo.Bounds;
				Pen highlightedBorderPen = GetHighlightedBorderPen(base.Style);
				float num = (base.IsRTL ? (rectangle.Left + 1 + GetDropDownAreaWidth() + BarItemRenderer.PadX) : (rectangle.Right - 1 - GetDropDownAreaWidth() - BarItemRenderer.PadX));
				graphics.DrawLine(highlightedBorderPen, num, rectangle.Top, num, rectangle.Bottom - 1);
			}
		}
		if (base.Style != VisualStyle.Office2007 && ShowingDropDown)
		{
			Pen selectedBorderPen = GetSelectedBorderPen(base.Style);
			Rectangle rect = drawItemInfo.Bounds;
			rect.Width--;
			graphics.DrawRectangle(selectedBorderPen, rect);
		}
	}

	private Pen GetHighlightedBorderPen(VisualStyle style)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.Office2007 => new Pen(Office2007BarItemPainter.ColorTable.BarItemHighlightBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.BarItemHighlightBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.BarItemHighlightBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}

	private Pen GetSelectedBorderPen(VisualStyle style)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.DropdownBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.DDBarItemBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.DDBarItemBorderColor), 
			_ => new Pen(MenuColors.DropDownBorderColor), 
		};
	}

	public bool IsShowing()
	{
		if (popupChild != null && popupChild.IsShowing())
		{
			return true;
		}
		return false;
	}

	protected override bool ShowDropDown(Queue pbiQueue)
	{
		if (IsShowing())
		{
			return true;
		}
		Graphics graphics = parent.GetBarControl().GetGraphics();
		ApplyTransform(graphics, parent.Alignment, Bounds, apply: false);
		graphics.Dispose();
		if (BarItem is ParentBarItem)
		{
			ParentBarItem parentBarItem = BarItem as ParentBarItem;
			if (!(parentBarItem is ToolbarListBarItem) || !parent.Customizing)
			{
				popupChild = ShowChildrenUI(parentBarItem, parent, pbiQueue);
			}
		}
		else if (BarItem is DropDownBarItem && !parent.Customizing)
		{
			DropDownBarItem dropDownBarItem = BarItem as DropDownBarItem;
			if (dropDownBarItem.PopupControlContainer != null)
			{
				PopupControlContainer popupControlContainer = (PopupControlContainer)(popupChild = dropDownBarItem.PopupControlContainer);
				popupControlContainer.PopupParent = parent;
				popupControlContainer.RightToLeft = (parent.IsRightToLeft ? RightToLeft.Yes : RightToLeft.No);
				if (popupControlContainer.PopupHost != null)
				{
					popupControlContainer.PopupHost.IgnoreWorkingArea = dropDownBarItem.IgnoreWorkingArea;
				}
				popupControlContainer.ShowPopup(Point.Empty);
			}
		}
		return IsShowing();
	}

	public virtual IPopupChild ShowChildrenUI(ParentBarItem item, IPopupParent parentUI, Queue pbiQueue)
	{
		MenuGrid menuGridToDeploy = XPMenuGridFactory.GetMenuGridToDeploy();
		menuGridToDeploy.IgnoreWorkingArea = item.IgnoreWorkingArea;
		menuGridToDeploy.Show(item, Point.Empty, parentUI, showDefaultSelectionInDropdown, pbiQueue);
		return menuGridToDeploy;
	}

	public virtual bool KeyboardMessage(ref Message m)
	{
		if (popupParent is INeedKeyboardMessages)
		{
			INeedKeyboardMessages needKeyboardMessages = (INeedKeyboardMessages)popupParent;
			return needKeyboardMessages.KeyboardMessage(ref m);
		}
		return false;
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		popupChild = null;
		ShowingDropDown = false;
	}

	public virtual void AfterChildClosing()
	{
	}

	protected override void HideDropDown()
	{
		if (popupChild != null)
		{
			popupChild.HidePopup(PopupCloseType.Canceled);
		}
	}

	public virtual Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlign)
	{
		Graphics graphics = parent.GetBarControl().GetGraphics();
		RectangleF value = ApplyTransform(graphics, parent.Alignment, GetDrawingBounds(), apply: false);
		graphics.Dispose();
		Control control = parent.GetBarControl().GetControl();
		Rectangle dropDownBounds = control.RectangleToScreen(Rectangle.Ceiling(value));
		return PopupUtils.ComputeDefaultBorderOverlapCue(rAlign, dropDownBounds);
	}

	private RectangleF GetBounds()
	{
		Graphics graphics = parent.GetBarControl().GetGraphics();
		RectangleF result = ApplyTransform(graphics, parent.Alignment, GetDrawingBounds(), apply: false);
		graphics.Dispose();
		return result;
	}

	public Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign, bool bIsRightToLeft)
	{
		RectangleF value = GetBounds();
		Control control = parent.GetBarControl().GetControl();
		Point p = PopupUtils.ComputeDefaultPopupAlignment(prevAlign, out newAlign, GetFirstAlignPreference(), GetLastAlignPreference(), Rectangle.Ceiling(value));
		p.X = (bIsRightToLeft ? ((int)value.Right) : p.X);
		return control.PointToScreen(p);
	}

	public Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		RectangleF value = GetBounds();
		Control control = parent.GetBarControl().GetControl();
		Point p = PopupUtils.ComputeDefaultPopupAlignment(prevAlign, out newAlign, GetFirstAlignPreference(), GetLastAlignPreference(), Rectangle.Ceiling(value));
		return control.PointToScreen(p);
	}

	protected virtual PopupRelativeAlignment GetLastAlignPreference()
	{
		if (parent.Alignment == CommandBarDockState.Left || parent.Alignment == CommandBarDockState.Left)
		{
			return PopupRelativeAlignment.RightTop;
		}
		return PopupRelativeAlignment.BottomLeft;
	}

	protected PopupRelativeAlignment GetFirstAlignPreference()
	{
		return parent.GetFirstPopupAlignPreference();
	}

	public Control GetPopupParentControl()
	{
		return null;
	}

	public virtual bool IsRelatedControl(Control ctl)
	{
		bool result = false;
		if (BarItem is DropDownBarItem { PopupControlContainer: { } popupControlContainer })
		{
			result = popupControlContainer.Contains(ctl);
		}
		return result;
	}
}
