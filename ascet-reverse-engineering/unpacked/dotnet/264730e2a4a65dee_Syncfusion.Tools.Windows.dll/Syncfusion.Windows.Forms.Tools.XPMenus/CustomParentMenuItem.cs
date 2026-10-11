using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class CustomParentMenuItem : ParentBarItem
{
	private int referenceCount;

	public int RefrenceCount
	{
		get
		{
			return referenceCount;
		}
		set
		{
			referenceCount = value;
		}
	}
}
