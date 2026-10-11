using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

internal class ButtonRenderer : IDisposable
{
	protected Rectangle bounds;

	private ButtonAdv m_button;

	protected RectangleF imageRect;

	protected PointF textPoint;

	protected RectangleF textRect;

	private bool m_bDisposed;

	private int borderWidth = 1;

	private ContentAlignment textAlignment = ContentAlignment.MiddleCenter;

	private static readonly int s_imageHorizontalMargin = 4;

	private static readonly int s_imageVerticalMargin = 4;

	private static readonly int s_textHorizontalMargin = 3;

	private static readonly int s_textVerticalMargin = 3;

	private static readonly Size s_defaultImageSize = new Size(15, 20);

	protected ButtonAdv Button
	{
		get
		{
			return m_button;
		}
		set
		{
			m_button = value;
		}
	}

	public ButtonRenderer(ButtonAdv button)
	{
		if (button == null)
		{
			throw new ArgumentNullException("button");
		}
		m_button = button;
		bounds = new Rectangle(button.Location, new Size(1, 1));
	}

	~ButtonRenderer()
	{
		Dispose();
	}

	protected virtual void OnDispose(bool disposing)
	{
	}

	public void Dispose()
	{
		if (!m_bDisposed)
		{
			OnDispose(m_bDisposed);
			GC.SuppressFinalize(this);
			m_bDisposed = true;
		}
	}

	public virtual Region GetRegion(Rectangle bounds)
	{
		return null;
	}

	public virtual void SetColorScheme(Office2007Theme colorScheme)
	{
	}

	public virtual void Render(Graphics g)
	{
	}

	public virtual void DrawText(Graphics g, Color textColor)
	{
		ButtonAdv button = Button;
		DrawParams param = new DrawParams(button.Enabled, button.BackColor, textRect, textAlignment, button.RightToLeft == RightToLeft.Yes);
		bool drawShadow = button.UseVisualStyle && !button.Enabled && button.Appearance == ButtonAppearance.Office2007;
		bool autoEllipsis = button.AutoEllipsis;
		string text = button.Text;
		if (!Button.altPressed && Button.UseMnemonic && !button.IsDesignMode && !SystemInformationExt.KeyboardCuesAlwaysOn)
		{
			text = text.Replace("&", "");
		}
		if (!button.UseMnemonic)
		{
			text = text.Replace("&", "&&");
		}
		RenderingHelper.DrawText(g, text, textColor, button.Font, textPoint, param, drawShadow, autoEllipsis);
	}

	public virtual void DrawTextAndImage(Graphics g)
	{
		ButtonAdv button = Button;
		if (button.ButtonType == ButtonTypes.Normal)
		{
			if (button.BackgroundImage != null)
			{
				Rectangle clipRect = new Rectangle(button.ClientRectangle.X + borderWidth, button.ClientRectangle.Y + borderWidth, button.ClientRectangle.Width - borderWidth * 2, button.ClientRectangle.Height - borderWidth * 2);
				DrawBackgroundImage(g, button.BackgroundImage, button.BackgroundImageLayout, Button.ClientRectangle, clipRect, new Point(0, 0), button.RightToLeft);
			}
			if (button.Image != null)
			{
				DrawImage(g, imageRect, button.Image);
			}
			DrawText(g, button.ForeColor);
		}
		else
		{
			DrawKnownImage(g, imageRect, button.ButtonType, Point.Empty, Color.Black);
		}
	}

	public virtual void DrawKnownImage(Graphics g, RectangleF bounds, ButtonTypes buttonImageType, Point offset, Color imageColor)
	{
		switch (buttonImageType)
		{
		case ButtonTypes.Browse:
			DrawImage(g, bounds, GetImage("Browse.bmp"));
			break;
		case ButtonTypes.Calculator:
			DrawImage(g, bounds, GetImage("Calculator.bmp"));
			break;
		case ButtonTypes.Check:
			DrawImage(g, bounds, GetImage("Check.bmp"));
			break;
		case ButtonTypes.Currency:
			DrawImage(g, bounds, GetImage("Currency.bmp"));
			break;
		case ButtonTypes.Down:
		case ButtonTypes.Up:
			RenderingHelper.DrawUpDownButton(g, bounds, buttonImageType, offset, imageColor);
			break;
		case ButtonTypes.ComboXPDown:
			RenderingHelper.DrawComboXPDownButton(g, bounds, buttonImageType, offset, imageColor);
			break;
		case ButtonTypes.Left:
		case ButtonTypes.Right:
		case ButtonTypes.LeftEnd:
		case ButtonTypes.RightEnd:
			RenderingHelper.DrawRightLeftButton(g, bounds, buttonImageType, offset, imageColor);
			break;
		case ButtonTypes.Redo:
			DrawImage(g, bounds, GetImage("Redo.bmp"));
			break;
		case ButtonTypes.Undo:
			DrawImage(g, bounds, GetImage("Undo.bmp"));
			break;
		case ButtonTypes.Normal:
			break;
		}
	}

	public virtual void ComputeTextPosition()
	{
		textAlignment = Button.TextAlign;
		if (Button.RightToLeft == RightToLeft.Yes)
		{
			switch (Button.TextAlign)
			{
			case ContentAlignment.TopCenter:
				textAlignment = ContentAlignment.TopCenter;
				break;
			case ContentAlignment.TopLeft:
				textAlignment = ContentAlignment.TopRight;
				break;
			case ContentAlignment.TopRight:
				textAlignment = ContentAlignment.TopLeft;
				break;
			case ContentAlignment.MiddleCenter:
				textAlignment = ContentAlignment.MiddleCenter;
				break;
			case ContentAlignment.MiddleLeft:
				textAlignment = ContentAlignment.MiddleRight;
				break;
			case ContentAlignment.MiddleRight:
				textAlignment = ContentAlignment.MiddleLeft;
				break;
			case ContentAlignment.BottomCenter:
				textAlignment = ContentAlignment.BottomCenter;
				break;
			case ContentAlignment.BottomLeft:
				textAlignment = ContentAlignment.BottomRight;
				break;
			case ContentAlignment.BottomRight:
				textAlignment = ContentAlignment.BottomLeft;
				break;
			}
		}
		Rectangle rectangle = CalcTextRectangle(textAlignment);
		textRect = rectangle;
		Rectangle clientRectangle = Button.ClientRectangle;
		int num = Math.Max(0, (clientRectangle.Width - 2 * s_textHorizontalMargin - rectangle.Width) / 2);
		int num2 = Math.Max(0, (clientRectangle.Height - 2 * s_textVerticalMargin - rectangle.Height) / 2);
		switch (textAlignment)
		{
		case ContentAlignment.BottomCenter:
			textPoint = new Point(num + s_textHorizontalMargin, 2 * num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.BottomLeft:
			textPoint = new Point(s_textHorizontalMargin, 2 * num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.BottomRight:
			textPoint = new Point(num * 2 + s_textHorizontalMargin, 2 * num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.MiddleCenter:
			textPoint = new Point(num + s_textHorizontalMargin, num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.MiddleLeft:
			textPoint = new Point(s_textHorizontalMargin, num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.MiddleRight:
			textPoint = new Point(num * 2 + s_textHorizontalMargin, num2 + s_textVerticalMargin);
			break;
		case ContentAlignment.TopCenter:
			textPoint = new Point(num + s_textHorizontalMargin, s_textVerticalMargin);
			break;
		case ContentAlignment.TopLeft:
			textPoint = new Point(s_textHorizontalMargin, s_textVerticalMargin);
			break;
		case ContentAlignment.TopRight:
			textPoint = new Point(num * 2 + s_textHorizontalMargin, s_textVerticalMargin);
			break;
		}
		if (Button.TextImageRelation != TextImageRelation.Overlay && Button.Image != null && Button.Text != string.Empty && Button.ButtonType == ButtonTypes.Normal)
		{
			LayoutTextAndImage();
		}
	}

	public virtual void ComputeImagePosition()
	{
		ButtonAdv button = Button;
		Rectangle clientRectangle = button.ClientRectangle;
		Size size = s_defaultImageSize;
		int num = s_imageHorizontalMargin;
		int num2 = s_imageVerticalMargin;
		int num3 = borderWidth;
		Point point = new Point(s_imageHorizontalMargin, s_imageVerticalMargin);
		if (button.Image != null && button.ButtonType == ButtonTypes.Normal)
		{
			size = button.Image.Size;
		}
		else
		{
			size = clientRectangle.Size;
			num = 0;
			num2 = 0;
		}
		int num4 = Math.Max(0, (clientRectangle.Width - num - size.Width) / 2);
		int num5 = Math.Max(0, (clientRectangle.Height - num2 - size.Height) / 2);
		ContentAlignment contentAlignment = button.ImageAlign;
		if (button.RightToLeft == RightToLeft.Yes)
		{
			switch (button.ImageAlign)
			{
			case ContentAlignment.TopCenter:
				contentAlignment = ContentAlignment.TopCenter;
				break;
			case ContentAlignment.TopLeft:
				contentAlignment = ContentAlignment.TopRight;
				break;
			case ContentAlignment.TopRight:
				contentAlignment = ContentAlignment.TopLeft;
				break;
			case ContentAlignment.MiddleCenter:
				contentAlignment = ContentAlignment.MiddleCenter;
				break;
			case ContentAlignment.MiddleLeft:
				contentAlignment = ContentAlignment.MiddleRight;
				break;
			case ContentAlignment.MiddleRight:
				contentAlignment = ContentAlignment.MiddleLeft;
				break;
			case ContentAlignment.BottomCenter:
				contentAlignment = ContentAlignment.BottomCenter;
				break;
			case ContentAlignment.BottomLeft:
				contentAlignment = ContentAlignment.BottomRight;
				break;
			case ContentAlignment.BottomRight:
				contentAlignment = ContentAlignment.BottomLeft;
				break;
			}
		}
		switch (contentAlignment)
		{
		case ContentAlignment.TopCenter:
			point = new Point(num4 + num3, num2 + num3);
			break;
		case ContentAlignment.TopLeft:
			point = new Point(num + num3, num2 + num3);
			break;
		case ContentAlignment.TopRight:
			point = new Point(num4 * 2 + num3, num2 + num3);
			break;
		case ContentAlignment.MiddleCenter:
			point = new Point(num4 + num3, num5 + num3);
			break;
		case ContentAlignment.MiddleLeft:
			point = new Point(num + num3, num5 + num3);
			break;
		case ContentAlignment.MiddleRight:
			point = new Point(num4 * 2 + num3, num5 + num3);
			break;
		case ContentAlignment.BottomCenter:
			point = new Point(num4 + num3, 2 * num5 + num3);
			break;
		case ContentAlignment.BottomLeft:
			point = new Point(num + num3, 2 * num5 + num3);
			break;
		case ContentAlignment.BottomRight:
			point = new Point(num4 * 2 + num3, 2 * num5 + num3);
			break;
		}
		imageRect = new RectangleF(point, new SizeF(size.Width, size.Height));
		if (Button.TextImageRelation != TextImageRelation.Overlay && Button.Image != null && Button.Text != string.Empty && Button.ButtonType == ButtonTypes.Normal)
		{
			LayoutTextAndImage();
		}
	}

	public virtual void RefreshStyle()
	{
	}

	public static Image GetImage(string resourceName)
	{
		string text = "Syncfusion.Windows.Forms.ButtonAdv.resources.";
		string name = text + resourceName;
		Type typeFromHandle = typeof(ButtonAdv);
		Assembly assembly = typeFromHandle.Module.Assembly;
		Stream manifestResourceStream = assembly.GetManifestResourceStream(name);
		if (manifestResourceStream != null)
		{
			Bitmap bitmap = new Bitmap(manifestResourceStream);
			bitmap.MakeTransparent(Color.White);
			return bitmap;
		}
		return null;
	}

	protected bool IsPressed(ButtonAdv button)
	{
		return (button.State & ButtonAdvState.Pressed) == ButtonAdvState.Pressed;
	}

	protected bool IsMouseOver(ButtonAdv button)
	{
		return (button.State & ButtonAdvState.MouseOver) == ButtonAdvState.MouseOver;
	}

	protected bool IsDefault(ButtonAdv button)
	{
		return (button.State & ButtonAdvState.Default) == ButtonAdvState.Default;
	}

	private Size GetButtonTextSize(Size proposedSize)
	{
		TextFormatFlags textFormatFlags = RenderingHelper.DT_FLAGS;
		if (Button.RightToLeft == RightToLeft.Yes)
		{
			textFormatFlags |= TextFormatFlags.RightToLeft;
		}
		if (!Button.UseMnemonic)
		{
			textFormatFlags |= TextFormatFlags.NoPrefix;
		}
		Size result = TextRenderer.MeasureText(Button.Text, Button.Font, proposedSize, textFormatFlags);
		if (result.Height > proposedSize.Height)
		{
			int height = TextRenderer.MeasureText(Button.Text, Button.Font, proposedSize, TextFormatFlags.SingleLine).Height;
			result.Height = ((height < proposedSize.Height) ? (proposedSize.Height / height * height) : height);
		}
		return result;
	}

	private void LayoutTextAndImage()
	{
		TextImageRelation textImageRelation = Button.TextImageRelation;
		if (Button.RightToLeft == RightToLeft.Yes && (textImageRelation & (TextImageRelation)12) > TextImageRelation.Overlay)
		{
			textImageRelation ^= (TextImageRelation)12;
		}
		ContentAlignment contentAlignment = Button.ImageAlign;
		ContentAlignment contentAlignment2 = Button.TextAlign;
		if (Button.RightToLeft == RightToLeft.Yes)
		{
			contentAlignment = GetRTLAlignment(contentAlignment);
			contentAlignment2 = GetRTLAlignment(contentAlignment2);
		}
		bool flag = textImageRelation == TextImageRelation.ImageAboveText || textImageRelation == TextImageRelation.TextAboveImage;
		bool flag2 = textImageRelation == TextImageRelation.ImageAboveText || textImageRelation == TextImageRelation.ImageBeforeText;
		Size size = Button.ClientRectangle.Size;
		int num = 3;
		size = new Size(size.Width - 2 * num, size.Height - 2 * num);
		Size size2 = GetButtonTextSize(size);
		Size size3 = Button.Image.Size;
		if (flag)
		{
			size3 = new Size(size3.Height, size3.Width);
			size2 = new Size(size2.Height, size2.Width);
			size = new Size(size.Height, size.Width);
		}
		int alignFlags = GetAlignFlags(contentAlignment, textImageRelation, flag);
		int alignFlags2 = GetAlignFlags(contentAlignment2, textImageRelation, flag);
		if (flag2)
		{
			float num2 = GetImageDisplace(alignFlags, alignFlags2, size3.Width, size2.Width, size.Width);
			if (num2 != 0f && num2 + (float)size3.Width + (float)size2.Width > (float)size.Width)
			{
				num2 = Math.Max(0, size.Width - size3.Width - size2.Width);
			}
			if (num2 == 0f && !flag)
			{
				int num3 = size.Width - size3.Width;
				if (num3 < size2.Width)
				{
					size2 = GetButtonTextSize(new Size(num3, size.Height));
					num2 = GetImageDisplace(alignFlags, alignFlags2, size3.Width, size2.Width, size.Width);
				}
			}
			num2 += (float)num;
			PointF location = Point.Round(new PointF(num2, GetDefaultAlignPoint(alignFlags >> 4, size3.Height, size.Height) + (float)num));
			imageRect = new RectangleF(location, size3);
			textPoint = new PointF(imageRect.Right, GetDefaultAlignPoint(alignFlags2 >> 4, size2.Height, size.Height) + (float)num);
			textRect = new RectangleF(textPoint, size2);
		}
		else
		{
			float num4 = GetTextDisplace(alignFlags, alignFlags2, size3.Width, size2.Width, size.Width);
			if (num4 + (float)size3.Width + (float)size2.Width > (float)size.Width)
			{
				num4 = Math.Max(0, size.Width - size3.Width - size2.Width);
			}
			if (num4 == 0f && !flag)
			{
				int num5 = Math.Max(0, size.Width - size3.Width);
				if (num5 < size2.Width)
				{
					size2 = GetButtonTextSize(new Size(num5, size.Height));
				}
			}
			num4 += (float)num;
			textPoint = new PointF(num4, GetDefaultAlignPoint(alignFlags2 >> 4, size2.Height, size.Height) + (float)num);
			textRect = new RectangleF(textPoint, size2);
			float num6 = textRect.Right - (float)num;
			float defaultAlignPoint;
			if ((alignFlags2 & 0xF) == 4 || num6 > (float)(size.Width / 2) || size3.Width > size.Width / 2)
			{
				float num7 = Math.Max(0f, (float)size.Width - num6);
				defaultAlignPoint = GetDefaultAlignPoint(alignFlags, size3.Width, (int)num7);
				defaultAlignPoint += textRect.Right;
			}
			else
			{
				float num7 = size.Width / 2;
				defaultAlignPoint = GetDefaultAlignPoint(alignFlags, size3.Width, (int)num7) + num7;
			}
			PointF location2 = new PointF(defaultAlignPoint, GetDefaultAlignPoint(alignFlags >> 4, size3.Height, size.Height) + (float)num);
			imageRect = new RectangleF(location2, size3);
		}
		if (flag)
		{
			textRect = new RectangleF(textRect.Y, textRect.X, textRect.Height, textRect.Width);
			imageRect = new RectangleF(imageRect.Y, imageRect.X, imageRect.Height, imageRect.Width);
		}
	}

	private int GetAlignFlags(ContentAlignment align, TextImageRelation relation, bool vertical)
	{
		int num = 15;
		int num2 = 240;
		int num3 = 3840;
		int num4 = (((int)((uint)align & (uint)num) > 0) ? 4 : 0) | (((int)((uint)align & (uint)num2) > 0) ? 2 : 0) | (((int)((uint)align & (uint)num3) > 0) ? 1 : 0);
		num = 273;
		num2 = 546;
		num3 = 1092;
		num4 += (((int)((uint)align & (uint)num) > 0) ? 64 : 0) | (((int)((uint)align & (uint)num2) > 0) ? 32 : 0) | (((int)((uint)align & (uint)num3) > 0) ? 16 : 0);
		if (!vertical)
		{
			int num5 = num4 & 0xF;
			num4 >>= 4;
			num5 <<= 4;
			num4 += num5;
		}
		return num4;
	}

	private float GetAlignPoint(int position, float size, int clientSize)
	{
		float result = 0f;
		float num = Math.Max(0f, ((float)clientSize - size) / 2f);
		switch (position)
		{
		case 1:
			result = 0f;
			break;
		case 2:
			result = num / 2f;
			break;
		case 3:
			result = num;
			break;
		case 4:
			result = num * 2f;
			break;
		}
		return result;
	}

	private float GetDefaultAlignPoint(int alignment, float size, int clientSize)
	{
		float num = Math.Max(0f, ((float)clientSize - size) / 2f);
		float result = 0f;
		switch (alignment & 0xF)
		{
		case 4:
			result = 0f;
			break;
		case 2:
			result = num;
			break;
		case 1:
			result = num * 2f;
			break;
		}
		return result;
	}

	private ContentAlignment GetRTLAlignment(ContentAlignment alignment)
	{
		int num = (int)alignment;
		int num2 = 5;
		for (int i = 0; i < 3; i++)
		{
			if ((num & num2) > 0)
			{
				num ^= num2;
				break;
			}
			num2 <<= 4;
		}
		return (ContentAlignment)num;
	}

	private float GetImageDisplace(int imageA, int textA, int imageSize, float textSize, int clientSize)
	{
		int position = 0;
		float size = (float)imageSize + textSize;
		if ((textA & 6) > 0)
		{
			switch (imageA & 0xF)
			{
			case 1:
				position = 3;
				break;
			case 2:
				position = 2;
				break;
			case 4:
				position = 1;
				break;
			}
		}
		else
		{
			switch (imageA & 0xF)
			{
			case 1:
				position = 4;
				break;
			case 2:
				position = 3;
				break;
			case 4:
				position = 1;
				break;
			}
		}
		return GetAlignPoint(position, size, clientSize);
	}

	private float GetTextDisplace(int imageA, int textA, int imageSize, float textSize, int clientSize)
	{
		int position = 0;
		float size = (float)imageSize + textSize;
		if ((textA & 4) > 0)
		{
			position = 1;
		}
		else if ((textA & 2) > 0)
		{
			switch (imageA & 0xF)
			{
			case 1:
				position = 3;
				break;
			case 2:
			case 4:
				position = 2;
				break;
			}
		}
		else
		{
			switch (imageA & 0xF)
			{
			case 1:
				position = 4;
				break;
			case 2:
			case 4:
				position = 3;
				break;
			}
		}
		return GetAlignPoint(position, size, clientSize);
	}

	protected virtual Rectangle CalcTextRectangle(ContentAlignment align)
	{
		Rectangle withinThis = Rectangle.Inflate(Button.ClientRectangle, -s_textHorizontalMargin, -s_textVerticalMargin);
		Size buttonTextSize = GetButtonTextSize(withinThis.Size);
		withinThis = RenderingHelper.HAlignWithin(buttonTextSize, withinThis, align);
		withinThis = RenderingHelper.VAlignWithin(buttonTextSize, withinThis, align);
		if (Button.Padding.Left >= 0 || Button.Padding.Right >= 0 || Button.Padding.Top >= 0 || Button.Padding.Bottom >= 0)
		{
			withinThis.X += Button.Padding.Left;
			withinThis.Y += Button.Padding.Top;
			withinThis.Width = withinThis.Width - Button.Padding.Right - Button.Padding.Left;
			withinThis.Height = withinThis.Height - Button.Padding.Bottom - Button.Padding.Top;
		}
		return withinThis;
	}

	protected virtual void DrawBackgroundImage(Graphics g, Image backgroundImage, ImageLayout backgroundImageLayout, Rectangle bounds, Rectangle clipRect, Point scrollOffset, RightToLeft rightToLeft)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g");
		}
		if (backgroundImageLayout == ImageLayout.Tile)
		{
			using (TextureBrush textureBrush = new TextureBrush(backgroundImage, WrapMode.Tile))
			{
				if (scrollOffset != Point.Empty)
				{
					Matrix transform = textureBrush.Transform;
					transform.Translate(scrollOffset.X, scrollOffset.Y);
					textureBrush.Transform = transform;
				}
				g.FillRectangle(textureBrush, clipRect);
				return;
			}
		}
		Rectangle rectangle = RenderingHelper.CalculateBackgroundImageRectangle(bounds, backgroundImage, backgroundImageLayout);
		if (rightToLeft == RightToLeft.Yes && backgroundImageLayout == ImageLayout.None)
		{
			rectangle.X += clipRect.Width - rectangle.Width;
		}
		if (!clipRect.Contains(rectangle))
		{
			switch (backgroundImageLayout)
			{
			case ImageLayout.Stretch:
			case ImageLayout.Zoom:
				rectangle.Intersect(clipRect);
				g.DrawImage(backgroundImage, rectangle);
				break;
			case ImageLayout.None:
			{
				rectangle.Offset(clipRect.Location);
				Rectangle destRect2 = rectangle;
				destRect2.Intersect(clipRect);
				Rectangle rectangle3 = new Rectangle(Point.Empty, destRect2.Size);
				g.DrawImage(backgroundImage, destRect2, rectangle3.X, rectangle3.Y, rectangle3.Width, rectangle3.Height, GraphicsUnit.Pixel);
				break;
			}
			default:
			{
				Rectangle destRect = rectangle;
				destRect.Intersect(clipRect);
				Rectangle rectangle2 = new Rectangle(new Point(destRect.X - rectangle.X, destRect.Y - rectangle.Y), destRect.Size);
				g.DrawImage(backgroundImage, destRect, rectangle2.X, rectangle2.Y, rectangle2.Width, rectangle2.Height, GraphicsUnit.Pixel);
				break;
			}
			}
		}
		else
		{
			ImageAttributes imageAttributes = new ImageAttributes();
			imageAttributes.SetWrapMode(WrapMode.TileFlipXY);
			g.DrawImage(backgroundImage, rectangle, 0, 0, backgroundImage.Width, backgroundImage.Height, GraphicsUnit.Pixel, imageAttributes);
			imageAttributes.Dispose();
		}
	}

	protected virtual void DrawImage(Graphics g, RectangleF bounds, Image image)
	{
		DrawParams drawParams = new DrawParams();
		drawParams.ControlBackColor = Button.BackColor;
		drawParams.Enabled = Button.Enabled;
		ButtonAdv button = Button;
		Rectangle rectangle = new Rectangle(0, 0, image.Width, image.Height);
		int num = s_imageHorizontalMargin;
		int num2 = s_imageVerticalMargin;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		int num6 = 0;
		int num7 = 0;
		int num8 = 0;
		int num9 = borderWidth;
		int num10 = 0;
		int num11 = 0;
		if ((float)button.Width / 2f - (float)(button.Width / 2) == 0f)
		{
			num10 = 1;
		}
		if ((float)button.Height / 2f - (float)(button.Height / 2) == 0f)
		{
			num11 = 1;
		}
		Bitmap bitmap = (Bitmap)image;
		bitmap.SetResolution(g.DpiX, g.DpiY);
		image = bitmap;
		ContentAlignment contentAlignment = button.ImageAlign;
		if (button.RightToLeft == RightToLeft.Yes)
		{
			switch (button.ImageAlign)
			{
			case ContentAlignment.TopCenter:
				contentAlignment = ContentAlignment.TopCenter;
				break;
			case ContentAlignment.TopLeft:
				contentAlignment = ContentAlignment.TopRight;
				break;
			case ContentAlignment.TopRight:
				contentAlignment = ContentAlignment.TopLeft;
				break;
			case ContentAlignment.MiddleCenter:
				contentAlignment = ContentAlignment.MiddleCenter;
				break;
			case ContentAlignment.MiddleLeft:
				contentAlignment = ContentAlignment.MiddleRight;
				break;
			case ContentAlignment.MiddleRight:
				contentAlignment = ContentAlignment.MiddleLeft;
				break;
			case ContentAlignment.BottomCenter:
				contentAlignment = ContentAlignment.BottomCenter;
				break;
			case ContentAlignment.BottomLeft:
				contentAlignment = ContentAlignment.BottomRight;
				break;
			case ContentAlignment.BottomRight:
				contentAlignment = ContentAlignment.BottomLeft;
				break;
			}
		}
		switch (contentAlignment)
		{
		case ContentAlignment.TopCenter:
			num7 = ((image.Width - button.Width > 0) ? ((image.Width - button.Width) / 2) : 0);
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num2 - num9 * 2;
			rectangle = new Rectangle(num7, 0, num5, num6);
			break;
		case ContentAlignment.TopLeft:
			num5 = button.Width - num - num9 * 2;
			num6 = button.Height - num2 - num9 * 2;
			rectangle = new Rectangle(0, 0, num5, num6);
			break;
		case ContentAlignment.TopRight:
			num3 = ((image.Width - button.Width <= 0) ? num10 : (image.Width - button.Width + num9));
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num2 - num9 * 2;
			rectangle = new Rectangle(num3, 0, num5, num6);
			break;
		case ContentAlignment.MiddleCenter:
			num7 = ((image.Width - button.Width > 0) ? ((image.Width - button.Width) / 2) : 0);
			num8 = ((image.Height - button.Height > 0) ? ((image.Height - button.Height) / 2) : 0);
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(num7, num8, num5, num6);
			break;
		case ContentAlignment.MiddleLeft:
			num8 = ((image.Height - button.Height > 0) ? ((image.Height - button.Height) / 2) : 0);
			num5 = button.Width - num - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(0, num8, num5, num6);
			break;
		case ContentAlignment.MiddleRight:
			num3 = ((image.Width - button.Width <= 0) ? num10 : (image.Width - button.Width + num9));
			num8 = ((image.Height - button.Height > 0) ? ((image.Height - button.Height) / 2) : 0);
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(num3, num8, num5, num6);
			break;
		case ContentAlignment.BottomCenter:
			num4 = ((image.Height - button.Height <= 0) ? (num9 + num11) : (image.Height - button.Height + num9));
			num7 = ((image.Width - button.Width <= 0) ? num10 : ((image.Width - button.Width) / 2));
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(num7, num4, num5, num6);
			break;
		case ContentAlignment.BottomLeft:
			num4 = ((image.Height - button.Height <= 0) ? (num9 + num11) : (image.Height - button.Height + num9));
			num5 = button.Width - num - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(0, num4, num5, num6);
			break;
		case ContentAlignment.BottomRight:
			num3 = ((image.Width - button.Width <= 0) ? num10 : (image.Width - button.Width + num9));
			num4 = ((image.Height - button.Height <= 0) ? (num9 + num11) : (image.Height - button.Height + num9));
			num5 = button.Width - num9 * 2;
			num6 = button.Height - num9 * 2;
			rectangle = new Rectangle(num3, num4, num5, num6);
			break;
		}
		RenderingHelper.DrawImage(g, bounds, image, rectangle, drawParams);
	}

	protected virtual void DrawInvertedTriangle(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		RenderingHelper.DrawInvertedTriangle(g, bounds, brush, pen);
	}

	protected virtual void DrawTriangle(Graphics g, RectangleF bounds, Brush brush, Pen pen)
	{
		RenderingHelper.DrawTriangle(g, bounds, brush, pen);
	}

	protected internal virtual void SetBounds(Rectangle bounds)
	{
		this.bounds = bounds;
		ComputeTextPosition();
		ComputeImagePosition();
	}
}
