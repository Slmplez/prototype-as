using System;
using System.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid.Design;

internal class GridStylesParser
{
	public static void ParsePropertyStore(StyleInfoStore store)
	{
		StyleInfoProperty sipSrc = store.FindStyleInfoProperty("BackgroundImage");
		object value = store.GetValue(sipSrc);
		if (value != null)
		{
			byte[] imageBytes = GridSyncProperties.GetImageBytes(value as Bitmap);
			string base64Str = Convert.ToBase64String(imageBytes);
			string value2 = GridDesignerMain.syncProps.StoredImages.Add(base64Str);
			sipSrc = store.FindStyleInfoProperty("BackgroundImageID");
			if (sipSrc != null)
			{
				store.SetValue(sipSrc, value2);
			}
		}
	}
}
