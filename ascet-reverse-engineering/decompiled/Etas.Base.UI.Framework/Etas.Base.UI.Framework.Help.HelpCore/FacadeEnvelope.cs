using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[ProgId("Etas.Base.UI.Framework.Help.HelpCore.FacadeEnvelope")]
[ComVisible(true)]
public class FacadeEnvelope : IFacadeEnvelope
{
	public IHelpCoreFacade SingletonInstance => HelpCoreFacade.Instance;
}
