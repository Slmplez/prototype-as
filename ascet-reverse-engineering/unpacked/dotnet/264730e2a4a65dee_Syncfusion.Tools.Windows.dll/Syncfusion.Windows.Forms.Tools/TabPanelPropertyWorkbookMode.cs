using System.Drawing;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPanelPropertyWorkbookMode : TabUIDefaultProperties
{
	public override bool DrawLeftToRight => false;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(TabRendererWorkbookMode.OVERLAPX, TabRenderer3D.OVERLAPY);
	}

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.White;
	}

	public override Font DefaultActiveTabFont(ITabPanelData panelData, ITabControl tabControl)
	{
		return FontUtil.CreateFont(DefaultInactiveTabFont(panelData, tabControl), FontStyle.Bold);
	}
}
