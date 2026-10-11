using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface AscetGraphicGeneratorSetup_Dispatch
{
	string GenerateByCommandLine(string commandLine);

	string GenerateByCommandLineLong(string commandLine, string iniFile, bool isHeadless);

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
