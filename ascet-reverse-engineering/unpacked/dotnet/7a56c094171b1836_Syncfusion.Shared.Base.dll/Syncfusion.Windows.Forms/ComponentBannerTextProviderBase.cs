using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public abstract class ComponentBannerTextProviderBase : IComponentBannerTextProvider
{
	protected Type m_type;

	public virtual Type ComponentType => m_type;

	public virtual bool CanExtend(Component extendee)
	{
		if (extendee != null)
		{
			return ComponentType.IsInstanceOfType(extendee);
		}
		return false;
	}

	public abstract IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider);
}
