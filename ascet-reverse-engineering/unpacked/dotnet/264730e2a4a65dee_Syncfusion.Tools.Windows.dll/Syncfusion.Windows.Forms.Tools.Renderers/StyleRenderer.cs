using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class StyleRenderer : IStyleRenderer
{
	private IControlStyleLayout m_Layout;

	private ColorTableBase m_ColorTable;

	private string DEF_IMAGES_PATH = "Syncfusion.Windows.Forms.Tools.FrameworkComponents.DockingWindows.Images.Renderers.";

	public virtual int CaptionWidth => m_Layout.CaptionWidth;

	public virtual int BorderWidth => m_Layout.BorderWidth;

	public virtual int ThickBorderWidth => m_Layout.ThickBorderWidth;

	public virtual int ThinBorderWidth => m_Layout.ThinBorderWidth;

	protected virtual IControlStyleLayout Layout
	{
		get
		{
			return m_Layout;
		}
		set
		{
			m_Layout = value;
		}
	}

	protected virtual ColorTableBase ColorTable
	{
		get
		{
			return m_ColorTable;
		}
		set
		{
			m_ColorTable = value;
		}
	}

	public virtual Rectangle ControlBounds
	{
		get
		{
			return Layout.ControlBounds;
		}
		set
		{
			Layout.ControlBounds = value;
		}
	}

	public virtual Rectangle CaptionBounds => Layout.CaptionBounds;

	public bool IsMirrored
	{
		get
		{
			return Layout.IsMirrored;
		}
		set
		{
			Layout.IsMirrored = value;
		}
	}

	protected string ImagesPath => DEF_IMAGES_PATH;

	public StyleRenderer()
	{
		ColorTable = new ColorTableBase();
	}

	public virtual void RefreshPaintInfo(Rectangle rectangle, PaintDockControlArgs args)
	{
		if (Layout.Table != null)
		{
			Layout.Table.Dispose();
			Layout.Table = null;
		}
		Layout.ControlBounds = rectangle;
		Layout.CaptionEnabled = args.Caption != null && args.Caption.Enabled;
		Layout.Floating = args.Floating;
		Layout.ImageEnabled = GetImageFromList(args.CaptionImageIndex, args.ImageList) != null;
		Layout.Table = args.Table;
	}

	public void ResetCaptionButtonsIndices()
	{
		Layout.ResetCaptionButtonIndices();
	}

	public abstract void PaintDockedControl(Graphics g, Rectangle rectangle, PaintDockControlArgs args);

	public abstract void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation);

	public abstract void PaintAutoHidePanels(Graphics g, Rectangle rectangle, AutoHideSide side);

	public abstract int GetHighlightedButtonIndex();

	public virtual bool RefreshColors()
	{
		return ColorTable.RefreshColors();
	}

	public virtual void RefreshOffice2007Theme(Office2007Theme newTheme)
	{
	}

	protected abstract Image GetImageFromList(int index, ImageList list);

	public virtual HitTestArea HitTest(MouseButtons button, Point point)
	{
		HitTestArea hitTestArea = m_Layout.HitTest(button, point);
		if (hitTestArea != HitTestArea.Button)
		{
			m_Layout.ResetCaptionButtonIndices();
		}
		return hitTestArea;
	}

	public virtual int GetHitButtonIndex()
	{
		return m_Layout.GetHitButtonIndex();
	}

	public virtual CaptionButton GetHitButton()
	{
		return m_Layout.GetHitButton();
	}
}
