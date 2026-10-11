using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IView : IUserInterface, ITransientItem
{
	bool BringToFront();

	bool Close();

	bool IsExperimentView();

	bool PerformMenuAction(string menuEntry);
}
