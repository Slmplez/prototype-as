namespace Etas.Base.UI.Framework.Help.HelpGrabber;

public interface IContextProvider
{
	string GetActiveContext();

	string[] GetContexts();

	bool HasContexts();

	bool IsContextActive();
}
