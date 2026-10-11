using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface ICBControllerDesignerInvoke
{
	CommandDockBar GetCommandDockBarL();

	CommandDockBar GetCommandDockBarT();

	CommandDockBar GetCommandDockBarR();

	CommandDockBar GetCommandDockBarB();

	void InitializeCBController();
}
