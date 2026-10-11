using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsDual)]
public interface IHelpCoreFacade
{
	bool IsInitialized { get; }

	void AddEntry(string grabbersType, ControlIdentifier ctl, bool helpRequestCatchable, IControlHighlighter associatedHighlighter);

	void AddEntry(string grabbersType, ControlIdentifier ctl, bool helpRequestCatchable);

	void AddEntry(string grabbersType, ControlIdentifier ctl, ControlIdentifier parent, bool helpRequestCatchable);

	void AddEntry(string grabbersType, ControlIdentifier ctl, ControlIdentifier parent, bool helpRequestCatchable, IControlHighlighter associatedHighlighter);

	void Init(IApplicationInfo appInfo, IHelpFileLocalizer fileLocalizer);

	void ShowControl(ControlIdentifier ctl, ControlIdentifier[] parents);

	void ShowEditor();

	void ShowHelp(ControlIdentifier ctl, ControlIdentifier[] parents);
}
