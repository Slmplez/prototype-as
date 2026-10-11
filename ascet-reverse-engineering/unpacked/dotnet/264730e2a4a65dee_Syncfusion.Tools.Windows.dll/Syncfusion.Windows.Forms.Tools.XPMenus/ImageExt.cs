using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Imaging;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[Editor(typeof(ImageExtEditor), typeof(UITypeEditor))]
public class ImageExt : IDisposable
{
	private const float DEF_TRANSPARENCY = 0.5f;

	private Icon m_icon;

	private Bitmap m_bitmap;

	private Color m_imageTransparentColor = Color.Empty;

	public Size Size
	{
		get
		{
			Size result = default(Size);
			if (m_icon != null)
			{
				return m_icon.Size;
			}
			if (m_bitmap != null)
			{
				return m_bitmap.Size;
			}
			return result;
		}
	}

	public int Width => Size.Width;

	public int Height => Size.Height;

	internal Color ImageTransparentColor
	{
		get
		{
			return m_imageTransparentColor;
		}
		set
		{
			if (m_imageTransparentColor != value)
			{
				m_imageTransparentColor = value;
				if (value != Color.Empty && m_bitmap != null)
				{
					m_bitmap.MakeTransparent(value);
				}
			}
		}
	}

	public static implicit operator ImageExt(Icon value)
	{
		return new ImageExt(value);
	}

	public static implicit operator ImageExt(Bitmap value)
	{
		return new ImageExt(value);
	}

	public ImageExt(Icon icon)
	{
		m_icon = icon;
		m_bitmap = null;
	}

	public ImageExt(Image bitmap)
	{
		m_icon = null;
		m_bitmap = ((bitmap is Bitmap) ? ((Bitmap)bitmap) : new Bitmap(bitmap));
	}

	public virtual void Draw(Graphics g, Rectangle bounds, DrawItemState state)
	{
		Rectangle rectangle = ((m_icon != null) ? new Rectangle(new Point(0, 0), m_icon.Size) : new Rectangle(new Point(0, 0), m_bitmap.Size));
		switch (state)
		{
		case DrawItemState.Disabled:
			if (m_icon != null)
			{
				Image iconToDraw2 = DrawIconHelper.GetIconToDraw(m_icon, this);
				DrawGreyImage(g, iconToDraw2, bounds, rectangle, 0.5f);
			}
			else if (m_bitmap != null)
			{
				DrawGreyImage(g, m_bitmap, bounds, rectangle, 0.5f);
			}
			break;
		case DrawItemState.HotLight:
			if (m_icon != null)
			{
				Image iconToDraw3 = DrawIconHelper.GetIconToDraw(m_icon, this);
				DrawShadow(g, iconToDraw3, bounds, rectangle);
			}
			else if (m_bitmap != null)
			{
				DrawShadow(g, m_bitmap, bounds, rectangle);
			}
			break;
		case DrawItemState.None:
			if (m_icon != null)
			{
				Image iconToDraw = DrawIconHelper.GetIconToDraw(m_icon, this);
				g.DrawImage(iconToDraw, bounds);
			}
			else if (m_bitmap != null)
			{
				g.DrawImage(m_bitmap, bounds);
			}
			break;
		}
	}

	public Image GetImage()
	{
		Image image = null;
		if (m_icon != null)
		{
			image = new Bitmap(IconToBitmap(m_icon), m_icon.Width, m_icon.Height);
		}
		else if (m_bitmap != null)
		{
			image = m_bitmap;
		}
		return image.Clone() as Image;
	}

	public Size GetSize()
	{
		Size result = Size.Empty;
		if (m_bitmap != null)
		{
			result = m_bitmap.Size;
		}
		else if (m_icon != null)
		{
			result = m_icon.Size;
		}
		return result;
	}

	private void DrawShadow(Graphics g, Image image, Rectangle bounds, Rectangle imageRect)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 0f;
		colorMatrix.Matrix11 = 0f;
		colorMatrix.Matrix22 = 0f;
		colorMatrix.Matrix33 = 0.25f;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(image, bounds, imageRect.X, imageRect.Y, imageRect.Width, imageRect.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	private void DrawGreyImage(Graphics g, Image image, Rectangle destRect, RectangleF srcRect, float transparency)
	{
		ImageAttributes imageAttributes = new ImageAttributes();
		ColorMatrix colorMatrix = new ColorMatrix();
		colorMatrix.Matrix00 = 1f / 3f;
		colorMatrix.Matrix01 = 1f / 3f;
		colorMatrix.Matrix02 = 1f / 3f;
		colorMatrix.Matrix10 = 1f / 3f;
		colorMatrix.Matrix11 = 1f / 3f;
		colorMatrix.Matrix12 = 1f / 3f;
		colorMatrix.Matrix20 = 1f / 3f;
		colorMatrix.Matrix21 = 1f / 3f;
		colorMatrix.Matrix22 = 1f / 3f;
		colorMatrix.Matrix33 = transparency;
		imageAttributes.SetColorMatrix(colorMatrix);
		g.DrawImage(image, destRect, srcRect.X, srcRect.Y, srcRect.Width, srcRect.Height, GraphicsUnit.Pixel, imageAttributes);
		imageAttributes.Dispose();
	}

	private Bitmap IconToBitmap(Icon icon)
	{
		IntPtr handle = icon.Handle;
		Syncfusion.Runtime.InteropServices.NativeMethods.ICONINFO piconinfo = default(Syncfusion.Runtime.InteropServices.NativeMethods.ICONINFO);
		Syncfusion.Runtime.InteropServices.NativeMethods.GetIconInfo(handle, out piconinfo);
		Bitmap bmSource = Image.FromHbitmap(piconinfo.hbmColor);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(piconinfo.hbmColor);
		Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(piconinfo.hbmMask);
		return FixAlphaBitmap(bmSource);
	}

	private Bitmap FixAlphaBitmap(Bitmap bmSource)
	{
		Rectangle rect = new Rectangle(0, 0, bmSource.Width, bmSource.Height);
		BitmapData bitmapData = bmSource.LockBits(rect, ImageLockMode.ReadOnly, bmSource.PixelFormat);
		Bitmap result = new Bitmap(bitmapData.Width, bitmapData.Height, bitmapData.Stride, PixelFormat.Format32bppArgb, bitmapData.Scan0);
		bmSource.UnlockBits(bitmapData);
		return result;
	}

	public void Dispose()
	{
		if (m_icon != null)
		{
			m_icon.Dispose();
		}
		if (m_bitmap != null)
		{
			m_bitmap.Dispose();
		}
	}
}
