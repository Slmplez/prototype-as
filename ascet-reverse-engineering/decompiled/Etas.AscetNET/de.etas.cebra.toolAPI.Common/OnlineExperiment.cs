using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("707CCCF5-8869-11D3-8A09-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.OnlineExperiment")]
[ClassInterface(ClassInterfaceType.None)]
public class OnlineExperiment : Experiment, OnlineExperiment_Dispatch, IOnlineExperiment, IExperiment, ITransientItem
{
	public OnlineExperiment(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public override bool IsOnlineExperiment()
	{
		return true;
	}
}
