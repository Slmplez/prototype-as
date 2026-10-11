using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class RibbonControlAdvStateInfo
{
	public bool MinimizePanel;

	public bool ShowQuickPanelBelowRibbon;

	public ArrayList QuickItems = new ArrayList();
}
