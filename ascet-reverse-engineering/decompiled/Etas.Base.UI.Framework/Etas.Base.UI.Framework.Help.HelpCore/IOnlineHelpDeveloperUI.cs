using System;
using System.Collections.Generic;

namespace Etas.Base.UI.Framework.Help.HelpCore;

public interface IOnlineHelpDeveloperUI : IDisposable
{
	event EventHandler<HighLightEventArgs> HighlightRequest;

	void Show(MappingDB mapDB, IList<string> existingCtls, string appName, string helpDirPath);
}
