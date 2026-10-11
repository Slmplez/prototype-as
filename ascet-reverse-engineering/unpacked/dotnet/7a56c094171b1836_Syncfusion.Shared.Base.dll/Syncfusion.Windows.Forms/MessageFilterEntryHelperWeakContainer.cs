using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class MessageFilterEntryHelperWeakContainer : WeakReference
{
	public MessageFilterEntryHelperWeakContainer(MessageFilterEntryHelper target)
		: base(target)
	{
	}

	public void AppIdleWeakEventHandler(object sender, EventArgs args)
	{
		MessageFilterEntryHelper messageFilterEntryHelper = (MessageFilterEntryHelper)Target;
		if (messageFilterEntryHelper != null)
		{
			messageFilterEntryHelper.OnAppIdle(sender, args);
		}
		else
		{
			Application.Idle -= AppIdleWeakEventHandler;
		}
	}
}
