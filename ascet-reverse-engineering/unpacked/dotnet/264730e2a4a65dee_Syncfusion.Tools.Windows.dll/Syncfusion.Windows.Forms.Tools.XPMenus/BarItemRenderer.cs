using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarItemRenderer : IBarItemRenderer, IDisposable
{
	private const int m_cDefaultPaddingForThemesX = 4;

	private const int m_cDefaultPaddingForThemesY = 6;

	private BarItem barItem;

	private bool hotTrack;

	internal bool _active;

	private bool visible = true;

	protected IBarRenderer parent;

	private RectangleF bounds;

	protected RectangleF lastDrawnBounds = RectangleF.Empty;

	private bool showingDropDown;

	protected bool showDefaultSelectionInDropdown;

	private bool themesEnabled;

	private VisualStyle style = VisualStyle.OfficeXP;

	private bool textSizeKnown;

	private SizeF szText = SizeF.Empty;

	private Queue m_queueParentBarItems;

	public static int ImageTextPadding = 2;

	public static int PadX = 2;

	public static int PadY = 3;

	public static int DropDownAreaX = 9;

	internal static readonly Point DEF_PADDING = Point.Empty;

	private bool m_bIsDisposed;

	internal int PaddingForThemesX
	{
		get
		{
			if (BarItem != null)
			{
				return BarItem.PaddingForThemesX;
			}
			return 4;
		}
	}

	internal int PaddingForThemesY
	{
		get
		{
			if (BarItem != null)
			{
				return BarItem.PaddingForThemesY;
			}
			return 6;
		}
	}

	internal Point Padding
	{
		get
		{
			if (BarItem != null)
			{
				return BarItem.Padding;
			}
			return DEF_PADDING;
		}
	}

	protected bool IsParentMainMenu => (parent.Bar.BarStyle & BarStyle.IsMainMenu) > BarStyle.None;

	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			VisualStyle visualStyle = style;
			style = value;
			BarItemPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Style", visualStyle, style));
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			themesEnabled = value;
		}
	}

	public virtual bool NeedCenterVAlign => true;

	public virtual bool HotTrack
	{
		get
		{
			if (parent.Customizing)
			{
				return false;
			}
			return hotTrack;
		}
		set
		{
			if (hotTrack == value)
			{
				return;
			}
			if (value && !barItem.Enabled && !parent.Customizing)
			{
				value = false;
			}
			if (hotTrack != value)
			{
				hotTrack = value;
				if (!hotTrack)
				{
					ShowingDropDown = false;
				}
				Repaint();
			}
		}
	}

	public virtual bool Active
	{
		get
		{
			if (parent.Customizing)
			{
				return false;
			}
			return _active;
		}
		set
		{
			if ((!value || barItem.Enabled || parent.Customizing) && _active != value)
			{
				_active = value;
				Repaint();
				OnActiveChanged();
			}
		}
	}

	public virtual bool ShowingDropDown
	{
		get
		{
			return showingDropDown;
		}
		set
		{
			if ((value && !barItem.Enabled && !parent.Customizing) || !(this is IDropDownItem) || showingDropDown == value)
			{
				return;
			}
			showingDropDown = value;
			if (showingDropDown)
			{
				showingDropDown = ShowDropDown(m_queueParentBarItems);
				if (m_bIsDisposed)
				{
					Active = false;
					HideDropDown();
				}
				else if (showingDropDown)
				{
					Active = true;
				}
			}
			else
			{
				Active = false;
				HideDropDown();
			}
			if (!m_bIsDisposed)
			{
				Repaint();
			}
		}
	}

	public virtual bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			visible = value;
		}
	}

	protected internal bool IsRTL
	{
		get
		{
			if (parent == null)
			{
				return false;
			}
			return parent.IsRightToLeft;
		}
	}

	public virtual BarItem BarItem
	{
		get
		{
			return barItem;
		}
		set
		{
			barItem = value;
		}
	}

	public virtual RectangleF Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
		}
	}

	public bool IsDisposed => m_bIsDisposed;

	protected bool IsHorizontalAligned
	{
		get
		{
			if (parent.Alignment == CommandBarDockState.Top || parent.Alignment == CommandBarDockState.Bottom || parent.Alignment == CommandBarDockState.Float || parent.Alignment == CommandBarDockState.None)
			{
				return true;
			}
			return false;
		}
	}

	private bool DrawTextBelowImage => (parent.Bar.BarStyle & BarStyle.TextBelowImage) > BarStyle.None;

	protected bool ShowHighlightRectangle
	{
		get
		{
			bool result = true;
			if (barItem.Manager != null)
			{
				result = BarItem.Manager.ShowHighlightRectangle;
			}
			else if (parent is BarRenderer barRenderer && barRenderer.GetBarControl() is XPToolBar xPToolBar)
			{
				result = xPToolBar.ShowHighlightRectangle;
			}
			return result;
		}
	}

	protected bool ShowDropShadow
	{
		get
		{
			if (barItem.Manager != null)
			{
				return barItem.Manager.ShowDropShadow;
			}
			return true;
		}
	}

	public virtual bool ShouldDrawText()
	{
		if ((barItem != null && barItem.PaintStyle != PaintStyle.Default && barItem.PaintStyle != PaintStyle.TextOnlyInMenus) || (barItem.ImageIndex == -1 && BarItem.Image == null))
		{
			return true;
		}
		return false;
	}

	protected internal virtual bool ShouldDrawImage()
	{
		if (barItem != null && barItem.PaintStyle != PaintStyle.TextOnly)
		{
			return true;
		}
		return false;
	}

	protected MainFrameBarManager GetMainManager()
	{
		MainFrameBarManager mainFrameBarManager = barItem.Manager as MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			return mainFrameBarManager;
		}
		if (barItem.Manager is ChildFrameBarManager childFrameBarManager)
		{
			mainFrameBarManager = childFrameBarManager.MainFrameBarManager;
		}
		return mainFrameBarManager;
	}

	public void DropDown(bool show, bool setDefaultSelection, Queue pbiQueue)
	{
		if (show)
		{
			showDefaultSelectionInDropdown = setDefaultSelection;
			m_queueParentBarItems = pbiQueue;
			ShowingDropDown = true;
			m_queueParentBarItems = null;
			showDefaultSelectionInDropdown = false;
		}
		else
		{
			ShowingDropDown = false;
		}
	}

	internal virtual void OnActiveChanged()
	{
	}

	public BarItemRenderer(IBarRenderer parent)
	{
		this.parent = parent;
	}

	~BarItemRenderer()
	{
		Dispose(disposing: false);
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing)
		{
			barItem = null;
			parent = null;
			m_bIsDisposed = true;
		}
	}

	protected void Repaint()
	{
		Graphics graphics = parent.GetBarControl().GetGraphics();
		RectangleF affectedRect = ApplyTransform(graphics, parent.Alignment, bounds, apply: false);
		graphics.Dispose();
		parent.GetBarControl().OnRepaint(affectedRect);
	}

	public virtual void BarItemPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		if (e.PropertyChangeEffect == PropertyChangeEffect.NeedLayout)
		{
			InvalidateCachedTextSizes();
		}
	}

	public virtual void InvalidateCachedTextSizes()
	{
		textSizeKnown = false;
		szText = SizeF.Empty;
	}

	public virtual SizeF GetPreferredSize(IGraphicsProvider gp)
	{
		SizeF preferredSize = SizeF.Empty;
		AddTextPreferredSize(gp, ref preferredSize);
		Size size = BarItem.GetImageSizeInternal(parent.LargeIcons);
		if (!IsHorizontalAligned)
		{
			size = new Size(size.Height, size.Width);
			if ((parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
			{
				preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
			}
		}
		bool flag = ShouldDrawImage();
		bool flag2 = false;
		if (flag && (size.Width > 0 || size.Height > 0))
		{
			if (barItem.ImageIndex != -1 || BarItem.Image != null)
			{
				flag2 = true;
				if (IsHorizontalAligned && DrawTextBelowImage)
				{
					preferredSize.Height += size.Height;
					if (preferredSize.Width < (float)(ImageTextPadding + size.Width))
					{
						preferredSize.Width += ImageTextPadding + size.Width;
					}
				}
				else
				{
					preferredSize.Width += ImageTextPadding;
					preferredSize.Width += size.Width;
				}
			}
			preferredSize.Height = ((preferredSize.Height < (float)size.Height) ? ((float)size.Height) : preferredSize.Height);
		}
		preferredSize.Width += PadX * 2;
		preferredSize.Height += PadY * 2;
		preferredSize.Width += 1f;
		if (!flag2 && IsParentMainMenu)
		{
			preferredSize.Width += 4f;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && !IsParentMainMenu && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook)
		{
			preferredSize.Width += PaddingForThemesX;
			preferredSize.Height += PaddingForThemesY;
		}
		else
		{
			preferredSize.Width += Padding.X;
			preferredSize.Height += Padding.Y;
		}
		return preferredSize;
	}

	public virtual void AddTextPreferredSize(IGraphicsProvider gp, ref SizeF preferredSize)
	{
		if (!ShouldDrawText() || !(barItem.Text != ""))
		{
			return;
		}
		if (!textSizeKnown)
		{
			Font font = parent.GetBarControl().GetControl().Font;
			if (barItem != null && barItem.CustomTextFont != null)
			{
				font = barItem.CustomTextFont;
			}
			ProvideFontInfoEventArgs e = new ProvideFontInfoEventArgs(font);
			barItem.OnProvideFontInfo(e);
			font = e.Font;
			Size size = MeasureText(gp.Graphics, barItem.Text, font);
			size.Height++;
			size.Width++;
			textSizeKnown = true;
			szText = new SizeF(size.Width, size.Height);
		}
		preferredSize.Width += szText.Width;
		preferredSize.Height += szText.Height;
	}

	protected Size MeasureText(Graphics g, string text, Font font, TextFormatFlags textFormat)
	{
		Size result;
		using (TextRendererDC dc = new TextRendererDC(g))
		{
			result = TextRenderer.MeasureText(dc, text, font, new Size(int.MaxValue, int.MaxValue), textFormat);
			if ((parent.Alignment & (CommandBarDockState)12) != CommandBarDockState.None)
			{
				result.Width += 6;
			}
		}
		return result;
	}

	protected Size MeasureText(Graphics g, string text, Font font)
	{
		return MeasureText(g, text, font, TextFormatFlags.Default);
	}

	public virtual void OnMouseDown(Point pointMouseDown)
	{
		if (barItem.Enabled || parent.Customizing)
		{
			Active = true;
		}
	}

	public virtual void OnMouseUp(Point pointMouseUp)
	{
		if (barItem.Enabled || parent.Customizing)
		{
			bool flag = false;
			if (Active && HitTest(pointMouseUp))
			{
				flag = true;
			}
			Active = false;
			if (flag)
			{
				parent.DelayedPerformClickOnBarItem = barItem;
			}
		}
	}

	public virtual void OnMouseMove(Point pointMouseMove)
	{
		HotTrack = HitTest(pointMouseMove);
	}

	public virtual void OnMouseWheel(bool isUp)
	{
	}

	protected int GetDropDownAreaWidth()
	{
		return (int)((float)DropDownAreaX * ((float)SystemInformation.MenuCheckSize.Width / 13f));
	}

	protected virtual void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
		ControlPaint.DrawFocusRectangle(g, Rectangle.Round(focusRect), fore, back);
	}

	[Obsolete("Not used.")]
	public virtual RectangleF GetTextPosition(Graphics g, string text, Font font, RectangleF rectLayout, StringFormat stringformat)
	{
		return RectangleF.Empty;
	}

	public virtual RectangleF GetTextPosition(Graphics g, string text, Font font, RectangleF rectLayoutF, TextFormatFlags format)
	{
		format &= ~TextFormatFlags.HidePrefix;
		Rectangle rectangle = Rectangle.Round(rectLayoutF);
		Size empty = Size.Empty;
		if (parent.Alignment != CommandBarDockState.Left && parent.Alignment != CommandBarDockState.Right)
		{
			empty = MeasureText(g, text, font, format);
		}
		else
		{
			GraphicsState gstate = g.Save();
			g.ResetTransform();
			empty = MeasureText(g, text, font, format);
			g.Restore(gstate);
			if ((parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
			{
				empty = new Size(empty.Height, empty.Width);
			}
		}
		empty.Height++;
		empty.Width++;
		Rectangle rectangle2 = new Rectangle(rectangle.X, rectangle.Y, empty.Width, empty.Height);
		if ((format & TextFormatFlags.Right) != TextFormatFlags.Default)
		{
			rectangle2.Offset(rectangle.Width - rectangle2.Width, 0);
		}
		else if ((format & TextFormatFlags.HorizontalCenter) != TextFormatFlags.Default)
		{
			rectangle2.Offset((rectangle.Width - rectangle2.Width) / 2, 0);
		}
		if ((format & TextFormatFlags.Bottom) != TextFormatFlags.Default)
		{
			rectangle2.Offset(0, rectangle.Height - rectangle2.Height);
		}
		else if ((format & TextFormatFlags.VerticalCenter) != TextFormatFlags.Default)
		{
			rectangle2.Offset(0, (rectangle.Height - rectangle2.Height) / 2);
		}
		return rectangle2;
	}

	public virtual void DrawSeparator(Graphics g)
	{
		DrawSeparator(g, bounds);
	}

	protected virtual void DrawSeparator(Graphics g, RectangleF fBounds)
	{
		ApplyTransform(g);
		switch (Style)
		{
		case VisualStyle.Office2003:
			DrawSeparatorOffice2003(g, fBounds);
			break;
		case VisualStyle.VS2005:
			DrawSeparatorVS2005(g, fBounds);
			break;
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			DrawSeparatorOffice2007(g, fBounds);
			break;
		default:
			DrawSeparatorDefault(g, fBounds);
			break;
		}
		g.ResetTransform();
	}

	private void DrawSeparatorDefault(Graphics g, RectangleF fBounds)
	{
		Pen pen = new Pen(SystemColors.ControlDark, 1f);
		float y = fBounds.Y;
		float bottom = fBounds.Bottom;
		float num = (IsRTL ? (fBounds.Right + 3f) : (fBounds.Left - 3f));
		g.DrawLine(pen, num, y, num, bottom);
		pen.Dispose();
	}

	private void DrawSeparatorOffice2003(Graphics g, RectangleF fBounds)
	{
		Pen pen = new Pen(Office2003Colors.SeparatorColor, 1f);
		Pen pen2 = new Pen(SystemColors.ControlLightLight, 1f);
		float num = fBounds.Y + 3f;
		float num2 = fBounds.Bottom - 5f;
		bool isRTL = IsRTL;
		float num3 = (isRTL ? (fBounds.Right + 3f) : (fBounds.Left - 3f));
		float num4 = (isRTL ? (num3 - 1f) : (num3 + 1f));
		g.DrawLine(pen, num3, num, num3, num2);
		g.DrawLine(pen2, num4, num + 1f, num4, num2 + 1f);
		pen.Dispose();
		pen2.Dispose();
	}

	private void DrawSeparatorVS2005(Graphics g, RectangleF fBounds)
	{
		Pen pen = new Pen(VS2005Colors.BarItemSeparatorColor, 1f);
		float y = fBounds.Y + 3f;
		float y2 = fBounds.Bottom - 5f;
		float num = (IsRTL ? (fBounds.Right + 3f) : (fBounds.Left - 3f));
		g.DrawLine(pen, num, y, num, y2);
		pen.Dispose();
	}

	private void DrawSeparatorOffice2007(Graphics g, RectangleF fBounds)
	{
		Office2007BarItemPainter.DrawSeparator(g, fBounds, IsRTL);
	}

	protected bool IsTextOnly()
	{
		if (ShouldDrawImage())
		{
			IList imageListInternal = barItem.GetImageListInternal(parent.LargeIcons);
			if (imageListInternal != null)
			{
				int imageIndex = barItem.ImageIndex;
				if (imageIndex >= 0 && imageIndex < imageListInternal.Count)
				{
					return false;
				}
			}
		}
		return true;
	}

	[Obsolete("Not used.")]
	protected virtual void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, Font textFont, Brush textBrush, Color bgColor, DrawItemState state)
	{
	}

	protected virtual void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, Font textFont, Color textColor, Color bgColor, DrawItemState state)
	{
		if (rectTextAndImage.Width <= 0f || rectTextAndImage.Height <= 0f)
		{
			return;
		}
		bool flag = ShouldDrawImage();
		bool flag2 = (state & DrawItemState.Disabled) <= DrawItemState.None;
		bool isRTL = IsRTL;
		ImageExt imageExt = null;
		bool flag3 = false;
		Size size = Size.Empty;
		IList imageListInternal = barItem.GetImageListInternal(parent.LargeIcons);
		TextFormatFlags textFormatFlags = TextFormatFlags.Default;
		BarManager barManager = BarItem.barManager;
		if (barManager != null && RightToLeft.Yes == barManager.RightToLeft)
		{
			textFormatFlags |= TextFormatFlags.RightToLeft;
		}
		if ((!flag || barItem.ImageIndex < 0 || imageListInternal == null || imageListInternal.Count <= barItem.ImageIndex) && BarItem.Image == null)
		{
			textFormatFlags |= TextFormatFlags.HorizontalCenter;
		}
		else if (IsHorizontalAligned && DrawTextBelowImage)
		{
			textFormatFlags |= TextFormatFlags.HorizontalCenter;
			textFormatFlags |= TextFormatFlags.Bottom;
		}
		RectangleF rectangleF = GetTextPosition(g, barItem.Text, textFont, rectTextAndImage, textFormatFlags);
		if (flag)
		{
			if (BarItem.Image != null)
			{
				imageExt = BarItem.Image;
				size = BarItem.ImageSize;
			}
			else
			{
				int imageIndex = barItem.ImageIndex;
				if (imageListInternal != null)
				{
					if (imageIndex >= 0 && imageIndex < imageListInternal.Count)
					{
						imageExt = new ImageExt(imageListInternal[imageIndex] as Image);
						imageExt.ImageTransparentColor = barItem.ImageTransparentColor;
						flag3 = true;
					}
					size = barItem.GetImageSizeInternal(parent.LargeIcons);
				}
				if (!IsHorizontalAligned)
				{
					size = new Size(size.Height, size.Width);
				}
			}
		}
		CommandBarDockState alignment = parent.Alignment;
		if (imageExt != null)
		{
			RectangleF rect = new RectangleF(new PointF(rectTextAndImage.Left, rectTextAndImage.Top), size);
			if (!IsHorizontalAligned || !DrawTextBelowImage)
			{
				if (rectTextAndImage.Height > rect.Height)
				{
					rect.Offset(0f, (rectTextAndImage.Height - rect.Height) / 2f);
				}
				rectangleF.Offset(rect.Width + (float)ImageTextPadding, 0f);
			}
			else if (rectTextAndImage.Width > rect.Width)
			{
				rect.Offset((rectTextAndImage.Width - rect.Width) / 2f, 0f);
			}
			int num = 1;
			int num2 = 1;
			bool flag4 = false;
			bool flag5 = (barItem.DrawImageMirrored || isRTL) && (parent.Alignment == CommandBarDockState.Left || parent.Alignment == CommandBarDockState.Right);
			if ((((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled) && Style != VisualStyle.Office2003 && Style != VisualStyle.VS2005 && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook) || !flag2) && (ShowingDropDown || ((HotTrack || Active || !flag2) && (!HotTrack || !Active))))
			{
				if (HotTrack || ShowingDropDown || (!HotTrack && Active))
				{
					int num3 = ((barItem.DrawImageMirrored || isRTL) ? (-num) : num);
					int num4 = ((parent.Alignment == CommandBarDockState.Left || parent.Alignment == CommandBarDockState.Right) ? (-num2) : num2);
					flag4 = true;
					rect.Offset(num3, num4);
				}
				GraphicsState gstate = g.Save();
				g.ResetTransform();
				RectangleF rectangleF2 = ApplyTransform(g, alignment, rect, apply: false);
				Rectangle rectBounds = new Rectangle((int)rectangleF2.Left, (int)rectangleF2.Top, imageExt.Width, imageExt.Height);
				if (flag5 && flag4)
				{
					rectBounds.X -= 2 * num;
					rectBounds.Y += 2 * num2;
				}
				using (CMirroredDrawer cMirroredDrawer = new CMirroredDrawer(g, rectBounds, barItem.DrawImageMirrored))
				{
					Graphics virtualGfx = cMirroredDrawer.VirtualGfx;
					Rectangle virtualBounds = cMirroredDrawer.VirtualBounds;
					Rectangle rc = new Rectangle(virtualBounds.Location, size);
					switch (state)
					{
					case DrawItemState.Disabled:
						if (!DrawDisabledImage(virtualGfx, rc) && imageExt != null)
						{
							Rectangle rectangle = new Rectangle(virtualBounds.Location, size);
							imageExt.Draw(virtualGfx, rectangle, DrawItemState.Disabled);
						}
						break;
					case DrawItemState.HotLight:
						if (BarItem.HighlightedImage != null)
						{
							bool flag6 = BarItem.Manager != null && BarItem.Manager.LargeIcons;
							bool flag7 = !BarItem.IsValidHighlightedImageIndex(flag6 && BarItem.LargeImageList != null);
							if (ShowDropShadow && flag7)
							{
								DrawingUtils.DrawShadow(virtualGfx, imageExt.GetImage(), virtualBounds.Left, virtualBounds.Top);
							}
							break;
						}
						goto default;
					default:
						if (ShowDropShadow)
						{
							imageExt.Draw(g, rc, DrawItemState.Disabled);
						}
						else if (state != DrawItemState.None)
						{
							imageExt.Draw(g, rc, state);
						}
						break;
					}
				}
				g.Restore(gstate);
			}
			flag4 = false;
			if (flag2)
			{
				if ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled) && Style != VisualStyle.Office2003 && Style != VisualStyle.VS2005 && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook && ((HotTrack && !Active) || ShowingDropDown || (!HotTrack && Active)))
				{
					int num5 = ((barItem.DrawImageMirrored || isRTL) ? (2 * num) : (-2 * num));
					int num6 = ((parent.Alignment == CommandBarDockState.Left || parent.Alignment == CommandBarDockState.Right) ? (2 * num2) : (-2 * num2));
					rect.Offset(num5, num6);
					flag4 = true;
				}
				GraphicsState gstate2 = g.Save();
				g.ResetTransform();
				RectangleF rectangleF3 = ApplyTransform(g, alignment, rect, apply: false);
				Rectangle rectBounds2 = ((imageExt == null) ? new Rectangle((int)rectangleF3.X, (int)rectangleF3.Y, size.Width, size.Height) : new Rectangle((int)rectangleF3.X, (int)rectangleF3.Y, BarItem.ImageSize.Width, BarItem.ImageSize.Height));
				if (flag5 && flag4)
				{
					rectBounds2.X += num;
					rectBounds2.Y -= 2 * num2;
				}
				if (size.Width > 0 && size.Height > 0)
				{
					using CMirroredDrawer cMirroredDrawer2 = new CMirroredDrawer(g, rectBounds2, barItem.DrawImageMirrored);
					Graphics virtualGfx2 = cMirroredDrawer2.VirtualGfx;
					Rectangle rc2 = new Rectangle(cMirroredDrawer2.VirtualBounds.Location, size);
					if (!DrawStateImage(virtualGfx2, rc2, state))
					{
						imageExt?.Draw(virtualGfx2, rc2, DrawItemState.None);
					}
				}
				g.Restore(gstate2);
				if (!HotTrack && !Active && !ShowingDropDown && (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled) && Style != VisualStyle.Office2003 && Style != VisualStyle.OfficeXP && Style != VisualStyle.VS2005 && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook)
				{
					g.FillRectangle(new SolidBrush(Color.FromArgb(255 - MenuColors.InactiveItemAlphaBlendFactor, bgColor)), rect);
				}
			}
			if (imageExt != null && flag3)
			{
				imageExt.Dispose();
			}
		}
		if (ShouldDrawText())
		{
			if (!IsHorizontalAligned && (parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
			{
				rectangleF.Height = rectTextAndImage.Height;
			}
			else if (rectTextAndImage.Height > rectangleF.Height && (!IsHorizontalAligned || !DrawTextBelowImage))
			{
				rectangleF.Offset(0f, (rectTextAndImage.Height - rectangleF.Height) / 2f);
			}
			TextFormatFlags textFormatFlags2 = textFormatFlags | TextFormatFlags.EndEllipsis;
			textFormatFlags2 = ((!parent.HintViaHotKeyPrefix && !barItem.ShowMnemonicUnderlinesAlways) ? (textFormatFlags2 | TextFormatFlags.HidePrefix) : (textFormatFlags2 & ~TextFormatFlags.HidePrefix));
			GraphicsState graphicsState = null;
			if (!IsHorizontalAligned && (parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
			{
				graphicsState = g.Save();
				g.ResetTransform();
				rectangleF = BarRenderer.ApplyTransform(g, alignment, rectangleF, apply: false);
				textFormatFlags2 |= TextFormatFlags.HorizontalCenter;
			}
			if (rectangleF.Width > 0f && rectangleF.Height > 0f)
			{
				DrawText(g, barItem.Text, textFont, textColor, rectangleF, textFormatFlags2);
			}
			if (graphicsState != null)
			{
				g.Restore(graphicsState);
			}
		}
	}

	protected void DrawText(Graphics g, string text, Font textFont, Color textColor, RectangleF rectText, TextFormatFlags format)
	{
		Rectangle rectangle = Rectangle.Round(rectText);
		using TextRendererDC dc = new TextRendererDC(g);
		TextRenderer.DrawText(dc, text, textFont, rectangle, textColor, format);
	}

	protected virtual RectangleF GetDrawingBounds()
	{
		return Bounds;
	}

	protected virtual RectangleF GetTextAndImageRect(Graphics g, Rectangle clippingRect)
	{
		RectangleF rect = Bounds;
		rect = RectangleF.Inflate(rect, -PadX, -PadY);
		rect.X += 1f;
		rect.Width -= 1f;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && !IsParentMainMenu && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook)
		{
			rect.Inflate(-PaddingForThemesX / 2, -PaddingForThemesY / 2);
		}
		else
		{
			rect.Inflate(-Padding.X / 2, -Padding.Y / 2);
		}
		return ApplyTransform(g, parent.Alignment, rect, apply: false);
	}

	protected virtual Color GetBGColor2()
	{
		Color result = Color.Empty;
		if (ShowHighlightRectangle && !barItem.IsValidHighlightedImageIndex(parent.LargeIcons))
		{
			if (barItem.Checked)
			{
				result = GetCheckedItemDarkColor(Style);
			}
			else if (HotTrack && Active)
			{
				result = GetPressedItemDarktColor(Style);
			}
			else if (HotTrack || Active)
			{
				result = (barItem.Checked ? GetCheckedItemDarkColor(Style) : GetHighlightItemDarkColor(Style));
			}
		}
		return result;
	}

	protected virtual Color GetBGColor()
	{
		Color color = parent.GetBarControl().GetControl().BackColor;
		if (ShowHighlightRectangle && !barItem.IsValidHighlightedImageIndex(parent.LargeIcons))
		{
			if (HotTrack && Active)
			{
				color = GetPressedItemLightColor(Style);
			}
			else if (HotTrack || Active)
			{
				color = (barItem.Checked ? GetCheckedItemLightColor(Style) : GetHighlightItemLightColor(Style));
			}
			else if (Style != VisualStyle.Office2003 && Style != VisualStyle.VS2005 && Style != VisualStyle.Office2007 && Style != VisualStyle.Office2007Outlook)
			{
				if (barItem.Checked)
				{
					color = Color.FromArgb(80, color);
				}
			}
			else if (barItem.Checked)
			{
				color = ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled || Style == VisualStyle.Office2007 || Style == VisualStyle.Office2007Outlook) ? GetCheckedItemLightColor(Style) : Color.FromArgb(80, color));
			}
		}
		return color;
	}

	protected virtual Color GetForeColor(DrawItemState state)
	{
		Color empty = Color.Empty;
		switch (Style)
		{
		case VisualStyle.Office2003:
			return GetForeColorOffice2003(state);
		case VisualStyle.VS2005:
			return GetForeColorVS2005(state);
		case VisualStyle.Office2007:
		case VisualStyle.Office2007Outlook:
			return GetForeColorOffice2007(state);
		default:
			return GetForeColorDefault(state);
		}
	}

	protected virtual Color GetForeColorDefault(DrawItemState state)
	{
		Color result = ((barItem != null && !(barItem.CustomNormalTextColor == Color.Empty)) ? BarItem.CustomNormalTextColor : (parent.GetBarControl().UseControlForeColor ? parent.GetBarControl().GetControl().ForeColor : MenuColors.MenuTextColor));
		if ((state & DrawItemState.Disabled) > DrawItemState.None)
		{
			result = GetDisabledForeColor(barItem);
		}
		else if (HotTrack || Active)
		{
			if (Active)
			{
				result = ((barItem != null && !(barItem.CustomActiveTextColor == Color.Empty)) ? barItem.CustomActiveTextColor : MenuColors.MenuActiveTextColor);
			}
			else if (barItem.Enabled)
			{
				result = MenuColors.SelTextColor;
			}
		}
		return result;
	}

	protected virtual Color GetForeColorOffice2007(DrawItemState state)
	{
		Color empty = Color.Empty;
		empty = ((barItem != null && !(barItem.CustomNormalTextColor == Color.Empty)) ? BarItem.CustomNormalTextColor : ((BarItem.barManager == null || BarItem.barManager.MainFrameBarManager == null || BarItem.barManager.MainFrameBarManager.Office2007Theme != Office2007Theme.Black || !IsParentMainMenu || ((HotTrack || Active) && !(barItem is IRequiresControl))) ? (parent.GetBarControl().UseControlForeColor ? parent.GetBarControl().GetControl().ForeColor : MenuColors.MenuTextColor) : Color.White));
		if ((state & DrawItemState.Disabled) > DrawItemState.None)
		{
			empty = GetDisabledForeColor(barItem);
		}
		return empty;
	}

	protected virtual Color GetForeColorVS2005(DrawItemState state)
	{
		Color result = GetForeColorDefault(state);
		if ((state & DrawItemState.Disabled) == 0 && (barItem == null || barItem.CustomNormalTextColor == Color.Empty) && !parent.GetBarControl().UseControlForeColor)
		{
			result = Color.Black;
		}
		return result;
	}

	protected virtual Color GetForeColorOffice2003(DrawItemState state)
	{
		Color empty = Color.Empty;
		empty = ((barItem != null && !(barItem.CustomNormalTextColor == Color.Empty)) ? BarItem.CustomNormalTextColor : (parent.GetBarControl().UseControlForeColor ? parent.GetBarControl().GetControl().ForeColor : MenuColors.MenuTextColor));
		if ((state & DrawItemState.Disabled) > DrawItemState.None)
		{
			empty = GetDisabledForeColor(barItem);
		}
		return empty;
	}

	private Color GetDisabledForeColor(BarItem barItem)
	{
		Color empty = Color.Empty;
		if (this.barItem == null || this.barItem.CustomDisabledTextColor == Color.Empty)
		{
			return MenuColors.DisabledToolbarItemTextColorBase;
		}
		return this.barItem.CustomDisabledTextColor;
	}

	public virtual void OnPaint(Graphics g, Rectangle clippingRect)
	{
		if (!Visible)
		{
			return;
		}
		RectangleF rect = BarRenderer.ApplyTransform(g, parent.Alignment, clippingRect, apply: true);
		if (Bounds.IntersectsWith(rect))
		{
			RectangleF rect2 = (lastDrawnBounds = GetDrawingBounds());
			CommandBarDockState alignment = parent.Alignment;
			rect2 = ApplyTransform(g, alignment, rect2, apply: false);
			RectangleF textAndImageRect = GetTextAndImageRect(g, clippingRect);
			Color bGColor = GetBGColor();
			Color bGColor2 = GetBGColor2();
			DrawItemState drawItemState = DrawItemState.None;
			if (HotTrack)
			{
				drawItemState |= DrawItemState.HotLight;
			}
			if (!barItem.Enabled && (!parent.Customizing || parent.DndCustomizing) && (barItem.Manager == null || !barItem.Manager.Customizing || barItem.Manager.DndCustomizing))
			{
				drawItemState |= DrawItemState.Disabled;
			}
			Color foreColor = GetForeColor(drawItemState);
			Font font = parent.GetBarControl().GetControl().Font;
			if (barItem != null && barItem.CustomTextFont != null)
			{
				font = barItem.CustomTextFont;
			}
			ProvideFontInfoEventArgs e = new ProvideFontInfoEventArgs(font);
			barItem.OnProvideFontInfo(e);
			font = e.Font;
			DrawToolbarItemEventArgs e2 = new DrawToolbarItemEventArgs(g, IsMouseDown(), ShowingDropDown, font, Rectangle.Round(rect2), -1, drawItemState, foreColor, bGColor, bGColor2, Rectangle.Round(textAndImageRect), DrawBackground, DrawBorders, DrawInterior);
			if (!barItem.OnDrawToolbarItem(e2))
			{
				DrawBackground(e2, useThemes: true);
				DrawBorders(e2, useThemes: true);
				DrawInterior(e2);
			}
		}
	}

	protected virtual bool IsMouseDown()
	{
		return Active;
	}

	protected virtual int GetCurrentThemeState(DrawToolbarItemEventArgs drawItemInfo)
	{
		int result = 1;
		if ((drawItemInfo.State & DrawItemState.Disabled) > DrawItemState.None)
		{
			result = 4;
		}
		else
		{
			if (HotTrack)
			{
				result = 2;
			}
			if (barItem.Checked)
			{
				result = 5;
				if (HotTrack)
				{
					result = 6;
				}
			}
			if (Active)
			{
				result = 3;
			}
		}
		return result;
	}

	protected virtual void DrawBackground(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		Graphics graphics = drawItemInfo.Graphics;
		Rectangle rect = drawItemInfo.Bounds;
		if (Style == VisualStyle.Office2007)
		{
			if (ShowHighlightRectangle)
			{
				ItemState drawState = GetDrawState();
				bool bHorizontal = IsHorizontalAligned;
				if (!IsHorizontalAligned && (parent.Bar.BarStyle & BarStyle.RotateWhenVertical) > BarStyle.None)
				{
					bHorizontal = true;
				}
				Office2007BarItemPainter.DrawBarItem(graphics, rect, drawState, bHorizontal);
			}
			return;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && !IsParentMainMenu && useThemes && Style != VisualStyle.Office2007Outlook)
		{
			if ((!HotTrack && !Active) || ShowHighlightRectangle)
			{
				ThemedToolBarDrawing themedDrawing = parent.GetBarControl().ThemedDrawing;
				int currentThemeState = GetCurrentThemeState(drawItemInfo);
				themedDrawing.DrawButton(graphics, 1, currentThemeState, rect);
			}
			return;
		}
		Color color = drawItemInfo.BackColor;
		if (color != parent.GetBarControl().GetControl().BackColor)
		{
			Brush brush = null;
			if (barItem.Checked)
			{
				Color selColor = MenuColors.SelColor;
				color = Color.FromArgb((int)((0.3 * (double)(int)selColor.R + (double)(int)color.R) / 1.3), (int)((0.3 * (double)(int)selColor.G + (double)(int)color.G) / 1.3), (int)((0.3 * (double)(int)selColor.B + (double)(int)color.B) / 1.3));
			}
			brush = ((!(drawItemInfo.BackColor2 != Color.Empty)) ? ((Brush)new SolidBrush(color)) : ((Brush)(IsHorizontalAligned ? new LinearGradientBrush(rect, color, drawItemInfo.BackColor2, LinearGradientMode.Vertical) : new LinearGradientBrush(rect, color, drawItemInfo.BackColor2, LinearGradientMode.Horizontal))));
			graphics.FillRectangle(brush, rect);
		}
	}

	protected virtual ItemState GetDrawState()
	{
		ItemState result = ItemState.Normal;
		if (barItem.Checked && HotTrack)
		{
			result = ItemState.Collapsed;
		}
		else if (barItem.Checked)
		{
			result = ItemState.Checked;
		}
		else if (Active)
		{
			result = ItemState.Pressed;
		}
		else if (HotTrack)
		{
			result = ItemState.Selected;
		}
		return result;
	}

	protected virtual void DrawBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		if ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled || IsParentMainMenu || !useThemes || Style == VisualStyle.Office2007Outlook) && Style != VisualStyle.Office2007)
		{
			Graphics graphics = drawItemInfo.Graphics;
			if ((HotTrack || Active || barItem.Checked) && ShowHighlightRectangle)
			{
				bool flag = HotTrack && Active;
				Pen pen = null;
				pen = ((!flag) ? (BarItem.Checked ? GetBorderCheckPen(Style) : GetBorderPen(Style)) : GetBorderPressPen(Style));
				Rectangle rect = drawItemInfo.Bounds;
				rect.Width--;
				rect.Height--;
				graphics.DrawRectangle(pen, rect);
			}
		}
	}

	protected virtual void DrawInterior(DrawToolbarItemEventArgs drawItemInfo)
	{
		Graphics graphics = drawItemInfo.Graphics;
		RectangleF rectTextAndImage = BarRenderer.ApplyTransform(graphics, parent.Alignment, drawItemInfo.BoundsInterior, apply: true);
		ApplyTransform(graphics);
		DrawTextAndImage(graphics, rectTextAndImage, drawItemInfo.Font, drawItemInfo.ForeColor, drawItemInfo.BackColor, drawItemInfo.State);
		graphics.ResetTransform();
	}

	public virtual bool ProcessKeyDown(Keys key)
	{
		return false;
	}

	protected virtual void HideDropDown()
	{
	}

	protected virtual bool ShowDropDown(Queue pbiQueue)
	{
		return false;
	}

	protected virtual void ApplyTransform(Graphics g)
	{
		CommandBarDockState alignment = parent.Alignment;
		if (alignment == CommandBarDockState.Left || alignment == CommandBarDockState.Right)
		{
			g.RotateTransform(-270f);
		}
	}

	public virtual bool HitTest(PointF mousePosition)
	{
		if (Bounds.Contains(mousePosition))
		{
			return true;
		}
		return false;
	}

	protected Pen GetBorderPen(VisualStyle style)
	{
		Pen pen = null;
		return style switch
		{
			VisualStyle.Office2003 => new Pen(Office2003Colors.SelBorderColor), 
			VisualStyle.Office2007Outlook => new Pen(Office2007OutlookColors.BarItemHighlightBorderColor), 
			VisualStyle.VS2005 => new Pen(VS2005Colors.BarItemHighlightBorderColor), 
			_ => new Pen(MenuColors.SelBorderColor), 
		};
	}

	protected Pen GetBorderPressPen(VisualStyle style)
	{
		Pen result = GetBorderPen(style);
		if (style == VisualStyle.Office2007Outlook)
		{
			result = new Pen(Office2007OutlookColors.BarItemPressBorderColor);
		}
		return result;
	}

	protected Pen GetBorderCheckPen(VisualStyle style)
	{
		Pen result = GetBorderPen(style);
		if (style == VisualStyle.Office2007Outlook)
		{
			result = new Pen(Office2007OutlookColors.BarItemCheckBorderColor);
		}
		return result;
	}

	protected virtual Color GetPressedItemLightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.PressedSelColor, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.BarItemPressLightColor, 
			VisualStyle.VS2005 => VS2005Colors.BarItemPressLightColor, 
			_ => MenuColors.PressedSelColor, 
		};
	}

	protected virtual Color GetPressedItemDarktColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.MenuItemHotColorDark, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.BarItemPressDarkColor, 
			VisualStyle.VS2005 => VS2005Colors.BarItemPressDarkColor, 
			_ => MenuColors.PressedSelColor, 
		};
	}

	protected virtual Color GetHighlightItemLightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.SelColor, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.BarItemHighlightLightColor, 
			VisualStyle.VS2005 => VS2005Colors.BarItemHighlightLightColor, 
			_ => MenuColors.SelColor, 
		};
	}

	protected virtual Color GetHighlightItemDarkColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.MenuItemHotColorDark, 
			VisualStyle.Office2007Outlook => Office2007OutlookColors.BarItemHighlightDarkColor, 
			VisualStyle.VS2005 => VS2005Colors.BarItemHighlightDarkColor, 
			_ => MenuColors.SelColor, 
		};
	}

	protected virtual Color GetCheckedItemLightColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.CheckedSelColor, 
			VisualStyle.Office2007Outlook => HotTrack ? Office2007OutlookColors.BarItemPressLightColor : Office2007OutlookColors.BarItemCheckLightColor, 
			VisualStyle.VS2005 => HotTrack ? VS2005Colors.BarItemPressLightColor : VS2005Colors.BarItemCheckLightColor, 
			_ => MenuColors.CheckedSelColor, 
		};
	}

	private Color GetCheckedItemDarkColor(VisualStyle style)
	{
		Color empty = Color.Empty;
		return style switch
		{
			VisualStyle.Office2003 => Office2003Colors.CheckedSelColor, 
			VisualStyle.Office2007Outlook => HotTrack ? Office2007OutlookColors.BarItemPressDarkColor : Office2007OutlookColors.BarItemCheckDarkColor, 
			VisualStyle.VS2005 => HotTrack ? VS2005Colors.BarItemPressDarkColor : VS2005Colors.BarItemCheckDarkColor, 
			_ => MenuColors.CheckedSelColor, 
		};
	}

	internal RectangleF ApplyTransform(Graphics g, CommandBarDockState align, RectangleF rect, bool apply)
	{
		return BarRenderer.ApplyTransform(g, align, rect, apply);
	}

	private bool DrawDisabledImage(Graphics g, Rectangle rc)
	{
		IList disabledImageListInternal = barItem.GetDisabledImageListInternal(parent.LargeIcons);
		if (disabledImageListInternal != null)
		{
			int disabledImageIndex = barItem.DisabledImageIndex;
			if (disabledImageIndex >= 0 && disabledImageIndex < disabledImageListInternal.Count && disabledImageListInternal[disabledImageIndex] is Image image)
			{
				DrawingUtils.DrawImage(g, image, rc.Left, rc.Top, rc.Width, rc.Height);
				return true;
			}
		}
		if (barItem.DisabledImage != null)
		{
			barItem.DisabledImage.Draw(g, rc, DrawItemState.None);
			return true;
		}
		return false;
	}

	private bool DrawStateImage(Graphics g, Rectangle rc, DrawItemState state)
	{
		bool result = false;
		if (state == DrawItemState.HotLight)
		{
			result = DrawPressedImage(g, rc) || DrawHighlightImage(g, rc);
		}
		return result;
	}

	private bool DrawPressedImage(Graphics g, Rectangle rc)
	{
		if (Active)
		{
			IList pressedImageListInternal = barItem.GetPressedImageListInternal(parent.LargeIcons);
			int pressedImageIndex = barItem.PressedImageIndex;
			return DrawImageInternal(g, rc, pressedImageListInternal, pressedImageIndex);
		}
		return false;
	}

	private bool DrawHighlightImage(Graphics g, Rectangle rc)
	{
		IList highlightImageListInternal = barItem.GetHighlightImageListInternal(parent.LargeIcons);
		int highlightedImageIndex = barItem.HighlightedImageIndex;
		if (DrawImageInternal(g, rc, highlightImageListInternal, highlightedImageIndex))
		{
			return true;
		}
		if (barItem.HighlightedImage != null)
		{
			barItem.HighlightedImage.Draw(g, rc, DrawItemState.None);
			return true;
		}
		return false;
	}

	private bool DrawImageInternal(Graphics g, Rectangle rc, IList images, int idx)
	{
		bool result = false;
		if (images != null && idx >= 0 && idx < images.Count && images[idx] is Image image)
		{
			DrawingUtils.DrawImage(g, image, rc.Left, rc.Top, rc.Width, rc.Height);
			result = true;
		}
		return result;
	}
}
