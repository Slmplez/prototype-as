using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ICommandBarSerializer
{
	void GetCommandBarData(CommandBar cbar);

	void SetCommandBarData(CommandBar cbar);
}
