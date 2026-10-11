using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TabPanelPropertyTabGroup : TabUIDefaultProperties
{
	public override bool ShowInDesignMode => false;

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		Color color = panelData.ActiveTabColor;
		if (color == Color.Empty)
		{
			color = DefaultActiveTabColor(panelData, tabControl);
		}
		return ControlPaint.Light(color);
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(0f, 0f);
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return DefaultActiveTabColor(panelData, tabControl);
	}
}
