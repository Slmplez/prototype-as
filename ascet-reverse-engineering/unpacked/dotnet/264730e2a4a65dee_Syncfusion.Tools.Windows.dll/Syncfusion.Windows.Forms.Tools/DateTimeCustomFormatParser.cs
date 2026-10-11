using System;
using System.Text.RegularExpressions;

namespace Syncfusion.Windows.Forms.Tools;

public class DateTimeCustomFormatParser
{
	private static string pattern;

	private static string[] groupNames;

	private static Regex regex;

	private DateTimeCustomFormatParser()
	{
	}

	static DateTimeCustomFormatParser()
	{
		pattern = null;
		groupNames = new string[8] { "Day", "Hour", "Minute", "Month", "Seconds", "AMPM", "Year", "String" };
		regex = null;
		string text = "(?<Day>[d]{1,4})";
		string text2 = "(?<Hour>[hH]{1,2})";
		string text3 = "(?<Minute>[m]{1,2})";
		string text4 = "(?<Month>[M]{1,4})";
		string text5 = "(?<Seconds>[s]{1,2})";
		string text6 = "(?<AMPM>[t]{1,2})";
		string text7 = "(?<Year>[y]{1,2})";
		string text8 = "(?<Year>[y]{4})";
		string text9 = "('(?<String>.*?)')";
		string text10 = "(?<String>.+?)";
		pattern = "(" + text + "|" + text2 + "|" + text3 + "|" + text4 + "|" + text5 + "|" + text6 + "|" + text8 + "|" + text7 + "|" + text9 + "|" + text10 + ")";
		regex = new Regex(pattern, RegexOptions.Compiled);
	}

	public static FieldDefinitionCollection Parse(string s)
	{
		MatchCollection matchCollection = regex.Matches(s);
		FieldDefinitionCollection fieldDefinitionCollection = new FieldDefinitionCollection();
		foreach (Match item in matchCollection)
		{
			FieldDefinition fieldDefinition = GetFieldDefinition(item.Groups);
			fieldDefinitionCollection.Add(fieldDefinition);
		}
		return fieldDefinitionCollection;
	}

	private static FieldDefinition GetFieldDefinition(GroupCollection gc)
	{
		string[] array = groupNames;
		foreach (string text in array)
		{
			if (gc[text].Success)
			{
				return CreateFieldType(text, gc[text].Value);
			}
		}
		throw new FormatException();
	}

	private static FieldDefinition CreateFieldType(string groupName, string value)
	{
		int length = value.Length;
		switch (groupName)
		{
		case "Day":
			return new FieldDefinition(FieldType.Day, (DayFormat)length);
		case "Hour":
		{
			int num = length;
			if (value == value.ToUpper())
			{
				num += 10;
			}
			return new FieldDefinition(FieldType.Hour, (HourFormat)num);
		}
		case "Minute":
			return new FieldDefinition(FieldType.Minute, (MinuteFormat)length);
		case "Month":
			return new FieldDefinition(FieldType.Month, (MonthFormat)length);
		case "Seconds":
			return new FieldDefinition(FieldType.Seconds, (SecondsFormat)length);
		case "AMPM":
			return new FieldDefinition(FieldType.AMPM, (AMPMFormat)length);
		case "Year":
			return new FieldDefinition(FieldType.Year, (YearFormat)length);
		case "String":
			return new FieldDefinition(FieldType.String, DateTimeStringFormat.Default, value);
		default:
			throw new FormatException();
		}
	}
}
