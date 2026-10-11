using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabPanelDefaultProperties
{
	Color DefaultActiveTabColor();

	Color DefaultInactiveTabColor();

	Color DefaultTabForeColor();

	Color DefaultTabPanelBackgroundColor();

	Font DefaultTabPanelFont();

	Font DefaultActiveTabFont();

	Font DefaultInactiveTabFont();

	Color DefaultFixedSingleBorderColor();
}
