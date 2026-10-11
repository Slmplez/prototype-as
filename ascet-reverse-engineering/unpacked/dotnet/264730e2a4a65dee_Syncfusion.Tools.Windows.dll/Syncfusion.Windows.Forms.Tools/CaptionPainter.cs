using System;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Renderers;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class CaptionPainter : Disposable
{
	public enum CaptionHitTest
	{
		None,
		CaptionRect,
		ButtonRect,
		ButtonDown,
		ButtonUp
	}

	protected const int nTextOffset = 2;

	protected const int DEF_BUTTON_TOP_INDENT = 4;

	protected const int DEF_BUTTON_SIDE_INDENT = 3;

	protected const int DEF_BUTTON_SPACE_BETWEEN = 1;

	protected const int DEF_BUTTON_THEMED_SIZE = 20;

	protected const int DEF_ICON_SIZE = 16;

	protected const int DEF_ICON_INDENT = 2;

	protected const int DEF_CAPTION_TOP_INDENT = 2;

	protected const int DEF_BORDER_WIDTH = 1;

	protected DockHostController dhcOwner;

	protected CaptionButton btnHover;

	protected CaptionButton btnPressed;

	protected int nCaptionButtonIndex = -1;

	protected CaptionButtonsCollection m_buttons = new CaptionButtonsCollection();

	protected DockLabelAlignmentStyle labelAlignment;

	protected ThemedControlDrawing tdExplorerBar;

	protected ThemedControlDrawing tdWindow;

	protected Font ftCaption = SystemInformation.MenuFont;

	protected ToolTip toolTip = new ToolTip();

	internal DockLabelAlignmentStyle LabelAlignment
	{
		get
		{
			return labelAlignment;
		}
		set
		{
			labelAlignment = value;
		}
	}

	public CaptionButtonsCollection Buttons => m_buttons;

	protected internal int CaptionTopIndent => 2;

	public int BorderWidth => 1;

	public Rectangle CaptionRect
	{
		get
		{
			if (!dhcOwner.HideCaption)
			{
				return new Rectangle(0, CaptionTopIndent, dhcOwner.HostControl.Width, CaptionHeight);
			}
			int num = CaptionHeight;
			if (XPThemes.IsThemedOS && XPThemes.IsThemeActive)
			{
				num += 4;
			}
			return new Rectangle(0, CaptionTopIndent - num, dhcOwner.HostControl.Width, num);
		}
	}

	protected Rectangle TextRect
	{
		get
		{
			Rectangle captionRect = CaptionRect;
			int num = 0;
			int num2 = 0;
			bool flag = dhcOwner.DockingManager.CaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
			for (int i = 0; i < Buttons.Count; i++)
			{
				if ((Buttons[i].Type == CaptionButtonType.Close && dhcOwner.CloseButtonVisibility) || (Buttons[i].Type == CaptionButtonType.Pin && dhcOwner.AutoHideButtonVisibility) || (Buttons[i].Type == CaptionButtonType.Menu && dhcOwner.MenuButtonVisiblity) || (flag && !Buttons[i].Modified && dhcOwner.MaximizeButtonVisibility && (Buttons[i].Type == CaptionButtonType.Maximize || Buttons[i].Type == CaptionButtonType.Restore)) || (!flag && Buttons[i].Type == CaptionButtonType.Maximize && dhcOwner.MaximizeButtonVisibility) || Buttons[i].Type == CaptionButtonType.Custom)
				{
					num2++;
				}
			}
			if (dhcOwner.ImageIndex >= 0 && dhcOwner.DockingManager.ImageList != null && dhcOwner.ImageIndex <= dhcOwner.DockingManager.ImageList.Images.Count && dhcOwner.DockingManager.ShowCaptionImages)
			{
				num = 18;
			}
			int num3;
			int width;
			if (dhcOwner.DockingManager.IsMirrored)
			{
				num3 = 5 + num2 * CaptionButtonWidth;
				width = captionRect.Width - num3 - num - 5;
			}
			else
			{
				num3 = captionRect.X + 2 + num;
				width = captionRect.Width - 5 - num2 * CaptionButtonWidth - num;
			}
			return new Rectangle(num3, captionRect.Y, width, captionRect.Height);
		}
	}

	protected Rectangle ImageRect
	{
		get
		{
			if (!dhcOwner.DockingManager.ShowCaptionImages || dhcOwner.ImageIndex < 0 || dhcOwner.DockingManager.ImageList == null || dhcOwner.ImageIndex >= dhcOwner.DockingManager.ImageList.Images.Count)
			{
				return Rectangle.Empty;
			}
			Rectangle captionButtonBounds = GetCaptionButtonBounds(Buttons.Count - 1);
			if (captionButtonBounds == Rectangle.Empty)
			{
				return Rectangle.Empty;
			}
			if (dhcOwner.IsMirrored)
			{
				if (captionButtonBounds.Right > CaptionRect.Width - 2 - 16)
				{
					return Rectangle.Empty;
				}
				return new Rectangle(CaptionRect.Width - 2 - 16, 2, 16, 16);
			}
			if (captionButtonBounds.Left < 18)
			{
				return Rectangle.Empty;
			}
			return new Rectangle(2, 2, 16, 16);
		}
	}

	public static int CaptionHeight => DockingManager.ftSysInfoMenuFont.Height + 3;

	public static int CaptionButtonHeight => CaptionHeight - 4;

	public static int CaptionButtonWidth => CaptionHeight - 2;

	public CaptionPainter(DockHostController dhc)
	{
		dhcOwner = dhc;
		DockingManager dockingManager = dhc.DockingManager;
		if (dockingManager != null)
		{
			labelAlignment = dockingManager.DockLabelAlignment;
		}
		if (XPThemes.IsThemedOS)
		{
			tdExplorerBar = new ThemedControlDrawing("EXPLORERBAR");
			tdWindow = new ThemedControlDrawing("WINDOW");
		}
		toolTip.AutoPopDelay = 5000;
		toolTip.InitialDelay = 1000;
		toolTip.ReshowDelay = 500;
		toolTip.ShowAlways = true;
		dhc.HostControl.SystemColorsChanged += Owner_SystemColorsChanged;
	}

	public virtual CaptionHitTest HitTest(MouseAction action, Point pt)
	{
		if (dhcOwner.DockingManager.DesignMode && CaptionRect.Contains(pt))
		{
			return CaptionHitTest.CaptionRect;
		}
		CaptionHitTest result = CaptionHitTest.None;
		if (CaptionRect.Contains(pt))
		{
			result = CaptionHitTest.CaptionRect;
		}
		switch (action)
		{
		case MouseAction.LBtnDown:
		{
			nCaptionButtonIndex = -1;
			for (int j = 0; j < Buttons.Count; j++)
			{
				if (GetCaptionButtonBounds(j).Contains(pt))
				{
					result = CaptionHitTest.ButtonDown;
					nCaptionButtonIndex = j;
					btnPressed = Buttons[j];
					dhcOwner.HostControl.Invalidate(CaptionRect);
					break;
				}
			}
			break;
		}
		case MouseAction.LBtnUp:
		{
			nCaptionButtonIndex = -1;
			for (int k = 0; k < Buttons.Count; k++)
			{
				if (GetCaptionButtonBounds(k).Contains(pt))
				{
					result = CaptionHitTest.ButtonUp;
					nCaptionButtonIndex = k;
					btnPressed = null;
					dhcOwner.HostControl.Invalidate(CaptionRect);
					break;
				}
			}
			break;
		}
		case MouseAction.LBtnDblClk:
			if (CaptionRect.Contains(pt))
			{
				result = CaptionHitTest.CaptionRect;
			}
			break;
		case MouseAction.RBtnUp:
			if (CaptionRect.Contains(pt))
			{
				result = CaptionHitTest.CaptionRect;
			}
			break;
		case MouseAction.MouseMove:
		{
			nCaptionButtonIndex = -1;
			for (int i = 0; i < Buttons.Count; i++)
			{
				if (GetCaptionButtonBounds(i).Contains(pt) && btnPressed != Buttons[i])
				{
					btnHover = Buttons[i];
					nCaptionButtonIndex = i;
					result = CaptionHitTest.ButtonRect;
					dhcOwner.HostControl.Invalidate(CaptionRect);
					break;
				}
			}
			if (nCaptionButtonIndex < 0)
			{
				btnHover = null;
				btnPressed = null;
				dhcOwner.HostControl.Invalidate(CaptionRect);
				result = (CaptionRect.Contains(pt) ? CaptionHitTest.CaptionRect : CaptionHitTest.None);
			}
			break;
		}
		case MouseAction.MouseLeave:
			if (btnHover != null)
			{
				dhcOwner.HostControl.Invalidate(CaptionRect);
				btnHover = null;
			}
			break;
		}
		return result;
	}

	public virtual Rectangle GetButtonImageBounds(CaptionButtonType buttonType)
	{
		if (dhcOwner.DockingManager.ThemesEnabled && (buttonType == CaptionButtonType.Menu || buttonType == CaptionButtonType.Pin))
		{
			return new Rectangle(0, 0, 20, 20);
		}
		return new Rectangle(0, 0, CaptionButtonWidth, CaptionButtonHeight);
	}

	public virtual Rectangle GetCaptionButtonBounds(int index)
	{
		int num = index * (CaptionButtonWidth + 1) + 3;
		if (!dhcOwner.IsMirrored)
		{
			num = CaptionRect.Width - CaptionButtonWidth - num;
		}
		Rectangle rectangle = new Rectangle(num, 4, CaptionButtonWidth, CaptionButtonHeight);
		if (CaptionRect.Contains(rectangle))
		{
			return rectangle;
		}
		return Rectangle.Empty;
	}

	protected virtual void SetCaptionButtonIndex(Point pt)
	{
		for (int i = 0; i < Buttons.Count; i++)
		{
			if (GetCaptionButtonBounds(i).Contains(pt))
			{
				nCaptionButtonIndex = i;
			}
		}
		nCaptionButtonIndex = -1;
	}

	protected internal void ResetCaptonButtonsHitTest()
	{
		btnHover = null;
		btnPressed = null;
	}

	protected internal void RefreshCaptionButtonsCollection()
	{
		m_buttons.Clear();
		if (dhcOwner.HostControl == null || dhcOwner.HostControl.Controls.Count <= 0)
		{
			return;
		}
		CaptionButtonsCollection customCaptionButtons = dhcOwner.DockingManager.GetCustomCaptionButtons(dhcOwner.HostControl.Controls[0]);
		if (customCaptionButtons == null)
		{
			return;
		}
		bool flag = customCaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
		for (int i = 0; i < customCaptionButtons.Count; i++)
		{
			CaptionButton captionButton = customCaptionButtons[i];
			switch (captionButton.Type)
			{
			case CaptionButtonType.Close:
				if (dhcOwner.CloseButtonVisibility)
				{
					m_buttons.Add(captionButton);
				}
				break;
			case CaptionButtonType.Pin:
				if (!dhcOwner.Floating && dhcOwner.AutoHideButtonVisibility)
				{
					m_buttons.Add(captionButton);
				}
				break;
			case CaptionButtonType.Menu:
				if (dhcOwner.MenuButtonVisiblity)
				{
					m_buttons.Add(captionButton);
				}
				break;
			case CaptionButtonType.Maximize:
				if (dhcOwner.MaximizeButtonVisibility && (!flag || (flag && !dhcOwner.Maximized)))
				{
					m_buttons.Add(captionButton);
				}
				break;
			case CaptionButtonType.Restore:
				if (dhcOwner.MaximizeButtonVisibility && flag && dhcOwner.Maximized)
				{
					m_buttons.Add(captionButton);
				}
				break;
			case CaptionButtonType.Custom:
				m_buttons.Add(captionButton);
				break;
			}
		}
	}

	public virtual int GetCaptionButtonIndex()
	{
		return nCaptionButtonIndex;
	}

	public virtual CaptionButton GetHitButton()
	{
		if (nCaptionButtonIndex >= 0 && nCaptionButtonIndex < Buttons.Count)
		{
			return Buttons[nCaptionButtonIndex];
		}
		return null;
	}

	public virtual CaptionButton GetButtonAt(Point pt)
	{
		for (int i = 0; i < Buttons.Count; i++)
		{
			if (GetCaptionButtonBounds(i).Contains(pt))
			{
				return Buttons[i];
			}
		}
		return null;
	}

	public virtual void PaintCaption(Graphics gph, Pen pen)
	{
		bool flag = DrawWithHighlight();
		if (flag && dhcOwner.DockingManager.DHCInFocus != dhcOwner)
		{
			dhcOwner.DockingManager.DHCInFocus = dhcOwner;
		}
		Rectangle captionRect = CaptionRect;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && dhcOwner.DockingManager.ThemesEnabled)
		{
			int stateID = 2;
			if (flag)
			{
				stateID = 1;
			}
			tdWindow.DrawThemeBackground(gph, 2, stateID, captionRect);
			DrawImage(gph);
			int num = 32804;
			if (labelAlignment == DockLabelAlignmentStyle.Default)
			{
				num |= (dhcOwner.IsMirrored ? 131074 : 0);
			}
			else
			{
				if (dhcOwner.IsMirrored)
				{
					num |= 0x20000;
				}
				switch (labelAlignment)
				{
				case DockLabelAlignmentStyle.Left:
					num = num;
					break;
				case DockLabelAlignmentStyle.Right:
					num |= 2;
					break;
				case DockLabelAlignmentStyle.Center:
					num |= 1;
					break;
				}
			}
			tdWindow.DrawThemeText(gph, 2, stateID, dhcOwner.HostControl.Text, TextRect, num, 0);
			for (int i = 0; i < Buttons.Count; i++)
			{
				CaptionButton captionButton = Buttons[i];
				Rectangle captionButtonBounds = GetCaptionButtonBounds(i);
				if (captionButtonBounds == Rectangle.Empty)
				{
					continue;
				}
				Image image = null;
				if (captionButton.ImageIndex >= 0 && dhcOwner.DockingManager.ImageList != null && captionButton.ImageIndex < dhcOwner.DockingManager.ImageList.Images.Count)
				{
					image = dhcOwner.DockingManager.ImageList.Images[captionButton.ImageIndex];
				}
				if (image != null)
				{
					if (image is Bitmap bitmap && captionButton.TransparentImageColor != Color.Transparent)
					{
						bitmap.MakeTransparent(captionButton.TransparentImageColor);
					}
					Rectangle buttonImageBounds = GetButtonImageBounds(captionButton.Type);
					gph.DrawImage(image, captionButtonBounds, buttonImageBounds, GraphicsUnit.Pixel);
					continue;
				}
				int stateID2 = 0;
				Rectangle buttonImageBounds2 = GetButtonImageBounds(captionButton.Type);
				Bitmap bitmap2 = new Bitmap(buttonImageBounds2.Width, buttonImageBounds2.Height);
				Graphics graphics = Graphics.FromImage(bitmap2);
				int partID = 0;
				switch (captionButton.Type)
				{
				case CaptionButtonType.Close:
					if (!dhcOwner.CloseButtonVisibility)
					{
						continue;
					}
					stateID2 = 1;
					if (btnPressed == captionButton)
					{
						stateID2 = 3;
					}
					else if (btnHover == captionButton)
					{
						stateID2 = 2;
					}
					partID = 19;
					break;
				case CaptionButtonType.Pin:
					if (dhcOwner.Floating || !dhcOwner.AutoHideButtonVisibility)
					{
						continue;
					}
					if (dhcOwner.AutoHideMode)
					{
						stateID2 = 1;
						if (btnPressed == captionButton)
						{
							stateID2 = 3;
						}
						else if (btnHover == captionButton)
						{
							stateID2 = 2;
						}
					}
					else
					{
						stateID2 = 4;
						if (btnPressed == captionButton)
						{
							stateID2 = 6;
						}
						else if (btnHover == captionButton)
						{
							stateID2 = 5;
						}
					}
					partID = 3;
					break;
				case CaptionButtonType.Menu:
					if (!dhcOwner.MenuButtonVisiblity)
					{
						continue;
					}
					stateID2 = 1;
					if (btnPressed == captionButton)
					{
						stateID2 = 3;
					}
					else if (btnHover == captionButton)
					{
						stateID2 = 2;
					}
					partID = 7;
					break;
				case CaptionButtonType.Maximize:
				case CaptionButtonType.Restore:
				{
					bool flag2 = dhcOwner.DockingManager.CaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
					if (!dhcOwner.MaximizeButtonVisibility || (captionButton.Modified && flag2))
					{
						continue;
					}
					stateID2 = 1;
					if (btnPressed == captionButton)
					{
						stateID2 = 3;
					}
					else if (btnHover == captionButton)
					{
						stateID2 = 2;
					}
					partID = (((!dhcOwner.Maximized || flag2) && captionButton.Type != CaptionButtonType.Restore) ? 17 : 21);
					break;
				}
				case CaptionButtonType.Custom:
					if (captionButton.ImageIndex < 0 || dhcOwner.DockingManager.ImageList == null || captionButton.ImageIndex >= dhcOwner.DockingManager.ImageList.Images.Count)
					{
						return;
					}
					break;
				}
				if (captionButton.Type == CaptionButtonType.Close || captionButton.Type == CaptionButtonType.Maximize || captionButton.Type == CaptionButtonType.Restore)
				{
					tdWindow.DrawThemeBackground(graphics, partID, stateID2, buttonImageBounds2);
				}
				else
				{
					tdExplorerBar.DrawThemeBackground(graphics, partID, stateID2, buttonImageBounds2);
				}
				gph.DrawImage(bitmap2, captionButtonBounds, buttonImageBounds2, GraphicsUnit.Pixel);
				graphics.Dispose();
				bitmap2.Dispose();
			}
			return;
		}
		Brush brush = null;
		Color empty = Color.Empty;
		Font font = ftCaption;
		if (flag)
		{
			brush = BrushConverter.GetBrush(captionRect, dhcOwner.DockingManager.ActiveCaptionBackground);
			empty = dhcOwner.DockingManager.ActiveCaptionForeGround;
			font = dhcOwner.DockingManager.ActiveCaptionFont;
		}
		else
		{
			brush = BrushConverter.GetBrush(captionRect, dhcOwner.DockingManager.InActiveCaptionBackground);
			empty = dhcOwner.DockingManager.InActiveCaptionForeGround;
			font = dhcOwner.DockingManager.InActiveCaptionFont;
		}
		ProvideGraphicsItemsEventArgs e = new ProvideGraphicsItemsEventArgs(dhcOwner.HostControl.Controls[0], captionRect, flag);
		e.CaptionBackground = brush;
		e.CaptionForeground = empty;
		e.CaptionFont = font;
		dhcOwner.DockingManager.FireProvideGraphicsItemsEvent(e);
		if (e.CaptionBackground != null && e.CaptionBackground != brush)
		{
			brush = e.CaptionBackground;
		}
		if (e.CaptionForeground != Color.Empty && e.CaptionForeground != empty)
		{
			empty = e.CaptionForeground;
		}
		Brush brush2 = new SolidBrush(empty);
		if (e.CaptionFont != null && e.CaptionFont != font)
		{
			font = e.CaptionFont;
		}
		gph.FillRectangle(brush, captionRect);
		DrawImage(gph);
		if (dhcOwner.DockingManager.PaintBorders)
		{
			ControlPaint.DrawBorder(gph, captionRect, pen.Color, ButtonBorderStyle.Solid);
		}
		else
		{
			ControlPaint.DrawBorder(gph, captionRect, SystemColors.ControlDark, ButtonBorderStyle.Solid);
		}
		float num2 = ((!(dhcOwner.HostControl.Text.Trim() == string.Empty)) ? gph.MeasureString(dhcOwner.HostControl.Text.Substring(0, 1), font).Width : gph.MeasureString("A", font).Width);
		if ((float)TextRect.Width > num2)
		{
			StringFormat stringFormat = new StringFormat();
			stringFormat.FormatFlags = StringFormatFlags.NoWrap;
			if (dhcOwner.DockingManager.IsMirrored)
			{
				stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
			}
			switch (dhcOwner.DockingManager.DockLabelAlignment)
			{
			case DockLabelAlignmentStyle.Left:
				stringFormat.Alignment = (dhcOwner.DockingManager.IsMirrored ? StringAlignment.Far : StringAlignment.Near);
				break;
			case DockLabelAlignmentStyle.Center:
				stringFormat.Alignment = StringAlignment.Center;
				break;
			case DockLabelAlignmentStyle.Right:
				stringFormat.Alignment = ((!dhcOwner.DockingManager.IsMirrored) ? StringAlignment.Far : StringAlignment.Near);
				break;
			default:
				stringFormat.Alignment = StringAlignment.Near;
				break;
			}
			stringFormat.LineAlignment = StringAlignment.Center;
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
			gph.DrawString(dhcOwner.HostControl.Text, font, brush2, TextRect, stringFormat);
		}
		for (int j = 0; j < Buttons.Count; j++)
		{
			CaptionButton captionButton2 = Buttons[j];
			Rectangle captionButtonBounds2 = GetCaptionButtonBounds(j);
			if (captionButtonBounds2 == Rectangle.Empty)
			{
				continue;
			}
			Image image2 = null;
			Rectangle srcRect = Rectangle.Empty;
			if (captionButton2.ImageIndex >= 0 && dhcOwner.DockingManager.ImageList != null && captionButton2.ImageIndex < dhcOwner.DockingManager.ImageList.Images.Count)
			{
				image2 = dhcOwner.DockingManager.ImageList.Images[captionButton2.ImageIndex];
				if (image2 != null)
				{
					if (image2 is Bitmap bitmap3 && captionButton2.TransparentImageColor != Color.Transparent)
					{
						bitmap3.MakeTransparent(captionButton2.TransparentImageColor);
					}
					srcRect = GetButtonImageBounds(captionButton2.Type);
				}
			}
			if (btnPressed == captionButton2)
			{
				DrawPressedBorder(gph, captionButtonBounds2);
			}
			else if (btnHover == captionButton2)
			{
				DrawHoverBorder(gph, captionButtonBounds2);
			}
			switch (captionButton2.Type)
			{
			case CaptionButtonType.Close:
				if (dhcOwner.CloseButtonVisibility)
				{
					if (image2 == null)
					{
						DrawCloseButton(gph, captionButtonBounds2, empty);
					}
					else
					{
						gph.DrawImage(image2, captionButtonBounds2, srcRect, GraphicsUnit.Pixel);
					}
				}
				break;
			case CaptionButtonType.Pin:
				if (!dhcOwner.Floating && dhcOwner.AutoHideButtonVisibility)
				{
					if (image2 == null)
					{
						DrawAutoHideButton(gph, captionButtonBounds2, empty);
					}
					else
					{
						gph.DrawImage(image2, captionButtonBounds2, srcRect, GraphicsUnit.Pixel);
					}
				}
				break;
			case CaptionButtonType.Menu:
				if (dhcOwner.MenuButtonVisiblity)
				{
					if (image2 == null)
					{
						DrawMenuButton(gph, captionButtonBounds2, empty);
					}
					else
					{
						gph.DrawImage(image2, captionButtonBounds2, srcRect, GraphicsUnit.Pixel);
					}
				}
				break;
			case CaptionButtonType.Maximize:
			case CaptionButtonType.Restore:
			{
				bool flag3 = dhcOwner.DockingManager.CaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
				if (!dhcOwner.MaximizeButtonVisibility || (captionButton2.Modified && flag3))
				{
					break;
				}
				if (image2 == null)
				{
					if ((dhcOwner.Maximized && !flag3) || captionButton2.Type == CaptionButtonType.Restore)
					{
						DrawRestoreButton(gph, captionButtonBounds2, empty);
					}
					else
					{
						DrawMaximizeButton(gph, captionButtonBounds2, empty);
					}
				}
				else
				{
					gph.DrawImage(image2, captionButtonBounds2, srcRect, GraphicsUnit.Pixel);
				}
				break;
			}
			case CaptionButtonType.Custom:
				if (image2 != null)
				{
					gph.DrawImage(image2, captionButtonBounds2, srcRect, GraphicsUnit.Pixel);
				}
				break;
			}
		}
	}

	protected void Owner_SystemColorsChanged(object sender, EventArgs e)
	{
		ftCaption = SystemInformation.MenuFont;
	}

	protected internal void ProcessMouseMove(MouseEventArgs e)
	{
		if (!dhcOwner.DockingManager.ShowToolTips)
		{
			return;
		}
		string text = "";
		CaptionButton captionButton = null;
		ToolTipInfo toolTipInfo = null;
		bool flag = dhcOwner.DockingManager.CaptionButtons.ContainsButtonType(CaptionButtonType.Restore);
		if (dhcOwner.RendererStyle == VisualStyle.Default)
		{
			captionButton = GetButtonAt(new Point(e.X, e.Y));
			if (captionButton != null)
			{
				if (captionButton.ToolTip == "" && !dhcOwner.DockingManager.EnableSuperToolTip)
				{
					switch (captionButton.Type)
					{
					case CaptionButtonType.Close:
						text = dhcOwner.DockingManager.GetCloseButtonToolTip();
						break;
					case CaptionButtonType.Pin:
						text = dhcOwner.DockingManager.GetAutoHideButtonToolTip();
						break;
					case CaptionButtonType.Menu:
						text = dhcOwner.DockingManager.GetMenuButtonToolTip();
						break;
					case CaptionButtonType.Maximize:
					case CaptionButtonType.Restore:
						text = (((!dhcOwner.Maximized || flag) && captionButton.Type != CaptionButtonType.Restore) ? dhcOwner.DockingManager.GetMaximizeButtonToolTip() : dhcOwner.DockingManager.GetRestoreButtonToolTip());
						break;
					}
				}
				else
				{
					text = (((captionButton.Type != CaptionButtonType.Maximize || flag || !dhcOwner.Maximized) && captionButton.Type != CaptionButtonType.Restore) ? captionButton.ToolTip : dhcOwner.DockingManager.GetRestoreButtonToolTip());
					if (dhcOwner.DockingManager.EnableSuperToolTip)
					{
						if ((captionButton.Type == CaptionButtonType.Maximize && !flag && dhcOwner.Maximized) || captionButton.Type == CaptionButtonType.Restore)
						{
							toolTipInfo = new ToolTipInfo(captionButton.SuperToolTipInfo);
							toolTipInfo.Body.Text = text;
							toolTipInfo.Footer.Text = string.Empty;
							toolTipInfo.Header.Text = string.Empty;
						}
						else
						{
							toolTipInfo = captionButton.SuperToolTipInfo;
						}
					}
				}
			}
		}
		else
		{
			HitTestArea hitTestArea = dhcOwner.Renderer.HitTest(MouseButtons.None, new Point(e.X, e.Y));
			if (hitTestArea == HitTestArea.Button)
			{
				captionButton = dhcOwner.Renderer.GetHitButton();
				if (captionButton != null)
				{
					if (captionButton.ToolTip == "" && !dhcOwner.DockingManager.EnableSuperToolTip)
					{
						switch (captionButton.Type)
						{
						case CaptionButtonType.Close:
							text = dhcOwner.DockingManager.GetCloseButtonToolTip();
							break;
						case CaptionButtonType.Pin:
							text = dhcOwner.DockingManager.GetAutoHideButtonToolTip();
							break;
						case CaptionButtonType.Menu:
							text = dhcOwner.DockingManager.GetMenuButtonToolTip();
							break;
						case CaptionButtonType.Maximize:
							text = ((flag || !dhcOwner.Maximized) ? dhcOwner.DockingManager.GetMaximizeButtonToolTip() : dhcOwner.DockingManager.GetRestoreButtonToolTip());
							break;
						case CaptionButtonType.Restore:
							text = dhcOwner.DockingManager.GetRestoreButtonToolTip();
							break;
						}
					}
					else
					{
						text = (((captionButton.Type != CaptionButtonType.Maximize || flag || !dhcOwner.Maximized) && captionButton.Type != CaptionButtonType.Restore) ? captionButton.ToolTip : dhcOwner.DockingManager.GetRestoreButtonToolTip());
						if (dhcOwner.DockingManager.EnableSuperToolTip)
						{
							if ((captionButton.Type == CaptionButtonType.Maximize && !flag && dhcOwner.Maximized) || captionButton.Type == CaptionButtonType.Restore)
							{
								toolTipInfo = new ToolTipInfo(captionButton.SuperToolTipInfo);
								toolTipInfo.Body.Text = text;
								toolTipInfo.Footer.Text = string.Empty;
								toolTipInfo.Header.Text = string.Empty;
							}
							else
							{
								toolTipInfo = captionButton.SuperToolTipInfo;
							}
						}
					}
				}
			}
		}
		if (dhcOwner.DockingManager.EnableSuperToolTip)
		{
			SuperToolTip superToolTip = dhcOwner.DockingManager.SuperToolTip;
			if (superToolTip == null)
			{
				return;
			}
			superToolTip.ToolTipDuration = dhcOwner.DockingManager.ToolTipInterval / 1000;
			if (dhcOwner.DockingManager.UseBalloonStyleToolTip)
			{
				superToolTip.Style = SuperToolTip.SuperToolTipStyle.Balloon;
			}
			else
			{
				superToolTip.Style = SuperToolTip.SuperToolTipStyle.Normal;
			}
			if (captionButton != null)
			{
				bool flag2 = false;
				if ((captionButton.Type == CaptionButtonType.Maximize && !flag && dhcOwner.Maximized) || captionButton.Type == CaptionButtonType.Restore)
				{
					ToolTipInfo toolTipInfo2 = superToolTip.GetToolTip(dhcOwner.HostControl);
					if (toolTipInfo2 != null && text == toolTipInfo2.Body.Text)
					{
						flag2 = true;
					}
				}
				if (toolTipInfo == null)
				{
					toolTipInfo = (captionButton.SuperToolTipInfo = new ToolTipInfo());
				}
				if (toolTipInfo.Body.Text == null && toolTipInfo.Header.Text == null && toolTipInfo.Footer.Text == null)
				{
					if (text == "")
					{
						superToolTip.SetToolTip(dhcOwner.HostControl, null);
						return;
					}
					toolTipInfo.Body.Text = text;
				}
				if (superToolTip.GetToolTip(dhcOwner.HostControl) != toolTipInfo && !flag2)
				{
					toolTip.SetToolTip(dhcOwner.HostControl, string.Empty);
					superToolTip.Hide();
					superToolTip.SetToolTip(dhcOwner.HostControl, toolTipInfo);
				}
			}
			else
			{
				superToolTip.SetToolTip(dhcOwner.HostControl, null);
			}
		}
		else if (text != toolTip.GetToolTip(dhcOwner.HostControl))
		{
			dhcOwner.DockingManager.SuperToolTip?.SetToolTip(dhcOwner.HostControl, null);
			if (toolTip.Active)
			{
				toolTip.Active = false;
			}
			toolTip.IsBalloon = dhcOwner.DockingManager.UseBalloonStyleToolTip;
			toolTip.AutoPopDelay = dhcOwner.DockingManager.ToolTipInterval;
			toolTip.SetToolTip(dhcOwner.HostControl, text);
			toolTip.Active = true;
		}
	}

	protected internal bool DrawWithHighlight()
	{
		bool flag = dhcOwner.HostControl.ContainsFocus;
		if (dhcOwner.DockingManager.DesignMode && !flag && dhcOwner.DockingManager.GetServiceFromMgr(typeof(ISelectionService)) is ISelectionService { PrimarySelection: not null, PrimarySelection: var primarySelection } && primarySelection is Control && dhcOwner.HostControl.Controls.Count > 0 && dhcOwner.HostControl.Controls[0] == primarySelection)
		{
			flag = true;
		}
		return flag;
	}

	protected virtual void DrawPressedBorder(Graphics gph, Rectangle rcbtn)
	{
		rcbtn.Inflate(-1, -2);
		ControlPaint.DrawBorder3D(gph, rcbtn, (Border3DStyle)8200, Border3DSide.Left | Border3DSide.Top);
		ControlPaint.DrawBorder3D(gph, rcbtn, (Border3DStyle)8200, Border3DSide.Right | Border3DSide.Bottom);
	}

	protected virtual void DrawHoverBorder(Graphics gph, Rectangle rcbtn)
	{
		rcbtn.Inflate(-1, -2);
		ControlPaint.DrawBorder3D(gph, rcbtn, (Border3DStyle)((DrawWithHighlight() ? 1 : 4) | 0x2000), Border3DSide.Left | Border3DSide.Top);
		ControlPaint.DrawBorder3D(gph, rcbtn, (Border3DStyle)8193, Border3DSide.Right | Border3DSide.Bottom);
	}

	protected virtual void DrawCloseButton(Graphics gph, Rectangle rcbtn, Color clrbtn)
	{
		Pen pen = new Pen(clrbtn, 1f);
		gph.DrawLine(pen, new Point(rcbtn.Left + 4, rcbtn.Top + 3), new Point(rcbtn.Right - 5, rcbtn.Bottom - 4));
		gph.DrawLine(pen, new Point(rcbtn.Left + 4, rcbtn.Top + 2), new Point(rcbtn.Right - 4, rcbtn.Bottom - 4));
		gph.DrawLine(pen, new Point(rcbtn.Left + 5, rcbtn.Top + 2), new Point(rcbtn.Right - 4, rcbtn.Bottom - 5));
		gph.DrawLine(pen, new Point(rcbtn.Left + 4, rcbtn.Bottom - 5), new Point(rcbtn.Right - 5, rcbtn.Top + 2));
		gph.DrawLine(pen, new Point(rcbtn.Left + 4, rcbtn.Bottom - 4), new Point(rcbtn.Right - 4, rcbtn.Top + 2));
		gph.DrawLine(pen, new Point(rcbtn.Left + 5, rcbtn.Bottom - 4), new Point(rcbtn.Right - 4, rcbtn.Top + 3));
		pen.Dispose();
	}

	protected virtual void DrawAutoHideButton(Graphics gph, Rectangle rcbtn, Color clrbtn)
	{
		Pen pen = new Pen(clrbtn, 1f);
		Point point = new Point(rcbtn.Left + rcbtn.Width / 2, rcbtn.Top + rcbtn.Height / 2);
		if (dhcOwner.AutoHideMode)
		{
			Matrix matrix = new Matrix();
			matrix.RotateAt(90f, point, MatrixOrder.Append);
			gph.Transform = matrix;
		}
		gph.DrawLine(pen, new Point(rcbtn.Left + 5, point.Y + 1), new Point(rcbtn.Right - 4, point.Y + 1));
		gph.DrawLine(pen, new Point(rcbtn.Left + 6, point.Y), new Point(rcbtn.Left + 6, rcbtn.Top + 2));
		gph.DrawLine(pen, new Point(rcbtn.Left + 6, rcbtn.Top + 2), new Point(rcbtn.Right - 5, rcbtn.Top + 2));
		gph.DrawLine(pen, new Point(rcbtn.Right - 5, rcbtn.Top + 2), new Point(rcbtn.Right - 5, point.Y));
		gph.DrawLine(pen, new Point(rcbtn.Right - 6, rcbtn.Top + 2), new Point(rcbtn.Right - 6, point.Y));
		gph.DrawLine(pen, new Point(point.X + 1, point.Y + 2), new Point(point.X + 1, rcbtn.Bottom - 3));
		if (dhcOwner.AutoHideMode)
		{
			gph.ResetTransform();
		}
		pen.Dispose();
	}

	protected virtual void DrawMenuButton(Graphics gph, Rectangle rcBth, Color clBtn)
	{
		Pen pen = new Pen(clBtn, 1f);
		int num = rcBth.Left + 4;
		int num2 = rcBth.Top + 6;
		for (int i = 0; i < 4; i++)
		{
			gph.DrawLine(pen, num + i, num2 + i, num + 7 - i, num2 + i);
		}
		pen.Dispose();
	}

	protected virtual void DrawMaximizeButton(Graphics gph, Rectangle rcBth, Color clBtn)
	{
		Pen pen = new Pen(clBtn, 1f);
		int num = 3;
		Point location = new Point(rcBth.Left + 3, rcBth.Top + 3);
		int num2 = rcBth.Right - num - location.X;
		int height = rcBth.Bottom - num - location.Y;
		Point point = new Point(location.X + num2, location.Y);
		Rectangle rect = new Rectangle(location, new Size(num2, height));
		gph.DrawRectangle(pen, rect);
		gph.DrawLine(pen, new Point(location.X, location.Y + 1), new Point(point.X, point.Y + 1));
		pen.Dispose();
	}

	protected virtual void DrawRestoreButton(Graphics g, Rectangle rcBth, Color clBtn)
	{
		Pen pen = new Pen(clBtn, 1f);
		int num = 3;
		Point location = new Point(rcBth.Left + num, rcBth.Top + num);
		Point pt = new Point(rcBth.Right - num, rcBth.Bottom - num);
		int num2 = (pt.X - location.X) / 3 * 2;
		int num3 = (pt.Y - location.Y) / 7 * 5;
		Point point = new Point(pt.X - num2, pt.Y);
		Point point2 = new Point(pt.X, pt.Y - num3);
		Point pt2 = new Point(point.X, point.Y - (int)((double)num3 * 0.5));
		Point pt3 = new Point(point2.X - num2 / 2, point2.Y);
		Rectangle rect = new Rectangle(location, new Size(num2, num3));
		g.DrawRectangle(pen, rect);
		g.DrawLine(pen, pt, point);
		g.DrawLine(pen, pt, point2);
		g.DrawLine(pen, point, pt2);
		g.DrawLine(pen, point2, pt3);
		pen.Dispose();
	}

	protected virtual void DrawImage(Graphics gph)
	{
		Image image = null;
		if (dhcOwner.DockingManager.ImageList != null && dhcOwner.ImageIndex >= 0 && dhcOwner.DockingManager.ImageList.Images.Count > dhcOwner.ImageIndex)
		{
			image = dhcOwner.DockingManager.ImageList.Images[dhcOwner.ImageIndex];
		}
		if (image != null && ImageRect != Rectangle.Empty)
		{
			gph.DrawImage(image, ImageRect);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && dhcOwner != null)
		{
			dhcOwner.HostControl.SystemColorsChanged -= Owner_SystemColorsChanged;
			if (tdExplorerBar != null)
			{
				tdExplorerBar.Dispose();
			}
			if (tdWindow != null)
			{
				tdWindow.Dispose();
			}
			dhcOwner = null;
			if (toolTip != null)
			{
				toolTip.Dispose();
				toolTip = null;
			}
		}
		base.Dispose(disposing);
	}
}
