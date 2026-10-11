using Syncfusion.Documentation;

namespace Syncfusion.Design;

[DocumentationExclude]
public class DesignerPersistance
{
	private static bool isPersisting;

	public static bool IsPersisting
	{
		get
		{
			return isPersisting;
		}
		set
		{
			isPersisting = value;
		}
	}
}
