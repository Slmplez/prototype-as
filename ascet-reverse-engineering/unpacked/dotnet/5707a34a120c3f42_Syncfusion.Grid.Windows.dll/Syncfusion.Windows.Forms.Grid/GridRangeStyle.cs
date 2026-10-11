using System;
using System.ComponentModel;
using System.Xml.Serialization;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridRangeStyleTypeConverter))]
public class GridRangeStyle : IDisposable
{
	private GridStyleInfo style;

	private GridRangeInfo range;

	internal GridRangeStyleCollection collection;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public GridStyleInfo StyleInfo
	{
		get
		{
			if (style == null)
			{
				style = new GridBaseStyleInfo(null, new GridStyleInfoStore());
				style.Changed += style_Changed;
			}
			return style;
		}
		set
		{
			StyleInfo.ModifyStyle(value, StyleModifyType.Copy);
		}
	}

	[TypeConverter(typeof(GridRangeInfoConverter))]
	[XmlIgnore]
	public GridRangeInfo Range
	{
		get
		{
			return range;
		}
		set
		{
			range = value;
			if (collection != null)
			{
				collection.WriteToData();
			}
		}
	}

	[XmlElement("Range")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[DocumentationExclude]
	public string RangeInfo
	{
		get
		{
			return Range.ToString();
		}
		set
		{
			Range = GridRangeInfo.Parse(value);
		}
	}

	public GridRangeStyle()
	{
		range = GridRangeInfo.Empty;
		style = new GridBaseStyleInfo(null, new GridStyleInfoStore());
		style.Changed += style_Changed;
	}

	public GridRangeStyle(int rowIndex, int colIndex)
	{
		range = GridRangeInfo.Auto(rowIndex, colIndex);
		style = new GridBaseStyleInfo(null, new GridStyleInfoStore());
		style.Changed += style_Changed;
	}

	public GridRangeStyle(int rowIndex, int colIndex, GridStyleInfoStore styleStore)
	{
		range = GridRangeInfo.Auto(rowIndex, colIndex);
		style = new GridBaseStyleInfo(null, styleStore);
		style.Changed += style_Changed;
	}

	public GridRangeStyle(int top, int left, int bottom, int right, GridStyleInfoStore styleStore)
	{
		range = GridRangeInfo.Auto(top, left, bottom, right);
		style = new GridBaseStyleInfo(null, styleStore);
		style.Changed += style_Changed;
	}

	public GridRangeStyle(GridRangeInfo range, GridStyleInfoStore styleStore)
	{
		this.range = range;
		style = new GridBaseStyleInfo(null, styleStore);
		style.Changed += style_Changed;
	}

	public override string ToString()
	{
		return range.ToString() + ": " + StyleInfo.ToString();
	}

	public void Dispose()
	{
		if (style != null)
		{
			style.Changed -= style_Changed;
			style.Dispose();
		}
		style = null;
	}

	private void style_Changed(object sender, StyleChangedEventArgs e)
	{
		if (collection != null)
		{
			collection.WriteToData(this, invalidate: true);
		}
	}
}
