using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class DockingManagerRenderer : IDockingManagerRenderer
{
	[DocumentationExclude]
	protected IStyleRenderer StyleRenderer;

	private VisualStyle m_VisualStyle;

	public VisualStyle VisualStyle
	{
		get
		{
			return m_VisualStyle;
		}
		set
		{
			if (m_VisualStyle != value)
			{
				m_VisualStyle = value;
				StyleRenderer = RendererFactory.GetRenderer(m_VisualStyle);
			}
		}
	}

	public virtual int CaptionWidth
	{
		get
		{
			if (StyleRenderer != null)
			{
				return StyleRenderer.CaptionWidth;
			}
			return SystemInformation.MenuFont.Height + 3;
		}
	}

	public virtual int BorderWidth
	{
		get
		{
			if (StyleRenderer != null)
			{
				return StyleRenderer.BorderWidth;
			}
			return 1;
		}
	}

	public virtual int ThickBorderWidth => StyleRenderer.ThickBorderWidth;

	public virtual int ThinBorderWidth => StyleRenderer.ThinBorderWidth;

	public Rectangle ControlBounds
	{
		get
		{
			return StyleRenderer.ControlBounds;
		}
		set
		{
			StyleRenderer.ControlBounds = value;
		}
	}

	public Rectangle CaptionBounds => StyleRenderer.CaptionBounds;

	public bool IsMirrored
	{
		get
		{
			return StyleRenderer.IsMirrored;
		}
		set
		{
			StyleRenderer.IsMirrored = value;
		}
	}

	public DockingManagerRenderer()
	{
		StyleRenderer = new RendererVS2005();
	}

	public virtual void PaintDockedControl(Graphics g, Rectangle rectangle, PaintDockControlArgs args)
	{
		if (StyleRenderer != null)
		{
			StyleRenderer.PaintDockedControl(g, rectangle, args);
		}
	}

	public virtual void RefreshPaintInfo(Rectangle rectangle, PaintDockControlArgs args)
	{
		if (StyleRenderer != null)
		{
			StyleRenderer.RefreshPaintInfo(rectangle, args);
		}
	}

	public virtual void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation)
	{
		StyleRenderer.PaintSplitter(g, rectangle, orientation);
	}

	public virtual void PaintAutoHidePanels(Graphics g, Rectangle rectangle, AutoHideSide side)
	{
		StyleRenderer.PaintAutoHidePanels(g, rectangle, side);
	}

	public virtual HitTestArea HitTest(MouseButtons button, Point point)
	{
		return StyleRenderer.HitTest(button, point);
	}

	public virtual int GetHitButtonIndex()
	{
		return StyleRenderer.GetHitButtonIndex();
	}

	public virtual int GetHighlightedButtonIndex()
	{
		return StyleRenderer.GetHighlightedButtonIndex();
	}

	public virtual CaptionButton GetHitButton()
	{
		return StyleRenderer.GetHitButton();
	}

	public virtual void RefreshColors()
	{
		StyleRenderer.RefreshColors();
	}

	public virtual void RefreshOffice2007Theme(Office2007Theme newTheme)
	{
		StyleRenderer.RefreshOffice2007Theme(newTheme);
	}

	public void ResetButtonsHitTest()
	{
		StyleRenderer.ResetCaptionButtonsIndices();
	}
}
