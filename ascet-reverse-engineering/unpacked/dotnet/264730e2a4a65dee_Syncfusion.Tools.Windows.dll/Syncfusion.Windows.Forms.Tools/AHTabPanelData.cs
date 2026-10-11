using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class AHTabPanelData : TabPanelData
{
	public AHTabPanelData(Control parent)
		: base(parent)
	{
	}

	public override ITabData CreateNewTabData()
	{
		TabGroupData tabGroupData = new TabGroupData();
		tabGroupData.Padding = new Point(3, 3);
		return tabGroupData;
	}
}
