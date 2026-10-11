using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework.Help.HelpCore;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsDual)]
public interface IFacadeEnvelope
{
	IHelpCoreFacade SingletonInstance { get; }
}
