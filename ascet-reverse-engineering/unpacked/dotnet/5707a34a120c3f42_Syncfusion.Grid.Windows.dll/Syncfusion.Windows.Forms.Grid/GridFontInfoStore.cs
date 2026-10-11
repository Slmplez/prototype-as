using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridFontInfoStore : StyleInfoStore
{
	private const int MaxOrientation = 360;

	private const int MaxSize = 512;

	private const int MaxUnit = 6;

	private static StaticData sd;

	public static readonly StyleInfoProperty FacenameProperty;

	public static readonly StyleInfoProperty SizeProperty;

	public static readonly StyleInfoProperty BoldProperty;

	public static readonly StyleInfoProperty ItalicProperty;

	public static readonly StyleInfoProperty UnderlineProperty;

	public static readonly StyleInfoProperty StrikeoutProperty;

	public static readonly StyleInfoProperty OrientationProperty;

	public static readonly StyleInfoProperty UnitProperty;

	protected override StaticData StaticDataStore => sd;

	public GridFontInfoStore()
	{
	}

	private GridFontInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridFontInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}

	static GridFontInfoStore()
	{
		sd = new StaticData(typeof(GridFontInfoStore), typeof(GridFontInfo), sortProperties: true);
		FacenameProperty = sd.CreateStyleInfoProperty(typeof(string), "Facename");
		SizeProperty = sd.CreateStyleInfoProperty(typeof(short), "Size", 512, makeBitValue: true);
		BoldProperty = sd.CreateStyleInfoProperty(typeof(bool), "Bold", 1, makeBitValue: true);
		ItalicProperty = sd.CreateStyleInfoProperty(typeof(bool), "Italic", 1, makeBitValue: true);
		UnderlineProperty = sd.CreateStyleInfoProperty(typeof(bool), "Underline", 1, makeBitValue: true);
		StrikeoutProperty = sd.CreateStyleInfoProperty(typeof(bool), "Strikeout", 1, makeBitValue: true);
		OrientationProperty = sd.CreateStyleInfoProperty(typeof(short), "Orientation", 360, makeBitValue: true);
		UnitProperty = sd.CreateStyleInfoProperty(typeof(GraphicsUnit), "Unit", 6, makeBitValue: true);
		SizeProperty.Format += SizeToString;
		SizeProperty.Parse += SizeStringToInt;
		SizeProperty.WriteXml += SizeProperty_WriteXml;
		SizeProperty.ReadXml += SizeProperty_ReadXml;
	}

	private static void SizeToString(object sender, StyleInfoPropertyConvertEventArgs cevent)
	{
		if (!cevent.Handled && !(cevent.DesiredType != typeof(string)))
		{
			cevent.Value = ((float)(short)cevent.Value / 4f).ToString();
			cevent.Handled = true;
		}
	}

	private static void SizeStringToInt(object sender, StyleInfoPropertyConvertEventArgs cevent)
	{
		if (!cevent.Handled)
		{
			cevent.Value = (short)(float.Parse(cevent.Value.ToString()) * 4f);
			cevent.Handled = true;
		}
	}

	private static void SizeProperty_WriteXml(object sender, StyleInfoPropertyWriteXmlEventArgs e)
	{
		StyleInfoProperty sip = e.Sip;
		e.Writer.WriteStartElement(sip.PropertyName);
		e.Writer.WriteString(sip.FormatValue(e.Store.GetValue(sip)));
		e.Writer.WriteEndElement();
		e.Handled = true;
	}

	private static void SizeProperty_ReadXml(object sender, StyleInfoPropertyReadXmlEventArgs e)
	{
		string s = e.Reader.ReadString();
		object value = e.Sip.ParseValue(s);
		e.Store.SetValue(e.Sip, value);
		e.Reader.Read();
		e.Handled = true;
	}
}
