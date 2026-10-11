using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Navigation.Design;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

[Serializable]
[DefaultEvent("PropertyChanged")]
[DefaultProperty("Text")]
[TypeConverter(typeof(BarConvernter))]
public class Bar : INotifyPropertyChanged, IDisposable, IContainBars
{
	[Flags]
	public enum Properties
	{
		Text = 0,
		Image = 1,
		DisabledImage = 2,
		ImageIndex = 3,
		DisabledImageIndex = 4,
		Visible = 5,
		Enabled = 6,
		AutoExpand = 7
	}

	internal static class Helper
	{
		public static Image GetBarImage(Bar bar, NavigationView navView, bool bBarEnabled)
		{
			Image image = null;
			if (bBarEnabled)
			{
				if (bar.Image != null)
				{
					return bar.Image;
				}
				return ExtractImage(navView.ImageList, bar.ImageIndex);
			}
			if (bar.DisabledImage != null)
			{
				return bar.DisabledImage;
			}
			return ExtractImage(navView.DisabledImageList, bar.DisabledImageIndex);
		}

		public static Image GetBarImage(Bar bar, NavigationView navView)
		{
			return GetBarImage(bar, navView, bar.Enabled);
		}

		public static Image ExtractImage(ImageList imgList, int imageIdx)
		{
			Image result = null;
			if (imgList != null && imageIdx >= 0 && imageIdx < imgList.Images.Count)
			{
				result = imgList.Images[imageIdx];
			}
			return result;
		}

		public static Properties ParsePropertyEnumString(string propertyName)
		{
			return (Properties)Enum.Parse(typeof(Properties), propertyName);
		}
	}

	private BarCollection _bars;

	private string _text;

	private Image _image;

	private Image _disabledImage;

	private int _imageIndex = -1;

	private int _disabledImageIndex = -1;

	private bool _visible = true;

	private bool _enabled = true;

	private bool _autoExpand = true;

	private object _tag;

	[Browsable(false)]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Collection of child bars.")]
	public BarCollection Bars
	{
		get
		{
			if (_bars == null)
			{
				_bars = new BarCollection();
			}
			return _bars;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public BarCollection VisibleBars
	{
		get
		{
			BarCollection barCollection = new BarCollection();
			foreach (Bar bar in _bars)
			{
				if (bar.Visible)
				{
					barCollection.Add(bar);
				}
			}
			return barCollection;
		}
	}

	[Description("Bar's text.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue("")]
	[Category("Appearance")]
	public string Text
	{
		get
		{
			return _text;
		}
		set
		{
			if (_text != value)
			{
				_text = value;
				FirePropertyChangedEvent(Properties.Text);
			}
		}
	}

	[Description("Bar's image.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public Image Image
	{
		get
		{
			return _image;
		}
		set
		{
			if (_image != value)
			{
				_image = value;
				FirePropertyChangedEvent(Properties.Image);
			}
		}
	}

	[Description("Disabled Bar's image.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public Image DisabledImage
	{
		get
		{
			return _disabledImage;
		}
		set
		{
			if (_disabledImage != value)
			{
				_disabledImage = value;
				FirePropertyChangedEvent(Properties.DisabledImage);
			}
		}
	}

	[DefaultValue(-1)]
	[Category("Appearance")]
	[Description("Bar's image index.")]
	public int ImageIndex
	{
		get
		{
			return _imageIndex;
		}
		set
		{
			if (_imageIndex != value)
			{
				_imageIndex = value;
				FirePropertyChangedEvent(Properties.ImageIndex);
			}
		}
	}

	[DefaultValue(-1)]
	[Category("Appearance")]
	[Description("Disabled Bar's image index.")]
	public int DisabledImageIndex
	{
		get
		{
			return _disabledImageIndex;
		}
		set
		{
			if (_disabledImageIndex != value)
			{
				_disabledImageIndex = value;
				FirePropertyChangedEvent(Properties.DisabledImageIndex);
			}
		}
	}

	[DefaultValue(true)]
	[Description("Bar's visibility.")]
	[Category("Behavior")]
	public bool Visible
	{
		get
		{
			return _visible;
		}
		set
		{
			if (_visible != value)
			{
				_visible = value;
				FirePropertyChangedEvent(Properties.Visible);
			}
		}
	}

	[Description("Indicates whether Bar is enabled.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool Enabled
	{
		get
		{
			return _enabled;
		}
		set
		{
			if (_enabled != value)
			{
				_enabled = value;
				FirePropertyChangedEvent(Properties.Enabled);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Indicates whether bar's menu auto expands when mouse is over the bar.")]
	public bool AutoExpand
	{
		get
		{
			return _autoExpand;
		}
		set
		{
			if (_autoExpand != value)
			{
				_autoExpand = value;
				FirePropertyChangedEvent(Properties.AutoExpand);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object Tag
	{
		get
		{
			return _tag;
		}
		set
		{
			_tag = value;
		}
	}

	public event PropertyChangedEventHandler PropertyChanged;

	public Bar()
	{
		_text = string.Empty;
		_imageIndex = -1;
		_disabledImageIndex = -1;
		_visible = true;
		_enabled = true;
	}

	public Bar(string text)
		: this()
	{
		_text = text;
	}

	public bool IsSelected(NavigationView owner)
	{
		if (owner == null)
		{
			return false;
		}
		return this == owner.SelectedBar;
	}

	protected void FirePropertyChangedEvent(Properties property)
	{
		if (this.PropertyChanged != null)
		{
			string name = Enum.GetName(typeof(Properties), property);
			PropertyChangedEventArgs e = new PropertyChangedEventArgs(name);
			this.PropertyChanged(this, e);
		}
	}

	public void Dispose()
	{
		GC.SuppressFinalize(this);
		Dispose(disposing: true);
	}

	protected void Dispose(bool disposing)
	{
		if (disposing && _bars != null)
		{
			_bars.Clear();
		}
	}

	~Bar()
	{
		Dispose(disposing: false);
	}

	public override string ToString()
	{
		if (!string.IsNullOrEmpty(Text))
		{
			return Text;
		}
		return base.ToString();
	}
}
