using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IRequiresControl
{
	object Value { get; set; }

	int MinWidth { get; }
}
