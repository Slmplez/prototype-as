using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class ToolStripGalleryItemLayoutInfo
{
	public Rectangle Bounds;

	public Rectangle ImageBounds;

	public Rectangle TextBounds;

	private ToolStripGalleryItem m_item;

	public ToolStripGalleryItem Item => m_item;

	public ToolStripGalleryItemLayoutInfo(ToolStripGalleryItem item)
	{
		m_item = item;
	}
}
