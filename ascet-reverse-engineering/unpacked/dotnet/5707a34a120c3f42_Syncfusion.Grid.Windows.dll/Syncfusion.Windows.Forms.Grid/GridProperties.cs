using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Reflection;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Xml.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(ExpandableObjectConverter))]
public class GridProperties : Disposable, ISerializable
{
	internal const string szMarkRowHeader = "MarkRowHeader";

	internal const string szMarkColHeader = "MarkColumnHeader";

	internal const string szDisplay3DButtons = "3dHeader";

	internal const string szDisplayVertLines = "VerticalLines";

	internal const string szDisplayHorzLines = "HorizontalLines";

	internal const string szDisplayRowHeader = "DisplayRowHeader";

	internal const string szDisplayColHeader = "DisplayColumnHeader";

	internal const string szDefaultSection = "Grid";

	internal const string szPrintVertLines = "Print Vertical Lines";

	internal const string szPrintHorzLines = "Print Horizontal Lines";

	internal const string szBlackWhite = "Print Only Black&White";

	internal const string szRowHeaders = "Print Row Headers";

	internal const string szColHeaders = "Print Column Headers";

	internal const string szCenterVertical = "Center Vertical";

	internal const string szCenterHorizontal = "Center Horizontal";

	internal const string szPageOrder = "Page Order";

	internal const string szPrintFrame = "Margins";

	internal const string szMargins = "Print Frame";

	internal const string szFirstPage = "Start Page Numbering";

	internal const string szDistances = "Distances";

	internal bool modified;

	private string _sInvertNormal;

	private string _sInvertThick;

	private string _sInvertDrawBorder;

	private string _sInvertNoBorder;

	private bool m_b3dButtons;

	private bool m_bDisplayVertLines;

	private bool m_bDisplayHorzLines;

	private bool m_bMarkRowHeader;

	private bool m_bMarkColHeader;

	private bool m_bPrinting;

	private string[] m_ColorNames;

	private Color[] m_ColorTable;

	private int m_nZoom;

	private int m_nBottomMargin;

	private int m_nLeftMargin;

	private int m_nTopMargin;

	private int m_nRightMargin;

	private bool m_bCenterHorizontal;

	private bool m_bCenterVertical;

	private bool m_bPrintRowHeader;

	private bool m_bPrintColHeader;

	private bool m_bColHeaders;

	private bool m_bPrintHorzLines;

	private bool m_bRowHeaders;

	private bool m_bPrintVertLines;

	private int m_nPageOrder;

	private bool m_bBlackWhite;

	private bool m_bPrintFrame;

	private int m_nDistTop;

	private int m_nDistBottom;

	private int m_nFirstPage;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool Modified => modified;

	internal string sInvertNormal
	{
		get
		{
			if (_sInvertNormal == null)
			{
				_sInvertNormal = SR.GetString("GRID_IDS_INVERTNORMAL");
			}
			return _sInvertNormal;
		}
	}

	internal string sInvertThick
	{
		get
		{
			if (_sInvertThick == null)
			{
				_sInvertThick = SR.GetString("GRID_IDS_INVERTTHICK");
			}
			return _sInvertThick;
		}
	}

	internal string sInvertDrawBorder
	{
		get
		{
			if (_sInvertDrawBorder == null)
			{
				_sInvertDrawBorder = SR.GetString("GRID_IDS_INVERTDRAWBORDER");
			}
			return _sInvertDrawBorder;
		}
	}

	internal string sInvertThickBorder
	{
		get
		{
			if (_sInvertDrawBorder == null)
			{
				_sInvertDrawBorder = SR.GetString("GRID_IDS_INVERTTHICKBORDER");
			}
			return _sInvertDrawBorder;
		}
	}

	internal string sInvertNoBorder
	{
		get
		{
			if (_sInvertNoBorder == null)
			{
				_sInvertNoBorder = SR.GetString("GRID_IDS_INVERTNOBORDER");
			}
			return _sInvertNoBorder;
		}
	}

	[Browsable(true)]
	[DefaultValue(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies if row and column headers should appear raised or flat.")]
	public bool Buttons3D
	{
		get
		{
			return m_b3dButtons;
		}
		set
		{
			if (m_b3dButtons != value)
			{
				m_b3dButtons = value;
				OnChanged();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies if vertical lines should be displayed.")]
	[Browsable(true)]
	[DefaultValue(true)]
	public bool DisplayVertLines
	{
		get
		{
			return m_bDisplayVertLines;
		}
		set
		{
			if (m_bDisplayVertLines != value)
			{
				m_bDisplayVertLines = value;
				OnChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Specifies if horizontal lines should be displayed.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool DisplayHorzLines
	{
		get
		{
			return m_bDisplayHorzLines;
		}
		set
		{
			if (m_bDisplayHorzLines != value)
			{
				m_bDisplayHorzLines = value;
				OnChanged();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Specifies if the row header for the current cell should be highlighted.")]
	public bool MarkRowHeader
	{
		get
		{
			return m_bMarkRowHeader;
		}
		set
		{
			if (m_bMarkRowHeader != value)
			{
				m_bMarkRowHeader = value;
				OnChanged();
			}
		}
	}

	[Browsable(true)]
	[Description("Specifies if the column header for the current cell should be highlighted.")]
	[DefaultValue(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool MarkColHeader
	{
		get
		{
			return m_bMarkColHeader;
		}
		set
		{
			if (m_bMarkColHeader != value)
			{
				m_bMarkColHeader = value;
				OnChanged();
			}
		}
	}

	[Description("Specifies if row headers should be printed when printing the grid.")]
	[Browsable(true)]
	[DefaultValue(true)]
	public bool PrintRowHeader
	{
		get
		{
			return m_bPrintRowHeader;
		}
		set
		{
			if (m_bPrintRowHeader != value)
			{
				m_bPrintRowHeader = value;
				OnChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Specifies if column headers should be printed when printing the grid.")]
	public bool PrintColHeader
	{
		get
		{
			return m_bPrintColHeader;
		}
		set
		{
			if (m_bPrintColHeader != value)
			{
				m_bPrintColHeader = value;
				OnChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Switches printing mode for the grid.")]
	public bool Printing
	{
		get
		{
			return m_bPrinting;
		}
		set
		{
			m_bPrinting = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	internal Color[] Colors => m_ColorTable;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Specifies if the grid should be centered horizontally on the page when printing.")]
	public bool CenterHorizontal
	{
		get
		{
			return m_bCenterHorizontal;
		}
		set
		{
			if (m_bCenterHorizontal != value)
			{
				m_bCenterHorizontal = value;
				OnChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Specifies if the grid should be centered vertically on the page when printing.")]
	[Browsable(false)]
	public bool CenterVertical
	{
		get
		{
			return m_bCenterVertical;
		}
		set
		{
			if (m_bCenterVertical != value)
			{
				m_bCenterVertical = value;
				OnChanged();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DefaultValue(true)]
	[Description("Specifies if column headers should be displayed or hidden.")]
	public bool ColHeaders
	{
		get
		{
			if (!Printing)
			{
				return m_bColHeaders;
			}
			return m_bPrintColHeader;
		}
		set
		{
			if (m_bColHeaders != value)
			{
				m_bColHeaders = value;
				OnChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Specifies if the grid should draw horizontal lines when printing.")]
	public bool PrintHorzLines
	{
		get
		{
			return m_bPrintHorzLines;
		}
		set
		{
			if (m_bPrintHorzLines != value)
			{
				m_bPrintHorzLines = value;
				OnChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies if row headers should be displayed or hidden.")]
	public bool RowHeaders
	{
		get
		{
			if (!Printing)
			{
				return m_bRowHeaders;
			}
			return m_bPrintRowHeader;
		}
		set
		{
			if (m_bRowHeaders != value)
			{
				m_bRowHeaders = value;
				OnChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Specifies if the grid should draw vertical lines when printing.")]
	[Browsable(false)]
	public bool PrintVertLines
	{
		get
		{
			return m_bPrintVertLines;
		}
		set
		{
			if (m_bPrintVertLines != value)
			{
				m_bPrintVertLines = value;
				OnChanged();
			}
		}
	}

	[Description("Specifies the page order how the grid should be printed.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int PageOrder
	{
		get
		{
			return m_nPageOrder;
		}
		set
		{
			if (m_nPageOrder != value)
			{
				m_nPageOrder = value;
				OnChanged();
			}
		}
	}

	[Browsable(false)]
	[Description("Specifies if the grid should print only in black and white.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool BlackWhite
	{
		get
		{
			return m_bBlackWhite;
		}
		set
		{
			if (m_bBlackWhite != value)
			{
				m_bBlackWhite = value;
				OnChanged();
			}
		}
	}

	[Description("Specifies if a frame should be drawn around the grid when printing.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool PrintFrame
	{
		get
		{
			return m_bPrintFrame;
		}
		set
		{
			if (m_bPrintFrame != value)
			{
				m_bPrintFrame = value;
				OnChanged();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[XmlIgnore]
	[Description("The color of grid lines.")]
	public Color GridLineColor
	{
		get
		{
			return m_ColorTable[0];
		}
		set
		{
			if (m_ColorTable[0] != value)
			{
				m_ColorTable[0] = value;
				OnChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string GridLineColorString
	{
		get
		{
			return TypeDescriptor.GetConverter(typeof(Color)).ConvertToString(null, CultureInfo.InvariantCulture, GridLineColor);
		}
		set
		{
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			try
			{
				GridLineColor = (Color)converter.ConvertFromString(null, CultureInfo.InvariantCulture, value);
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
				GridLineColor = (Color)converter.ConvertFromString(value);
			}
		}
	}

	[XmlIgnore]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("The color of frozen grid lines.")]
	public Color FixedLinesColor
	{
		get
		{
			return m_ColorTable[1];
		}
		set
		{
			if (m_ColorTable[1] != value)
			{
				m_ColorTable[1] = value;
				OnChanged();
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string FixedLinesColorString
	{
		get
		{
			return TypeDescriptor.GetConverter(typeof(Color)).ConvertToString(null, CultureInfo.InvariantCulture, FixedLinesColor);
		}
		set
		{
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			try
			{
				FixedLinesColor = (Color)converter.ConvertFromString(null, CultureInfo.InvariantCulture, value);
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
				FixedLinesColor = (Color)converter.ConvertFromString(value);
			}
		}
	}

	[XmlIgnore]
	public Color ResizingCellsLinesColor
	{
		get
		{
			return m_ColorTable[2];
		}
		set
		{
			m_ColorTable[2] = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string ResizingCellsLinesColorString
	{
		get
		{
			return TypeDescriptor.GetConverter(typeof(Color)).ConvertToString(null, CultureInfo.InvariantCulture, ResizingCellsLinesColor);
		}
		set
		{
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			try
			{
				ResizingCellsLinesColor = (Color)converter.ConvertFromString(null, CultureInfo.InvariantCulture, value);
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
				ResizingCellsLinesColor = (Color)converter.ConvertFromString(value);
			}
		}
	}

	[Description("The color of the area below the last row and right of the last column inside the grid window.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[XmlIgnore]
	public Color BackgroundColor
	{
		get
		{
			return m_ColorTable[4];
		}
		set
		{
			if (m_ColorTable[4] != value)
			{
				m_ColorTable[4] = value;
				OnChanged();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string BackgroundColorString
	{
		get
		{
			return TypeDescriptor.GetConverter(typeof(Color)).ConvertToString(null, CultureInfo.InvariantCulture, BackgroundColor);
		}
		set
		{
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			try
			{
				BackgroundColor = (Color)converter.ConvertFromString(null, CultureInfo.InvariantCulture, value);
			}
			catch (Exception e)
			{
				TraceUtil.TraceExceptionCatched(e);
				BackgroundColor = (Color)converter.ConvertFromString(value);
			}
		}
	}

	public event EventHandler Changed;

	protected GridProperties(SerializationInfo info, StreamingContext context)
	{
		m_ColorNames = new string[5] { "GRID_IDS_COLOR_GRIDLINES", "GRID_IDS_COLOR_FIXEDLINES", "GRID_IDS_COLOR_TRACKINGLINE", "GRID_IDS_COLOR_DRAGGINGLINE", "GRID_IDS_COLOR_BACKGROUND" };
		m_b3dButtons = info.GetBoolean("Display3DButtons");
		m_bDisplayVertLines = info.GetBoolean("DisplayVerticalLines");
		m_bDisplayHorzLines = info.GetBoolean("DisplayHorizontalLines");
		m_bMarkRowHeader = info.GetBoolean("MarkRowHeader");
		m_bMarkColHeader = info.GetBoolean("MarkColHeader");
		m_ColorTable = (Color[])info.GetValue("Colors", typeof(Color[]));
		m_nZoom = info.GetInt32("Zoom");
		m_nBottomMargin = info.GetInt32("BottomMargin");
		m_nLeftMargin = info.GetInt32("LeftMargin");
		m_nTopMargin = info.GetInt32("TopMargin");
		m_nRightMargin = info.GetInt32("RightMargin");
		m_bCenterHorizontal = info.GetBoolean("CenterHorizontal");
		m_bCenterVertical = info.GetBoolean("CenterVertical");
		m_bPrintRowHeader = info.GetBoolean("PrintRowHeader");
		m_bPrintColHeader = info.GetBoolean("PrintColHeader");
		m_bColHeaders = info.GetBoolean("ColHeaders");
		m_bPrintHorzLines = info.GetBoolean("PrintHorzLines");
		m_bRowHeaders = info.GetBoolean("RowHeaders");
		m_bPrintVertLines = info.GetBoolean("PrintVertLines");
		m_nPageOrder = info.GetInt32("PageOrder");
		m_bBlackWhite = info.GetBoolean("BlackWhite");
		m_bPrintFrame = info.GetBoolean("PrintFrame");
		m_nDistTop = info.GetInt32("DistTop");
		m_nDistBottom = info.GetInt32("DistBottom");
		m_nFirstPage = info.GetInt32("FirstPage");
		bool flag = true;
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Name == "Modified")
			{
				flag = Convert.ToBoolean(enumerator.Value);
			}
		}
		modified = flag;
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Display3DButtons", m_b3dButtons);
		info.AddValue("DisplayVerticalLines", m_bDisplayVertLines);
		info.AddValue("DisplayHorizontalLines", m_bDisplayHorzLines);
		info.AddValue("MarkRowHeader", m_bMarkRowHeader);
		info.AddValue("MarkColHeader", m_bMarkColHeader);
		info.AddValue("Colors", m_ColorTable);
		info.AddValue("Zoom", m_nZoom);
		info.AddValue("BottomMargin", m_nBottomMargin);
		info.AddValue("LeftMargin", m_nLeftMargin);
		info.AddValue("TopMargin", m_nTopMargin);
		info.AddValue("RightMargin", m_nRightMargin);
		info.AddValue("CenterHorizontal", m_bCenterHorizontal);
		info.AddValue("CenterVertical", m_bCenterVertical);
		info.AddValue("PrintRowHeader", m_bPrintRowHeader);
		info.AddValue("PrintColHeader", m_bPrintColHeader);
		info.AddValue("ColHeaders", m_bColHeaders);
		info.AddValue("PrintHorzLines", m_bPrintHorzLines);
		info.AddValue("RowHeaders", m_bRowHeaders);
		info.AddValue("PrintVertLines", m_bPrintVertLines);
		info.AddValue("PageOrder", m_nPageOrder);
		info.AddValue("BlackWhite", m_bBlackWhite);
		info.AddValue("PrintFrame", m_bPrintFrame);
		info.AddValue("DistTop", m_nDistTop);
		info.AddValue("DistBottom", m_nDistBottom);
		info.AddValue("FirstPage", m_nFirstPage);
		info.AddValue("Modified", modified);
	}

	public GridProperties()
	{
		m_bDisplayVertLines = true;
		m_bDisplayHorzLines = true;
		m_b3dButtons = true;
		m_bMarkRowHeader = true;
		m_bMarkColHeader = true;
		m_bPrinting = false;
		m_nZoom = 100;
		m_ColorNames = new string[5] { "GRID_IDS_COLOR_GRIDLINES", "GRID_IDS_COLOR_FIXEDLINES", "GRID_IDS_COLOR_TRACKINGLINE", "GRID_IDS_COLOR_DRAGGINGLINE", "GRID_IDS_COLOR_BACKGROUND" };
		m_ColorTable = new Color[5]
		{
			SystemColors.GrayText,
			SystemColors.ActiveCaption,
			Color.Red,
			Color.Red,
			SystemColors.Control
		};
		m_bPrintVertLines = true;
		m_bPrintHorzLines = true;
		m_bBlackWhite = false;
		m_bRowHeaders = true;
		m_bColHeaders = true;
		m_bPrintRowHeader = true;
		m_bPrintColHeader = true;
		m_bPrintFrame = true;
		m_bCenterVertical = false;
		m_bCenterHorizontal = true;
		m_nPageOrder = 0;
		m_nLeftMargin = GridFontState.INCHtoDP(1f);
		m_nRightMargin = GridFontState.INCHtoDP(1f);
		m_nTopMargin = GridFontState.INCHtoDP(1.5f);
		m_nBottomMargin = GridFontState.INCHtoDP(1.5f);
		m_nDistTop = GridFontState.INCHtoDP(0.4f);
		m_nDistBottom = GridFontState.INCHtoDP(0.4f);
		m_nFirstPage = -1;
	}

	public void ResetModified()
	{
		modified = false;
	}

	private void OnChanged()
	{
		modified = true;
		if (this.Changed != null)
		{
			this.Changed(this, EventArgs.Empty);
		}
	}

	private bool ShouldSerializeGridLineColor()
	{
		return GridLineColor != SystemColors.GrayText;
	}

	public void ResetGridLineColor()
	{
		GridLineColor = SystemColors.GrayText;
	}

	private bool ShouldSerializeFixedLinesColor()
	{
		return FixedLinesColor != SystemColors.ActiveCaption;
	}

	public void ResetFixedLinesColor()
	{
		FixedLinesColor = SystemColors.ActiveCaption;
	}

	private bool ShouldSerializeResizingCellsLinesColor()
	{
		return ResizingCellsLinesColor != Color.Red;
	}

	public void ResetResizingCellsLinesColor()
	{
		ResizingCellsLinesColor = Color.Red;
	}

	private bool ShouldSerializeBackgroundColor()
	{
		return BackgroundColor != SystemColors.Control;
	}

	public void ResetBackgroundColor()
	{
		BackgroundColor = SystemColors.Control;
	}

	public GridProperties Clone()
	{
		GridProperties gridProperties = new GridProperties();
		gridProperties.CopyPropertiesFrom(this);
		return gridProperties;
	}

	[DocumentationExclude]
	internal void CopyPropertiesFrom(GridProperties properties)
	{
		PropertyInfo[] properties2 = GetType().GetProperties();
		PropertyInfo[] array = properties2;
		foreach (PropertyInfo propertyInfo in array)
		{
			AttributeCollection attributes = TypeDescriptor.GetProperties(this)[propertyInfo.Name].Attributes;
			DesignerSerializationVisibilityAttribute designerSerializationVisibilityAttribute = (DesignerSerializationVisibilityAttribute)attributes[typeof(DesignerSerializationVisibilityAttribute)];
			if (designerSerializationVisibilityAttribute == null || designerSerializationVisibilityAttribute.Visibility != DesignerSerializationVisibility.Hidden)
			{
				object value = propertyInfo.GetValue(properties, new object[0]);
				propertyInfo.SetValue(this, value, new object[0]);
			}
		}
	}
}
