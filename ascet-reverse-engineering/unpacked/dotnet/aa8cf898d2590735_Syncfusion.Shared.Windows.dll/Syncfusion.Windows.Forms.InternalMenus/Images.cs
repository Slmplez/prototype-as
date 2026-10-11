using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class Images
{
	public static ImageStructCollection imageCollection;

	public static ImageList imageList;

	public static ImageList CurrentImageList => imageList;

	public static ImageStructCollection ImageCollection
	{
		get
		{
			if (imageCollection == null)
			{
				imageCollection = new ImageStructCollection();
			}
			return imageCollection;
		}
	}

	public static void AddToImageList(int collectionIndex)
	{
		if (imageList == null)
		{
			imageList = new ImageList();
		}
		imageList.Images.Add(imageCollection[collectionIndex].bmp);
	}
}
