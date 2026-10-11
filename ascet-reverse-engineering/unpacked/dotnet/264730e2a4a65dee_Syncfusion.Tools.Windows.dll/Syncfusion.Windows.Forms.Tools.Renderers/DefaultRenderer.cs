using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class DefaultRenderer : BasicRenderer
{
	protected DefaultRenderer()
	{
		if (m_rendererInfo != null)
		{
			m_defaultBackgroundColor = new BrushInfo(SystemColors.Control);
			m_defaultHotBackgroundColor = new BrushInfo(SystemColors.Control);
			SetDefaultSettings();
		}
	}

	public new static DefaultRenderer GetInstance()
	{
		return new DefaultRenderer();
	}
}
