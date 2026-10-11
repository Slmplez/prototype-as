using System.ComponentModel;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[DocumentationExclude]
[ToolboxItem(false)]
public class AHTabPage : TabPageAdv
{
	public DockStateControllerBase m_dhcClient;

	protected static int nNamingCount;

	public DockStateControllerBase DHCClient => m_dhcClient;

	public AHTabPage(DockStateControllerBase dhc, string text, int imgindex)
	{
		m_dhcClient = dhc;
		Text = text;
		ImageIndex = imgindex;
		nNamingCount++;
		base.Name = "AHTabPage_" + nNamingCount;
	}

	protected override ITabData CreateDefaultTabData()
	{
		TabGroupData tabGroupData = new TabGroupData();
		tabGroupData.Padding = new Point(3, 3);
		return tabGroupData;
	}

	protected override void CreateHandle()
	{
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && m_dhcClient != null)
		{
			m_dhcClient = null;
		}
		base.Dispose(bdisposing);
	}
}
