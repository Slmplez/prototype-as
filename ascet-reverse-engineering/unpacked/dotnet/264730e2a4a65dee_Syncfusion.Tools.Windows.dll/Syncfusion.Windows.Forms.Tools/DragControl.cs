using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class DragControl : IDragControl
{
	protected IArrowDragControl m_OuterControl;

	protected IArrowDragControl m_InnerControl;

	protected Image[] m_Images = new Image[10];

	private Rectangle m_OuterControllerRect = Rectangle.Empty;

	private Rectangle m_InnerControllerRect = Rectangle.Empty;

	protected bool m_bVisible;

	protected bool m_bInnerVisible;

	protected bool m_bOuterVisible;

	protected DockAbility m_DockAbility;

	protected DockAbility m_OuterDockAbility;

	public Rectangle OuterControllerRect
	{
		get
		{
			return m_OuterControllerRect;
		}
		set
		{
			m_OuterControllerRect = value;
			m_OuterControl.ControllerRect = value;
		}
	}

	public Rectangle InnerControllerRect
	{
		get
		{
			return m_InnerControllerRect;
		}
		set
		{
			if (m_InnerControllerRect != value)
			{
				m_InnerControllerRect = value;
				m_InnerControl.ControllerRect = value;
			}
		}
	}

	public bool InnerVisible => m_bInnerVisible;

	public bool OuterVisible => m_bOuterVisible;

	public bool Visible
	{
		get
		{
			if (!m_bInnerVisible)
			{
				return m_bOuterVisible;
			}
			return true;
		}
	}

	public virtual DockAbility DockAbility
	{
		get
		{
			return m_DockAbility;
		}
		set
		{
			if (m_DockAbility != value)
			{
				m_DockAbility = value;
				m_InnerControl.DockAbility = m_DockAbility;
				if (InnerVisible)
				{
					m_InnerControl.HideControl();
					m_InnerControl.ShowControl();
				}
			}
		}
	}

	public DockAbility OuterDockAbility
	{
		get
		{
			return m_OuterDockAbility;
		}
		set
		{
			if (m_OuterDockAbility != value)
			{
				m_OuterDockAbility = value;
				if (Visible)
				{
					m_OuterControl.HideControl();
					m_OuterControl.ShowControl();
				}
			}
		}
	}

	public Rectangle ControllerRect => Rectangle.Empty;

	public event MouseEnterHandler OnMouseEnter;

	public event MouseLeaveHandler OnMouseLeave;

	public event MouseUpHandler OnMouseUp;

	public event AllowHighlightHandler OnAllowHighlight;

	public DragControl()
	{
		InitializeImages();
		m_OuterControl = new DragOuterControl(this);
		m_OuterControl.OnMouseEnter += MouseEnterEvent;
		m_OuterControl.OnMouseLeave += MouseLeaveEvent;
		m_OuterControl.OnMouseUp += MouseUpEvent;
		m_InnerControl = new DragInnerControl(this);
		m_InnerControl.OnMouseEnter += MouseEnterEvent;
		m_InnerControl.OnMouseLeave += MouseLeaveEvent;
		m_InnerControl.OnMouseUp += MouseUpEvent;
		m_InnerControl.OnAllowHighlight += AllowHighlightEvent;
	}

	protected virtual void InitializeImages()
	{
		string dEF_IMAGES_PATH = DragControlConsts.DEF_IMAGES_PATH;
		int num = 0;
		Bitmap bitmap = null;
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + DragControlConsts.DEF_INACTIVE_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + DragControlConsts.DEF_INACTIVE_TAB_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + DragControlConsts.DEF_ACTIVE_TARGET_IMAGE_NAME);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap.RotateFlip(RotateFlipType.Rotate90FlipNone);
		m_Images[num++] = new Bitmap(bitmap);
		bitmap = (Bitmap)ImageLoader.Load(dEF_IMAGES_PATH + DragControlConsts.DEF_ACTIVE_TAB_IMAGE_NAME);
		m_Images[num] = new Bitmap(bitmap);
	}

	public Bitmap GetImage(int index)
	{
		return m_Images[index] as Bitmap;
	}

	protected void MouseEnterEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseEnter != null)
		{
			if (sender == m_InnerControl && m_bInnerVisible)
			{
				this.OnMouseEnter(sender, e);
			}
			else if (m_bOuterVisible)
			{
				this.OnMouseEnter(sender, e);
			}
		}
	}

	protected void MouseLeaveEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseLeave != null)
		{
			this.OnMouseLeave(sender, e);
		}
	}

	protected void MouseUpEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseUp != null)
		{
			if (sender == m_InnerControl && m_bInnerVisible)
			{
				this.OnMouseUp(sender, e);
			}
			else if (m_bOuterVisible)
			{
				this.OnMouseUp(sender, e);
			}
		}
	}

	protected void OuterMouseMoveEvent(object sender, DragControlEventArgs e)
	{
		if (this.OnMouseEnter != null)
		{
			this.OnMouseEnter(sender, e);
		}
	}

	protected void AllowHighlightEvent(object sender, AllowHighlightEventArgs e)
	{
		if (this.OnAllowHighlight != null)
		{
			this.OnAllowHighlight(sender, e);
		}
	}

	public virtual void ShowControl()
	{
		if (!m_bOuterVisible)
		{
			ShowOuterControl();
		}
		if (!m_bInnerVisible)
		{
			ShowInnerControl();
		}
		m_bVisible = true;
	}

	public virtual void HideControl()
	{
		if (m_bOuterVisible)
		{
			HideOuterControl();
		}
		if (m_bInnerVisible)
		{
			HideInnerControl();
		}
		m_bVisible = false;
	}

	public virtual void ShowOuterControl()
	{
		m_OuterControl.ShowControl();
		m_bOuterVisible = true;
	}

	public virtual void HideOuterControl()
	{
		m_OuterControl.HideControl();
		m_bOuterVisible = false;
	}

	public virtual void ShowInnerControl()
	{
		m_InnerControl.ShowControl();
		m_bInnerVisible = true;
	}

	public virtual void HideInnerControl()
	{
		m_InnerControl.HideControl();
		m_bInnerVisible = false;
	}

	public virtual bool ProcessMouseMove(Point point)
	{
		if (!m_InnerControl.ProcessMouseMove(point))
		{
			return m_OuterControl.ProcessMouseMove(point);
		}
		return true;
	}

	public virtual bool ProcessMouseUp(Point point)
	{
		if (!m_InnerControl.ProcessMouseUp(point))
		{
			return m_OuterControl.ProcessMouseUp(point);
		}
		return true;
	}

	public virtual void Dispose()
	{
		m_Images = null;
		if (m_OuterControl != null)
		{
			m_OuterControl.OnMouseEnter -= MouseEnterEvent;
			m_OuterControl.OnMouseLeave -= MouseLeaveEvent;
			m_OuterControl.OnMouseUp -= MouseUpEvent;
			m_OuterControl.Dispose();
			m_OuterControl = null;
		}
		if (m_InnerControl != null)
		{
			m_InnerControl.OnMouseEnter -= MouseEnterEvent;
			m_InnerControl.OnMouseLeave -= MouseLeaveEvent;
			m_InnerControl.OnMouseUp -= MouseUpEvent;
			m_InnerControl.OnAllowHighlight -= AllowHighlightEvent;
			m_InnerControl.Dispose();
			m_InnerControl = null;
		}
	}
}
