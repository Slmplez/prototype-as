using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IUserInterface : ITransientItem
{
	bool IsDialog();

	bool IsView();

	int ActivateMenuId(uint id);

	int ActivateMenuSelector(string selector);

	int ActivatePaletteId(uint id);

	int ActivatePaletteSelector(string selector);

	int ActivateToolbarId(uint id);

	int ActivateToolbarSelector(string selector);
}
