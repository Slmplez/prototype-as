using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class StandAloneParentBarItem : ParentBarItem
{
	public override BarManager Manager
	{
		get
		{
			return barManager;
		}
		set
		{
			barManager = value;
		}
	}

	public override string ID
	{
		get
		{
			return BarManager.SyncfusionTransientItemID;
		}
		set
		{
		}
	}
}
