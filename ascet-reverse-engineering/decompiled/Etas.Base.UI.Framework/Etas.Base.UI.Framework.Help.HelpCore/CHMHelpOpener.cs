using System;
using System.Windows.Forms;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework.Help.HelpCore;

internal sealed class CHMHelpOpener : IHelpOpener
{
	private bool IsTopicID(string topic)
	{
		try
		{
			int result = 0;
			return int.TryParse(topic, out result);
		}
		catch (ArgumentException)
		{
			return false;
		}
	}

	void IHelpOpener.OpenHelp(string topic, string helpFile)
	{
		Logger.LogInfo("Attempting to open topic {0} in help file {1}", topic, helpFile);
		if (IsTopicID(topic))
		{
			System.Windows.Forms.Help.ShowHelp(null, helpFile, HelpNavigator.TopicId, topic);
		}
		else
		{
			System.Windows.Forms.Help.ShowHelp(null, helpFile, HelpNavigator.Topic, topic);
		}
	}

	void IHelpOpener.OpenTableOfContents(string helpFile)
	{
		Logger.LogInfo("Attempting to open toc of file " + helpFile);
		System.Windows.Forms.Help.ShowHelp(null, helpFile, HelpNavigator.TableOfContents);
	}

	void IHelpOpener.OpenDefaultTopic(string helpFile)
	{
		Logger.LogInfo("Attempting to open default topic of file " + helpFile);
		System.Windows.Forms.Help.ShowHelp(null, helpFile);
	}
}
