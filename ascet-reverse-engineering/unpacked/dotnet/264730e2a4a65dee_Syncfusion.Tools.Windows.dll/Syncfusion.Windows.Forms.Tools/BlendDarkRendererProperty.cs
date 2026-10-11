using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class BlendDarkRendererProperty : TabUIDefaultProperties
{
	internal static Color BackgroundColor => Color.FromArgb(51, 51, 51);

	public override bool DrawLeftToRight => false;

	public override Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(128, 128, 128);
	}

	public override Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(86, 86, 86);
	}

	public override Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.FromArgb(51, 51, 51);
	}

	public override Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl)
	{
		return Color.White;
	}
}
