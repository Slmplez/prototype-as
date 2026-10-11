using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererOffice2007 : RendererOffice2007Base
{
	private Pen m_ButtonBorderPen;

	private Pen m_ActiveButtonBorderPen;

	private Pen m_PushedButtonBorderPen;

	protected new LayoutOffice2007 Layout
	{
		get
		{
			return base.Layout as LayoutOffice2007;
		}
		set
		{
			base.Layout = value;
		}
	}

	protected new ColorTableOffice2007 ColorTable
	{
		get
		{
			return base.ColorTable as ColorTableOffice2007;
		}
		set
		{
			base.ColorTable = value;
		}
	}

	public RendererOffice2007()
	{
		ColorTable = new ColorTableOffice2007();
		Layout = new LayoutOffice2007();
		CreateGraphicObjects(recreate: false);
	}

	protected override void CreateGraphicObjects(bool recreate)
	{
		base.CreateGraphicObjects(recreate);
		m_GraphicObjectsCreated = !m_GraphicObjectsCreated || recreate;
		if (m_GraphicObjectsCreated)
		{
			m_ButtonBorderPen = new Pen(ColorTable.ButtonBorderColor);
			m_ActiveButtonBorderPen = new Pen(ColorTable.ActiveButtonBorderColor);
			m_PushedButtonBorderPen = new Pen(ColorTable.PushedButtonBorderColor);
		}
	}

	protected override void DisposeBrushes()
	{
		base.DisposeBrushes();
		if (m_ButtonBorderPen != null)
		{
			m_ButtonBorderPen.Dispose();
		}
		if (m_ActiveButtonBorderPen != null)
		{
			m_ActiveButtonBorderPen.Dispose();
		}
		if (m_PushedButtonBorderPen != null)
		{
			m_PushedButtonBorderPen.Dispose();
		}
	}

	protected override Pen GetButtonPen(CaptionState cpState, CaptionButtonState btnState)
	{
		if (btnState == CaptionButtonState.Pushed)
		{
			return m_PushedButtonBorderPen;
		}
		if (cpState == CaptionState.Active)
		{
			return m_ActiveButtonBorderPen;
		}
		return m_ButtonBorderPen;
	}
}
