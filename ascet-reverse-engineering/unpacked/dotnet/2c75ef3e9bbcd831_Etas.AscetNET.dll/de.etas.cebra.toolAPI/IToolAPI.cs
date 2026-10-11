using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public interface IToolAPI
{
	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();
}
