using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetGraphicGeneratorSetup
{
	string GenerateByCommandLine(string commandLine);

	string GenerateByCommandLineLong(string commandLine, string iniFile, bool isHeadless);
}
