using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class Office2007BlackRenderer : OfficeXPRenderer
{
	protected Office2007BlackRenderer()
	{
		if (m_rendererInfo == null)
		{
			m_rendererInfo = new BasicRendererInfo();
		}
		m_defaultBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(108, 108, 108), Color.FromArgb(82, 82, 82));
		m_defaultHotBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(255, 240, 171), Color.FromArgb(255, 223, 103));
		m_defaultExpandFill = new BrushInfo(Color.FromArgb(151, 151, 151));
		m_defaultHotExpandFill = new BrushInfo(Color.FromArgb(101, 107, 207));
		m_defaultExpandLine = Color.FromArgb(106, 106, 106);
		m_defaultHotExpandLine = Color.FromArgb(101, 107, 207);
		m_defaultGripDark = new BrushInfo(Color.FromArgb(141, 141, 141));
		m_defaultHotGripDark = new BrushInfo(Color.FromArgb(101, 147, 207));
		m_defaultGripLight = new BrushInfo(Color.FromArgb(227, 239, 255));
		m_defaultHotGripLight = new BrushInfo(Color.FromArgb(255, 255, 255));
		m_bUseOrientation = true;
		SetDefaultSettings();
	}

	public new static Office2007BlackRenderer GetInstance()
	{
		return new Office2007BlackRenderer();
	}
}
