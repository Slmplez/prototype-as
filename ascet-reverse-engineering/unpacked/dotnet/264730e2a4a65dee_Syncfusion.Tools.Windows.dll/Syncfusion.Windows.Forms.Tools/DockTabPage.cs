using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DesignTimeVisible(false)]
[DocumentationExclude]
[ToolboxItem(false)]
public class DockTabPage : TabPageAdv
{
	public DockHostController dhcClient;

	protected static int nNamingCount;

	public DockTabPage(DockHostController dhc, string text, int imgindex)
	{
		dhcClient = dhc;
		Text = text;
		ImageIndex = imgindex;
		nNamingCount++;
		base.Name = "DockTabPage_" + nNamingCount;
	}

	protected override void CreateHandle()
	{
	}

	protected override void Dispose(bool bdisposing)
	{
		if (bdisposing && dhcClient != null)
		{
			dhcClient = null;
		}
		base.Dispose(bdisposing);
	}
}
