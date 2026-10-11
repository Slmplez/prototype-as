using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;

namespace de.etas.cebra.socket;

[ComVisible(false)]
internal sealed class ClientOrder
{
	internal ToolAPI toolAPI;

	internal CebraMessage answer;

	internal ClientOrder(ToolAPI api, CebraMessage msg)
	{
		answer = msg;
		toolAPI = api;
	}
}
