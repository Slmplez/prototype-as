using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class BlendLightRendererProperty : TabUIDefaultProperties
{
	internal static Color BackgroundColor => Color.FromArgb(112, 112, 112);

	public override bool DrawLeftToRight => false;

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(141, 141, 141);
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(180, 180, 180);
	}

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(112, 112, 112);
	}

	public override Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.Black;
	}
}
