using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetProjectFile
{
	string GetDate();

	string GetName();

	int GetSize();

	bool WriteToFile(string aFileName);
}
