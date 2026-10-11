using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.Imagelistadv.bmp")]
[ToolboxItem(true)]
[Description("Provides support for hosting images of different sizes and transparency.")]
public class ImageListAdv : Component, ICloneable
{
	private static readonly Size IMAGE_SIZE = new Size(16, 16);

	private ImageCollection m_images;

	private Size m_imageSize = IMAGE_SIZE;

	private bool m_bUseImageSize = true;

	private object m_tag;

	[Description("Collection of images.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ImageCollection Images => m_images;

	[Description("Size of images. Used in drawing.")]
	public Size ImageSize
	{
		get
		{
			return m_imageSize;
		}
		set
		{
			m_imageSize = value;
		}
	}

	[Description("Indicates whether images should be drawn using ImageSize property.")]
	[DefaultValue(true)]
	public bool UseImageSize
	{
		get
		{
			return m_bUseImageSize;
		}
		set
		{
			m_bUseImageSize = value;
		}
	}

	[Description("Tag object.")]
	[DefaultValue(null)]
	public object Tag
	{
		get
		{
			return m_tag;
		}
		set
		{
			m_tag = value;
		}
	}

	public ImageListAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ImageListAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		m_images = new ImageCollection();
	}

	public ImageListAdv(IContainer container)
		: this()
	{
		container.Add(this);
	}

	public void Draw(Graphics g, Point pt, int index)
	{
		Draw(g, pt.X, pt.Y, index);
	}

	public void Draw(Graphics g, int x, int y, int index)
	{
		if (index < 0 || index > m_images.Count - 1)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		if (m_bUseImageSize)
		{
			Draw(g, x, y, m_imageSize.Width, m_imageSize.Height, index);
		}
		else
		{
			g.DrawImage(m_images[index], x, y);
		}
	}

	public void Draw(Graphics g, int x, int y, int width, int height, int index)
	{
		if (index < 0 || index > m_images.Count - 1)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		g.DrawImage(m_images[index], x, y, width, height);
	}

	public static explicit operator ImageListAdv(ImageList list)
	{
		ImageListAdv imageListAdv = new ImageListAdv();
		imageListAdv.ImageSize = list.ImageSize;
		Image[] array = new Image[list.Images.Count];
		int i = 0;
		for (int count = list.Images.Count; i < count; i++)
		{
			array[i] = list.Images[i];
		}
		imageListAdv.Images.AddRange(array);
		return imageListAdv;
	}

	public static explicit operator ImageList(ImageListAdv list)
	{
		ImageList imageList = new ImageList();
		imageList.ImageSize = list.ImageSize;
		foreach (Image image in list.Images)
		{
			imageList.Images.Add(image);
		}
		return imageList;
	}

	public ImageList ToImageList()
	{
		return (ImageList)this;
	}

	public static ImageListAdv FromImageList(ImageList list)
	{
		return (ImageListAdv)list;
	}

	internal static Image IconToImageAlphaCorrect(Icon icon)
	{
		if (icon == null)
		{
			throw new ArgumentNullException("icon");
		}
		return icon.ToBitmap();
	}

	private static bool BitmapHasAlpha(BitmapData bmpData)
	{
		for (int i = 0; i < bmpData.Height; i++)
		{
			for (int j = 3; j < Math.Abs(bmpData.Stride); j += 4)
			{
				if (Marshal.ReadByte((IntPtr)(bmpData.Scan0.ToInt32() + i * bmpData.Stride + j)) != 0)
				{
					return true;
				}
			}
		}
		return false;
	}

	public override string ToString()
	{
		return base.ToString() + " Images.Count: " + Images.Count;
	}

	protected bool ShouldSerializeImageSize()
	{
		return m_imageSize != IMAGE_SIZE;
	}

	protected void ResetImageSize()
	{
		m_imageSize = IMAGE_SIZE;
	}

	public object Clone()
	{
		ImageListAdv imageListAdv = new ImageListAdv();
		imageListAdv.ImageSize = ImageSize;
		imageListAdv.UseImageSize = UseImageSize;
		ImageCollection images = imageListAdv.Images;
		ImageCollection images2 = Images;
		for (int i = 0; i < images2.Count; i++)
		{
			Image image = images2[i];
			if (image != null)
			{
				image = (Image)image.Clone();
			}
			images.Add(image);
		}
		return imageListAdv;
	}
}
