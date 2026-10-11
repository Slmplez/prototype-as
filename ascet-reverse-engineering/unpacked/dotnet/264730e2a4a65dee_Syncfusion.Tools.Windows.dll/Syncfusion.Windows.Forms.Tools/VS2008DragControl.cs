using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class VS2008DragControl : DragControl
{
	public override DockAbility DockAbility
	{
		get
		{
			return m_DockAbility;
		}
		set
		{
			if (m_DockAbility != value)
			{
				bool innerVisible = base.InnerVisible;
				if (innerVisible)
				{
					HideInnerControl();
				}
				m_DockAbility = value;
				m_InnerControl.DockAbility = m_DockAbility;
				if (innerVisible)
				{
					ShowInnerControl();
				}
			}
		}
	}

	public VS2008DragControl()
	{
		m_OuterControl = new VS2008OuterDragControl(this);
		m_OuterControl.OnMouseEnter += base.MouseEnterEvent;
		m_OuterControl.OnMouseLeave += base.MouseLeaveEvent;
		m_OuterControl.OnMouseUp += base.MouseUpEvent;
		m_OuterControl.OnMouseMove += base.OuterMouseMoveEvent;
		m_InnerControl = new VS2008InnerDragControl(this);
		m_InnerControl.OnMouseEnter += base.MouseEnterEvent;
		m_InnerControl.OnMouseLeave += base.MouseLeaveEvent;
		m_InnerControl.OnMouseUp += base.MouseUpEvent;
		m_InnerControl.OnMouseMove += base.OuterMouseMoveEvent;
		m_InnerControl.OnAllowHighlight += base.AllowHighlightEvent;
	}

	public override bool ProcessMouseMove(Point point)
	{
		bool flag = m_OuterControl.ProcessMouseMove(point);
		if (!flag && !(m_OuterControl as VS2008OuterDragControl).MouseIn)
		{
			flag = m_InnerControl.ProcessMouseMove(point);
		}
		return flag;
	}

	protected override void InitializeImages()
	{
		int num = 0;
		m_Images = new Image[19];
		LoadImage(VS2005DragControlConsts.DEF_LEFT_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_TOP_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_RIGHT_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_BOTTOM_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_TAB_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_LEFT_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_TOP_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_RIGHT_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_BOTTOM_INNER_TARGET_IMAGE_NAME, num++);
		LoadImage(VS2005DragControlConsts.DEF_LEFT_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_TOP_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_RIGHT_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_BOTTOM_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_TAB_INNER_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_LEFT_INNER_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_TOP_INNER_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_RIGHT_INNER_TARGET_IMAGE_HIGHLIGHT, num++);
		LoadImage(VS2005DragControlConsts.DEF_BOTTOM_INNER_TARGET_IMAGE_HIGHLIGHT, num++);
	}

	protected void LoadImage(string fileName, int index)
	{
		Bitmap bitmap = (Bitmap)ImageLoader.Load(VS2008DragControlConsts.DEF_IMAGES_PATH + fileName);
		bitmap.MakeTransparent(Color.FromArgb(0, 255, 0));
		m_Images[index] = new Bitmap(bitmap);
	}

	internal void Refresh()
	{
		HideControl();
		ShowControl();
	}
}
