using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;

namespace Etas.Base.UI.Framework.Help.HelpGrabber;

internal class HelpGrabberDesigner : ComponentDesigner
{
	private HelpGrabber myHelpGrabber;

	private IDesignerHost host;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		myHelpGrabber = component as HelpGrabber;
		host = GetService(typeof(IDesignerHost)) as IDesignerHost;
	}

	protected override void PostFilterProperties(IDictionary properties)
	{
		base.PostFilterProperties(properties);
		if (properties["AssociatedControl"] is PropertyDescriptor propertyDescriptor)
		{
			propertyDescriptor.SetValue(myHelpGrabber, host.RootComponent);
		}
	}
}
