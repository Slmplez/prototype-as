using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabDefaultProperties
{
	bool DrawLeftToRight { get; }

	bool DrawEllipsis { get; }

	bool ShowInDesignMode { get; }

	Color DefaultTabPanelBackgroundColor(ITabPanelData panelData, ITabControl tabControl);

	Color DefaultTabForeColor(ITabPanelData panelData, ITabControl tabControl);

	Color DefaultActiveTabColor(ITabPanelData panelData, ITabControl tabControl);

	Color DefaultInactiveTabColor(ITabPanelData panelData, ITabControl tabControl);

	Color DefaultFixedSingleBorderColor(ITabPanelData panelData, ITabControl tabControl);

	Font DefaultTabPanelFont(ITabPanelData panelData, ITabControl tabControl);

	Font DefaultActiveTabFont(ITabPanelData panelData, ITabControl tabControl);

	Font DefaultInactiveTabFont(ITabPanelData panelData, ITabControl tabControl);

	SizeF GetOverlapSize(SizeF tabSize);

	void OnPaintPanelBackground(ITabControl tabControl, Graphics g, Color bgColor, Rectangle bounds);

	bool IsBackgroundSolid();
}
