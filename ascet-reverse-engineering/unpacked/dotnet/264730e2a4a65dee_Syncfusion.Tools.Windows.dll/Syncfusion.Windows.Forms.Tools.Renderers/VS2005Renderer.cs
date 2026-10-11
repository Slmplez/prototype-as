using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class VS2005Renderer : BasicRenderer
{
	public override void DrawBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		if (ri is BasicRendererInfo basicRendererInfo)
		{
			BrushPaint.FillRectangle(e.Graphics, bounds, basicRendererInfo.BackgroundColor);
		}
	}

	protected VS2005Renderer()
	{
		m_defaultBackgroundColor = new BrushInfo(Color.FromArgb(244, 242, 232));
		m_defaultHotBackgroundColor = new BrushInfo(Color.FromArgb(244, 242, 232));
		SetDefaultSettings();
	}

	public new static VS2005Renderer GetInstance()
	{
		return new VS2005Renderer();
	}
}
