using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(XPTaskBarItemConverter))]
public class XPTaskBarItem : IChangeNotifyingItem, ISerializable, ICloneable
{
	private const string DEF_NAME = "XPTaskBarItem";

	private static int m_uniqueID = -1;

	private Image m_image;

	private bool m_bVisible = true;

	private bool m_bEnabled = true;

	private string m_sName = string.Empty;

	private Font m_itemFont;

	private int m_leftSpacing;

	private string text = string.Empty;

	private int imageIndex = -1;

	private Color foreColor = Color.Empty;

	private object tag;

	[NonSerialized]
	private object parent;

	private string m_strToolTip = string.Empty;

	private Rectangle bounds;

	protected internal Image Image
	{
		get
		{
			Image result = null;
			if (m_image != null)
			{
				result = m_image;
			}
			else if (parent is XPTaskBarBox { ImageList: { } imageList } && imageIndex >= 0 && imageIndex <= imageList.Images.Count)
			{
				result = imageList.Images[imageIndex];
			}
			return result;
		}
	}

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	public string ToolTip
	{
		get
		{
			return m_strToolTip;
		}
		set
		{
			if (value != m_strToolTip)
			{
				m_strToolTip = value;
			}
		}
	}

	public Font ItemFont
	{
		get
		{
			if (m_itemFont != null)
			{
				return m_itemFont;
			}
			XPTaskBarBox xPTaskBarBox = Parent as XPTaskBarBox;
			if (xPTaskBarBox.Font != null)
			{
				return FontUtil.CreateFont(xPTaskBarBox.Font, FontStyle.Regular);
			}
			return FontUtil.CreateFont(SystemFonts.DefaultFont, FontStyle.Regular);
		}
		set
		{
			if (value != m_itemFont)
			{
				m_itemFont = value;
			}
		}
	}

	public int LeftSpacing
	{
		get
		{
			return m_leftSpacing;
		}
		set
		{
			if (value != m_leftSpacing)
			{
				m_leftSpacing = value;
			}
		}
	}

	[Description("Gets or sets a value indicating whether the item is displayed.")]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				bool bVisible = m_bVisible;
				m_bVisible = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Visible", bVisible, m_bVisible));
			}
		}
	}

	[Description("Gets or sets a value indicating whether the item can respond to user interaction.")]
	[DefaultValue(true)]
	public bool Enabled
	{
		get
		{
			return m_bEnabled;
		}
		set
		{
			if (m_bEnabled != value)
			{
				bool bEnabled = m_bEnabled;
				m_bEnabled = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "Enabled", bEnabled, m_bEnabled));
			}
		}
	}

	[Description("Gets or sets the name of the item.")]
	[DefaultValue("")]
	public string Name
	{
		get
		{
			return m_sName;
		}
		set
		{
			if (value != m_sName)
			{
				string sName = m_sName;
				m_sName = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.None, "Name", sName, m_sName));
			}
		}
	}

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Description("Specifies the item's text.")]
	[DefaultValue("")]
	public string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (text != value)
			{
				string oldValue = text;
				text = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Text", oldValue, text));
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (parent is XPTaskBarBox xPTaskBarBox)
			{
				result = xPTaskBarBox.ImageList;
			}
			return result;
		}
	}

	[TypeConverter(typeof(ImageIndexConverter))]
	[Editor(typeof(ImageIndexEditor), typeof(UITypeEditor))]
	[DefaultValue(-1)]
	[Description("Specifies an index into the ImageList in the corresponding XPTaskBarBox.")]
	public int ImageIndex
	{
		get
		{
			return imageIndex;
		}
		set
		{
			if (imageIndex != value)
			{
				int num = imageIndex;
				imageIndex = value;
				if (imageIndex >= 0)
				{
					SetImage(null);
				}
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ImageIndex", num, imageIndex));
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object Parent
	{
		get
		{
			return parent;
		}
		set
		{
			parent = value;
		}
	}

	[Description("Gets or sets the foreground color (typically the color of the text) property of the XPTaskBarItem.")]
	public Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			if (foreColor != value)
			{
				Color color = foreColor;
				foreColor = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Forecolor", color, foreColor));
			}
		}
	}

	[TypeConverter(typeof(StringConverter))]
	[Description("Gets or sets the object that contains data about the item.")]
	[DefaultValue(null)]
	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			if (bounds != value)
			{
				bounds = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Bounds", null, null));
			}
		}
	}

	public event SyncfusionPropertyChangedEventHandler PropertyChanged;

	public static string GenerateUniqueName()
	{
		int num = ++m_uniqueID;
		return "XPTaskBarItem" + num;
	}

	protected void OnPropertyChanged(SyncfusionPropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	public XPTaskBarItem()
	{
		Name = (Text = GenerateUniqueName());
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Text", Text);
		info.AddValue("ImageIndex", ImageIndex);
		info.AddValue("Visible", Visible);
		info.AddValue("Enabled", Enabled);
		info.AddValue("Name", Name);
		info.AddValue("ForeColor", ForeColor);
		info.AddValue("Tag", Tag);
		info.AddValue("ItemFont", ItemFont);
		info.AddValue("LeftSpacing", LeftSpacing);
	}

	[Browsable(false)]
	protected XPTaskBarItem(SerializationInfo info, StreamingContext context)
	{
		text = info.GetString("Text");
		imageIndex = info.GetInt32("ImageIndex");
		m_bVisible = info.GetBoolean("Visible");
		m_bEnabled = info.GetBoolean("Enabled");
		m_sName = info.GetString("Name");
		foreColor = (Color)info.GetValue("ForeColor", typeof(Color));
		tag = info.GetValue("Tag", typeof(object));
		ItemFont = (Font)info.GetValue("ItemFont", typeof(Font));
		LeftSpacing = info.GetInt32("LeftSpacing");
	}

	public XPTaskBarItem(string text, Color foreColor, int imageIndex, string toolTip)
	{
		this.text = text;
		this.foreColor = foreColor;
		this.imageIndex = imageIndex;
		tag = null;
		ToolTip = toolTip;
	}

	public XPTaskBarItem(string text, Color foreColor, int imageIndex, object tag, string toolTip)
		: this(text, foreColor, imageIndex, toolTip)
	{
		this.tag = tag;
	}

	public XPTaskBarItem(string text, Color foreColor, int imageIndex, object tag, string toolTip, bool visible, bool enabled, string name)
		: this(text, foreColor, imageIndex, tag, toolTip)
	{
		Visible = visible;
		Enabled = enabled;
		Name = name;
	}

	public XPTaskBarItem(string text, Color foreColor, int imageIndex, object tag, string toolTip, bool visible, bool enabled, string name, Font font)
		: this(text, foreColor, imageIndex, tag, toolTip, visible, enabled, name)
	{
		ItemFont = font;
	}

	public XPTaskBarItem(string text, Color foreColor, int imageIndex, object tag, string toolTip, bool visible, bool enabled, string name, Font font, int leftSpacing)
		: this(text, foreColor, imageIndex, tag, toolTip, visible, enabled, name, font)
	{
		LeftSpacing = leftSpacing;
	}

	protected internal void SetImage(Image image)
	{
		m_image = image;
	}

	protected bool ShouldSerializeForeColor()
	{
		if (foreColor == Color.Empty)
		{
			return false;
		}
		return true;
	}

	protected void ResetForeColor()
	{
		foreColor = Color.Empty;
	}

	public object Clone()
	{
		XPTaskBarItem xPTaskBarItem = new XPTaskBarItem();
		xPTaskBarItem.ForeColor = ForeColor;
		xPTaskBarItem.Enabled = Enabled;
		xPTaskBarItem.ImageIndex = imageIndex;
		xPTaskBarItem.Text = Text;
		xPTaskBarItem.ToolTip = ToolTip;
		xPTaskBarItem.Visible = Visible;
		xPTaskBarItem.Tag = Tag;
		xPTaskBarItem.Bounds = Bounds;
		xPTaskBarItem.Name = Name;
		return xPTaskBarItem;
	}
}
