using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPanelProperty2D : TabUIDefaultProperties
{
	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return DefaultInactiveTabColor(panelData, tabControl);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(TabRenderer2D.OVERLAPX, 0f);
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		Color color = panelData.ActiveTabColor;
		if (color == Color.Empty)
		{
			color = DefaultActiveTabColor(panelData, tabControl);
		}
		return ControlPaint.Light(color);
	}

	public override Font DefaultActiveTabFont(ITabPanelData panelData, ITabControl tabControl)
	{
		return FontUtil.CreateFont(DefaultInactiveTabFont(panelData, tabControl), FontStyle.Bold);
	}
}
