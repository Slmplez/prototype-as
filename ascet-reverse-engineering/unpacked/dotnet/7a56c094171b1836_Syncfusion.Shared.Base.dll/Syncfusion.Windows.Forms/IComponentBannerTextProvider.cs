using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public interface IComponentBannerTextProvider
{
	Type ComponentType { get; }

	bool CanExtend(Component extendee);

	IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider);
}
