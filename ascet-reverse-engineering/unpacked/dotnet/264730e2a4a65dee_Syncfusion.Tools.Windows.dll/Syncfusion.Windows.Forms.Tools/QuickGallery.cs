using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

internal class QuickGallery : ToolStripGallery, IQuickItem
{
	private ToolStripGallery m_reflectedItem;

	public Component ReflectedComponent => m_reflectedItem;

	public QuickGallery(ToolStripGallery gallery)
		: base(gallery.Items, bCreateDropDown: true)
	{
		m_reflectedItem = gallery;
		base.AutoSize = false;
		Reset();
	}

	protected override void OnGalleryItemClicked(ToolStripGalleryItemEventArgs args)
	{
		base.OnGalleryItemClicked(args);
		if (m_reflectedItem != null)
		{
			m_reflectedItem.PerformClick(args.GalleryItem);
		}
	}

	public void Reset()
	{
		if (m_reflectedItem != null)
		{
			Size = m_reflectedItem.Size;
			base.ScrollerType = m_reflectedItem.ScrollerType;
			base.Dimensions = m_reflectedItem.Dimensions;
			base.ToolTipText = m_reflectedItem.ToolTipText;
			base.DropDownDimensions = m_reflectedItem.DropDownDimensions;
			base.DropDownMinimumSize = m_reflectedItem.DropDownMinimumSize;
			base.ItemSize = m_reflectedItem.ItemSize;
			base.ItemImageSize = m_reflectedItem.ItemImageSize;
			base.ItemMargin = m_reflectedItem.ItemMargin;
			base.ItemPadding = m_reflectedItem.ItemPadding;
			base.ItemDisplayStyle = m_reflectedItem.ItemDisplayStyle;
			base.ItemTextImageRelation = m_reflectedItem.ItemTextImageRelation;
			base.ShowCaption = m_reflectedItem.ShowCaption;
			base.CaptionText = m_reflectedItem.CaptionText;
			base.ImageList = m_reflectedItem.ImageList;
			base.CheckedItem = m_reflectedItem.CheckedItem;
			base.CheckOnClick = m_reflectedItem.CheckOnClick;
		}
	}

	public bool Reflects(IComponent c)
	{
		if (m_reflectedItem != null)
		{
			return m_reflectedItem == c;
		}
		return false;
	}
}
