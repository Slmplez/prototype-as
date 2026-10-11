using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Runtime.Serialization;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[TypeConverter(typeof(GridBorderConverter))]
[DesignerSerializer(typeof(GridBorderCodeDomSerializer), typeof(CodeDomSerializer))]
[MergableProperty(true)]
[ImmutableObject(true)]
[RefreshProperties(RefreshProperties.Repaint)]
public sealed class GridBorder : IFormattable, ICloneable, ISerializable, IXmlSerializable
{
	private const char separator = ';';

	private GridBorderStyle _style;

	private GridBorderWeight _weight;

	private Color _color;

	private static readonly Color Black = Color.Black;

	private static readonly char[] separators = new char[1] { ';' };

	public static readonly GridBorder Empty = new GridBorder();

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string Info => ToString();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool IsEmpty => this == Empty;

	[Description("Indicates the type of border line the cell has.")]
	[MergableProperty(true)]
	[NotifyParentProperty(true)]
	public GridBorderStyle Style => _style;

	[NotifyParentProperty(true)]
	[MergableProperty(true)]
	[Description("Indicates the weight of the border the cell has.")]
	public GridBorderWeight Weight => _weight;

	[NotifyParentProperty(true)]
	[MergableProperty(true)]
	[Description("Indicates the color to be used for the cell border.")]
	public Color Color => _color;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int Width
	{
		get
		{
			int result = 1;
			switch (Weight)
			{
			case GridBorderWeight.ExtraThin:
				result = 1;
				break;
			case GridBorderWeight.Thin:
				result = 1;
				break;
			case GridBorderWeight.Medium:
				result = 2;
				break;
			case GridBorderWeight.Thick:
				result = 2;
				break;
			case GridBorderWeight.ExtraThick:
				result = 3;
				break;
			case GridBorderWeight.ExtraExtraThick:
				result = 4;
				break;
			}
			return result;
		}
	}

	public object Clone()
	{
		GridBorder gridBorder = new GridBorder();
		gridBorder._color = _color;
		gridBorder._style = _style;
		gridBorder._weight = _weight;
		return gridBorder;
	}

	public GridBorder()
		: this(GridBorderStyle.NotSet, Black, GridBorderWeight.Thin)
	{
	}

	public GridBorder(GridBorderStyle style)
		: this(style, Black, GridBorderWeight.Thin)
	{
	}

	public GridBorder(GridBorderStyle style, Color color)
		: this(style, color, GridBorderWeight.Thin)
	{
	}

	public GridBorder(GridBorderStyle style, Color color, GridBorderWeight weight)
	{
		if (!Enum.IsDefined(typeof(GridBorderStyle), style))
		{
			throw new ArgumentException("Invalid GridBorderStyle value");
		}
		_style = style;
		if (!Enum.IsDefined(typeof(GridBorderWeight), weight))
		{
			throw new ArgumentException("Invalid GridBorderWeight value");
		}
		_weight = weight;
		_color = color;
	}

	internal GridBorder(SerializationInfo info, StreamingContext context)
	{
		_style = (GridBorderStyle)info.GetValue("Style", typeof(GridBorderStyle));
		_weight = (GridBorderWeight)info.GetValue("Weight", typeof(GridBorderWeight));
		_color = (Color)info.GetValue("Color", typeof(Color));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Style", _style);
		info.AddValue("Weight", _weight);
		info.AddValue("Color", _color);
	}

	public GridBorder MakeBlackAndWhite()
	{
		return new GridBorder(Style, Color.Black, Weight);
	}

	public override string ToString()
	{
		return ToString(null, null);
	}

	public string ToString(IFormatProvider provider)
	{
		return ToString(null, provider);
	}

	public string ToString(string format)
	{
		return ToString(format, null);
	}

	public string ToString(string format, IFormatProvider formatProvider)
	{
		string text = ';' + " ";
		if (format != null && format == "compact")
		{
			if (Style == GridBorderStyle.None || Style == GridBorderStyle.NotSet)
			{
				return Style.ToString();
			}
			return Style.ToString() + ';' + ColorConvert.ColorToString(Color, writeName: false) + ';' + Weight;
		}
		if (Style == GridBorderStyle.None || Style == GridBorderStyle.NotSet || Style == GridBorderStyle.Standard)
		{
			return Enum.Format(typeof(GridBorderStyle), Style, "G");
		}
		return Enum.Format(typeof(GridBorderStyle), Style, "G") + text + ColorConvert.ColorToString(Color, writeName: true) + text + Enum.Format(typeof(GridBorderWeight), Weight, "G");
	}

	public static GridBorder Parse(string parseStr)
	{
		GridBorder gridBorder = new GridBorder();
		return gridBorder.ReadString(parseStr);
	}

	private GridBorder ReadString(string parseStr)
	{
		int num = parseStr.IndexOf("{");
		if (num != -1 && parseStr.EndsWith("}"))
		{
			parseStr = parseStr.Substring(num + 1, parseStr.Length - num - 2);
		}
		string[] array = parseStr.Split(separators);
		int length = array.GetLength(0);
		num = 0;
		if (length >= 1)
		{
			_style = (GridBorderStyle)Enum.Parse(typeof(GridBorderStyle), array[num]);
			if (length == ++num)
			{
				return this;
			}
			Color color;
			if (char.IsDigit(array[num].Trim()[0]) && num + 3 <= length)
			{
				color = ColorConvert.ColorFromString(array[num] + ";" + array[num + 1] + ";" + array[num + 2]);
				num += 2;
			}
			else
			{
				color = ColorConvert.ColorFromString(array[num]);
			}
			_color = color;
			if (length == ++num)
			{
				return this;
			}
			_weight = (GridBorderWeight)Enum.Parse(typeof(GridBorderWeight), array[num]);
			if (length != ++num)
			{
				throw new FormatException("obsolete arguments: " + array[num]);
			}
		}
		return this;
	}

	public override bool Equals(object o)
	{
		bool result = false;
		if (this == o)
		{
			return true;
		}
		if (o is GridBorder)
		{
			GridBorder gridBorder = (GridBorder)o;
			result = gridBorder.Color == Color && gridBorder.Style == Style && gridBorder.Weight == Weight;
		}
		return result;
	}

	public static bool operator ==(GridBorder lhs, GridBorder rhs)
	{
		if (object.ReferenceEquals(lhs, rhs))
		{
			return true;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public static bool operator !=(GridBorder lhs, GridBorder rhs)
	{
		if (object.ReferenceEquals(lhs, rhs))
		{
			return false;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return true;
		}
		return !lhs.Equals(rhs);
	}

	public static bool Compare(GridBorder lhs, GridBorder rhs)
	{
		if (object.ReferenceEquals(lhs, rhs))
		{
			return true;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public override int GetHashCode()
	{
		return ((int)Style << 28) | ((int)Weight << 24) | (Color.ToArgb() & 0xFFFFF);
	}

	public void WriteXml(XmlWriter writer)
	{
		writer.WriteString(ToString());
	}

	XmlSchema IXmlSerializable.GetSchema()
	{
		return null;
	}

	public void ReadXml(XmlReader reader)
	{
		string parseStr = reader.ReadString();
		ReadString(parseStr);
	}
}
