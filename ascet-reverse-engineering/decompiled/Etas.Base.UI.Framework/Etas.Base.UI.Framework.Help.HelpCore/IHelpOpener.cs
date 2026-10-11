namespace Etas.Base.UI.Framework.Help.HelpCore;

public interface IHelpOpener
{
	void OpenHelp(string topic, string helpFile);

	void OpenTableOfContents(string helpFile);

	void OpenDefaultTopic(string helpFile);
}
