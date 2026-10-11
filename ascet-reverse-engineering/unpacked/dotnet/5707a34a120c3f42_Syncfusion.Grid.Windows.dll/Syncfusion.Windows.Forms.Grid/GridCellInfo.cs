using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Xml.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridCellInfoTypeConverter))]
public class GridCellInfo : IDisposable, ISerializable
{
	private int row;

	private int col;

	private GridStyleInfo cellStyle;

	internal GridCellInfoCollection collection;

	[XmlAttribute("Row")]
	public int Row
	{
		get
		{
			return row;
		}
		set
		{
			row = value;
		}
	}

	[XmlAttribute("Col")]
	public int Col
	{
		get
		{
			return col;
		}
		set
		{
			col = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[XmlElement("CellContents")]
	public GridStyleInfo StyleInfo
	{
		get
		{
			if (cellStyle == null)
			{
				cellStyle = new GridBaseStyleInfo(null, new GridStyleInfoStore());
				cellStyle.Changed += style_Changed;
			}
			return cellStyle;
		}
		set
		{
			StyleInfo.ModifyStyle(value, StyleModifyType.Copy);
		}
	}

	public GridCellInfo()
	{
		row = int.MinValue;
		col = int.MinValue;
		cellStyle = new GridBaseStyleInfo(null, new GridStyleInfoStore());
		cellStyle.Changed += style_Changed;
	}

	public GridCellInfo(int row, int col)
	{
		this.row = row;
		this.col = col;
		cellStyle = new GridBaseStyleInfo(null, new GridStyleInfoStore());
		cellStyle.Changed += style_Changed;
	}

	public GridCellInfo(int row, int col, GridStyleInfoStore styleInfoStore)
	{
		this.row = row;
		this.col = col;
		cellStyle = new GridBaseStyleInfo(null, styleInfoStore);
		cellStyle.Changed += style_Changed;
	}

	protected GridCellInfo(SerializationInfo info, StreamingContext context)
	{
		row = (int)info.GetValue("Row", typeof(int));
		col = (int)info.GetValue("Col", typeof(int));
		cellStyle = (GridStyleInfo)info.GetValue("Style", typeof(GridStyleInfo));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		GetObjectData(info, context);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Row", row);
		info.AddValue("Col", col);
		info.AddValue("Style", cellStyle);
	}

	public void Dispose()
	{
		if (cellStyle != null)
		{
			cellStyle.Changed -= style_Changed;
			cellStyle.Dispose();
		}
		cellStyle = null;
	}

	private void style_Changed(object sender, StyleChangedEventArgs e)
	{
		if (collection != null)
		{
			collection.WriteToData(this, invalidate: true);
		}
	}
}
