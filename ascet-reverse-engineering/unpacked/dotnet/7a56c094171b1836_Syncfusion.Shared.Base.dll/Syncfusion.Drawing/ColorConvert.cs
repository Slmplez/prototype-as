using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Drawing;

public sealed class ColorConvert
{
	public static Color ColorFromString(string parseStr)
	{
		TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
		object obj = converter.ConvertFrom(parseStr);
		if (obj != null && obj is Color)
		{
			return (Color)obj;
		}
		return Color.Empty;
	}

	public static string ColorToString(Color color, bool writeName)
	{
		TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
		object obj = converter.ConvertTo(color, typeof(string));
		if (obj != null && obj is string)
		{
			return (string)obj;
		}
		return "";
	}
}
