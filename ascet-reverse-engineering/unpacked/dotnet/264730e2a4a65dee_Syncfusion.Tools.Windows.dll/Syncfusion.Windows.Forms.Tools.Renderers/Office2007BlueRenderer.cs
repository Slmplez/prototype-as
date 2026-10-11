using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class Office2007BlueRenderer : OfficeXPRenderer
{
	protected Office2007BlueRenderer()
	{
		if (m_rendererInfo == null)
		{
			m_rendererInfo = new BasicRendererInfo();
		}
		m_defaultBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(227, 239, 255), Color.FromArgb(101, 147, 207));
		m_defaultHotBackgroundColor = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(252, 151, 61), Color.FromArgb(255, 184, 94));
		m_defaultExpandFill = new BrushInfo(Color.FromArgb(101, 147, 207));
		m_defaultHotExpandFill = new BrushInfo(Color.FromArgb(101, 147, 207));
		m_defaultExpandLine = SystemColors.ControlDarkDark;
		m_defaultHotExpandLine = SystemColors.ControlDarkDark;
		m_defaultGripDark = new BrushInfo(SystemColors.ControlDarkDark);
		m_defaultHotGripDark = new BrushInfo(Color.FromArgb(101, 147, 207));
		m_defaultGripLight = new BrushInfo(Color.FromArgb(227, 239, 255));
		m_defaultHotGripLight = new BrushInfo(Color.FromArgb(227, 239, 255));
		m_bUseOrientation = true;
		SetDefaultSettings();
	}

	public new static Office2007BlueRenderer GetInstance()
	{
		return new Office2007BlueRenderer();
	}
}
