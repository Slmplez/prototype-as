using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class AHTabControlBase : TabControlAdv
{
	public TabDataCollection TabsData => TabPanelData.TabsData;

	protected override void Init()
	{
		TabPanelData = new AHTabPanelData(this);
		FocusOnTabClick = false;
		base.Init();
	}

	protected override void RendererChanged(TabPanelRenderer rendererNew)
	{
		if (!TabPanelData.Multiline)
		{
			base.RendererChanged(new AHTabRenderer(this));
		}
		else
		{
			base.RendererChanged(rendererNew);
		}
	}

	public Rectangle GetGroupItemRect(int tabIndex, int groupIndex)
	{
		if (!(base.Renderer is AHTabRenderer aHTabRenderer))
		{
			return Rectangle.Empty;
		}
		return Rectangle.Round(aHTabRenderer.GetGroupItemRect(tabIndex, groupIndex));
	}
}
