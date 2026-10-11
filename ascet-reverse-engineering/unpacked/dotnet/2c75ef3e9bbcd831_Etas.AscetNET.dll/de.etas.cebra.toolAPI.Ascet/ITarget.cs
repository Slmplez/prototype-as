using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ITarget
{
	string[] GetAllCompilers();

	string[] GetAllMemoryLocations();

	string[] GetAllMemoryLocationsFor(AscetModelElement element);

	string[] GetAllMemoryLocationsForParameter();

	string[] GetAllMemoryLocationsForVariable();

	string GetCurrentCompiler();

	string GetName();

	bool IsTarget();

	bool SetCurrentCompiler(string aCompiler);
}
