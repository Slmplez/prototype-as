using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class StandAloneBarItem : BarItemEx
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
