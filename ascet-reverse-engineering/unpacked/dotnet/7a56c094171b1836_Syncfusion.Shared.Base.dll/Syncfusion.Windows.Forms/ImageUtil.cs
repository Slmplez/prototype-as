using System.Drawing;
using System.IO;
using System.Text;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ImageUtil
{
	[DocumentationExclude]
	public static Image ConvertToImage(byte[] rawData)
	{
		if (rawData != null)
		{
			Stream stream = GetBitmapStream(rawData);
			if (stream == null)
			{
				stream = new MemoryStream(rawData);
			}
			return Image.FromStream(stream, useEmbeddedColorManagement: true);
		}
		return null;
	}

	private static Stream GetBitmapStream(byte[] rawData)
	{
		if (rawData[0] == 21 && rawData[1] == 28)
		{
			string text = Encoding.ASCII.GetString(rawData, 59, 6);
			if (text != "PBrush")
			{
				return null;
			}
			try
			{
				return new MemoryStream(rawData, 78, rawData.Length - 78);
			}
			catch
			{
			}
		}
		return null;
	}

	[DocumentationExclude]
	public static Image ConvertToImage(object value)
	{
		if (value is byte[] rawData)
		{
			return ConvertToImage(rawData);
		}
		return value as Image;
	}
}
