using System;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class FieldDefinition
{
	private FieldType type;

	private int format;

	private object data;

	public FieldType Type => type;

	public DayFormat DayFormat => (DayFormat)format;

	public HourFormat HourFormat => (HourFormat)format;

	public MonthFormat MonthFormat => (MonthFormat)format;

	public MinuteFormat MinuteFormat => (MinuteFormat)format;

	public SecondsFormat SecondsFormat => (SecondsFormat)format;

	public AMPMFormat AMPMFormat => (AMPMFormat)format;

	public YearFormat YearFormat => (YearFormat)format;

	public DateTimeStringFormat StringFormat => (DateTimeStringFormat)format;

	public string StringData => (string)data;

	public FieldDefinition(FieldType type, DayFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, HourFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, MinuteFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, MonthFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, SecondsFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, AMPMFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, YearFormat format)
		: this(type, (int)format, null)
	{
	}

	public FieldDefinition(FieldType type, DateTimeStringFormat format, string data)
		: this(type, (int)format, data)
	{
	}

	private FieldDefinition(FieldType type, int format, object data)
	{
		this.type = type;
		this.format = format;
		this.data = data;
	}

	public override string ToString()
	{
		string name = Enum.GetName(typeof(FieldType), type);
		string text = null;
		string arg = "NA";
		Type enumType = null;
		switch (type)
		{
		case FieldType.Day:
			enumType = typeof(DayFormat);
			break;
		case FieldType.Hour:
			enumType = typeof(HourFormat);
			break;
		case FieldType.Minute:
			enumType = typeof(MinuteFormat);
			break;
		case FieldType.Month:
			enumType = typeof(MonthFormat);
			break;
		case FieldType.Seconds:
			enumType = typeof(SecondsFormat);
			break;
		case FieldType.AMPM:
			enumType = typeof(AMPMFormat);
			break;
		case FieldType.Year:
			enumType = typeof(YearFormat);
			break;
		case FieldType.String:
			enumType = typeof(DateTimeStringFormat);
			arg = StringData;
			break;
		}
		text = Enum.GetName(enumType, format);
		return $"FieldType: {name}, Format: {text}, Value: '{arg}'";
	}
}
