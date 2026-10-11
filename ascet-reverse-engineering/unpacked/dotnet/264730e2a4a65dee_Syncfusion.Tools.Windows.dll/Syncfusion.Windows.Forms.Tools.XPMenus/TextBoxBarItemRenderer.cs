using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class TextBoxBarItemRenderer : BarItemRenderer
{
	private const int c_iMinHeigth = 20;

	private const int c_iIndentWidth = 1;

	private const int c_iBackTextBoxWidthDecrease = 2;

	private const int c_iShrinkTextBoxHorizontal = 3;

	private const int c_iShrinkTextBoxVertical = 2;

	private TextBoxItem m_txtTextBox;

	private bool m_bNeedLayout = true;

	private bool m_bHighlighted;

	public override bool Visible
	{
		get
		{
			return base.Visible;
		}
		set
		{
			if (base.Visible != value && m_txtTextBox != null)
			{
				m_txtTextBox.Visible = value;
			}
			base.Visible = value;
		}
	}

	public override BarItem BarItem
	{
		get
		{
			return base.BarItem;
		}
		set
		{
			if (base.BarItem == value)
			{
				return;
			}
			if (BarItem != null && BarItem.Manager != null && BarItem.Manager.MainFrameBarManager != null)
			{
				BarItem.Manager.MainFrameBarManager.CustomizationBegin -= CustomizationStart;
				BarItem.Manager.MainFrameBarManager.CustomizationDone -= CustomizationDone;
			}
			base.BarItem = value;
			if (m_txtTextBox != null && GetTextBoxBarItem() != null)
			{
				m_txtTextBox.Text = GetTextBoxBarItem().TextBoxValue;
				m_txtTextBox.Enabled = BarItem.Enabled;
				m_txtTextBox.HandleCreated += TextBoxHandleCreated;
				if (m_txtTextBox.IsHandleCreated)
				{
					DeferredTextBoxBinding();
				}
				m_bNeedLayout = true;
			}
			if (BarItem != null && BarItem.Manager != null && BarItem.Manager.MainFrameBarManager != null)
			{
				BarItem.Manager.MainFrameBarManager.CustomizationBegin += CustomizationStart;
				BarItem.Manager.MainFrameBarManager.CustomizationDone += CustomizationDone;
			}
		}
	}

	public override RectangleF Bounds
	{
		get
		{
			return base.Bounds;
		}
		set
		{
			if (base.Bounds != value)
			{
				m_bNeedLayout = true;
				base.Bounds = value;
			}
		}
	}

	public TextBox TextBox => m_txtTextBox;

	public TextBoxBarItemRenderer(IBarRenderer parent)
		: base(parent)
	{
		if (m_txtTextBox == null && !DesignMode())
		{
			m_txtTextBox = new TextBoxItem(this);
			GetBarControls().Add(m_txtTextBox);
			m_txtTextBox.GotFocus += m_txtTextBox_GotFocus;
			m_txtTextBox.LostFocus += m_txtTextBox_LostFocus;
			m_txtTextBox.MouseEnter += m_txtTextBox_MouseEnter;
			m_txtTextBox.MouseLeave += m_txtTextBox_MouseLeave;
			m_txtTextBox.TextChanged += m_txtTextBox_TextChanged;
			m_txtTextBox.Visible = true;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && m_txtTextBox != null)
		{
			m_txtTextBox.GotFocus -= m_txtTextBox_GotFocus;
			m_txtTextBox.LostFocus -= m_txtTextBox_LostFocus;
			m_txtTextBox.MouseEnter -= m_txtTextBox_MouseEnter;
			m_txtTextBox.MouseLeave -= m_txtTextBox_MouseLeave;
			m_txtTextBox.TextChanged -= m_txtTextBox_TextChanged;
			GetBarControls().Remove(m_txtTextBox);
			parent.GetBarControl().GetControl().ResumeLayout(performLayout: false);
			m_txtTextBox.Dispose();
			m_txtTextBox = null;
		}
		base.Dispose(disposing);
	}

	private void m_txtTextBox_GotFocus(object sender, EventArgs e)
	{
		m_bHighlighted = true;
		Repaint();
	}

	private void m_txtTextBox_LostFocus(object sender, EventArgs e)
	{
		m_bHighlighted = false;
		Repaint();
	}

	private void m_txtTextBox_MouseEnter(object sender, EventArgs e)
	{
		m_bHighlighted = true;
	}

	private void m_txtTextBox_MouseLeave(object sender, EventArgs e)
	{
		m_bHighlighted = m_txtTextBox.Focused;
	}

	private void m_txtTextBox_TextChanged(object sender, EventArgs e)
	{
		GetTextBoxBarItem().TextBoxValue = m_txtTextBox.Text;
	}

	public override void BarItemPropertyChanged(SyncfusionPropertyChangedEventArgs e)
	{
		if (m_txtTextBox != null && GetTextBoxBarItem() != null)
		{
			if (e.PropertyName == "Enabled")
			{
				m_txtTextBox.Enabled = BarItem.Enabled;
			}
			else if (e.PropertyName == "TextBoxValue")
			{
				m_txtTextBox.Text = GetTextBoxBarItem().TextBoxValue;
			}
			else if (e.PropertyName == "Style")
			{
				if ((VisualStyle)e.NewValue == VisualStyle.Office2007)
				{
					TextBox.BackColor = Office2007Colors.Default.TextBarItemBackColor;
				}
				else
				{
					TextBox.BackColor = SystemColors.Window;
				}
			}
		}
		base.BarItemPropertyChanged(e);
	}

	private void CustomizationStart(object sender, EventArgs e)
	{
		if (m_txtTextBox != null)
		{
			m_txtTextBox.Visible = false;
		}
	}

	private void CustomizationDone(object sender, EventArgs e)
	{
		if (m_txtTextBox != null)
		{
			m_txtTextBox.Visible = BarItem == null || (BarItem.Visible && BarItem.Enabled);
		}
	}

	private void DeferredTextBoxBinding()
	{
		((TextBoxBarItem)BarItem)?.OnTextBoxItemBound(new TextBoxItemBoundEventArgs(m_txtTextBox));
	}

	private void TextBoxHandleCreated(object sender, EventArgs e)
	{
		DeferredTextBoxBinding();
	}

	public override bool ShouldDrawText()
	{
		if (BarItem != null && BarItem.PaintStyle != PaintStyle.Default)
		{
			return BarItem.PaintStyle != PaintStyle.TextOnlyInMenus;
		}
		return false;
	}

	public override void OnMouseDown(Point pointMouseDown)
	{
		if (m_txtTextBox != null && !m_txtTextBox.Focused)
		{
			m_txtTextBox.SelectAll();
			m_txtTextBox.Focus();
		}
	}

	protected override void DrawBackground(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		Color color = SystemColors.Window;
		if (m_txtTextBox != null)
		{
			color = m_txtTextBox.BackColor;
		}
		if (!BarItem.Enabled)
		{
			color = SystemColors.Control;
		}
		drawItemInfo.Graphics.FillRectangle(new SolidBrush(color), GetBackTextBoxBounds(drawItemInfo.Bounds));
		if (DesignMode() && GetTextBoxBarItem().TextBoxValue != string.Empty)
		{
			DrawText(drawItemInfo.Graphics, GetTextBoxBarItem().TextBoxValue, Control.DefaultFont, BarItem.Enabled ? SystemColors.WindowText : SystemColors.GrayText, GetTextBoxBounds(drawItemInfo.Bounds), TextFormatFlags.Default);
		}
	}

	protected override ItemState GetDrawState()
	{
		ItemState result = base.GetDrawState();
		if (m_bHighlighted || HotTrack)
		{
			result = ItemState.Selected;
		}
		return result;
	}

	protected override void DrawBorders(DrawToolbarItemEventArgs drawItemInfo, bool useThemes)
	{
		Rectangle backTextBoxBounds = GetBackTextBoxBounds(drawItemInfo.Bounds);
		backTextBoxBounds.Height--;
		backTextBoxBounds.Width--;
		if (base.Style == VisualStyle.Office2007)
		{
			ItemState drawState = GetDrawState();
			Office2007BarItemPainter.DrawTextBoxBarItem(drawItemInfo.Graphics, backTextBoxBounds, drawState, base.IsHorizontalAligned);
		}
		else if (BarItem.Enabled)
		{
			if (m_bHighlighted || HotTrack || GetTextBoxBarItem().Checked)
			{
				bool flag = HotTrack && Active;
				Pen pen = null;
				pen = ((!flag) ? (BarItem.Checked ? GetBorderCheckPen(base.Style) : GetBorderPen(base.Style)) : GetBorderPressPen(base.Style));
				drawItemInfo.Graphics.DrawRectangle(pen, backTextBoxBounds);
			}
		}
		else
		{
			drawItemInfo.Graphics.DrawRectangle(new Pen(SystemColors.ControlDark), backTextBoxBounds);
		}
	}

	protected override void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, Font textFont, Color textColor, Color bgColor, DrawItemState state)
	{
		if (!ShouldDrawText())
		{
			return;
		}
		rectTextAndImage.Width = MeasureText(g, BarItem.Text, textFont).Width;
		TextBoxBarItem textBoxBarItem = GetTextBoxBarItem();
		if (textBoxBarItem.PaintStyle == PaintStyle.ImageAndText)
		{
			Size imageSizeInternal = BarItem.GetImageSizeInternal(bLargeIcons: false);
			if (!imageSizeInternal.IsEmpty)
			{
				rectTextAndImage.Width += imageSizeInternal.Width + 3;
			}
		}
		if (GetIsMirrored())
		{
			rectTextAndImage.X += Bounds.Width - rectTextAndImage.Width - 1f;
		}
		base.DrawTextAndImage(g, rectTextAndImage, textFont, textColor, bgColor, state);
	}

	public override SizeF GetPreferredSize(IGraphicsProvider gp)
	{
		SizeF preferredSize = SizeF.Empty;
		TextBoxBarItem textBoxBarItem = GetTextBoxBarItem();
		if (textBoxBarItem.PaintStyle == PaintStyle.TextOnly || textBoxBarItem.PaintStyle == PaintStyle.ImageAndText)
		{
			AddTextPreferredSize(gp, ref preferredSize);
		}
		if (textBoxBarItem.PaintStyle == PaintStyle.ImageAndText)
		{
			Size imageSizeInternal = BarItem.GetImageSizeInternal(bLargeIcons: false);
			if (!imageSizeInternal.IsEmpty)
			{
				preferredSize.Width += imageSizeInternal.Width + 3;
			}
		}
		preferredSize.Width += textBoxBarItem.MinWidth;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && base.ThemesEnabled && !base.IsParentMainMenu && base.Style != VisualStyle.Office2007 && base.Style != VisualStyle.Office2007Outlook)
		{
			preferredSize.Width += base.PaddingForThemesX;
			preferredSize.Height += base.PaddingForThemesY;
		}
		if (preferredSize.Height < 20f)
		{
			preferredSize.Height = 20f;
		}
		preferredSize.Width += 2f;
		return preferredSize;
	}

	public override void OnPaint(Graphics g, Rectangle clippingRect)
	{
		if (m_txtTextBox != null && m_bNeedLayout)
		{
			m_txtTextBox.Bounds = GetTextBoxBounds(Rectangle.Ceiling(GetDrawingBounds()));
			m_bNeedLayout = false;
		}
		base.OnPaint(g, clippingRect);
	}

	private Control.ControlCollection GetBarControls()
	{
		IBarControl barControl = parent.GetBarControl();
		if (barControl == null)
		{
			throw new NullReferenceException("BarControl is null.");
		}
		Control control = barControl.GetControl();
		if (control == null)
		{
			throw new NullReferenceException("Control is null.");
		}
		Control.ControlCollection controls = control.Controls;
		if (controls == null)
		{
			throw new Exception("ÑontrolCollection is null.");
		}
		return controls;
	}

	internal bool DesignMode()
	{
		if ((BarItem == null || !BarItem.DesignMode) && !parent.GetBarControl().DesignMode)
		{
			if (parent.Bar.Manager != null)
			{
				return parent.Bar.Manager.DesignMode;
			}
			return false;
		}
		return true;
	}

	protected bool GetIsMirrored()
	{
		return base.IsRTL;
	}

	protected virtual Rectangle GetBackTextBoxBounds(Rectangle bounds)
	{
		Rectangle result = bounds;
		result.Width = GetTextBoxBarItem().MinWidth;
		result.Width -= 2;
		if ((BarItem.PaintStyle == PaintStyle.TextOnly || BarItem.PaintStyle == PaintStyle.ImageAndText) && !GetIsMirrored())
		{
			result.X += (int)GetDrawingBounds().Width - result.Width - 1;
		}
		else
		{
			result.X++;
		}
		return result;
	}

	protected virtual Rectangle GetTextBoxBounds(Rectangle bounds)
	{
		Rectangle backTextBoxBounds = GetBackTextBoxBounds(bounds);
		backTextBoxBounds.Offset(3, 2);
		backTextBoxBounds.Width -= 6;
		backTextBoxBounds.Height -= 4;
		return backTextBoxBounds;
	}

	private TextBoxBarItem GetTextBoxBarItem()
	{
		return BarItem as TextBoxBarItem;
	}
}
