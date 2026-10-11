using System.Drawing;
using System.Drawing.Drawing2D;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererVS2005 : CustomRenderer
{
	private Brush m_CaptionBrush;

	private Brush m_ActiveCaptionBrush;

	private Brush m_BorderBrush;

	private Brush m_InnerBorderBrush;

	private Pen m_ButtonBorderPen;

	private Pen m_ActiveButtonBorderPen;

	private Pen m_ButtonImagePen;

	private Pen m_ActiveButtonImagePen;

	private Brush m_ButtonBrush;

	private Brush m_ActiveButtonBrush;

	private Brush m_PushedButtonBrush;

	private Brush m_TextBrush;

	private Brush m_ActiveTextBrush;

	private Brush m_SplitterBrush;

	private bool m_GraphicObjectsCreated;

	protected new LayoutVS2005 Layout
	{
		get
		{
			return base.Layout as LayoutVS2005;
		}
		set
		{
			base.Layout = value;
		}
	}

	protected new ColorTableVS2005 ColorTable
	{
		get
		{
			return base.ColorTable as ColorTableVS2005;
		}
		set
		{
			base.ColorTable = value;
		}
	}

	public RendererVS2005()
	{
		ColorTable = new ColorTableVS2005();
		Layout = new LayoutVS2005();
		CreateGraphicObjects(recreate: false);
	}

	protected override void CreateGraphicObjects(bool recreate)
	{
		m_GraphicObjectsCreated = !m_GraphicObjectsCreated || recreate;
		if (m_GraphicObjectsCreated)
		{
			m_BorderBrush = new SolidBrush(ColorTable.BorderColor);
			m_InnerBorderBrush = new SolidBrush(ColorTable.InnerBorderColor);
			m_ButtonBorderPen = new Pen(ColorTable.ButtonBorderColor);
			m_ActiveButtonBorderPen = new Pen(ColorTable.ActiveButtonBorderColor);
			m_ButtonImagePen = new Pen(ColorTable.ButtonImageColor);
			m_ActiveButtonImagePen = new Pen(ColorTable.ActiveButtonImageColor);
			Rectangle rectangle = ((Layout.Table.Buttons.Count > 0) ? Layout.GetButtonBounds(0) : Rectangle.Empty);
			if (rectangle != Rectangle.Empty)
			{
				m_ButtonBrush = new SolidBrush(ColorTable.ButtonColor);
				m_ActiveButtonBrush = new SolidBrush(ColorTable.ActiveButtonColor);
				m_PushedButtonBrush = new SolidBrush(ColorTable.PushedButtonColor);
			}
			m_TextBrush = new SolidBrush(ColorTable.TextColor);
			m_ActiveTextBrush = new SolidBrush(ColorTable.ActiveTextColor);
			m_SplitterBrush = new SolidBrush(ColorTable.SplitterColor);
			m_GraphicObjectsCreated = true;
			CreateCaptionBrushes(recreate);
		}
	}

	protected override void CreateCaptionBrushes(bool recreate)
	{
		if (Layout.CaptionBounds.Width != 0 && Layout.CaptionBounds.Height != 0)
		{
			if (m_prevCaptionRect.Location != Layout.CaptionBounds.Location || m_prevCaptionRect.Height != Layout.CaptionBounds.Height || recreate)
			{
				m_CaptionBrush = new LinearGradientBrush(Layout.CaptionBounds, ColorTable.CaptionTopColor, ColorTable.CaptionBottomColor, LinearGradientMode.Vertical);
				m_ActiveCaptionBrush = new LinearGradientBrush(Layout.CaptionBounds, ColorTable.ActiveCaptionTopColor, ColorTable.ActiveCaptionBottomColor, LinearGradientMode.Vertical);
				m_prevCaptionRect = Layout.CaptionBounds;
				m_bNeedCreateBrushes = false;
			}
		}
		else if (recreate)
		{
			m_bNeedCreateBrushes = true;
		}
	}

	protected override void DisposeBrushes()
	{
		if (m_ActiveButtonBrush != null)
		{
			m_ActiveButtonBrush.Dispose();
		}
		if (m_ButtonBrush != null)
		{
			m_ButtonBrush.Dispose();
		}
		if (m_BorderBrush != null)
		{
			m_BorderBrush.Dispose();
		}
		if (m_PushedButtonBrush != null)
		{
			m_PushedButtonBrush.Dispose();
		}
		if (m_SplitterBrush != null)
		{
			m_SplitterBrush.Dispose();
		}
		if (m_ActiveTextBrush != null)
		{
			m_ActiveTextBrush.Dispose();
		}
		if (m_TextBrush != null)
		{
			m_TextBrush.Dispose();
		}
		if (m_ButtonBorderPen != null)
		{
			m_ButtonBorderPen.Dispose();
		}
		if (m_ActiveButtonBorderPen != null)
		{
			m_ActiveButtonBorderPen.Dispose();
		}
		if (m_SplitterBrush != null)
		{
			m_SplitterBrush.Dispose();
		}
		if (m_ButtonImagePen != null)
		{
			m_ButtonImagePen.Dispose();
		}
		if (m_ActiveButtonImagePen != null)
		{
			m_ActiveButtonImagePen.Dispose();
		}
		m_ActiveButtonBrush = null;
		m_ButtonBrush = null;
		m_PushedButtonBrush = null;
		m_SplitterBrush = null;
		m_TextBrush = null;
		m_ButtonImagePen = null;
		m_ActiveButtonImagePen = null;
		m_SplitterBrush = null;
		DisposeCaptionBrushes();
		m_GraphicObjectsCreated = false;
	}

	protected override void DisposeCaptionBrushes()
	{
		if (m_ActiveCaptionBrush != null)
		{
			m_ActiveCaptionBrush.Dispose();
		}
		if (m_CaptionBrush != null)
		{
			m_CaptionBrush.Dispose();
		}
	}

	protected override Brush GetCaptionBrush(CaptionState cpState)
	{
		if (cpState == CaptionState.Normal)
		{
			return m_CaptionBrush;
		}
		return m_ActiveCaptionBrush;
	}

	protected override Brush GetTextBrush(CaptionState cpState)
	{
		if (cpState == CaptionState.Normal)
		{
			return m_TextBrush;
		}
		return m_ActiveTextBrush;
	}

	protected override Brush GetBorderBrush(bool innerBorder)
	{
		if (innerBorder)
		{
			return m_InnerBorderBrush;
		}
		return m_BorderBrush;
	}

	protected override Brush GetSplitterBrush()
	{
		return m_SplitterBrush;
	}

	protected override Brush GetButtonBrush(CaptionState cpState, CaptionButtonState btnState)
	{
		if (cpState == CaptionState.Active)
		{
			if (btnState == CaptionButtonState.Active)
			{
				return m_ActiveButtonBrush;
			}
			return m_PushedButtonBrush;
		}
		return m_ButtonBrush;
	}

	protected override Pen GetButtonPen(CaptionState cpState, CaptionButtonState btnState)
	{
		if (cpState == CaptionState.Active)
		{
			return m_ActiveButtonBorderPen;
		}
		return m_ButtonBorderPen;
	}

	protected override Pen GetButtonImagePen(CaptionState cpState, CaptionButtonState btnState)
	{
		if (cpState == CaptionState.Active)
		{
			return m_ActiveButtonImagePen;
		}
		return m_ButtonImagePen;
	}
}
