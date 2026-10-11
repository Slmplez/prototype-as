using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class DockTabRendererOffice2007 : TabRendererOffice2007
{
	private static DockRendererPropertyOffice2007 m_tabPropertyExtender;

	public new static string TabStyleName => "DockTabRendererOffice2007";

	public new static DockRendererPropertyOffice2007 TabPanelPropertyExtender => m_tabPropertyExtender;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return Size.Empty;
	}

	static DockTabRendererOffice2007()
	{
		m_tabPropertyExtender = new DockRendererPropertyOffice2007();
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(DockTabRendererOffice2007), TabPanelPropertyExtender);
	}

	public DockTabRendererOffice2007(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}
}
