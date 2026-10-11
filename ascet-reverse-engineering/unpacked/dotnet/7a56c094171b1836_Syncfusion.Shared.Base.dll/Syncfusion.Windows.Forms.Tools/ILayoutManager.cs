using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ILayoutManager
{
	Control ContainerControl { get; set; }

	Rectangle CustomLayoutBounds { get; set; }

	bool AutoLayout { get; set; }

	void AddLayoutComponent(Control childControl, object constraints);

	void RemoveLayoutComponent(Control childControl);

	Size PreferredLayoutSize();

	Size MinimumLayoutSize();

	Size GetPreferredSize(Control childControl);

	void SetPreferredSize(Control control, Size value);

	Size GetMinimumSize(Control control);

	void SetMinimumSize(Control control, Size value);

	void LayoutContainer();
}
