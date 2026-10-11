using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class Office2007SilverRenderer : OfficeXPRenderer
{
	protected Office2007SilverRenderer()
	{
		if (m_rendererInfo == null)
		{
			m_rendererInfo = new BasicRendererInfo();
		}
		m_defaultBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(232, 235, 240), Color.FromArgb(207, 211, 221));
		m_defaultHotBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(255, 240, 171), Color.FromArgb(255, 223, 103));
		m_defaultExpandFill = new BrushInfo(Color.FromArgb(171, 171, 171));
		m_defaultHotExpandFill = new BrushInfo(Color.FromArgb(101, 107, 207));
		m_defaultExpandLine = Color.FromArgb(141, 141, 141);
		m_defaultHotExpandLine = Color.FromArgb(101, 107, 207);
		m_defaultGripDark = new BrushInfo(Color.FromArgb(161, 161, 161));
		m_defaultHotGripDark = new BrushInfo(Color.FromArgb(101, 147, 207));
		m_defaultGripLight = new BrushInfo(Color.FromArgb(227, 239, 255));
		m_defaultHotGripLight = new BrushInfo(Color.FromArgb(255, 255, 255));
		m_bUseOrientation = true;
		SetDefaultSettings();
	}

	public new static Office2007SilverRenderer GetInstance()
	{
		return new Office2007SilverRenderer();
	}
}
