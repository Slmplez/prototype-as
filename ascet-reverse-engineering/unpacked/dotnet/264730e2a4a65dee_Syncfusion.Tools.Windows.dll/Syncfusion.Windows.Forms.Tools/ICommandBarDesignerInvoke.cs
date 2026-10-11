using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ICommandBarDesignerInvoke
{
	bool CommandBarBaseVisibility { get; set; }

	void SetChildControlBounds();

	CommandDockBar GetCommandDockBarParent();
}
