using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IExperimentView : IView, IUserInterface, ITransientItem
{
	bool IsIncaExperimentView();
}
