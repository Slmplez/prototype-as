using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripGalleryItem
{
	private object m_tag;

	private Image m_image;

	private string m_text = string.Empty;

	private int m_imageIndex = -1;

	private ImageList m_imageList;

	private Color m_imageTransparentColor;

	private bool m_enable = true;

	private string m_tooltipText = string.Empty;

	[Localizable(false)]
	[TypeConverter(typeof(StringConverter))]
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

	[DefaultValue(null)]
	public Image Image
	{
		get
		{
			return m_image;
		}
		set
		{
			if (m_image != value)
			{
				m_image = value;
				m_imageIndex = -1;
				if (m_imageTransparentColor != Color.Empty && value is Bitmap bitmap)
				{
					bitmap.MakeTransparent(m_imageTransparentColor);
				}
			}
		}
	}

	[Localizable(true)]
	[DefaultValue("")]
	public string Text
	{
		get
		{
			return m_text;
		}
		set
		{
			m_text = value;
		}
	}

	[DefaultValue(-1)]
	public int ImageIndex
	{
		get
		{
			return m_imageIndex;
		}
		set
		{
			m_imageIndex = value;
		}
	}

	internal ImageList ImageList
	{
		get
		{
			return m_imageList;
		}
		set
		{
			m_imageList = value;
		}
	}

	[DefaultValue(true)]
	public bool Enabled
	{
		get
		{
			return m_enable;
		}
		set
		{
			m_enable = value;
		}
	}

	[DefaultValue(null)]
	[Description("Gets or sets TooolTipText which is used to show text over the GalleryItem")]
	public string ToolTipText
	{
		get
		{
			return m_tooltipText;
		}
		set
		{
			if (m_tooltipText != value)
			{
				m_tooltipText = value;
			}
		}
	}

	[DefaultValue(typeof(Color), "")]
	public Color ImageTransparentColor
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
				if (m_imageTransparentColor != Color.Empty && m_image is Bitmap bitmap)
				{
					bitmap.MakeTransparent();
				}
			}
		}
	}

	internal Image GetImage()
	{
		Image image = null;
		if (m_imageList != null && m_imageIndex != -1)
		{
			return m_imageList.Images[m_imageIndex];
		}
		return m_image;
	}
}
