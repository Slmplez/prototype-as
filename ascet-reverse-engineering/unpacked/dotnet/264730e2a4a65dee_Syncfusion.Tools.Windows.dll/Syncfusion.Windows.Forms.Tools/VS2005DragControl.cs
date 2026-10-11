using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2005DragControl : DragControl
{
	public VS2005DragControl()
	{
		m_OuterControl = new VS2005OuterDragControl(this);
		m_OuterControl.OnMouseEnter += base.MouseEnterEvent;
		m_OuterControl.OnMouseLeave += base.MouseLeaveEvent;
		m_OuterControl.OnMouseUp += base.MouseUpEvent;
		m_OuterControl.OnMouseMove += base.OuterMouseMoveEvent;
		m_InnerControl = new VS2005InnerDragControl(this);
		m_InnerControl.OnMouseEnter += base.MouseEnterEvent;
		m_InnerControl.OnMouseLeave += base.MouseLeaveEvent;
		m_InnerControl.OnMouseUp += base.MouseUpEvent;
		m_InnerControl.OnAllowHighlight += base.AllowHighlightEvent;
	}

	protected override void InitializeImages()
	{
		string dEF_IMAGES_PATH = VS2005DragControlConsts.DEF_IMAGES_PATH;
		int num = 0;
		Bitmap bitmap = null;
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_LEFT_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_TOP_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_RIGHT_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_BOTTOM_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_INNER_TARGET_IMAGE_NAME);
		bitmap.MakeTransparent(Color.FromArgb(0, 255, 0));
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_LEFT_INNER_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_TOP_INNER_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_RIGHT_INNER_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_BOTTOM_INNER_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + VS2005DragControlConsts.DEF_TAB_INNER_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
	}

	public override void Dispose()
	{
		if (m_OuterControl != null)
		{
			m_OuterControl.OnMouseEnter -= base.MouseEnterEvent;
			m_OuterControl.OnMouseLeave -= base.MouseLeaveEvent;
			m_OuterControl.OnMouseUp -= base.MouseUpEvent;
			m_OuterControl.OnMouseMove -= base.OuterMouseMoveEvent;
			m_OuterControl.Dispose();
			m_OuterControl = null;
		}
		if (m_InnerControl != null)
		{
			m_InnerControl.OnMouseEnter -= base.MouseEnterEvent;
			m_InnerControl.OnMouseLeave -= base.MouseLeaveEvent;
			m_InnerControl.OnMouseUp -= base.MouseUpEvent;
			m_InnerControl.OnAllowHighlight -= base.AllowHighlightEvent;
			m_InnerControl.Dispose();
			m_InnerControl = null;
		}
		base.Dispose();
	}
}
