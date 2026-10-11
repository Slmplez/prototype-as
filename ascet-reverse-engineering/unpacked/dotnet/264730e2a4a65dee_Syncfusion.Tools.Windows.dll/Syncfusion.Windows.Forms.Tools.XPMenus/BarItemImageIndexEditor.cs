using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarItemImageIndexEditor : UITypeEditor
{
	private static UITypeEditor m_imageEditor;

	static BarItemImageIndexEditor()
	{
		m_imageEditor = TypeDescriptor.GetEditor(typeof(Image), typeof(UITypeEditor)) as UITypeEditor;
	}

	public override bool GetPaintValueSupported(ITypeDescriptorContext context)
	{
		if (m_imageEditor != null)
		{
			return m_imageEditor.GetPaintValueSupported(context);
		}
		return false;
	}

	public override void PaintValue(PaintValueEventArgs e)
	{
		if (m_imageEditor == null)
		{
			return;
		}
		ITypeDescriptorContext context = e.Context;
		if (context == null || !(context.Instance is BarItem item))
		{
			return;
		}
		Image image = null;
		int num = (int)e.Value;
		if (num >= 0)
		{
			IList images = GetImages(item);
			if (images != null && num < images.Count)
			{
				image = images[num] as Image;
			}
		}
		if (image != null)
		{
			m_imageEditor.PaintValue(new PaintValueEventArgs(context, image, e.Graphics, e.Bounds));
		}
	}

	protected virtual IList GetImages(BarItem item)
	{
		return item.GetImageListInternal(item.Manager?.LargeIcons ?? false);
	}
}
