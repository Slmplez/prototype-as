using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(GroupViewItemConverter))]
[DefaultProperty("Text")]
[ToolboxItem(false)]
public class GroupViewItem
{
	[DocumentationExclude]
	public const string GroupViewItemName = "GroupViewItem";

	private string m_tooltipText = string.Empty;

	[DocumentationExclude]
	protected string strText = string.Empty;

	[DocumentationExclude]
	protected int nImage = -1;

	[DocumentationExclude]
	protected bool bEnabled = true;

	[DocumentationExclude]
	protected object objTag;

	[DocumentationExclude]
	protected internal GroupView groupViewCtrl;

	private bool m_bVisible = true;

	private Rectangle m_bounds = Rectangle.Empty;

	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	[Localizable(true)]
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
				OnPropertyChanged(new PropertyChangedEventArgs("ToolTipText"));
			}
		}
	}

	internal Rectangle Bounds
	{
		get
		{
			return m_bounds;
		}
		set
		{
			m_bounds = value;
		}
	}

	[Description("Indicates whether the GroupViewItem is visible.")]
	[Category("Behavior")]
	[DefaultValue(true)]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (value != m_bVisible)
			{
				m_bVisible = value;
				PropertyChangedEventArgs args = new PropertyChangedEventArgs(GroupView.DEF_PROPERTY_NAME_VISIBLE);
				OnPropertyChanged(args);
			}
		}
	}

	[Localizable(true)]
	[Editor(typeof(MultilineStringEditor), typeof(UITypeEditor))]
	public string Text
	{
		get
		{
			return strText;
		}
		set
		{
			if (strText != value)
			{
				strText = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Text"));
			}
		}
	}

	[Localizable(true)]
	public int ImageIndex
	{
		get
		{
			return nImage;
		}
		set
		{
			if (nImage != value)
			{
				nImage = value;
				OnPropertyChanged(new PropertyChangedEventArgs("ImageIndex"));
			}
		}
	}

	[Localizable(true)]
	public bool Enabled
	{
		get
		{
			return bEnabled;
		}
		set
		{
			if (bEnabled != value)
			{
				bEnabled = value;
				OnPropertyChanged(new PropertyChangedEventArgs("Enabled"));
			}
		}
	}

	[DefaultValue(null)]
	[TypeConverter(typeof(StringConverter))]
	[Description("Gets / sets the object that contains data about the GroupViewItem.")]
	[Category("Data")]
	public object Tag
	{
		get
		{
			return objTag;
		}
		set
		{
			objTag = value;
		}
	}

	[Browsable(false)]
	public GroupView GroupView => groupViewCtrl;

	[DocumentationExclude]
	[Browsable(false)]
	public event PropertyChangedEventHandler PropertyChanged;

	public GroupViewItem()
	{
		strText = "GroupViewItem";
		m_tooltipText = "GroupViewItem";
	}

	public GroupViewItem(string name, int image)
	{
		strText = name;
		nImage = image;
		m_tooltipText = name;
	}

	public GroupViewItem(string name, int image, bool enabled)
	{
		strText = name;
		nImage = image;
		bEnabled = enabled;
		m_tooltipText = name;
	}

	public GroupViewItem(string name, int image, object tagObject)
	{
		strText = name;
		nImage = image;
		objTag = tagObject;
		m_tooltipText = name;
	}

	public GroupViewItem(string name, int image, bool enabled, object tagObject)
	{
		strText = name;
		nImage = image;
		bEnabled = enabled;
		objTag = tagObject;
		m_tooltipText = name;
	}

	public GroupViewItem(string name, int image, bool enabled, object tagObject, string tooltipText)
		: this(name, image, enabled, tagObject)
	{
		m_tooltipText = tooltipText;
	}

	public GroupViewItem(string name, int image, bool enabled, object tagObject, bool bVisible)
		: this(name, image, enabled, tagObject)
	{
		m_bVisible = bVisible;
	}

	public GroupViewItem(string name, int image, bool enabled, object tagObject, string tooltipText, bool bVisible)
	{
		strText = name;
		nImage = image;
		bEnabled = enabled;
		objTag = tagObject;
		m_tooltipText = tooltipText;
		m_bVisible = bVisible;
	}

	protected void OnPropertyChanged(PropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}
}
