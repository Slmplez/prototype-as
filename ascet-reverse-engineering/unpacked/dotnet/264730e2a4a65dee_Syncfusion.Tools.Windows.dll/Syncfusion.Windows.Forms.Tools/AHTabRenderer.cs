using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class AHTabRenderer : SingleLineTabPanelRenderer
{
	public AHTabRenderer(ITabControl parent)
		: base(parent)
	{
	}

	public RectangleF GetGroupItemRect(int tabIndex, int groupIndex)
	{
		if (tabIndex >= tabRenderers.Count)
		{
			return RectangleF.Empty;
		}
		RectangleF result = Rectangle.Empty;
		if (tabRenderers[tabIndex] is ITabGroupRenderer tabGroupRenderer)
		{
			result = tabGroupRenderer.GetGroupItemBounds(groupIndex);
		}
		return result;
	}
}
