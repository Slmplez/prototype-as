using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class TabRendererBase : ITabRenderer, IDisposable
{
	private delegate Font CFnGetTabFont(ITabPanelData a, ITabControl b);

	private const int c_ADJUST_WIDTH_ONE_NOTE_STYLE = 4;

	private const int c_ADJUST_WIDTH_DOCKING_WHIDBEY_BETA = 12;

	internal const int c_DRAW_TEXT_FLAGS = 32;

	private const int DEF_CLOSE_BUTTON_SIZE = 7;

	private const int DEF_CLOSE_BUTTON_PADDING = 5;

	private const string DEF_MEASURE_STR = "X";

	private bool currentlyAnimating;

	private GraphicsState m_savedState;

	private bool m_bShouldDrawText = true;

	private ITabData tabData;

	private bool hotTrack;

	private DrawItemCallback drawItemCallback;

	internal ITabControl parent;

	[DocumentationExclude]
	protected ITabPanelRenderer panelRenderer;

	[DocumentationExclude]
	public static int ImageTextPadding = 2;

	private RectangleF bounds;

	private TabAlignment tabAlignment;

	private RectangleF lastDrawnBounds = RectangleF.Empty;

	private SizeF cachedTextPrefSize = SizeF.Empty;

	private bool isTextShrunk;

	private bool visible = true;

	private bool m_bForceDrawImage;

	private RectangleF m_rectText;

	private static Graphics m_measure;

	private Rectangle m_lastDrawnTextBounds = Rectangle.Empty;

	private bool m_bShowCloseButton;

	private Rectangle m_lastCloseButtonBounds = Rectangle.Empty;

	private bool m_bIsCloseButtonClicked;

	private bool m_bHitCloseButton;

	private Rectangle imageRect;

	private static Graphics MeasureGraphics
	{
		get
		{
			if (m_measure == null)
			{
				m_measure = Graphics.FromImage(new Bitmap(1, 1));
			}
			return m_measure;
		}
		set
		{
			if (m_measure != null)
			{
				m_measure.Dispose();
			}
			m_measure = value;
		}
	}

	public bool ForceDrawImage
	{
		get
		{
			return m_bForceDrawImage;
		}
		set
		{
			if (m_bForceDrawImage != value)
			{
				m_bForceDrawImage = value;
			}
		}
	}

	public Rectangle TextBounds => m_lastDrawnTextBounds;

	public bool ShouldDrawText
	{
		get
		{
			return m_bShouldDrawText;
		}
		set
		{
			if (value != m_bShouldDrawText)
			{
				m_bShouldDrawText = value;
			}
		}
	}

	public virtual int LabelEditOffsetY => 0;

	public virtual ITabData TabData
	{
		get
		{
			return tabData;
		}
		set
		{
			tabData = value;
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

	public bool HotTrack
	{
		get
		{
			return hotTrack;
		}
		set
		{
			if (hotTrack != value)
			{
				hotTrack = value;
			}
		}
	}

	public DrawItemCallback DrawItemCallback
	{
		get
		{
			return drawItemCallback;
		}
		set
		{
			drawItemCallback = value;
		}
	}

	public ITabControl TabControl => parent;

	public virtual Color TabBorderColor => SystemColors.ControlDark;

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
			}
		}
	}

	public Rectangle CloseButtonBounds => m_lastCloseButtonBounds;

	public virtual bool CloseButtonClicked
	{
		get
		{
			return m_bIsCloseButtonClicked;
		}
		set
		{
			if (m_bIsCloseButtonClicked != value)
			{
				m_bIsCloseButtonClicked = value;
			}
		}
	}

	public virtual int CloseButtonSize => 7;

	protected virtual Point CorrectCloseButtonPosition => new Point(0, 0);

	public virtual int CloseButtonPadding => 5;

	public virtual bool HitCloseButton
	{
		get
		{
			return m_bHitCloseButton;
		}
		set
		{
			if (m_bHitCloseButton != value)
			{
				m_bHitCloseButton = value;
			}
		}
	}

	[DocumentationExclude]
	protected bool ShouldDrawRotatedWhenVertical
	{
		get
		{
			if (panelRenderer.TabPanelData.RotateTextWhenVertical)
			{
				if (TabAlignment != TabAlignment.Left)
				{
					return TabAlignment == TabAlignment.Right;
				}
				return true;
			}
			return false;
		}
	}

	private Icon Icon
	{
		get
		{
			Icon result = null;
			if (TabData is MDIChildTabData { Icon: not null } mDIChildTabData)
			{
				result = mDIChildTabData.Icon;
			}
			return result;
		}
	}

	[DocumentationExclude]
	protected bool NeedRotateTextWhenVertical
	{
		get
		{
			if (TabAlignment == TabAlignment.Left || TabAlignment == TabAlignment.Right)
			{
				if (panelRenderer != null && panelRenderer.TabPanelData != null)
				{
					return panelRenderer.TabPanelData.RotateTextWhenVertical;
				}
				return false;
			}
			return false;
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

	public Rectangle ImageRect
	{
		get
		{
			return imageRect;
		}
		set
		{
			imageRect = value;
		}
	}

	public TabAlignment TabAlignment
	{
		get
		{
			return tabAlignment;
		}
		set
		{
			tabAlignment = value;
		}
	}

	protected virtual void SaveGraphicsState(Graphics g, ref RectangleF curBounds)
	{
		if (NeedRotateTextWhenVertical)
		{
			m_savedState = g.Save();
			g.ResetTransform();
			curBounds = TabUtils.ApplyTransform(g, TabAlignment, curBounds, apply: false);
		}
	}

	protected virtual void RestoreGraphicsState(Graphics g)
	{
		if (m_savedState != null)
		{
			g.Restore(m_savedState);
			m_savedState = null;
		}
	}

	protected virtual bool NeedMirroredBackground()
	{
		bool flag = panelRenderer.IsMirrored;
		if (flag && TabControl is TabControlAdv { RotateTabsWhenRTL: false })
		{
			flag = false;
		}
		return flag;
	}

	public TabRendererBase(ITabControl parent, ITabPanelRenderer panelRenderer)
	{
		this.parent = parent;
		this.panelRenderer = panelRenderer;
	}

	public virtual void TabPropertyChanged()
	{
	}

	public virtual bool IsTextShrunk()
	{
		return isTextShrunk;
	}

	public virtual bool CloseButtonHitTest(Point pt)
	{
		return m_lastCloseButtonBounds.Contains(pt);
	}

	protected virtual void DrawCloseButton(Graphics g, RectangleF closeButtonBounds)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if ((int)closeButtonBounds.Width >= CloseButtonSize && (int)closeButtonBounds.Height >= CloseButtonSize)
		{
			GraphicsState graphicsState = null;
			if (ShouldDrawRotatedWhenVertical)
			{
				graphicsState = g.Save();
				g.ResetTransform();
			}
			closeButtonBounds.X += CorrectCloseButtonPosition.X;
			closeButtonBounds.Y += CorrectCloseButtonPosition.Y;
			closeButtonBounds.Height -= 1f;
			Rectangle rectangle = Rectangle.Ceiling(closeButtonBounds);
			Pen pen = new Pen(Color.FromArgb(200, Color.Black));
			g.DrawLine(pen, rectangle.X + 1, rectangle.Y, rectangle.X + rectangle.Width, rectangle.Y + rectangle.Height);
			g.DrawLine(pen, rectangle.X, rectangle.Y, rectangle.X + rectangle.Width - 1, rectangle.Y + rectangle.Height);
			g.DrawLine(pen, rectangle.X + rectangle.Width - 1, rectangle.Y, rectangle.X, rectangle.Y + rectangle.Height);
			g.DrawLine(pen, rectangle.X + rectangle.Width, rectangle.Y, rectangle.X + 1, rectangle.Y + rectangle.Height);
			if (HitCloseButton)
			{
				DrawCloseButtonBorder(g, closeButtonBounds);
			}
			if (graphicsState != null)
			{
				g.Restore(graphicsState);
			}
			m_lastCloseButtonBounds = Rectangle.Round(closeButtonBounds);
		}
	}

	private void DrawCloseButtonBorder(Graphics g, RectangleF closeButtonBounds)
	{
		RectangleF rectangleF = closeButtonBounds;
		rectangleF.Inflate(3f, 3f);
		rectangleF.Height += 1f;
		rectangleF.Width += 1f;
		using Bitmap bitmap = new Bitmap((int)rectangleF.Width, (int)rectangleF.Height);
		using (Graphics graphics = Graphics.FromImage(bitmap))
		{
			ControlPaint.DrawBorder3D(graphics, new Rectangle(0, 0, (int)rectangleF.Width, (int)rectangleF.Height), CloseButtonClicked ? Border3DStyle.Sunken : Border3DStyle.Raised, Border3DSide.Left | Border3DSide.Top | Border3DSide.Right | Border3DSide.Bottom);
		}
		if (panelRenderer != null && panelRenderer.TabPanelData != null && (panelRenderer.TabPanelData.Alignment == TabAlignment.Bottom || (panelRenderer.TabPanelData.Alignment == TabAlignment.Right && !panelRenderer.TabPanelData.RotateTextWhenVertical)))
		{
			bitmap.RotateFlip(RotateFlipType.Rotate180FlipX);
		}
		g.DrawImage(bitmap, rectangleF.X, rectangleF.Y);
	}

	protected virtual RectangleF GetCloseButtonBounds(DrawTabEventArgs drawItemInfo)
	{
		_ = panelRenderer.TabPanelData;
		RectangleF result = Rectangle.Empty;
		if (ShowCloseButton)
		{
			Graphics graphics = drawItemInfo.Graphics;
			SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
			RectangleF value = TabUtils.ApplyTransform(graphics, TabAlignment, drawItemInfo.BoundsInterior, apply: true);
			value.Inflate(0f - (float)Math.Ceiling(overlapSize.Width / 2f), 0f);
			result.Size = new SizeF(CloseButtonSize, CloseButtonSize);
			RectangleF value2 = drawItemInfo.BoundsInterior;
			value2.Inflate(0f - (float)Math.Ceiling(overlapSize.Width / 2f), 0f);
			Rectangle rectangle = Rectangle.Round(TabUtils.ApplyTransform(graphics, TabAlignment, drawItemInfo.Bounds, apply: true));
			if (ShouldDrawRotatedWhenVertical)
			{
				rectangle = drawItemInfo.Bounds;
			}
			Rectangle empty = Rectangle.Empty;
			if (ShouldDrawRotatedWhenVertical)
			{
				if (TabAlignment == TabAlignment.Right)
				{
					if (panelRenderer.IsMirrored)
					{
						result.Location = new PointF(value2.Right + (float)CloseButtonPadding, value2.Top);
					}
					else
					{
						result.Location = value2.Location;
						result.Offset(-(CloseButtonSize + CloseButtonPadding) + 1, 0f);
					}
				}
				else if (TabAlignment == TabAlignment.Left)
				{
					if (panelRenderer.IsMirrored)
					{
						result.Location = value2.Location;
						result.Offset(-(CloseButtonSize + CloseButtonPadding) + 1, 0f);
					}
					else
					{
						result.Location = new PointF(value2.Right + (float)CloseButtonPadding, value2.Top);
					}
				}
				empty = Rectangle.Ceiling(value2);
			}
			else
			{
				if (panelRenderer.IsMirrored)
				{
					result.Location = value.Location;
					result.Offset(-(CloseButtonSize + CloseButtonPadding), 0f);
				}
				else
				{
					result.Location = new PointF(value.Right + (float)CloseButtonPadding, value.Top);
				}
				empty = Rectangle.Ceiling(value);
			}
			result.Height = Math.Min(result.Height, empty.Height);
			result.Y = ((float)empty.Height - result.Height) / 2f + (float)empty.Y;
			result.Intersect(rectangle);
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual RectangleF CorrectInteriorBounds(RectangleF rectTextAndImage)
	{
		_ = panelRenderer.TabPanelData;
		if (ShowCloseButton)
		{
			int num = CloseButtonSize + CloseButtonPadding;
			bool shouldDrawRotatedWhenVertical = ShouldDrawRotatedWhenVertical;
			if (shouldDrawRotatedWhenVertical)
			{
				rectTextAndImage.Height -= num;
			}
			else
			{
				rectTextAndImage.Width -= num;
			}
			if (panelRenderer.IsMirrored)
			{
				if (shouldDrawRotatedWhenVertical)
				{
					rectTextAndImage.Offset(0f, num);
				}
				else
				{
					rectTextAndImage.Offset(num, 0f);
				}
			}
		}
		return rectTextAndImage;
	}

	public virtual SizeF GetPreferredSize(Graphics g)
	{
		return GetItemPreferredSize(g);
	}

	protected virtual SizeF GetItemPreferredSize(Graphics g)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		SizeF preferredSize = SizeF.Empty;
		string text = ((tabData.Text == string.Empty) ? "X" : tabData.Text);
		SizeF[] array = new SizeF[2];
		for (int i = 0; i < 2; i++)
		{
			bool flag = 0 == i;
			Font font = (flag ? tabData.Font : tabPanelData.ActiveTabFont);
			if (font == null)
			{
				font = GetTabFont(flag);
			}
			ref SizeF reference = ref array[i];
			reference = MeasureText(g, text, font);
			ref SizeF reference2 = ref array[i];
			reference2 = Size.Ceiling(array[i]);
		}
		preferredSize.Width += Math.Max(array[0].Width, array[1].Width);
		preferredSize.Height += Math.Max(array[0].Height, array[1].Height);
		if (tabData.Text == string.Empty)
		{
			preferredSize.Width = 0f;
		}
		cachedTextPrefSize = preferredSize;
		TabPanelData tabPanelData2 = panelRenderer.TabPanelData as TabPanelData;
		if (ShowCloseButton)
		{
			preferredSize.Width += CloseButtonSize + CloseButtonPadding;
		}
		bool flag2 = tabPanelData2.Alignment == TabAlignment.Right || tabPanelData2.Alignment == TabAlignment.Left;
		Size size = ((tabPanelData.ImageList != null) ? tabPanelData.ImageList.ImageSize : Size.Empty);
		if (tabAlignment == TabAlignment.Left || tabAlignment == TabAlignment.Right)
		{
			size = new Size(size.Height, size.Width);
			if (tabPanelData.RotateTextWhenVertical)
			{
				preferredSize = new SizeF(preferredSize.Height, preferredSize.Width);
			}
		}
		if ((!size.IsEmpty && tabData.Image == null) || (!size.IsEmpty && tabData.ImageIndex != -1))
		{
			if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.LeftOfText || tabPanelData.ImageAlignmentR == RelativeImageAlignment.RightOfText)
			{
				if (tabPanelData.RotateTextWhenVertical && flag2)
				{
					preferredSize.Height += ImageTextPadding;
					preferredSize.Height += size.Height;
					if (tabData.ImageIndex != -1)
					{
						preferredSize.Width = Math.Max(preferredSize.Width, size.Width);
					}
				}
				else
				{
					if (tabData.ImageIndex != -1)
					{
						preferredSize.Width += ImageTextPadding;
						preferredSize.Width += size.Width;
					}
					preferredSize.Height = Math.Max(preferredSize.Height, size.Height);
				}
			}
			else if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.AboveText || tabPanelData.ImageAlignmentR == RelativeImageAlignment.BelowText)
			{
				if (tabPanelData.RotateTextWhenVertical && flag2)
				{
					if (tabData.ImageIndex != -1)
					{
						preferredSize.Width += ImageTextPadding;
						preferredSize.Width += size.Width;
					}
					preferredSize.Height = Math.Max(preferredSize.Height, size.Height);
				}
				else
				{
					preferredSize.Height += ImageTextPadding;
					preferredSize.Height += size.Height;
					if (tabData.ImageIndex != -1)
					{
						preferredSize.Width = Math.Max(preferredSize.Width, size.Width);
					}
				}
			}
			else if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.Overlap)
			{
				preferredSize.Height = Math.Max(preferredSize.Height, size.Height);
				if (tabData.ImageIndex != -1)
				{
					preferredSize.Width = Math.Max(preferredSize.Width, size.Width);
				}
			}
		}
		else if (tabData.Image != null)
		{
			if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.LeftOfText || tabPanelData.ImageAlignmentR == RelativeImageAlignment.RightOfText)
			{
				if (tabPanelData.RotateTextWhenVertical && flag2)
				{
					preferredSize.Height += ImageTextPadding;
					preferredSize.Height += tabData.ImageSize.Height;
					preferredSize.Width = Math.Max(preferredSize.Width, tabData.ImageSize.Width);
				}
				else
				{
					preferredSize.Width += ImageTextPadding;
					preferredSize.Width += tabData.ImageSize.Width;
					preferredSize.Height = Math.Max(preferredSize.Height, tabData.ImageSize.Height);
				}
			}
			else if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.AboveText || tabPanelData.ImageAlignmentR == RelativeImageAlignment.BelowText)
			{
				if (tabPanelData.RotateTextWhenVertical && flag2)
				{
					preferredSize.Width += ImageTextPadding;
					preferredSize.Width += tabData.ImageSize.Width;
					preferredSize.Height = Math.Max(preferredSize.Height, tabData.ImageSize.Height);
				}
				else
				{
					preferredSize.Height += ImageTextPadding;
					preferredSize.Height += tabData.ImageSize.Height;
					preferredSize.Width = Math.Max(preferredSize.Width, tabData.ImageSize.Width);
				}
			}
			else if (tabPanelData.ImageAlignmentR == RelativeImageAlignment.Overlap)
			{
				preferredSize.Height = Math.Max(preferredSize.Height, tabData.ImageSize.Height);
				preferredSize.Width = Math.Max(preferredSize.Width, tabData.ImageSize.Width);
			}
		}
		preferredSize = CorrectPreferredSize(preferredSize);
		preferredSize.Height += 1f;
		return preferredSize + new SizeF(2f, 2f);
	}

	protected Font GetTabFont(bool isInactive)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle);
		CFnGetTabFont cFnGetTabFont = (isInactive ? new CFnGetTabFont(registeredExtender.DefaultInactiveTabFont) : new CFnGetTabFont(registeredExtender.DefaultActiveTabFont));
		return cFnGetTabFont(tabPanelData, parent);
	}

	[DocumentationExclude]
	protected virtual SizeF CorrectPreferredSize(SizeF preferredSize)
	{
		ITabPanelData tabPanelData = null;
		if (panelRenderer != null)
		{
			tabPanelData = panelRenderer.TabPanelData;
			if (tabPanelData != null)
			{
				preferredSize.Width += tabPanelData.Padding.X * 2;
				preferredSize.Height += tabPanelData.Padding.Y * 2;
			}
		}
		return preferredSize;
	}

	public virtual RectangleF GetTextPosition(Graphics g, string text, Font font, RectangleF rectLayout, StringFormat stringformat)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		if (tabPanelData.TabStyle == TabRendererVS2008.TabStyleName && !NeedRotateTextWhenVertical)
		{
			rectLayout.Height -= TabControl.BorderWidth - 5;
		}
		SizeF value;
		if (tabAlignment == TabAlignment.Top)
		{
			value = MeasureText(g, text, font);
		}
		else
		{
			GraphicsState gstate = g.Save();
			g.ResetTransform();
			value = MeasureText(g, text, font);
			g.Restore(gstate);
			if (tabAlignment != TabAlignment.Bottom && panelRenderer.TabPanelData.RotateTextWhenVertical)
			{
				value = new SizeF(value.Height, value.Width);
			}
		}
		value = Size.Ceiling(value);
		float num = rectLayout.X;
		bool flag = value.Width > rectLayout.Width;
		switch (stringformat.Alignment)
		{
		case StringAlignment.Far:
			if (!flag)
			{
				num += rectLayout.Width - value.Width;
			}
			break;
		default:
			if (!flag)
			{
				num += (float)Math.Ceiling((rectLayout.Width - value.Width) / 2f);
			}
			break;
		}
		float num2 = rectLayout.Y;
		bool flag2 = value.Height > rectLayout.Height;
		switch (stringformat.LineAlignment)
		{
		case StringAlignment.Far:
			if (!flag2)
			{
				num2 += rectLayout.Height - value.Height;
			}
			break;
		case StringAlignment.Center:
			if (!flag2)
			{
				num2 += (float)Math.Ceiling((rectLayout.Height - value.Height) / 2f);
			}
			break;
		}
		RectangleF result = new RectangleF(num, num2, (value.Width < rectLayout.Width) ? value.Width : rectLayout.Width, (value.Height < rectLayout.Height) ? value.Height : rectLayout.Height);
		return result;
	}

	private void AdjustImageRectYPos(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		switch (tabPanelData.TextLineAlignment)
		{
		case StringAlignment.Center:
			rectImage.Y = m_rectText.Top + (m_rectText.Height - rectImage.Height) / 2f;
			break;
		case StringAlignment.Near:
			rectImage.Y = rectTextAndImage.Top;
			break;
		case StringAlignment.Far:
			rectImage.Y = rectTextAndImage.Bottom - rectImage.Height;
			break;
		}
	}

	private void AdjustImageRectXPos(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		switch (tabPanelData.TextAlignment)
		{
		case StringAlignment.Center:
			rectImage.X = m_rectText.Left + (m_rectText.Width - rectImage.Width) / 2f;
			break;
		case StringAlignment.Near:
			rectImage.X = rectTextAndImage.Left;
			break;
		case StringAlignment.Far:
			rectImage.X = m_rectText.Left - m_rectText.Width;
			break;
		}
	}

	private void AdjustImageRectAboveText(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		_ = tabPanelData.TextAlignment;
		switch (tabPanelData.TextLineAlignment)
		{
		case StringAlignment.Near:
			m_rectText.Offset(0f, rectImage.Height + (float)ImageTextPadding);
			rectImage.Y = rectTextAndImage.Top;
			break;
		case StringAlignment.Far:
			rectImage.Y = m_rectText.Top - rectImage.Height - (float)ImageTextPadding;
			break;
		case StringAlignment.Center:
			m_rectText.Offset(0f, (rectImage.Height + (float)ImageTextPadding) / 2f);
			rectImage.Y = m_rectText.Top - rectImage.Height - (float)ImageTextPadding;
			break;
		}
	}

	private void AdjustImageRectBelowText(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		_ = tabPanelData.TextAlignment;
		switch (tabPanelData.TextLineAlignment)
		{
		case StringAlignment.Near:
			rectImage.Y = m_rectText.Bottom + (float)ImageTextPadding;
			break;
		case StringAlignment.Far:
			m_rectText.Offset(0f, 0f - (rectImage.Height - (float)ImageTextPadding));
			rectImage.Y = rectTextAndImage.Bottom - rectImage.Height;
			break;
		case StringAlignment.Center:
			m_rectText.Offset(0f, 0f - (rectImage.Height + (float)ImageTextPadding) / 2f);
			rectImage.Y = m_rectText.Bottom + (float)ImageTextPadding;
			break;
		}
	}

	private void AdjustImageRectLeftOfText(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		StringAlignment textAlignment = tabPanelData.TextAlignment;
		_ = tabPanelData.TextLineAlignment;
		bool isMirrored = panelRenderer.IsMirrored;
		int num = ((!isMirrored) ? 1 : (-1));
		switch (textAlignment)
		{
		case StringAlignment.Near:
			if (isMirrored)
			{
				rectImage.X = rectTextAndImage.Right - rectImage.Width;
				m_rectText.X = rectImage.Left - (float)ImageTextPadding - m_rectText.Width;
			}
			else
			{
				rectImage.X = rectTextAndImage.Left;
				m_rectText.X = rectImage.Right + (float)ImageTextPadding;
			}
			break;
		case StringAlignment.Far:
			if (isMirrored)
			{
				m_rectText.X = rectTextAndImage.Left;
				rectImage.X = m_rectText.Right + (float)ImageTextPadding;
			}
			else
			{
				m_rectText.X = rectTextAndImage.Right - m_rectText.Width;
				rectImage.X = m_rectText.Left - (float)ImageTextPadding - rectImage.Width;
			}
			break;
		case StringAlignment.Center:
		{
			float num2 = 0f;
			m_rectText.Offset((float)num * (rectImage.Width + (float)ImageTextPadding) / 2f, 0f);
			if (isMirrored)
			{
				rectImage.X = m_rectText.Right + (float)ImageTextPadding;
				num2 = rectImage.Right - rectTextAndImage.Right;
			}
			else
			{
				rectImage.X = m_rectText.Left - rectImage.Width - (float)ImageTextPadding;
				num2 = rectTextAndImage.Left - rectImage.Left;
			}
			if (num2 > 0f)
			{
				float num3 = (float)num * num2;
				rectImage.X += num3;
				m_rectText.X += num3;
			}
			break;
		}
		}
	}

	private void AdjustImageRectRightOfText(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		StringAlignment textAlignment = tabPanelData.TextAlignment;
		_ = tabPanelData.TextLineAlignment;
		bool isMirrored = panelRenderer.IsMirrored;
		int num = ((!isMirrored) ? 1 : (-1));
		switch (textAlignment)
		{
		case StringAlignment.Near:
			if (isMirrored)
			{
				m_rectText.X = rectTextAndImage.Right - m_rectText.Width;
				rectImage.X = m_rectText.Left - (float)ImageTextPadding - rectImage.Width;
			}
			else
			{
				m_rectText.X = rectTextAndImage.Left;
				rectImage.X = m_rectText.Right + (float)ImageTextPadding;
			}
			break;
		case StringAlignment.Far:
			if (isMirrored)
			{
				rectImage.X = rectTextAndImage.Left;
				m_rectText.X = rectImage.Right + (float)ImageTextPadding;
			}
			else
			{
				rectImage.X = rectTextAndImage.Right - rectImage.Width;
				m_rectText.X = rectImage.Left - (float)ImageTextPadding - m_rectText.Width;
			}
			break;
		case StringAlignment.Center:
		{
			float num2 = 0f;
			m_rectText.Offset((float)(-num) * (rectImage.Width + (float)ImageTextPadding) / 2f, 0f);
			if (isMirrored)
			{
				rectImage.X = m_rectText.Left - (float)ImageTextPadding - rectImage.Width;
				num2 = m_rectText.Right - rectTextAndImage.Right;
			}
			else
			{
				rectImage.X = m_rectText.Right + (float)ImageTextPadding;
				num2 = rectTextAndImage.Left - m_rectText.Left;
			}
			if (num2 > 0f)
			{
				float num3 = (float)num * num2;
				rectImage.X += num3;
				m_rectText.X += num3;
			}
			break;
		}
		}
	}

	private void AdjustImageRectOverlap(ref RectangleF rectImage, RectangleF rectTextAndImage)
	{
		rectImage.X = rectTextAndImage.Left;
		rectImage.Y = rectTextAndImage.Top;
		if (rectTextAndImage.Width > rectImage.Width)
		{
			rectImage.Offset((float)Math.Ceiling((rectTextAndImage.Width - rectImage.Width) / 2f), 0f);
		}
		if (rectTextAndImage.Height > rectImage.Height)
		{
			rectImage.Offset(0f, (float)Math.Ceiling((rectTextAndImage.Height - rectImage.Height) / 2f));
		}
	}

	private RectangleF GetImageRectangle(RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		RelativeImageAlignment imageAlignmentR = tabPanelData.ImageAlignmentR;
		bool flag = tabPanelData.Alignment == TabAlignment.Right || tabPanelData.Alignment == TabAlignment.Left;
		Size size = tabPanelData.ImageList?.ImageSize ?? Size.Empty;
		if (tabAlignment == TabAlignment.Left || tabAlignment == TabAlignment.Right)
		{
			size = new Size(size.Height, size.Width);
		}
		RectangleF rectImage = new RectangleF(new PointF(0f, 0f), size);
		switch (imageAlignmentR)
		{
		case RelativeImageAlignment.AboveText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
				break;
			}
			if (tabPanelData.Alignment == TabAlignment.Bottom)
			{
				AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
			}
			else
			{
				AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
			}
			AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			break;
		case RelativeImageAlignment.BelowText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
				break;
			}
			if (tabPanelData.Alignment == TabAlignment.Bottom)
			{
				AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
			}
			else
			{
				AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
			}
			AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			break;
		case RelativeImageAlignment.LeftOfText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			}
			else
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
			}
			break;
		case RelativeImageAlignment.RightOfText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			}
			else
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
			}
			break;
		case RelativeImageAlignment.Overlap:
			AdjustImageRectOverlap(ref rectImage, rectTextAndImage);
			break;
		}
		return rectImage;
	}

	private RectangleF GetAnimateImageRectangle(RectangleF rectTextAndImage)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		RelativeImageAlignment imageAlignmentR = tabPanelData.ImageAlignmentR;
		bool flag = tabPanelData.Alignment == TabAlignment.Right || tabPanelData.Alignment == TabAlignment.Left;
		Size size = ((tabData.Image != null) ? tabData.ImageSize : Size.Empty);
		if (tabAlignment == TabAlignment.Left || tabAlignment == TabAlignment.Right)
		{
			size = new Size(size.Height, size.Width);
		}
		RectangleF rectImage = new RectangleF(new PointF(0f, 0f), size);
		switch (imageAlignmentR)
		{
		case RelativeImageAlignment.AboveText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
				break;
			}
			if (tabPanelData.Alignment == TabAlignment.Bottom)
			{
				AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
			}
			else
			{
				AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
			}
			AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			break;
		case RelativeImageAlignment.BelowText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
				break;
			}
			if (tabPanelData.Alignment == TabAlignment.Bottom)
			{
				AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
			}
			else
			{
				AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
			}
			AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			break;
		case RelativeImageAlignment.LeftOfText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			}
			else
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
			}
			break;
		case RelativeImageAlignment.RightOfText:
			if (tabPanelData.RotateTextWhenVertical && flag)
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectAboveText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectBelowText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectXPos(ref rectImage, rectTextAndImage);
			}
			else
			{
				if (tabAlignment != TabAlignment.Left)
				{
					AdjustImageRectRightOfText(ref rectImage, rectTextAndImage);
				}
				else
				{
					AdjustImageRectLeftOfText(ref rectImage, rectTextAndImage);
				}
				AdjustImageRectYPos(ref rectImage, rectTextAndImage);
			}
			break;
		case RelativeImageAlignment.Overlap:
			AdjustImageRectOverlap(ref rectImage, rectTextAndImage);
			break;
		}
		return rectImage;
	}

	protected virtual void DrawFocusRect(Graphics g, RectangleF focusRect, Color fore, Color back)
	{
		ControlPaint.DrawFocusRectangle(g, Rectangle.Round(focusRect), fore, back);
	}

	protected virtual void DrawTextAndImage(Graphics g, RectangleF rectTextAndImage, DrawTabEventArgs e)
	{
		if (rectTextAndImage.Width < 0f || rectTextAndImage.Height < 0f)
		{
			return;
		}
		bool flag = (e.State & DrawItemState.Disabled) <= DrawItemState.None;
		bool isMirrored = panelRenderer.IsMirrored;
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		using StringFormat stringFormat = new StringFormat();
		stringFormat.Alignment = tabPanelData.TextAlignment;
		stringFormat.LineAlignment = tabPanelData.TextLineAlignment;
		if (TabControl.UseMnemonic)
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.Show;
		}
		else
		{
			stringFormat.HotkeyPrefix = HotkeyPrefix.None;
		}
		stringFormat.FormatFlags = StringFormatFlags.NoWrap;
		if (isMirrored)
		{
			stringFormat.FormatFlags |= StringFormatFlags.DirectionRightToLeft;
		}
		if (TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle).DrawEllipsis)
		{
			stringFormat.Trimming = StringTrimming.EllipsisCharacter;
		}
		m_rectText = GetTextPosition(g, tabData.Text, e.Font, rectTextAndImage, stringFormat);
		int imageIndex = tabData.ImageIndex;
		ImageList imageList = tabPanelData.ImageList;
		Image image = null;
		if (imageIndex != -1 && imageList != null && imageList.Images.Count > imageIndex)
		{
			image = imageList.Images[imageIndex];
		}
		Size size = imageList?.ImageSize ?? Size.Empty;
		if (tabAlignment == TabAlignment.Left || tabAlignment == TabAlignment.Right)
		{
			size = new Size(size.Height, size.Width);
		}
		RelativeImageAlignment imageAlignmentR = tabPanelData.ImageAlignmentR;
		TabAlignment alignment = tabPanelData.Alignment;
		RectangleF rectangleF = RectangleF.Empty;
		if (image != null && tabData.ImageIndex != -1)
		{
			rectangleF = GetImageRectangle(rectTextAndImage);
			if (!rectTextAndImage.Contains(RectangleF.Union(rectangleF, m_rectText)))
			{
				int num = 0;
				if (tabPanelData.TabStyle == OneNoteStyleRenderer.TabStyleName || tabPanelData.TabStyle == TabRendererOffice2003.TabStyleName || tabPanelData.TabStyle == TabRendererWhidbey.TabStyleName)
				{
					num = 4;
				}
				else if (tabPanelData.TabStyle == TabRendererDockingWhidbeyBeta.TabStyleName)
				{
					num = 12;
				}
				switch (imageAlignmentR)
				{
				case RelativeImageAlignment.LeftOfText:
				case RelativeImageAlignment.AboveText:
				{
					float num2 = rectTextAndImage.Top - rectangleF.Top;
					if (num2 < 0f)
					{
						num2 = 0f;
					}
					float num3 = rectTextAndImage.Left - rectangleF.Left;
					if (num3 < 0f)
					{
						num3 = 0f;
					}
					rectangleF.Offset(num3, num2);
					m_rectText.Offset(num3, num2);
					if (rectTextAndImage.Width < m_rectText.Width + rectangleF.Width + (float)num)
					{
						m_rectText.Width = rectTextAndImage.Width - rectangleF.Width - (float)num;
						if (TabAlignment == TabAlignment.Left)
						{
							rectangleF.X = m_rectText.Right;
						}
					}
					break;
				}
				case RelativeImageAlignment.BelowText:
				{
					float x = rectTextAndImage.Left - rectangleF.Left;
					rectangleF.Offset(x, 0f);
					break;
				}
				case RelativeImageAlignment.RightOfText:
				{
					float y = rectTextAndImage.Top - rectangleF.Top;
					rectangleF.Offset(0f, y);
					if (rectTextAndImage.Width < m_rectText.Width + rectangleF.Width + (float)num)
					{
						m_rectText.Width = rectTextAndImage.Width - rectangleF.Width - (float)num;
						if (TabAlignment != TabAlignment.Left)
						{
							rectangleF.X = m_rectText.Right;
						}
					}
					break;
				}
				}
			}
			int num4 = 0;
			if (panelRenderer.TabPanelData.ImageOffset > ImageTextPadding)
			{
				num4 = panelRenderer.TabPanelData.ImageOffset - ImageTextPadding;
			}
			new RectangleF(rectangleF.X, rectangleF.Y, rectangleF.Width, rectangleF.Height - (float)num4);
			GraphicsState gstate = g.Save();
			g.ResetTransform();
			RectangleF value = TabUtils.ApplyTransform(g, alignment, rectangleF, apply: false);
			Rectangle rect = Rectangle.Ceiling(value);
			bool flag2 = panelRenderer.TabPanelData.SelectedIndex != -1 && panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == tabData;
			if (imageAlignmentR != RelativeImageAlignment.AboveText && imageAlignmentR != RelativeImageAlignment.BelowText && imageAlignmentR != RelativeImageAlignment.Overlap)
			{
				switch (tabAlignment)
				{
				case TabAlignment.Top:
					rect.Y -= tabPanelData.ImageOffset;
					if (!flag2 && tabPanelData.ImageOffset >= 2)
					{
						rect.Y += 2;
					}
					break;
				case TabAlignment.Bottom:
					rect.Y += tabPanelData.ImageOffset;
					if (!flag2 && tabPanelData.ImageOffset >= 2)
					{
						rect.Y -= 2;
					}
					break;
				case TabAlignment.Left:
					rect.X -= tabPanelData.ImageOffset;
					if (!flag2 && tabPanelData.ImageOffset >= 2)
					{
						rect.X += 2;
					}
					break;
				case TabAlignment.Right:
					rect.X += tabPanelData.ImageOffset;
					if (!flag2 && tabPanelData.ImageOffset >= 2)
					{
						rect.X -= 2;
					}
					break;
				}
			}
			if (rect.Width > panelRenderer.TabPanelData.ImageList.ImageSize.Width)
			{
				rect.Width = panelRenderer.TabPanelData.ImageList.ImageSize.Width;
			}
			if (rect.Height > panelRenderer.TabPanelData.ImageList.ImageSize.Height)
			{
				rect.Height = panelRenderer.TabPanelData.ImageList.ImageSize.Height;
			}
			Icon icon = Icon;
			if (icon != null)
			{
				g.DrawImage(image, rect);
			}
			else if (flag)
			{
				if (!tabPanelData.DisableInactivePageImage || flag2)
				{
					g.DrawImage(image, rect);
				}
				else
				{
					ControlPaint.DrawImageDisabled(g, image, rect.Left, rect.Top, e.BackColor);
				}
			}
			else
			{
				ControlPaint.DrawImageDisabled(g, image, rect.Left, rect.Top, e.BackColor);
			}
			g.Restore(gstate);
			image.RotateFlip((TabAlignment.Right == tabAlignment) ? RotateFlipType.Rotate90FlipNone : RotateFlipType.RotateNoneFlipNone);
		}
		else if (tabData.Image != null)
		{
			rectangleF = GetAnimateImageRectangle(rectTextAndImage);
			if (!rectTextAndImage.Contains(RectangleF.Union(rectangleF, m_rectText)))
			{
				int num5 = 0;
				if (tabPanelData.TabStyle == OneNoteStyleRenderer.TabStyleName || tabPanelData.TabStyle == TabRendererOffice2003.TabStyleName || tabPanelData.TabStyle == TabRendererWhidbey.TabStyleName)
				{
					num5 = 4;
				}
				else if (tabPanelData.TabStyle == TabRendererDockingWhidbeyBeta.TabStyleName)
				{
					num5 = 12;
				}
				switch (imageAlignmentR)
				{
				case RelativeImageAlignment.LeftOfText:
				case RelativeImageAlignment.AboveText:
				{
					float num6 = rectTextAndImage.Top - rectangleF.Top;
					if (num6 < 0f)
					{
						num6 = 0f;
					}
					float num7 = rectTextAndImage.Left - rectangleF.Left;
					if (num7 < 0f)
					{
						num7 = 0f;
					}
					rectangleF.Offset(num7, num6);
					m_rectText.Offset(num7, num6);
					if (rectTextAndImage.Width < m_rectText.Width + rectangleF.Width + (float)num5)
					{
						m_rectText.Width = rectTextAndImage.Width - rectangleF.Width - (float)num5;
						if (TabAlignment == TabAlignment.Left)
						{
							rectangleF.X = m_rectText.Right;
						}
					}
					break;
				}
				case RelativeImageAlignment.BelowText:
				{
					float x2 = rectTextAndImage.Left - rectangleF.Left;
					rectangleF.Offset(x2, 0f);
					break;
				}
				case RelativeImageAlignment.RightOfText:
				{
					float y2 = rectTextAndImage.Top - rectangleF.Top;
					rectangleF.Offset(0f, y2);
					if (rectTextAndImage.Width < m_rectText.Width + rectangleF.Width + (float)num5)
					{
						m_rectText.Width = rectTextAndImage.Width - rectangleF.Width - (float)num5;
						if (TabAlignment != TabAlignment.Left)
						{
							rectangleF.X = m_rectText.Right;
						}
					}
					break;
				}
				}
			}
			int num8 = 0;
			if (panelRenderer.TabPanelData.ImageOffset > ImageTextPadding)
			{
				num8 = panelRenderer.TabPanelData.ImageOffset - ImageTextPadding;
			}
			new RectangleF(rectangleF.X, rectangleF.Y, rectangleF.Width, rectangleF.Height - (float)num8);
			GraphicsState gstate2 = g.Save();
			g.ResetTransform();
			RectangleF value2 = TabUtils.ApplyTransform(g, alignment, rectangleF, apply: false);
			Rectangle rectangle = Rectangle.Ceiling(value2);
			bool flag3 = panelRenderer.TabPanelData.SelectedIndex != -1 && panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == tabData;
			if (imageAlignmentR != RelativeImageAlignment.AboveText && imageAlignmentR != RelativeImageAlignment.BelowText && imageAlignmentR != RelativeImageAlignment.Overlap)
			{
				switch (tabAlignment)
				{
				case TabAlignment.Top:
					rectangle.Y -= tabPanelData.ImageOffset;
					if (!flag3 && tabPanelData.ImageOffset >= 2)
					{
						rectangle.Y += 2;
					}
					break;
				case TabAlignment.Bottom:
					rectangle.Y += tabPanelData.ImageOffset;
					if (!flag3 && tabPanelData.ImageOffset >= 2)
					{
						rectangle.Y -= 2;
					}
					break;
				case TabAlignment.Left:
					rectangle.X -= tabPanelData.ImageOffset;
					if (!flag3 && tabPanelData.ImageOffset >= 2)
					{
						rectangle.X += 2;
					}
					break;
				case TabAlignment.Right:
					rectangle.X += tabPanelData.ImageOffset;
					if (!flag3 && tabPanelData.ImageOffset >= 2)
					{
						rectangle.X -= 2;
					}
					break;
				}
			}
			ImageRect = rectangle;
			g.Restore(gstate2);
		}
		if (tabPanelData.LevelTextAndImage && image != null)
		{
			m_rectText.Y = (float)Math.Floor(rectangleF.Bottom - m_rectText.Height - (float)tabPanelData.ImageOffset);
		}
		GraphicsState graphicsState = null;
		if ((alignment == TabAlignment.Left || alignment == TabAlignment.Right) && tabPanelData.RotateTextWhenVertical)
		{
			graphicsState = g.Save();
			g.ResetTransform();
			m_rectText = TabUtils.ApplyTransform(g, alignment, m_rectText, apply: false);
		}
		isTextShrunk = false;
		if (m_rectText.Width > 0f && m_rectText.Height > 0f)
		{
			DrawText(g, m_rectText, tabData.Text, stringFormat, e);
		}
		else
		{
			m_lastDrawnTextBounds = Rectangle.Round(rectTextAndImage);
			isTextShrunk = true;
		}
		if (graphicsState != null)
		{
			g.Restore(graphicsState);
		}
	}

	private void StartAnimator()
	{
		if (!parent.IsDesignMode() && ImageAnimator.CanAnimate(tabData.Image))
		{
			ImageAnimator.Animate(tabData.Image, Image_FrameChanged);
			currentlyAnimating = true;
		}
	}

	private void Image_FrameChanged(object sender, EventArgs e)
	{
		parent.GetControl().Invalidate(ImageRect);
	}

	protected virtual void DrawText(Graphics g, RectangleF rectText, string text, StringFormat format, DrawTabEventArgs e)
	{
		Font font = e.Font;
		Brush textBrush = e.TextBrush;
		if (textBrush == null)
		{
			textBrush = new SolidBrush(e.ForeColor);
		}
		bool enabled = (e.State & DrawItemState.Disabled) <= DrawItemState.None;
		if (cachedTextPrefSize.Width > rectText.Width)
		{
			isTextShrunk = true;
		}
		m_lastDrawnTextBounds = Rectangle.Round(rectText);
		if (tabAlignment == TabAlignment.Right || tabAlignment == TabAlignment.Top)
		{
			if (m_bShouldDrawText)
			{
				DrawTextInternal(g, text, font, e.ForeColor, rectText, format, tabAlignment, enabled);
			}
			return;
		}
		GraphicsState gstate = g.Save();
		RectangleF rectangleF = RectangleF.Empty;
		if (tabAlignment == TabAlignment.Bottom)
		{
			g.ResetTransform();
			rectangleF = TabUtils.ApplyTransform(g, tabAlignment, rectText, apply: false);
		}
		else if (tabAlignment == TabAlignment.Left)
		{
			if (!panelRenderer.TabPanelData.RotateTextWhenVertical)
			{
				g.ScaleTransform(-1f, 1f);
				rectangleF = new RectangleF(0f - rectText.Right + 1f, rectText.Top, rectText.Width, rectText.Height);
				if (panelRenderer.TabPanelData.RotateText180WhenLeftAligned)
				{
					g.RotateTransform(180f);
					rectangleF = new RectangleF(rectText.Left, 0f - rectText.Top - 1f - rectText.Height, rectText.Width, rectText.Height);
				}
			}
			else
			{
				rectangleF = rectText;
			}
		}
		m_lastDrawnTextBounds = Rectangle.Round(rectangleF);
		if (m_bShouldDrawText)
		{
			DrawTextInternal(g, text, font, e.ForeColor, rectangleF, format, tabAlignment, enabled);
		}
		g.Restore(gstate);
	}

	private void DrawTextInternal(Graphics g, string text, Font textFont, Color foreColor, RectangleF rectText, StringFormat format, TabAlignment tabAlignment, bool enabled)
	{
		if (tabAlignment == TabAlignment.Top || tabAlignment == TabAlignment.Bottom)
		{
			if (enabled)
			{
				DrawTextNative(g, text, textFont, foreColor, rectText);
				return;
			}
			rectText.Offset(1f, 1f);
			Color color = ControlPaint.LightLight(SystemColors.Control);
			DrawTextNative(g, text, textFont, color, rectText);
			rectText.Offset(-1f, -1f);
			color = ControlPaint.Dark(color);
			DrawTextNative(g, text, textFont, color, rectText);
			return;
		}
		if (!SystemInformation.IsFontSmoothingEnabled)
		{
			if (enabled)
			{
				using (Bitmap image = GetTextBitmap(text, textFont, rectText, foreColor))
				{
					g.DrawImage(image, new PointF(rectText.X, rectText.Y));
					return;
				}
			}
			using Bitmap image2 = GetDisabledTextBitmap(text, textFont, rectText, SystemColors.Control);
			g.DrawImage(image2, new PointF(rectText.X, rectText.Y));
			return;
		}
		using Brush brush = new SolidBrush(foreColor);
		if (enabled)
		{
			TextRenderingHint textRenderingHint = g.TextRenderingHint;
			g.TextRenderingHint = TextRenderingHint.ClearTypeGridFit;
			g.DrawString(text, textFont, brush, rectText, format);
			g.TextRenderingHint = textRenderingHint;
		}
		else
		{
			ControlPaint.DrawStringDisabled(g, text, textFont, SystemColors.Control, rectText, format);
		}
	}

	private void DrawTextNative(Graphics g, string text, Font f, Color color, RectangleF textRect)
	{
		ITabPanelData tabPanelData = panelRenderer.TabPanelData;
		bool isMirrored = panelRenderer.IsMirrored;
		int num = 32;
		switch (tabPanelData.TextAlignment)
		{
		case StringAlignment.Center:
			num |= 1;
			break;
		case StringAlignment.Near:
			num = num;
			break;
		case StringAlignment.Far:
			num |= 2;
			break;
		}
		switch (tabPanelData.TextLineAlignment)
		{
		case StringAlignment.Center:
			num |= 4;
			break;
		case StringAlignment.Near:
			num = num;
			break;
		case StringAlignment.Far:
			num |= 8;
			break;
		}
		if (!TabControl.UseMnemonic)
		{
			num |= 0x800;
		}
		if (isMirrored)
		{
			num |= 0x20000;
		}
		if (TabRendererFactory.GetRegisteredExtender(tabPanelData.TabStyle).DrawEllipsis)
		{
			num |= 0x8000;
		}
		if (TabControl.MultilineText)
		{
			num &= -32769;
			num &= -33;
			num |= 0x40;
		}
		IntPtr hrgn = g.Clip.GetHrgn(g);
		IntPtr hdc = g.GetHdc();
		IntPtr hObject = f.ToHfont();
		IntPtr hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject);
		Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, hrgn);
		Syncfusion.Runtime.InteropServices.NativeMethods.SetTextColor(hdc, Color.FromArgb(0, color.B, color.G, color.R).ToArgb() & 0xFFFFFF);
		Syncfusion.Runtime.InteropServices.NativeMethods.SetBkMode(hdc, 1);
		Rectangle rect = Rectangle.Ceiling(textRect);
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(rect);
		Syncfusion.Runtime.InteropServices.NativeMethods.DrawText(hdc, text, text.Length, ref lpRect, num);
		hObject2 = Syncfusion.Runtime.InteropServices.NativeMethods.SelectObject(hdc, hObject2);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hObject);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(hrgn);
		Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, IntPtr.Zero);
		g.ReleaseHdc(hdc);
	}

	private Bitmap GetTextBitmap(string text, Font textFont, RectangleF rectText, Color foreColor)
	{
		Bitmap bitmap = new Bitmap((int)rectText.Width, (int)rectText.Height);
		using Graphics g = Graphics.FromImage(bitmap);
		DrawTextNative(g, text, textFont, foreColor, new Rectangle(0, 0, (int)rectText.Width, (int)rectText.Height));
		return bitmap;
	}

	private Bitmap GetDisabledTextBitmap(string text, Font textFont, RectangleF rectText, Color foreColor)
	{
		Bitmap bitmap = new Bitmap((int)rectText.Width, (int)rectText.Height);
		using Graphics g = Graphics.FromImage(bitmap);
		Rectangle rectangle = new Rectangle(0, 0, (int)rectText.Width, (int)rectText.Height);
		rectangle.Offset(1, 1);
		Color color = ControlPaint.LightLight(foreColor);
		DrawTextNative(g, text, textFont, color, rectangle);
		rectangle.Offset(-1, -1);
		color = ControlPaint.Dark(color);
		DrawTextNative(g, text, textFont, color, rectangle);
		return bitmap;
	}

	private SizeF MeasureText(Graphics g, string text, Font font)
	{
		SizeF result = SizeF.Empty;
		if (tabAlignment == TabAlignment.Top || tabAlignment == TabAlignment.Bottom)
		{
			Graphics measureGraphics = MeasureGraphics;
			lock (measureGraphics)
			{
				result = ((!TabControl.MultilineText) ? ((SizeF)ControlDrawing.MeasureDisplayStringSize(measureGraphics, text, font, panelRenderer.IsMirrored)) : ((SizeF)ControlDrawing.MeasureDisplayStringSize(measureGraphics, text, font, panelRenderer.IsMirrored, 1)));
			}
		}
		else if (!SystemInformation.IsFontSmoothingEnabled)
		{
			Graphics measureGraphics2 = MeasureGraphics;
			lock (measureGraphics2)
			{
				result = ((!TabControl.MultilineText) ? ((SizeF)ControlDrawing.MeasureDisplayStringSize(measureGraphics2, text, font, panelRenderer.IsMirrored)) : ((SizeF)ControlDrawing.MeasureDisplayStringSize(measureGraphics2, text, font, panelRenderer.IsMirrored, 1)));
			}
		}
		else
		{
			result = g.MeasureString(text, font);
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual RectangleF CorrectBounds(RectangleF bounds)
	{
		return bounds;
	}

	public virtual void OnPaint(Graphics g, Rectangle clippingRect)
	{
		RectangleF rect = TabUtils.ApplyTransform(g, TabAlignment, clippingRect, apply: true);
		if (!GetCurrentBounds().IntersectsWith(rect))
		{
			return;
		}
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(panelRenderer.TabPanelData.TabStyle);
		bool flag = panelRenderer.TabPanelData.SelectedIndex != -1 && panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] == tabData;
		RectangleF currentBounds = GetCurrentBounds();
		currentBounds = CorrectBounds(currentBounds);
		RectangleF interiorBounds = GetInteriorBounds(currentBounds, flag);
		if (!flag)
		{
			bool flag2 = tabAlignment == (TabAlignment)(panelRenderer.IsMirrored ? 3 : 2);
			if (tabAlignment == TabAlignment.Top || flag2)
			{
				currentBounds.Height -= 1f;
			}
			else
			{
				currentBounds.Height -= 2f;
			}
		}
		lastDrawnBounds = currentBounds;
		currentBounds = TabUtils.ApplyTransform(g, tabAlignment, currentBounds, apply: false);
		interiorBounds = TabUtils.ApplyTransform(g, tabAlignment, interiorBounds, apply: false);
		Color color = tabData.BackColor;
		if (color == Color.Empty)
		{
			if (flag)
			{
				color = panelRenderer.TabPanelData.ActiveTabColor;
				if (color == Color.Empty)
				{
					color = registeredExtender.DefaultActiveTabColor(panelRenderer.TabPanelData, parent);
				}
			}
			else
			{
				color = panelRenderer.TabPanelData.InactiveTabColor;
				if (color == Color.Empty)
				{
					color = registeredExtender.DefaultInactiveTabColor(panelRenderer.TabPanelData, parent);
				}
			}
		}
		Color empty = Color.Empty;
		empty = (flag ? GetActiveForeColor() : GetForeColor());
		Font font = tabData.Font;
		if (font == null)
		{
			if (flag)
			{
				font = panelRenderer.TabPanelData.ActiveTabFont;
				if (font == null)
				{
					font = registeredExtender.DefaultActiveTabFont(panelRenderer.TabPanelData, parent);
				}
			}
			else if (font == null)
			{
				font = registeredExtender.DefaultInactiveTabFont(panelRenderer.TabPanelData, parent);
			}
		}
		DrawItemState drawItemState = DrawItemState.None;
		if (hotTrack)
		{
			drawItemState |= DrawItemState.HotLight;
		}
		if (!tabData.Enabled)
		{
			drawItemState |= DrawItemState.Disabled;
		}
		if (flag)
		{
			drawItemState |= DrawItemState.Selected;
			bool flag3 = parent.GetControl().Focused;
			if (parent is TabControlAdv tabControlAdv)
			{
				flag3 = flag3 && tabControlAdv.FocusOnTabClick;
			}
			if (flag3)
			{
				drawItemState |= DrawItemState.Focus;
			}
		}
		if (tabData.ImageChanged)
		{
			currentlyAnimating = false;
			tabData.ImageChanged = false;
		}
		if (!currentlyAnimating && tabData.Image != null && flag && tabData.ImageIndex == -1 && tabData.Enabled)
		{
			StartAnimator();
		}
		else if (!flag && currentlyAnimating && tabData.ImageIndex == -1)
		{
			ImageAnimator.StopAnimate(tabData.Image, Image_FrameChanged);
			currentlyAnimating = false;
		}
		DrawTabEventArgs e = new DrawTabEventArgs(g, font, Rectangle.Round(currentBounds), panelRenderer.TabPanelData.TabsData.IndexOf(tabData), drawItemState, empty, color, Rectangle.Round(interiorBounds), DrawBackground, DrawBorders, DrawInterior);
		if (drawItemCallback == null || !drawItemCallback(e))
		{
			DrawBackground(e);
			DrawBorders(e);
			DrawInterior(e);
		}
		if (tabData.Image != null && tabData.ImageIndex == -1)
		{
			g.DrawImage(tabData.Image, ImageRect);
			ImageAnimator.UpdateFrames();
		}
	}

	protected virtual RectangleF GetInteriorBounds(RectangleF currentBounds, bool selectedTab)
	{
		RectangleF rect = currentBounds;
		rect = RectangleF.Inflate(rect, -panelRenderer.TabPanelData.Padding.X, -panelRenderer.TabPanelData.Padding.Y);
		rect = CorrectInteriorBounds(rect);
		if (selectedTab)
		{
			SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
			rect = RectangleF.Inflate(rect, (float)Math.Ceiling((0f - overlapSize.Width) / 2f), (float)Math.Ceiling((0f - overlapSize.Height) / 2f));
		}
		return rect;
	}

	protected abstract void DrawBackground(DrawTabEventArgs drawItemInfo);

	protected abstract void DrawBorders(DrawTabEventArgs drawItemInfo);

	protected abstract void DrawInterior(DrawTabEventArgs drawItemInfo);

	protected virtual bool IsSelectedState(DrawItemState state)
	{
		return (state & DrawItemState.Selected) > DrawItemState.None;
	}

	protected virtual bool IsHotLightState(DrawItemState state)
	{
		return (state & DrawItemState.HotLight) > DrawItemState.None;
	}

	protected virtual void ApplyTransform(Graphics g)
	{
		switch (TabAlignment)
		{
		case TabAlignment.Left:
			g.ScaleTransform(-1f, 1f);
			g.RotateTransform(-90f, MatrixOrder.Append);
			break;
		case TabAlignment.Right:
			g.RotateTransform(-270f);
			break;
		case TabAlignment.Bottom:
			g.ScaleTransform(1f, -1f);
			break;
		}
	}

	public virtual RectangleF GetRedrawBounds()
	{
		RectangleF currentBounds = GetCurrentBounds();
		return RectangleF.Union(currentBounds, lastDrawnBounds);
	}

	protected virtual Color GetForeColor()
	{
		Color color = tabData.ForeColor;
		if (color == Color.Empty)
		{
			ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(panelRenderer.TabPanelData.TabStyle);
			color = registeredExtender.DefaultTabForeColor(panelRenderer.TabPanelData, parent);
		}
		if (TabControl.GetControl() is TabControlAdv { HotTrack: not false } && hotTrack)
		{
			color = SystemColors.HotTrack;
		}
		return color;
	}

	protected virtual Color GetActiveForeColor()
	{
		return GetForeColor();
	}

	public virtual RectangleF GetCurrentBounds()
	{
		if (panelRenderer.TabPanelData == null)
		{
			return RectangleF.Empty;
		}
		if (panelRenderer.TabPanelData.SelectedIndex == -1 || panelRenderer.TabPanelData.TabsData[panelRenderer.TabPanelData.SelectedIndex] != tabData || !Visible)
		{
			return bounds;
		}
		SizeF overlapSize = GetOverlapSize(panelRenderer.TabPanelData.TabSize);
		RectangleF result = bounds;
		result.Inflate((float)Math.Ceiling(overlapSize.Width / 2f), 0f);
		result.Offset(0f, 0f - overlapSize.Height);
		result.Height += overlapSize.Height;
		return result;
	}

	public virtual RectangleF GetBoundsForScrolling()
	{
		return GetCurrentBounds();
	}

	public virtual SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(0f, 0f);
	}

	public virtual bool HitTest(PointF mousePosition)
	{
		if (GetCurrentBounds().Contains(mousePosition))
		{
			return true;
		}
		return false;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
	}

	~TabRendererBase()
	{
		Dispose(disposing: false);
	}
}
