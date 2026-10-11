using System;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework.Help.HelpCore;

internal sealed class HTMLHelpOpener : IHelpOpener
{
	public void OpenHelp(string topic, string helpFile)
	{
		System.Windows.Forms.Help.ShowHelp(null, topic);
	}

	public void OpenTableOfContents(string helpFile)
	{
		throw new InvalidOperationException("OpenTableOfContents() is not supported by the HTMLHelpOpener!");
	}

	public void OpenDefaultTopic(string helpFile)
	{
		System.Windows.Forms.Help.ShowHelp(null, helpFile);
	}
}
