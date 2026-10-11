using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[ProgId("Ascet.IncaOnlineExperiment")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
public class IncaOnlineExperiment : OnlineExperiment
{
	public IncaOnlineExperiment(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public override bool IsIncaOnlineExperiment()
	{
		return true;
	}
}
