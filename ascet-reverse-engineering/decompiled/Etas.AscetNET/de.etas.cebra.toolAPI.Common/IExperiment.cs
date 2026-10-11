using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IExperiment : ITransientItem
{
	bool IsIncaOnlineExperiment();

	bool IsOnlineExperiment();
}
