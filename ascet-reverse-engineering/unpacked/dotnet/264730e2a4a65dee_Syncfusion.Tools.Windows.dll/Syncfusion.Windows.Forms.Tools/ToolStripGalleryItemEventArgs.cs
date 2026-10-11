using System;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripGalleryItemEventArgs : EventArgs
{
	public ToolStripGalleryItem GalleryItem;

	public ToolStripGalleryItemEventArgs(ToolStripGalleryItem galleryItem)
	{
		GalleryItem = galleryItem;
	}
}
