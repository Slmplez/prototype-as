using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Runtime.Serialization;
using System.Text;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace Syncfusion.Drawing;

[Serializable]
[DesignerSerializer(typeof(BrushInfoCodeDomSerializer), typeof(CodeDomSerializer))]
[RefreshProperties(RefreshProperties.Repaint)]
[ImmutableObject(true)]
[TypeConverter(typeof(BrushInfoConverter))]
public sealed class BrushInfo : IFormattable, ICloneable, ISerializable, IXmlSerializable
{
	private const char separator = ';';

	private byte style;

	private byte styleInfo;

	private BrushInfoColorArrayList gradientColors;

	private static readonly char[] separators = new char[1] { ';' };

	public static BrushInfo Empty => new BrushInfo();

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(false)]
	public string Description => GetDescription();

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsEmpty => GetStyle() == BrushStyle.None;

	[Description("Specifies the backcolor")]
	public Color BackColor => GetBackColor();

	[Description("Specifies the forecolor")]
	public Color ForeColor => GetForeColor();

	[Description("Specifies the gradient colors.The first entry in this list will be the same as the backcolor property,the lastentry will be same as the forecolor property.")]
	public BrushInfoColorArrayList GradientColors => gradientColors;

	[Description("Specifies the pattern style.")]
	public PatternStyle PatternStyle => GetPatternStyle();

	[Description("Returns the gradient style.")]
	public GradientStyle GradientStyle => GetGradientStyle();

	[Description("Specifies the brush style solid,gradient or pattern")]
	public BrushStyle Style => GetStyle();

	private void InitGradientColors(Color backColor, Color foreColor)
	{
		gradientColors = new BrushInfoColorArrayList();
		gradientColors.Add(backColor);
		gradientColors.Add(foreColor);
		gradientColors.Freeze = true;
	}

	private void InitGradientColors(BrushInfoColorArrayList list)
	{
		gradientColors = new BrushInfoColorArrayList();
		foreach (Color item in list)
		{
			gradientColors.Add(item);
		}
		if (gradientColors.Count < 2)
		{
			gradientColors.Add(SystemColors.WindowText);
		}
		if (gradientColors.Count < 2)
		{
			gradientColors.Insert(0, SystemColors.Window);
		}
		gradientColors.Freeze = true;
	}

	public BrushInfo()
	{
		style = 0;
		styleInfo = 0;
		InitGradientColors(SystemColors.Window, SystemColors.WindowText);
	}

	public BrushInfo(Color color)
	{
		style = 1;
		styleInfo = 0;
		InitGradientColors(color, SystemColors.WindowText);
	}

	private BrushInfo(Color foreColor, Color backColor)
	{
		style = 1;
		styleInfo = 0;
		InitGradientColors(backColor, foreColor);
	}

	public BrushInfo(PatternStyle hatchStyle, Color foreColor, Color backColor)
	{
		if (!Enum.IsDefined(typeof(PatternStyle), hatchStyle))
		{
			throw new ArgumentException("Invalid PatternStyle value");
		}
		style = 2;
		styleInfo = (byte)hatchStyle;
		InitGradientColors(backColor, foreColor);
	}

	public BrushInfo(PatternStyle hatchStyle, BrushInfoColorArrayList colors)
	{
		if (!Enum.IsDefined(typeof(PatternStyle), hatchStyle))
		{
			throw new ArgumentException("Invalid PatternStyle value");
		}
		style = 2;
		styleInfo = (byte)hatchStyle;
		InitGradientColors(colors);
	}

	public BrushInfo(PatternStyle hatchStyle, Color[] colors)
	{
		if (!Enum.IsDefined(typeof(PatternStyle), hatchStyle))
		{
			throw new ArgumentException("Invalid PatternStyle value");
		}
		style = 2;
		styleInfo = (byte)hatchStyle;
		InitGradientColors(new BrushInfoColorArrayList(colors));
	}

	public BrushInfo(GradientStyle gradientStyle, Color foreColor, Color backColor)
	{
		if (!Enum.IsDefined(typeof(GradientStyle), gradientStyle))
		{
			throw new ArgumentException("Invalid GradientStyle value");
		}
		style = 3;
		styleInfo = (byte)gradientStyle;
		InitGradientColors(backColor, foreColor);
	}

	public BrushInfo(GradientStyle gradientStyle, BrushInfoColorArrayList colors)
	{
		if (!Enum.IsDefined(typeof(GradientStyle), gradientStyle))
		{
			throw new ArgumentException("Invalid GradientStyle value");
		}
		style = 3;
		styleInfo = (byte)gradientStyle;
		InitGradientColors(colors);
	}

	public BrushInfo(GradientStyle gradientStyle, Color[] colors)
	{
		if (!Enum.IsDefined(typeof(GradientStyle), gradientStyle))
		{
			throw new ArgumentException("Invalid GradientStyle value");
		}
		style = 3;
		styleInfo = (byte)gradientStyle;
		InitGradientColors(new BrushInfoColorArrayList(colors));
	}

	internal BrushInfo(BrushStyle style, object styleInfo, Color foreColor, Color backColor)
	{
		if (!Enum.IsDefined(typeof(BrushStyle), style))
		{
			throw new ArgumentException("Invalid BrushStyle value");
		}
		this.style = (byte)style;
		this.styleInfo = (byte)(int)styleInfo;
		InitGradientColors(backColor, foreColor);
	}

	public BrushInfo(int alpha, BrushInfo br)
		: this(br.Style, (int)br.styleInfo, Color.FromArgb(alpha, br.ForeColor), Color.FromArgb(alpha, br.BackColor))
	{
	}

	public BrushInfo(BrushInfo brush)
	{
		style = brush.style;
		styleInfo = brush.styleInfo;
		InitGradientColors(brush.gradientColors);
	}

	public static BrushInfo Parse(string s)
	{
		BrushInfo brushInfo = new BrushInfo();
		brushInfo.gradientColors.Freeze = false;
		brushInfo.SetDescription(s);
		brushInfo.gradientColors.Freeze = true;
		return brushInfo;
	}

	private BrushInfo(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		InitGradientColors(SystemColors.Window, SystemColors.WindowText);
		while (enumerator.MoveNext())
		{
			switch (enumerator.Name)
			{
			case "GradientColors":
				gradientColors = (BrushInfoColorArrayList)enumerator.Value;
				break;
			case "Style":
				if (enumerator.Value is string)
				{
					style = (byte)Convert.ChangeType(enumerator.Value, typeof(byte));
				}
				else
				{
					style = (byte)enumerator.Value;
				}
				break;
			case "StyleInfo":
				if (enumerator.Value is string)
				{
					styleInfo = (byte)Convert.ChangeType(enumerator.Value, typeof(byte));
				}
				else
				{
					styleInfo = (byte)enumerator.Value;
				}
				break;
			case "BackColor":
				gradientColors.Freeze = false;
				gradientColors[0] = (Color)enumerator.Value;
				gradientColors.Freeze = true;
				break;
			case "ForeColor":
				gradientColors.Freeze = false;
				gradientColors[gradientColors.Count - 1] = (Color)enumerator.Value;
				gradientColors.Freeze = true;
				break;
			}
		}
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("GradientColors", gradientColors);
		info.AddValue("Style", style);
		info.AddValue("StyleInfo", styleInfo);
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
		StringBuilder stringBuilder = new StringBuilder();
		string text = ';' + " ";
		ColorConverter colorConverter = new ColorConverter();
		if (format != null && format == "compact")
		{
			stringBuilder.Append(Style.ToString());
			if (Style == BrushStyle.Pattern)
			{
				stringBuilder.Append(string.Concat(new string[4]
				{
					text,
					PatternStyle.ToString(),
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, ForeColor)
				}));
			}
			else if (Style == BrushStyle.Gradient)
			{
				stringBuilder.Append(string.Concat(new string[4]
				{
					text,
					GradientStyle.ToString(),
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, ForeColor)
				}));
			}
			if (Style != BrushStyle.None)
			{
				stringBuilder.Append(string.Concat(new string[2]
				{
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, BackColor)
				}));
				if (Style != BrushStyle.Solid && gradientColors.Count > 2)
				{
					for (int i = 1; i < gradientColors.Count - 1; i++)
					{
						stringBuilder.Append(string.Concat(new string[2]
						{
							text,
							colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, gradientColors[i])
						}));
					}
				}
			}
		}
		else
		{
			stringBuilder.Append(Enum.Format(typeof(BrushStyle), Style, "G"));
			if (Style == BrushStyle.Pattern)
			{
				stringBuilder.Append(string.Concat(new string[4]
				{
					text,
					Enum.Format(typeof(PatternStyle), PatternStyle, "G"),
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, ForeColor)
				}));
			}
			else if (Style == BrushStyle.Gradient)
			{
				stringBuilder.Append(string.Concat(new string[4]
				{
					text,
					Enum.Format(typeof(GradientStyle), GradientStyle, "G"),
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, ForeColor)
				}));
			}
			if (Style != BrushStyle.None)
			{
				stringBuilder.Append(string.Concat(new string[2]
				{
					text,
					colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, BackColor)
				}));
				if (Style != BrushStyle.Solid && gradientColors.Count > 2)
				{
					for (int j = 1; j < gradientColors.Count - 1; j++)
					{
						stringBuilder.Append(string.Concat(new string[2]
						{
							text,
							colorConverter.ConvertToString(null, CultureInfo.InvariantCulture, gradientColors[j])
						}));
					}
				}
			}
		}
		return stringBuilder.ToString();
	}

	public override bool Equals(object obj)
	{
		if (obj == null || !(obj is BrushInfo))
		{
			return false;
		}
		BrushInfo brushInfo = (BrushInfo)obj;
		bool flag = style == brushInfo.style;
		if (flag && style != 0)
		{
			flag = BackColor == brushInfo.BackColor;
			if (flag && style != 1)
			{
				flag = gradientColors.Count == brushInfo.gradientColors.Count && styleInfo == brushInfo.styleInfo;
				for (int i = 0; i < gradientColors.Count; i++)
				{
					if (!flag)
					{
						break;
					}
					flag = gradientColors[i] == brushInfo.gradientColors[i];
				}
			}
		}
		return flag;
	}

	public static bool operator ==(BrushInfo lhs, BrushInfo rhs)
	{
		if ((object)lhs == null && (object)rhs == null)
		{
			return true;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public static bool operator !=(BrushInfo lhs, BrushInfo rhs)
	{
		if ((object)lhs == null && (object)rhs == null)
		{
			return false;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return true;
		}
		return !lhs.Equals(rhs);
	}

	public override int GetHashCode()
	{
		int num = (int)Style << 28;
		if (style > 0)
		{
			num |= BackColor.ToArgb() & 0xFFFFF;
		}
		if (style > 1)
		{
			num |= styleInfo << 24;
		}
		return num;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public BrushInfo Clone()
	{
		return new BrushInfo(this);
	}

	public BrushInfo MakeBlackAndWhite()
	{
		BrushInfo brushInfo = new BrushInfo(this);
		brushInfo.gradientColors.Freeze = false;
		brushInfo.gradientColors[0] = Color.White;
		brushInfo.gradientColors[1] = Color.Black;
		if (brushInfo.gradientColors.Count > 2)
		{
			brushInfo.gradientColors.RemoveRange(2, brushInfo.gradientColors.Count - 2);
		}
		brushInfo.gradientColors.Freeze = true;
		return brushInfo;
	}

	public string GetBrushKey()
	{
		return ToString("compact");
	}

	private BrushInfo SetDescription(string brushDescription)
	{
		if (brushDescription == null)
		{
			return this;
		}
		string[] array = brushDescription.Split(separators);
		int length = array.GetLength(0);
		if (length == 0)
		{
			return this;
		}
		int num = 0;
		ColorConverter colorConverter = new ColorConverter();
		if (array[num].Length > 0)
		{
			SetStyle((BrushStyle)Enum.Parse(typeof(BrushStyle), array[num], ignoreCase: true));
		}
		if (length == ++num)
		{
			return this;
		}
		if (Style != BrushStyle.Solid)
		{
			if (array[num].Length > 0)
			{
				if (Style == BrushStyle.Pattern)
				{
					SetPatternStyle((PatternStyle)Enum.Parse(typeof(PatternStyle), array[num], ignoreCase: true));
				}
				else if (Style == BrushStyle.Gradient)
				{
					SetGradientStyle((GradientStyle)Enum.Parse(typeof(GradientStyle), array[num], ignoreCase: true));
				}
			}
			if (length == ++num)
			{
				return this;
			}
			if (array[num].Length > 0)
			{
				Color foreColor = (Color)colorConverter.ConvertFromString(null, CultureInfo.InvariantCulture, array[num]);
				SetForeColor(foreColor);
				if (length == ++num)
				{
					return this;
				}
			}
		}
		if (Style != BrushStyle.None)
		{
			if (array[num].Length > 0)
			{
				Color backColor = (Color)colorConverter.ConvertFromString(null, CultureInfo.InvariantCulture, array[num]);
				SetBackColor(backColor);
			}
			while (++num < length)
			{
				if (array[num].Length > 0)
				{
					string text = array[num].Trim();
					if (!(text == string.Empty))
					{
						Color color = (Color)colorConverter.ConvertFromString(null, CultureInfo.InvariantCulture, array[num].Trim());
						gradientColors.Insert(gradientColors.Count - 1, color);
					}
				}
			}
		}
		if (length != num)
		{
			throw new FormatException("obsolete arguments: " + array[num]);
		}
		return this;
	}

	private string GetDescription()
	{
		return ToString("compact");
	}

	private BrushStyle GetStyle()
	{
		return (BrushStyle)style;
	}

	private BrushInfo SetStyle(BrushStyle style)
	{
		if (!Enum.IsDefined(typeof(BrushStyle), style))
		{
			throw new ArgumentException("Invalid BrushStyle value");
		}
		this.style = (byte)style;
		return this;
	}

	private Color GetBackColor()
	{
		return gradientColors[0];
	}

	private BrushInfo SetBackColor(Color color)
	{
		gradientColors[0] = color;
		return this;
	}

	private PatternStyle GetPatternStyle()
	{
		if (Style != BrushStyle.Pattern)
		{
			return PatternStyle.None;
		}
		return (PatternStyle)styleInfo;
	}

	private BrushInfo SetPatternStyle(PatternStyle hatchStyle)
	{
		if (!Enum.IsDefined(typeof(PatternStyle), hatchStyle))
		{
			throw new ArgumentException("Invalid PatternStyle value");
		}
		style = 2;
		styleInfo = (byte)hatchStyle;
		return this;
	}

	private GradientStyle GetGradientStyle()
	{
		if (Style != BrushStyle.Gradient)
		{
			return GradientStyle.None;
		}
		return (GradientStyle)styleInfo;
	}

	private BrushInfo SetGradientStyle(GradientStyle gradientStyle)
	{
		if (!Enum.IsDefined(typeof(GradientStyle), gradientStyle))
		{
			throw new ArgumentException("Invalid GradientStyle value");
		}
		style = 3;
		styleInfo = (byte)gradientStyle;
		return this;
	}

	private Color GetForeColor()
	{
		return gradientColors[gradientColors.Count - 1];
	}

	private BrushInfo SetForeColor(Color color)
	{
		gradientColors[gradientColors.Count - 1] = color;
		return this;
	}

	public void WriteXml(XmlWriter writer)
	{
		writer.WriteString(GetDescription());
	}

	XmlSchema IXmlSerializable.GetSchema()
	{
		return null;
	}

	public void ReadXml(XmlReader reader)
	{
		string description = reader.ReadString();
		gradientColors.Freeze = false;
		SetDescription(description);
		gradientColors.Freeze = true;
	}

	public void ClearColorInfo()
	{
		if (gradientColors != null)
		{
			gradientColors.Freeze = false;
			gradientColors.Clear();
		}
	}
}
